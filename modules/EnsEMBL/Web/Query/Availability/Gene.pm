
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

package EnsEMBL::Web::Query::Availability::Gene;

use previous qw(_counts get);

sub _counts {
  my $self = shift;

  my $compara_member = @_[1];
  my $counts = $self->PREV::_counts(@_);

  my $hub = $self->context;

  my $species_defs = $hub->species_defs;
  my $species_production_name = $species_defs->SPECIES_PRODUCTION_NAME;

  # Possible gene cluster set ids for metazoa: "default", "protostomes", "insects", "pangenome_drosophila".
  # A species can have one or more of these trees associated with it
  my $clusterset_ids = $hub->species_defs->multi_hash->{'DATABASE_COMPARA'}{'METAZOA_CLUSTERSETS'}{$species_production_name};

  # In the parent method (_counts in ensembl-webcode),
  # homologs and orthologs are only calculated against the default clusterset;
  # but metazoa have three clustersets
  for my $clusterset_id (@$clusterset_ids) {

    if (!$counts->{'orthologs'}) {
      my $orthologs_count = defined $compara_member ? $compara_member->number_of_orthologues($clusterset_id) : 0;
      $counts->{'orthologs'} = $orthologs_count;      
    }

    if (!$counts->{'paralogs'}) {
      my $paralogs_count = defined $compara_member ? $compara_member->number_of_paralogues($clusterset_id) : 0;
      $counts->{'paralogs'} = $paralogs_count;
    }
  }

  return $counts;
}

sub get {

  my ($self, $args) = @_;

  my ($out) = @{$self->PREV::get($args)};

  my $member = $self->compara_member($args);

  $out->{'has_gene_tree_protostomes'} = $member ? $member->has_GeneTree('protostomes') : 0;
  $out->{'has_gene_tree_insects'} = $member ? $member->has_GeneTree('insects') : 0;
  $out->{'has_gene_tree_drosophila'} = $member ? $member->has_GeneTree('pangenome_drosophila') : 0;

  return [$out];
}

1;
