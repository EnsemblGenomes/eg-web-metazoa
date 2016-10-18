=head1 LICENSE

Copyright [2009-2016] EMBL-European Bioinformatics Institute

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

package EnsEMBL::Web::Component::UserData::TrackHubResults;

### Override the same module in ensembl-webcode

## EG: ENSEMBL-4624
my $assembly_name_mapping = {
  "Aedes aegypti"       =>  {  "AaegL3"  =>  "AaegL1"  },
  "Anopheles albimanus" =>  {  "AalbS1"  =>  "Anop_albi_ALBI9_A_V1"  },
  "Aedes albopictus"    =>  {  "AaloF1"  =>  "A.albopictus_v1.0"  },
  "Anopheles arabiensis"        =>  {  "AaraD1"  =>  "Anop_arab_DONG5_A_V1"  },
  "Anopheles atroparvus"        =>  {  "AatrE1"  =>  "Anop_atro_EBRO_V1"  },
  "Anopheles culicifacies"      =>  {  "AculA1"  =>  "Anop_culi_species_A-37_1_V1"  },
  "Anopheles dirus"     =>  {  "AdirW1"  =>  "Anop_diru_WRAIR2_V1"  },
  "Anopheles epiroticus"        =>  {  "AepiE1"  =>  "Anop_epir_epiroticus2_V1"  },
  "Anopheles farauti"   =>  {  "AfarF2"  =>  "Anop_fara_FAR1_V2"  },
  "Anopheles funestus"  =>  {  "AfunF1"  =>  "Anop_fune_FUMOZ_V1"  },
  "Anopheles gambiae"   =>  {  "AgamP4"  =>  "AgamP3"  },
  "Anopheles merus"     =>  {  "AmerM2"  =>  "Anop_meru_MAF_V1"  },
  "Anopheles minimus"   =>  {  "AminM1"  =>  "Anop_mini_MINIMUS1_V1"  },
  "Anopheles quadriannulatus"   =>  {  "AquaS1"  =>  "Anop_quad_QUAD4_A_V1"  },
  "Anopheles sinensis"  =>  {  "AsinS2"  =>  "Anop_sine_SINENSIS_V1"  },
  "Anopheles stephensi" =>  {  "AsteI2"  =>  "ASM30077v2",
                               "AsteS1"  =>  "Anop_step_SDA-500_V1"  },
  "Biomphalaria glabrata"       =>  {  "BglaB1"  =>  "ASM45736v1"  },
  "Culex quinquefasciatus"      =>  {  "CpipJ2"  =>  "CulPip1.0"  },
  "Glossina austeni"    =>  {  "GausT1"  =>  "Glossina_austeni-1.0.3"  },
  "Glossina brevipalpis"        =>  {  "GbreI1"  =>  "Glossina_brevipalpis_1.0.3"  },
  "Glossina fuscipes fuscipes"  =>  {  "GfusI1"  =>  "Glossina_fuscipes-3.0.2"  },
  "Glossina pallidipes" =>  {  "GpalI1"  =>  "Glossina_pallidipes-1.0.3"  },
  "Glossina palpalis gambiensis"        =>  {  "GpapI1"  =>  "Glossina_palpalis_gambiensis-2.0.1"  },
  "Ixodes scapularis"   =>  {  "IscaW1"  =>  "JCVI_ISG_i3_1.0"  },
  "Lutzomyia longipalpis"       =>  {  "LlonJ1"  =>  "Llon_1.0"  },
  "Musca domestica"     =>  {  "MdomA1"  =>  "Musca_domestica-2.0.2"  },
  "Phlebotomus papatasi"        =>  {  "PpapI1"  =>  "Ppap_1.0"  },
  "Rhodnius prolixus"   =>  {  "RproC3"  =>  "Rhodnius_prolixus-3.0.3"  },
  "Stomoxys calcitrans" =>  {  "ScalU1"  =>  "Stomoxys_calcitrans-1.0.1"  }
};
## EG: the end.

sub content {
  my $self            = shift;
  my $hub             = $self->hub;
  my $sd              = $hub->species_defs;
  my $registry        = $sd->TRACKHUB_REGISTRY_URL;
  my $html;

  ## REST call
  my $rest = EnsEMBL::Web::REST->new($hub, $registry);
  return unless $rest;

  my $post_content = {};
  my @query_params = qw(assembly query);
  foreach (@query_params) {
    $post_content->{$_} = $hub->param($_) if $hub->param($_);
  }
  ## We have to rename this param within the webcode as it
  ## conflicts with one of ours
  $post_content->{'type'} = $hub->param('data_type');

  ## Registry uses species names without spaces
  my $search_species = $hub->param('species') || $hub->param('search_species');
  if ($search_species) {
    (my $species = $search_species) =~ s/_/ /;
    $post_content->{'species'} = $species;
  }

  ## Filter on current assembly
  if ($post_content->{'species'} && !$post_content->{'assembly'}) {
    ## Give preference to the GCA accession id, as it is unique
    #my $assembly = $sd->get_config($hub->param('species'), 'ASSEMBLY_ACCESSION') 
    #                || $sd->get_config($hub->param('species'), 'ASSEMBLY_VERSION');
    ## FIXME: DON'T USE GCA ACCESSION, AS IT'S PATCH-SPECIFIC IN SOME SPECIES
    ## WHICH MEANS THE SEARCH MAY PRODUCE NO RESULTS 
    $post_content->{'assembly'} = $sd->get_config($hub->param('species'), 'ASSEMBLY_VERSION');
  }

  ## EG: ENSEMBL-4624
  ## Temporary solution to return track hub from registry for those assemblies whose name
  ## in core db (VB assembly name) is different from the one on registry (ENA assembly alias).
  ## The track hub registry rest api should support search through assembly synonyms.
  if ($post_content->{'species'} && $post_content->{'assembly'}) {
    my $this_species = $post_content->{'species'};
    my $the_assemblies = $assembly_name_mapping->{$this_species};
    if ( $the_assemblies ) {
      my $this_assembly = $post_content->{'assembly'};
      if ( $the_assemblies->{$this_assembly} ) {
        $post_content->{'assembly'} = $the_assemblies->{$this_assembly};
      }
    }
  }
  ## EG: the end.

  ## Pagination
  my $entries_per_page  = 5;
  my $current_page      = $hub->param('page') || 1;

  my $endpoint = 'api/search';

  my $args = {'method' => 'post', 'content' => $post_content, 
              'url_params' => {'page' => $current_page, 'entries_per_page' => $entries_per_page}};
  
  my ($result, $error) = $rest->fetch($endpoint, $args);

  if ($error) {
    $html = '<p>Sorry, we are unable to fetch data from the Track Hub Registry at the moment</p>';
  }
  else {
    my $count   = $result->{'total_entries'};
    my $plural  = $count == 1 ? '' : 's';
    my $search_url = $hub->url({
                                'type'      => 'UserData', 
                                'action'    => 'TrackHubSearch',
                                'data_type' => $hub->param('data_type') || '',
                                'query'     => $hub->param('query') || '',
                                });
    $html .= sprintf('<p>Found %s track hub%s for this assembly - <a href="%s" class="modal_link">Search again</a></p>', $count, $plural, $search_url);
    my $registry = $hub->species_defs->TRACKHUB_REGISTRY_URL; 

    my $link = $hub->url({'type' => 'UserData', 'action' => 'SelectFile'});
    $html .= $self->info_panel("Can't see the track hub you're interested in?", qq(<p>We only search for hubs compatible with assemblies used on this website - please <a href="$registry" rel="external">search the registry directly</a> for data on other assemblies.</p><p>Alternatively, you can <a href="$link" class="modal_link">manually attach any hub</a> for which you know the URL.</p>));

    if ($count > 0) {

      my $pagination_params = {
                                'current_page'      => $current_page,
                                'total_entries'     => $count,
                                'entries_per_page'  => $entries_per_page,
                                'url_params'        => $post_content
                              };
      ## We want to pass the underscored version in the URL
      delete $pagination_params->{'url_params'}{'species'};
      $pagination_params->{'url_params'}{'search_species'} = $search_species;

      if ($count > $entries_per_page) {
        $html .= $self->_show_pagination($pagination_params);
      }

      foreach (@{$result->{'items'}}) {
        (my $species = $_->{'species'}{'scientific_name'}) =~ s/ /_/;

        ## Is this hub already attached?
        my ($ignore, $params) = check_attachment($self, $_->{'hub'}{'url'});
        my $button;
        if ($params->{'reattach'}) {
          my $label;
          if ($params->{'reattach'} eq 'preconfig') {
            $label = 'Hub attached by default';
          }
          else {
            $label = 'Hub already attached';
          }
          my $species       = $hub->species;
          my $location      = $hub->param('r');
          unless ($location) {
            my $sample_data = $hub->species_defs->get_config($species, 'SAMPLE_DATA');
            $location       = $sample_data->{'LOCATION_PARAM'};
          }
          my $config_url = $hub->url({'species' => $species, 
                                      'type'    => 'Location',
                                      'action'  => 'View',
                                      'r'       => $location,
                                      });
          my $anchor   = 'modal_config_viewbottom';
          if ($params->{'menu'}) {
            $anchor .= '-'.$params->{'menu'};
          }
          $button = qq(<p class="warn button float-right"><a href="$config_url#$anchor">$label</a></p>);
        }
        else {
          my $attachment_url = sprintf('/%s/UserData/AddFile?format=TRACKHUB;species=%s;text=%s;registry=1', $species, $species, $_->{'hub'}{'url'});
          $button = qq(<p class="button float-right"><a href="$attachment_url" class="modal_link">Attach this hub</a></p>);
        }

        $html .= sprintf('<div class="plain-box">
                            <h3>%s</h3>
                            %s
                            <p><b>Description</b>: %s</p>
                            <p><b>Data type</b>: %s</p>
                            <p><b>Number of tracks</b>: %s</p>
                          </div>',
                          $_->{'hub'}{'shortLabel'}, 
                          $button,
                          $_->{'hub'}{'longLabel'},
                          $_->{'type'},
                          $_->{'status'}{'tracks'}{'total'},
                        );
      }
      
      if ($count > $entries_per_page) {
        $html .= $self->_show_pagination($pagination_params);
      }

    }
  }
  return sprintf '<input type="hidden" class="subpanel_type" value="UserData" /><h2>Search Results</h2>%s', $html;

}

1;
