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

package EnsEMBL::Web::Component::DataExport::Orthologs;

use strict;
use warnings;

use previous qw(prepare_form);

use Data::Dumper;

sub prepare_form {
  my ($self) = @_;

  my $form = $self->PREV::prepare_form(@_);

  my $form_node = $form->get_elements_by_tag_name('form')->[0];
  my $genetree_fieldset = $form_node->add_fieldset();
  my $genetree_fields = $self->get_genetree_fields();

  $genetree_fieldset->add_field({
    'type' => 'Radiolist',
    'name' => 'clusterset_id',
    'label' => 'Gene tree',
    'values' => $genetree_fields
  });

  $genetree_fieldset->remove(); # detach the fieldset node to move it arbitrarily to desired position
  my $fieldsets = $form->get_elements_by_tag_name('fieldset');
  my $last_fieldset = pop @$fieldsets;

  $form_node->insert_before($genetree_fieldset, $last_fieldset);

  return $form;
}

sub get_clusterset_ids {
  my ($self) = @_;

  my $hub          = $self->hub;
  my $species_defs = $hub->species_defs;
  my $species = $hub->species;

  my $species_production_name = $species_defs->SPECIES_PRODUCTION_NAME;

  my $clusterset_ids = $hub->species_defs->multi_hash->{'DATABASE_COMPARA'}{'METAZOA_CLUSTERSETS'}{$species_production_name};

  return $clusterset_ids;
}

sub get_genetree_fields {
  my ($self) = @_;

  my $clusterset_ids = $self->get_clusterset_ids();

  my %clusterset_id_to_field_map = (
    default => {
      caption => 'Metazoa',
      value => 'default',
    },
    protostomes => {
      caption => 'Protostomes',
      value => 'protostomes',
    },
    insects => {
      caption => 'Insects',
      value => 'insects',
    }
  );

  my @fields = map { $clusterset_id_to_field_map{$_} } @$clusterset_ids;
  my $fields = \@fields;
  $fields[0]{checked} = 1;

  return $fields;
}

1;
