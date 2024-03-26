=head1 LICENSE

Copyright [2009-2024] EMBL-European Bioinformatics Institute

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

package EnsEMBL::Web::Component::Gene::ComparaOrthologs;

use strict;
use warnings;

sub create_gene_tree_links {
  my $self = shift;
  my $params = shift;

  my $hub          = $self->hub;
  my $species_defs = $hub->species_defs;
  my $species = $params->{species};
  my $stable_id = $params->{stable_id};
  my $orthologue = $params->{orthologue};
  my $cdb = $params->{cdb};

  my $is_pan = $cdb =~/compara_pan_ensembl/;
  my $current_species_clusterset_ids = $self->get_current_species_clusterset_ids($species_defs);
  my $comparison_species_clusterset_ids = $self->get_clusterset_ids_for_comparison_species($species_defs, $species);

  my $common_clusterset_ids = $self->get_common_clusterset_ids(
    $current_species_clusterset_ids,
    $comparison_species_clusterset_ids
  );

  my $is_single_clusterset = scalar @{ $common_clusterset_ids } == 1;

  my @link_str_parts;

  foreach my $clusterset_id (@$common_clusterset_ids) {
    my $gene_tree_constants = $self->get_gene_tree_constants($clusterset_id);
    my $gene_tree_name = $gene_tree_constants->{name};
    my $link_text = $is_single_clusterset ? 'View Gene Tree' : "View $gene_tree_name Gene Tree";

    my $tree_url = $hub->url({
      type   => 'Gene',
      action => $gene_tree_constants->{url_part},
      g1     => $stable_id,
      anc    => $orthologue->{'gene_tree_node_id'},
      r      => undef
    });

    my $link_str = qq(<a href="$tree_url">$link_text</a>);

    if ($is_single_clusterset) {
      $links_str = $link_str;
    } else {
      $links_str = $links_str . $link_str;
      $links_str = $links_str . '<br />';
    }
  }

  return qq{<p class="top-margin">$links_str</p>};
}

sub get_current_species_clusterset_ids {
  my $self = shift;
  my $species_defs = shift;

  my $prod_name = $species_defs->SPECIES_PRODUCTION_NAME;
  my $clusterset_ids = $species_defs->multi_hash->{'DATABASE_COMPARA'}{'METAZOA_CLUSTERSETS'}{$prod_name};

  return $clusterset_ids;
}

sub get_clusterset_ids_for_comparison_species {
  my $self = shift;
  my $species_defs = shift;
  my $species_url_name = shift;

  my $prod_name = $species_defs->get_config($species_url_name, "SPECIES_PRODUCTION_NAME");
  my $clusterset_ids = $species_defs->multi_hash->{'DATABASE_COMPARA'}{'METAZOA_CLUSTERSETS'}{$prod_name};

  return $clusterset_ids;
}

sub get_common_clusterset_ids {
  my $self = shift;
  my $ids1 = shift;
  my $ids2 = shift;

  my @intersection;
  my %count = ();

  foreach my $id (@$ids1, @$ids2) { $count{$id}++ }
  foreach my $id (keys %count) {
    if ($count{$id} > 1) {
      push @intersection, $id;
    }
  }

  return \@intersection;
}

sub get_gene_tree_constants {
  my $self = shift;
  my $clusterset_id = shift;

  my %gene_tree_constants = (
    default => {
      name => 'Metazoa',
      url_part => 'Compara_Tree'
    },
    protostomes => {
      name => 'Protostomes',
      url_part => 'Protostomes_Tree'
    },
    insects => {
      name => 'Insects',
      url_part => 'Insects_Tree'
    },
    pangenome_drosophila => {
      name => 'Drosophilidae',
      url_part => 'Drosophilidae_Tree'
    }
  );

  return $gene_tree_constants{$clusterset_id};
}


1;
