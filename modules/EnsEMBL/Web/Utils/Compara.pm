=head1 LICENSE

Copyright [1999-2015] Wellcome Trust Sanger Institute and the EMBL-European Bioinformatics Institute
Copyright [2016-2025] EMBL-European Bioinformatics Institute

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

package EnsEMBL::Web::Utils::Compara;

use strict;


sub _get_gene_tree_const_param_sets {
  my ($hub, $compara_db) = @_;

  my @gene_tree_const_param_sets;
  if ($compara_db eq 'compara_pan_ensembl') {
    push(@gene_tree_const_param_sets, [$compara_db, 0, 'default']);
  } else {

    my $species_defs = $hub->species_defs;
    my $species_prod_name = $species_defs->SPECIES_PRODUCTION_NAME;

    my $cdb_info = $species_defs->multi_val('DATABASE_COMPARA');
    if (exists $cdb_info->{'METAZOA_CLUSTERSETS'}->{$species_prod_name}
        && ref($cdb_info->{'METAZOA_CLUSTERSETS'}->{$species_prod_name}) eq 'ARRAY') {
      foreach my $cset_id (@{$cdb_info->{'METAZOA_CLUSTERSETS'}->{$species_prod_name}}) {
        push(@gene_tree_const_param_sets, [$compara_db, 0, $cset_id]);
      }
    }
  }

  return \@gene_tree_const_param_sets;
}


sub _get_non_strain_orthoset_prod_names {
  my ($hub, $url_lookup) = @_;

  my $species_defs = $hub->species_defs;
  my $cdb_info = $species_defs->multi_val('DATABASE_COMPARA');
  my $species_url = $hub->species;

  my $orthoset_prod_names = [];
  if ($species_url && $species_url ne 'Multi') {

    my $species_prod_name = $species_defs->get_config($species_url, 'SPECIES_PRODUCTION_NAME');
    my %species_cset_ids = map {$_ => 1} @{$cdb_info->{'METAZOA_CLUSTERSETS'}->{$species_prod_name}};
    foreach my $prod_name (keys %{$url_lookup}) {
      if (grep { exists $species_cset_ids{$_} } @{$cdb_info->{'METAZOA_CLUSTERSETS'}->{$prod_name}}) {
        push(@{$orthoset_prod_names}, $prod_name);
      }
    }

  } else {
    # Without a species URL, we have no way of knowing which is the
    # relevant clusterset, so we fall back to all Compara species.
    my $prod_name_set = $cdb_info->{'COMPARA_SPECIES'};
    $orthoset_prod_names = [grep { $prod_name_set->{$_} && exists $url_lookup->{$_} } keys %{$prod_name_set}];
  }

  return $orthoset_prod_names;
}


1;
