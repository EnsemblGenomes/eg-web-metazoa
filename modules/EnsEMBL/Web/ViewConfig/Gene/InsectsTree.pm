=head1 LICENSE

Copyright [1999-2015] Wellcome Trust Sanger Institute and the EMBL-European Bioinformatics Institute
Copyright [2016-2024] EMBL-European Bioinformatics Institute

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

package EnsEMBL::Web::ViewConfig::Gene::InsectsTree;

use strict;
use warnings;

use parent qw(EnsEMBL::Web::ViewConfig::Gene::ComparaTree);


sub init_cacheable {
  ## @override
  my $self = shift;
  $self->SUPER::init_cacheable(@_);
  # The ComparaTree.pm module in eg-web-common reads clusterset id both from the viewconfig,
  # and from the genetree object; and gets confused if they don't match.
  $self->set_default_options({'clusterset_id' => 'insects'});
}

1;