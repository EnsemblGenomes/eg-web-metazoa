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

package EnsEMBL::Web::Constants;

use strict;
use warnings;


sub GENE_TREE_CONSTANTS {
### Metazoa Compara lookup for various gene-tree views
  my ($cdb, $strain, $clusterset_id) = @_;

  my $GENE_TREE_CONSTANTS = {
    compara_pan_ensembl => {
      name => 'Pan-taxonomic Compara',
      action => 'PanComparaTree',
      component => 'PanComparaTree',
    },
    default => {
      name => 'Metazoa',
      component => 'ComparaTree',
      action => 'Compara_Tree',
    },
    protostomes => {
      name => 'Protostomes',
      component => 'ProtostomesTree',
      action => 'Protostomes_Tree',
    },
    insects => {
      name => 'Insects',
      component => 'InsectsTree',
      action => 'Insects_Tree',
    },
    pangenome_drosophila => {
      name => 'Drosophilidae',
      component => 'DrosophilidaeTree',
      action => 'Drosophilidae_Tree',
    },
  };

  my $gene_tree_view_key;
  if ($cdb eq 'compara_pan_ensembl') {
    $gene_tree_view_key = 'compara_pan_ensembl';
  } else {
    $gene_tree_view_key = $clusterset_id // 'default';
  }

  return $GENE_TREE_CONSTANTS->{$gene_tree_view_key};
}


1;
