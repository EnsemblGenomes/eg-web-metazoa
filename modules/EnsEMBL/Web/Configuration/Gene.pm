
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

package EnsEMBL::Web::Configuration::Gene;

use previous qw(modify_tree);
use List::MoreUtils qw(any);

sub modify_tree {
  my $self         = shift;

  $self->PREV::modify_tree(@_);

  my $hub          = $self->hub;
  my $species_defs = $hub->species_defs;
  my $species = $hub->species;

  my $species_production_name = $species_defs->SPECIES_PRODUCTION_NAME;

  # Possible gene cluster set ids for metazoa: "default", "protostomes", "insects".
  # A species can have one or more of these trees associated with it
  my $clusterset_ids = $hub->species_defs->multi_hash->{'DATABASE_COMPARA'}{'METAZOA_CLUSTERSETS'}{$species_production_name};

  my $genetree_menu = $self->get_node('Compara_Tree');

  $genetree_menu->set('caption', 'Gene tree (Metazoa)');
  $genetree_menu->set('availability', 'gene database:compara core has_gene_tree');

  my $protostomes_node = $self->create_node('Protostomes_Tree', 'Gene tree (Protostomes)',
    [qw( image EnsEMBL::Web::Component::Gene::ProtostomesTree )],
    { 'availability' => 'gene database:compara core has_gene_tree_protostomes' }
  );

  my $insects_node = $self->create_node('Insects_Tree', 'Gene tree (Insects)',
    [qw( image EnsEMBL::Web::Component::Gene::InsectsTree )],
    { 'availability' => 'gene database:compara core has_gene_tree_insects' }
  );

  my $drosophilidae_node = $self->create_node('Drosophilidae_Tree', 'Gene tree (Drosophilidae)',
    [qw( image EnsEMBL::Web::Component::Gene::DrosophilidaeTree )],
    { 'availability' => $self->has_drosophilidae_gene_tree($clusterset_ids) }
  );

  $genetree_menu->after($protostomes_node);
  $protostomes_node -> after($insects_node);
  $insects_node -> after($drosophilidae_node);

  my $compara_strains_menu = $self->get_node('Strain_Compara');

  if ($compara_strains_menu) {
    $compara_strains_menu->remove();
  }

}

sub has_drosophilidae_gene_tree {
  my ($self, $clusterset_ids) = @_;

  return any { $_ eq "pangenome_drosophila" } @$clusterset_ids;
}

1;
