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

sub create_gene_tree_links {
  my $self = shift;
  my $params = shift;

  my $hub          = $self->hub;
  my $anc_node_ids = $params->{anc_node_ids};
  my $stable_id = $params->{stable_id};
  my $orthologue = $params->{orthologue};
  my $cdb = $params->{cdb};

  my $is_pan = $cdb =~/compara_pan_ensembl/;

  my $target_member_id = $orthologue->{'homologue'}->canonical_member_id;
  return '' unless exists $anc_node_ids->{$target_member_id};

  my @clusterset_ancestor_pairs = @{$anc_node_ids->{$target_member_id}};
  my $is_single_clusterset = scalar @clusterset_ancestor_pairs == 1;

  my @link_str_parts;

  foreach my $clusterset_ancestor_pair (@clusterset_ancestor_pairs) {
    my ($clusterset_id, $anc_node_id) = @$clusterset_ancestor_pair;
    my $gene_tree_constants = $self->get_gene_tree_constants_for_clusterset($clusterset_id);
    my $gene_tree_name = $gene_tree_constants->{name};
    my $link_text = $is_single_clusterset ? 'View Gene Tree' : "View $gene_tree_name Gene Tree";
    my $url_part = $is_pan ? 'PanComparaTree' : $gene_tree_constants->{url_part};

    my $tree_url = $hub->url({
      type   => 'Gene',
      action => $url_part,
      g1     => $stable_id,
      anc    => $anc_node_id,
      r      => undef
    });

    my $class_str = scalar(@link_str_parts) == 0 ? "half-margin top-margin" : "half-margin";
    my $link_str = qq(<p class="$class_str"><a href="$tree_url">$link_text</a></p>);

    push(@link_str_parts, $link_str);
  }

  my $links_str = join('', @link_str_parts);

  return $links_str;
}

sub fetch_anc_node_ids {
  my $self = shift;
  my $cdb  = shift;

  my $object = $self->object || $self->hub->core_object('gene');
  my $member = $object->get_compara_Member({'stable_id' => $object->stable_id, 'cdb' => $cdb});
  my $gene_tree_adaptor = $member->adaptor->db->get_GeneTreeAdaptor;

  return $gene_tree_adaptor->_fetch_all_ref_lca_node_ids_by_Member($member);
}

sub get_gene_tree_constants_for_clusterset {
  my $self = shift;
  my $clusterset_id = shift;

  return $GENE_TREE_CONSTANTS->{$clusterset_id};
}


1;
