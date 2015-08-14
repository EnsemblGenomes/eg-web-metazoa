=head1 LICENSE

Copyright [2009-2014] EMBL-European Bioinformatics Institute

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

package EG::Metazoa::SiteDefs;
use strict;

sub update_conf {
    $SiteDefs::ENSEMBL_PORT           = 8001;

    $SiteDefs::ENSEMBL_SERVERNAME     = 'metazoa.ensembl.org';

    map {delete($SiteDefs::__species_aliases{$_}) } keys %SiteDefs::__species_aliases;

    $SiteDefs::ENSEMBL_PRIMARY_SPECIES  = 'Aedes_aegypti'; # Default species
    $SiteDefs::ENSEMBL_SECONDARY_SPECIES  = 'Anopheles_gambiae'; # Default species

# --- Release 1
  $SiteDefs::__species_aliases{ 'Aedes_aegypti'                  } = [qw(aa aaeg aedes )];
  $SiteDefs::__species_aliases{ 'Anopheles_gambiae'              } = [qw(ag agam mosquito mos anopheles)];
  $SiteDefs::__species_aliases{ 'Drosophila_melanogaster'        } = [qw(dm dmel fly D.melanogaster)];
  $SiteDefs::__species_aliases{ 'Caenorhabditis_elegans'         } = [qw(ce cele worm elegans C.elegans)];
  $SiteDefs::__species_aliases{ 'Culex_quinquefasciatus'} = [qw(cq culex common_house_mosquito Culex_pipiens C.quinquefasciatus C.pipiens )];
  $SiteDefs::__species_aliases{ 'Ixodes_scapularis'} = [qw(is ixodes blacklegged_tick black_legged_tick I.scapularis)];

# --- Release 2
  $SiteDefs::__species_aliases{ 'Drosophila_ananassae'        } = [qw(Drosophila_ananassae)];
  $SiteDefs::__species_aliases{ 'Drosophila_erecta'        } = [qw(Drosophila_erecta)];
  $SiteDefs::__species_aliases{ 'Drosophila_grimshawi'        } = [qw(Drosophila_grimshawi)];
  $SiteDefs::__species_aliases{ 'Drosophila_mojavensis'        } = [qw(Drosophila_mojavensis)];
  $SiteDefs::__species_aliases{ 'Drosophila_persimilis'        } = [qw(Drosophila_persimilis)];
  $SiteDefs::__species_aliases{ 'Drosophila_pseudoobscura'        } = [qw(Drosophila_pseudoobscura)];
  $SiteDefs::__species_aliases{ 'Drosophila_sechellia'        } = [qw(Drosophila_sechellia)];
  $SiteDefs::__species_aliases{ 'Drosophila_simulans'        } = [qw(Drosophila_simulans)];
  $SiteDefs::__species_aliases{ 'Drosophila_virilis'        } = [qw(Drosophila_virilis)];
  $SiteDefs::__species_aliases{ 'Drosophila_willistoni'        } = [qw(Drosophila_willistoni)];
  $SiteDefs::__species_aliases{ 'Drosophila_yakuba'        } = [qw(Drosophila_yakuba)];


  $SiteDefs::__species_aliases{ 'Caenorhabditis_brenneri'         } = [qw(cbre)];
  $SiteDefs::__species_aliases{ 'Caenorhabditis_briggsae'         } = [qw(cbri)];
  $SiteDefs::__species_aliases{ 'Caenorhabditis_japonica'         } = [qw(cjap)];
  $SiteDefs::__species_aliases{ 'Caenorhabditis_remanei'         } = [qw(crem)];

# --- Release 4
  $SiteDefs::__species_aliases{ 'Pediculus_humanus'         } = [qw(ph pediculus body_louse louse)];

# --- Release 5
  $SiteDefs::__species_aliases{ 'Pristionchus_pacificus' } = [qw(pp pristionchus)];

# --- Release 7
  $SiteDefs::__species_aliases{ 'Acyrthosiphon_pisum' } = [qw(ap apisum)];

# --- Release 8
  $SiteDefs::__species_aliases{ 'Strongylocentrotus_purpuratus' } = [qw(Strongylocentrotus_purpuratus)];
  $SiteDefs::__species_aliases{ 'Schistosoma_mansoni' } = [qw(Schistosoma_mansoni)];
  $SiteDefs::__species_aliases{ 'Nematostella_vectensis' } = [qw(Nematostella_vectensis)];
  $SiteDefs::__species_aliases{ 'Trichoplax_adhaerens' } = [qw(Trichoplax_adhaerens)];
  $SiteDefs::__species_aliases{ 'Apis_mellifera' } = [qw(Apis_mellifera)];

# --- Release 9
   $SiteDefs::__species_aliases{ 'Daphnia_pulex' } = [qw(Daphnia_pulex)];

# --- Release 11
  
    $SiteDefs::__species_aliases{ 'Amphimedon_queenslandica' } = [qw(Amphimedon_queenslandica)];
# --- Release 12
    $SiteDefs::__species_aliases{ 'Tribolium_castaneum' } = [qw(Tribolium_castaneum)];
    $SiteDefs::__species_aliases{ 'Bombyx_mori' } = [qw(Bombyx_mori)];
    $SiteDefs::__species_aliases{ 'Atta_cephalotes' } = [qw(Atta_cephalotes)];
# --- Release 13
    $SiteDefs::__species_aliases{ 'Trichinella_spiralis' } = [qw(trichinella_spiralis)];
# --- Release 14
    $SiteDefs::__species_aliases{ 'Danaus_plexippus' } = [qw(danaus_plexippus)];    
    $SiteDefs::__species_aliases{ 'Heliconius_melpomene' } = [qw(heliconius_melpomene)];    

# --- Release 16
    $SiteDefs::__species_aliases{ 'Nasonia_vitripennis' } = [qw(nasonia_vitripennis)];    
    $SiteDefs::__species_aliases{ 'Anopheles_darlingi' } = [qw(anopheles_darlingi)];    

# --- Release 18
    $SiteDefs::__species_aliases{ 'Brugia_malayi' } = [qw(brugia_malayi)];    
    $SiteDefs::__species_aliases{ 'Loa_loa' } = [qw(loa_loa)];  
    $SiteDefs::__species_aliases{ 'Megaselia_scalaris' } = [qw(megaselia_scalaris)];    
    $SiteDefs::__species_aliases{ 'Strigamia_maritima' } = [qw(strigamia_maritima)];  

# --- Release 19
    $SiteDefs::__species_aliases{'Tetranychus_urticae'} = [qw(Tetranychus_urticae)];
    $SiteDefs::__species_aliases{'Rhodnius_prolixus'} = [qw(Rhodnius_prolixus)];
    $SiteDefs::__species_aliases{'Lottia_gigantea'} = [qw(Lottia_gigantea)];
    $SiteDefs::__species_aliases{'Helobdella_robusta'} = [qw(Helobdella_robusta)];
    $SiteDefs::__species_aliases{'Capitella_teleta'} = [qw(Capitella_teleta)];
    $SiteDefs::__species_aliases{'Crassostrea_gigas'} = [qw(Crassostrea_gigas)];

# --- Release 21
    $SiteDefs::__species_aliases{'Dendroctonus_ponderosae'} = [qw(Dendroctonus_ponderosae)];
    $SiteDefs::__species_aliases{'Solenopsis_invicta'} = [qw(Solenopsis_invicta)];

# --- Release 22
    $SiteDefs::__species_aliases{'Onchocerca_volvulus'} = [qw(Onchocerca_volvulus)];

# --- Release 23
    $SiteDefs::__species_aliases{'Mnemiopsis_leidyi'} = [qw(Mnemiopsis_leidyi)];
    $SiteDefs::__species_aliases{'Melitaea_cinxia'} = [qw(Melitaea_cinxia)];
    $SiteDefs::__species_aliases{'Zootermopsis_nevadensis'} = [qw(Zootermopsis_nevadensis)];

    @SiteDefs::ENSEMBL_PERL_DIRS    = (
                                           $SiteDefs::ENSEMBL_WEBROOT.'/perl',
                                           $SiteDefs::ENSEMBL_SERVERROOT.'/eg-web-common/perl',
                                           $SiteDefs::ENSEMBL_SERVERROOT.'/eg-web-metazoa/perl',
				       );

    $SiteDefs::EG_DIVISION = 'metazoa';
    $SiteDefs::SITE_NAME = 'Ensembl Metazoa';
    $SiteDefs::ENSEMBL_SITETYPE = 'Ensembl Metazoa';
    $SiteDefs::SITE_FTP= 'ftp://ftp.ensemblgenomes.org/pub/metazoa';
    push @SiteDefs::ENSEMBL_HTDOCS_DIRS,  $SiteDefs::ENSEMBL_SERVERROOT.'/../biomarts/metazoa/biomart-perl/htdocs';
    
    $SiteDefs::DOCSEARCH_INDEX_DIR = $SiteDefs::ENSEMBL_SERVERROOT.'/eg-web-metazoa/data/docsearch';

    $SiteDefs::ENA_COLLECTION_ID = 223;

    $SiteDefs::ENA_SAMPLE_SEQ = "MSLKPKIVEFVDVWPRLRCIAESVITLTKVERSVWNTSFSDVYTLCVAQPEPMADRLYGETKHFLEQHVQEMLAKKVLIEGECSHSNGGPDLLQRYYITWMEYSQGIKYLHQLYIYLNQQHIKKQKITDTESFYGNLSSDAAEQMEIGELGLDIWRLYMIEYLSSELVRHILEGIAADRASNGTLDHHRVQIINGVIHSFVEVQDYKKTGSLKLYQELFEGPMLEASGAYYTDEANKLLHRCSVSEYMQEVIRILEYESRRAQKFLHVSSLPKLRKECEEKFINDRLGFIYSECREMVSEERRQDLRNMYVVLKPIPDNLKSELITTFLDHIKSEGLQTVSALKGENIHIAFVENMLKVHHKYQELIADVFENDSLFLSALDKACASVINRRPTERQPCRSAEYVAKYCDTLLKKSKTCEAEIDQKLTNNITIFKYIEDKDVYQKFYSRLLAKRLIHEQSQSMDAEEGMINRLKQACGYEFTNKLHRMFTDISVSVDLNNKFNTHLKDSNVDLGINLAIKVLQAGAWPLGSTQVIPFAVPQEFEKSIKMFEDYYHKLFSGRKLTWLHHMCHGELKLSHLKKSYIVTMQTYQMAIILLFETCDSLSCREIQNTLQLNDETFQKHMQPIIESKLLNASSENLAGETRIELNLDYTNKRTKFK";

    $SiteDefs::GXA = 1;
}

1;
