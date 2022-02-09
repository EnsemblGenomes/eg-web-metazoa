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

package EG::Metazoa::SiteDefs;
use strict;

sub update_conf {
  $SiteDefs::DIVISION = 'metazoa';
  $SiteDefs::ENSEMBL_PORT              = 8001;
  $SiteDefs::ENSEMBL_SERVERNAME        = 'metazoa.ensembl.org';
  $SiteDefs::ENSEMBL_PRIMARY_SPECIES   = 'Aedes_aegypti_lvpagwg'; # Default species
  $SiteDefs::ENSEMBL_SECONDARY_SPECIES = 'Anopheles_gambiae'; # Default species
  $SiteDefs::ENSEMBL_HMMER_ENABLED     = 1;

  $SiteDefs::PRODUCTION_NAMES = [sort qw(
    actinia_equina_gca011057435
    acyrthosiphon_pisum
    adineta_vaga
    aedes_aegypti_lvpagwg
    aedes_albopictus
    amphimedon_queenslandica
    anopheles_albimanus
    anopheles_arabiensis
    anopheles_atroparvus
    anopheles_christyi
    anopheles_coluzzii
    anopheles_coluzzii_ngousso
    anopheles_culicifacies
    anopheles_darlingi
    anopheles_dirus
    anopheles_epiroticus
    anopheles_farauti
    anopheles_funestus
    anopheles_gambiae
    anopheles_maculatus
    anopheles_melas
    anopheles_merus
    anopheles_minimus
    anopheles_quadriannulatus
    anopheles_sinensis
    anopheles_sinensis_china
    anopheles_stephensi
    anopheles_stephensi_indian
    anoplophora_glabripennis
    apis_mellifera
    ascaris_suum
    atta_cephalotes
    belgica_antarctica
    bemisia_tabaci_asiaii5
    bemisia_tabaci_ssa1nig
    bemisia_tabaci_ssa1ug
    bemisia_tabaci_ssa2nig
    bemisia_tabaci_ssa3nig
    bemisia_tabaci_sweetpotug
    biomphalaria_glabrata
    bombus_impatiens
    bombus_terrestris
    bombyx_mori
    branchiostoma_lanceolatum
    brugia_malayi
    caenorhabditis_brenneri
    caenorhabditis_briggsae
    caenorhabditis_elegans
    caenorhabditis_japonica
    caenorhabditis_remanei
    capitella_teleta
    cimex_lectularius
    clytia_hemisphaerica_gca902728285
    crassostrea_gigas
    culex_quinquefasciatus
    culex_quinquefasciatus_gca015732765v1
    culicoides_sonorensis
    danaus_plexippus
    daphnia_magna
    daphnia_pulex
    dendroctonus_ponderosae
    dermacentor_silvarum_gca013339745v1
    dinothrombium_tinctorium
    drosophila_ananassae
    drosophila_erecta
    drosophila_grimshawi
    drosophila_melanogaster
    drosophila_mojavensis
    drosophila_persimilis
    drosophila_pseudoobscura
    drosophila_sechellia
    drosophila_simulans
    drosophila_virilis
    drosophila_willistoni
    drosophila_yakuba
    folsomia_candida
    glossina_austeni
    glossina_brevipalpis
    glossina_fuscipes
    glossina_morsitans
    glossina_pallidipes
    glossina_palpalis
    haemaphysalis_longicornis_gca013339765v1
    heliconius_melpomene
    helobdella_robusta
    hofstenia_miamia
    hyalomma_asiaticum_gca013339685v1
    hymenolepis_microstoma
    ixodes_persulcatus_gca013358835v1
    ixodes_scapularis
    ixodes_scapularis_gca016920785v2
    ixodes_scapularis_ise6
    lepeophtheirus_salmonis
    leptotrombidium_deliense
    lingula_anatina
    loa_loa
    lottia_gigantea
    lucilia_cuprina
    lutzomyia_longipalpis
    mayetiola_destructor
    megaselia_scalaris
    melitaea_cinxia
    mnemiopsis_leidyi
    musca_domestica
    nasonia_vitripennis
    necator_americanus
    nematostella_vectensis
    octopus_bimaculoides
    onchocerca_volvulus
    orchesella_cincta
    pediculus_humanus
    phlebotomus_papatasi
    pristionchus_pacificus
    rhipicephalus_microplus_gca013339725v1
    rhipicephalus_sanguineus_gca013339695v1
    rhodnius_prolixus
    sarcoptes_scabiei
    schistosoma_mansoni
    solenopsis_invicta
    stegodyphus_mimosarum
    stomoxys_calcitrans
    strigamia_maritima
    strongylocentrotus_purpuratus
    strongyloides_ratti
    teleopsis_dalmanni
    tetranychus_urticae
    thelohanellus_kitauei
    trialeurodes_vaporariorum_gca011764245
    tribolium_castaneum
    trichinella_spiralis
    trichoplax_adhaerens
    trichuris_muris
    tigriopus_californicus_gca007210705
    varroa_destructor_gca002443255
    zootermopsis_nevadensis
  )];

  @SiteDefs::ENSEMBL_PERL_DIRS    = (
    $SiteDefs::ENSEMBL_WEBROOT.'/perl',
    $SiteDefs::ENSEMBL_SERVERROOT.'/eg-web-common/perl',
    $SiteDefs::ENSEMBL_SERVERROOT.'/eg-web-metazoa/perl',
  );

  $SiteDefs::EG_DIVISION      = 'metazoa';
  $SiteDefs::SUBDOMAIN_DIR    = 'metazoa';
  $SiteDefs::SITE_NAME        = 'Ensembl Metazoa';
  $SiteDefs::ENSEMBL_SITETYPE = 'Ensembl Metazoa';
  $SiteDefs::SITE_FTP         = 'http://ftp.ensemblgenomes.org/pub/metazoa';
  push @SiteDefs::ENSEMBL_HTDOCS_DIRS,  $SiteDefs::ENSEMBL_SERVERROOT.'/../biomarts/metazoa/biomart-perl/htdocs';
  
  $SiteDefs::ENA_COLLECTION_ID = 223;
  $SiteDefs::ENA_SAMPLE_SEQ    = "MSLKPKIVEFVDVWPRLRCIAESVITLTKVERSVWNTSFSDVYTLCVAQPEPMADRLYGETKHFLEQHVQEMLAKKVLIEGECSHSNGGPDLLQRYYITWMEYSQGIKYLHQLYIYLNQQHIKKQKITDTESFYGNLSSDAAEQMEIGELGLDIWRLYMIEYLSSELVRHILEGIAADRASNGTLDHHRVQIINGVIHSFVEVQDYKKTGSLKLYQELFEGPMLEASGAYYTDEANKLLHRCSVSEYMQEVIRILEYESRRAQKFLHVSSLPKLRKECEEKFINDRLGFIYSECREMVSEERRQDLRNMYVVLKPIPDNLKSELITTFLDHIKSEGLQTVSALKGENIHIAFVENMLKVHHKYQELIADVFENDSLFLSALDKACASVINRRPTERQPCRSAEYVAKYCDTLLKKSKTCEAEIDQKLTNNITIFKYIEDKDVYQKFYSRLLAKRLIHEQSQSMDAEEGMINRLKQACGYEFTNKLHRMFTDISVSVDLNNKFNTHLKDSNVDLGINLAIKVLQAGAWPLGSTQVIPFAVPQEFEKSIKMFEDYYHKLFSGRKLTWLHHMCHGELKLSHLKKSYIVTMQTYQMAIILLFETCDSLSCREIQNTLQLNDETFQKHMQPIIESKLLNASSENLAGETRIELNLDYTNKRTKFK";

  $SiteDefs::GXA = 1;
}

1;
