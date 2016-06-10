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
  $SiteDefs::ENSEMBL_PORT              = 8001;
  $SiteDefs::ENSEMBL_SERVERNAME        = 'metazoa.ensembl.org';
  $SiteDefs::ENSEMBL_PRIMARY_SPECIES   = 'Aedes_aegypti'; # Default species
  $SiteDefs::ENSEMBL_SECONDARY_SPECIES = 'Anopheles_gambiae'; # Default species

  $SiteDefs::ENSEMBL_DATASETS = [sort qw(
    Acyrthosiphon_pisum
    Aedes_aegypti
    Amphimedon_queenslandica
    Anopheles_darlingi
    Anopheles_gambiae
    Apis_mellifera
    Atta_cephalotes
    Belgica_antarctica
    Bombus_impatiens
    Bombyx_mori
    Brugia_malayi
    Caenorhabditis_brenneri
    Caenorhabditis_briggsae
    Caenorhabditis_elegans
    Caenorhabditis_japonica
    Caenorhabditis_remanei
    Capitella_teleta
    Crassostrea_gigas
    Culex_quinquefasciatus
    Danaus_plexippus
    Daphnia_pulex
    Dendroctonus_ponderosae
    Drosophila_ananassae
    Drosophila_erecta
    Drosophila_grimshawi
    Drosophila_melanogaster
    Drosophila_mojavensis
    Drosophila_persimilis
    Drosophila_pseudoobscura
    Drosophila_sechellia
    Drosophila_simulans
    Drosophila_virilis
    Drosophila_willistoni
    Drosophila_yakuba
    Heliconius_melpomene
    Helobdella_robusta
    Ixodes_scapularis
    Lepeophtheirus_salmonis
    Lingula_anatina
    Loa_loa
    Lottia_gigantea
    Lucilia_cuprina
    Megaselia_scalaris
    Melitaea_cinxia
    Mnemiopsis_leidyi
    Nasonia_vitripennis
    Nematostella_vectensis
    Octopus_bimaculoides
    Onchocerca_volvulus
    Pediculus_humanus
    Pristionchus_pacificus
    Rhodnius_prolixus
    Sarcoptes_scabiei
    Schistosoma_mansoni
    Solenopsis_invicta
    Stegodyphus_mimosarum
    Strigamia_maritima
    Strongylocentrotus_purpuratus
    Strongyloides_ratti
    Tetranychus_urticae
    Thelohanellus_kitauei
    Tribolium_castaneum
    Trichinella_spiralis
    Trichoplax_adhaerens
    Zootermopsis_nevadensis
  )];

  @SiteDefs::ENSEMBL_PERL_DIRS    = (
    $SiteDefs::ENSEMBL_WEBROOT.'/perl',
    $SiteDefs::ENSEMBL_SERVERROOT.'/eg-web-common/perl',
    $SiteDefs::ENSEMBL_SERVERROOT.'/eg-web-metazoa/perl',
  );

  $SiteDefs::EG_DIVISION      = 'metazoa';
  $SiteDefs::SITE_NAME        = 'Ensembl Metazoa';
  $SiteDefs::ENSEMBL_SITETYPE = 'Ensembl Metazoa';
  $SiteDefs::SITE_FTP         = 'ftp://ftp.ensemblgenomes.org/pub/metazoa';
  push @SiteDefs::ENSEMBL_HTDOCS_DIRS,  $SiteDefs::ENSEMBL_SERVERROOT.'/../biomarts/metazoa/biomart-perl/htdocs';
  
  $SiteDefs::ENA_COLLECTION_ID = 223;
  $SiteDefs::ENA_SAMPLE_SEQ    = "MSLKPKIVEFVDVWPRLRCIAESVITLTKVERSVWNTSFSDVYTLCVAQPEPMADRLYGETKHFLEQHVQEMLAKKVLIEGECSHSNGGPDLLQRYYITWMEYSQGIKYLHQLYIYLNQQHIKKQKITDTESFYGNLSSDAAEQMEIGELGLDIWRLYMIEYLSSELVRHILEGIAADRASNGTLDHHRVQIINGVIHSFVEVQDYKKTGSLKLYQELFEGPMLEASGAYYTDEANKLLHRCSVSEYMQEVIRILEYESRRAQKFLHVSSLPKLRKECEEKFINDRLGFIYSECREMVSEERRQDLRNMYVVLKPIPDNLKSELITTFLDHIKSEGLQTVSALKGENIHIAFVENMLKVHHKYQELIADVFENDSLFLSALDKACASVINRRPTERQPCRSAEYVAKYCDTLLKKSKTCEAEIDQKLTNNITIFKYIEDKDVYQKFYSRLLAKRLIHEQSQSMDAEEGMINRLKQACGYEFTNKLHRMFTDISVSVDLNNKFNTHLKDSNVDLGINLAIKVLQAGAWPLGSTQVIPFAVPQEFEKSIKMFEDYYHKLFSGRKLTWLHHMCHGELKLSHLKKSYIVTMQTYQMAIILLFETCDSLSCREIQNTLQLNDETFQKHMQPIIESKLLNASSENLAGETRIELNLDYTNKRTKFK";

  $SiteDefs::GXA = 1;
}

1;
