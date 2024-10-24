=head1 LICENSE

Copyright [2009-2023] EMBL-European Bioinformatics Institute

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

package EnsEMBL::Web::Component::Gene::DrosophilidaeTree;

use strict;
use warnings;

use base qw (EnsEMBL::Web::Component::Gene::ComparaTree);

sub _init {
  my ($self) = @_;

  # A horrible hack, but a necessary one.
  my $cgi_input = $self->hub->input;
  $cgi_input->param('clusterset_id', 'pangenome_drosophila');

  return $self->SUPER::_init(@_);
}

1;
