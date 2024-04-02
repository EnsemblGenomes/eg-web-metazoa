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

our $GENE_TREE_CONSTANTS = {
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
};

our $METAZOA_CLUSTERSETS = ['default', 'protostomes', 'insects', 'pangenome_drosophila'];

sub create_gene_tree_links {
  my $self = shift;
  my $params = shift;

  my $hub          = $self->hub;
  my $gene_availability = $params->{gene_availability};
  my $stable_id = $params->{stable_id};
  my $orthologue = $params->{orthologue};
  my $cdb = $params->{cdb};

  my $is_pan = $cdb =~/compara_pan_ensembl/;

  my $current_gene_clusterset_ids = $self->get_current_gene_clusterset_ids($gene_availability);
  my $common_clusterset_ids = [grep { $orthologue->{'homologue'}->has_GeneTree($_) } @$current_gene_clusterset_ids];

  my $is_single_clusterset = scalar @{ $common_clusterset_ids } == 1;

  my @link_str_parts;

  foreach my $clusterset_id (@$common_clusterset_ids) {
    my $gene_tree_constants = $self->get_gene_tree_constants_for_clusterset($clusterset_id);
    my $gene_tree_name = $gene_tree_constants->{name};
    my $link_text = $is_single_clusterset ? 'View Gene Tree' : "View $gene_tree_name Gene Tree";
    my $url_part = $is_pan ? 'PanComparaTree' : $gene_tree_constants->{url_part};

    my $tree_url = $hub->url({
      type   => 'Gene',
      action => $url_part,
      g1     => $stable_id,
      anc    => $orthologue->{'gene_tree_node_id'},
      r      => undef
    });

    my $class_str = scalar(@link_str_parts) == 0 ? "half-margin top-margin" : "half-margin";
    my $link_str = qq(<p class="$class_str"><a href="$tree_url">$link_text</a></p>);

    push(@link_str_parts, $link_str);
  }

  my $links_str = join('', @link_str_parts);

  return $links_str;
}

sub get_current_gene_clusterset_ids {
  my $self = shift;
  my $gene_availability = shift;

  my @current_gene_clusterset_ids = grep {
    ($_ eq 'default' && $gene_availability->{'has_gene_tree'})
    || $gene_availability->{"has_gene_tree_${_}"}
  } @$METAZOA_CLUSTERSETS;

  return \@current_gene_clusterset_ids;
}

sub get_gene_tree_constants_for_clusterset {
  my $self = shift;
  my $clusterset_id = shift;

  return $GENE_TREE_CONSTANTS->{$clusterset_id};
}


1;
