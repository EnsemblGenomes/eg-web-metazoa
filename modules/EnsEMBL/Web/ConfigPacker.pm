=head1 LICENSE

Copyright [2009-2022] EMBL-European Bioinformatics Institute

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=cut

package EnsEMBL::Web::ConfigPacker;
use strict;
use warnings;
no warnings qw(uninitialized);

use previous qw(munge_databases_multi);

sub munge_databases_multi {
  my $self = shift;
  $self->PREV::munge_databases_multi(@_);
  $self->_configure_new_gene_trees;
}

sub _configure_new_gene_trees {
  my $self = shift;
  my $db_name = 'DATABASE_COMPARA';
  my $dbh = $self->db_connect($db_name);

  ## Store clustersets for metazoa gene trees
  my $sth = $dbh->prepare('
    SELECT DISTINCT TRIM(LEADING "collection-" FROM ssh.name) AS collection_name
    FROM method_link_species_set mlss
    JOIN method_link ml USING(method_link_id)
    JOIN species_set ss USING(species_set_id)
    JOIN species_set_header ssh USING(species_set_id)
    JOIN genome_db gd USING(genome_db_id)
    WHERE ml.type IN ("PROTEIN_TREES", "NC_TREES")
    AND gd.name = ?
    ORDER BY FIELD(ssh.name, "collection-default", "default") DESC
  ');

  foreach my $sp (keys %{$self->db_tree->{$db_name}{'COMPARA_SPECIES'}}) {
    $sth->bind_param(1,$sp);
    $sth->execute;

    # get all Compara clusterset ids to which a species may belong
    # (possible values for Metazoa: "default", "protostomes", "insects")
    my $clusterset_ids = $sth->fetchall_arrayref();

    foreach my $row (@{$clusterset_ids}) {
      my ($clusterset_id) = @{$row};

      if (exists $self->db_tree->{$db_name}{'METAZOA_CLUSTERSETS'}{$sp}) {
        push (@{$self->db_tree->{$db_name}{'METAZOA_CLUSTERSETS'}{$sp}}, $clusterset_id);
      } else {
        $self->db_tree->{$db_name}{'METAZOA_CLUSTERSETS'}{$sp} = [$clusterset_id];
      }
   }
  }
}

1;
