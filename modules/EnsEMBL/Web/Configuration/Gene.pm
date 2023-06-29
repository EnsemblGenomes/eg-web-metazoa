
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
use Data::Dumper;

sub modify_tree {
  my $self         = shift;
  my $hub          = $self->hub;
  my $species_defs = $hub->species_defs;


  my $compara_menu = $self->get_node('Compara');
  my $genetree_menu = $self->get_node('Compara_Tree');

  $genetree_menu->set('caption', 'Gene tree (default)');

  $genetree_menu->after($self->create_node('Protostomes_Tree', 'Gene tree (Protostomes)',
    [qw( image EnsEMBL::Web::Component::Gene::ProtostomesTree )],
    { 'availability' => 'gene database:compara core has_gene_tree' }
  ));
}

1;
