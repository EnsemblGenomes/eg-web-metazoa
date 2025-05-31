=head1 LICENSE

Copyright [2009-2025] EMBL-European Bioinformatics Institute

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

package EnsEMBL::Web::SpeciesDefs;

use strict;
use warnings;


sub _extract_identifying_prefix {
  # Takes a label and extracts the portion of that label before the first opening parenthesis.
  # As of Ensembl Metazoa 115, this pulls out the scientific name, which uniquely identifies
  # most genomes in Metazoa Compara, and all of the genomes that are in a genomic alignment.
  my ($self, $label) = @_;
  if ($label =~ /(?<prefix>.+?)(?: - \(|\()/) {
    $label = $+{'prefix'};
  }
  return $label;
}


1;
