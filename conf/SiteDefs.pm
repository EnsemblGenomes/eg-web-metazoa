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
    acanthaster_planci_gca001949145v1
    acropora_millepora_gca013753865v1
    actinia_equina_gca011057435
    actinia_tenebrosa_gca009602425v1   
    acyrthosiphon_pisum   
    adineta_vaga   
    aedes_aegypti_lvpagwg  
    aedes_albopictus   
    agrilus_planipennis_gca000699045v2
    amphibalanus_amphitrite_gca019059575v1  
    amphimedon_queenslandica   
    anneissia_japonica_gca011630105v1   
    anopheles_albimanus  
    anopheles_arabiensis   
    anopheles_atroparvus  
    anopheles_atroparvus_gca914969975
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
    aphidius_gifuensis_gca014905175v1
    apis_mellifera
    aplysia_californica_gca000002075v2
    ascaris_suum
    asterias_rubens_gca902459465v3
    athalia_rosae_gca000344095v2
    atta_cephalotes   
    bactrocera_dorsalis_gca000789215v2  
    bactrocera_latifrons_gca001853355v1
    bactrocera_tryoni_gca016617805v2
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
    centruroides_sculpturatus_gca000671375v2   
    ceratitis_capitata_gca000347755v4  
    cimex_lectularius
    clytia_hemisphaerica_gca902728285   
    copidosoma_floridanum_gca000648655v2  
    cotesia_glomerata_gca020080835v1   
    crassostrea_gigas   
    crassostrea_virginica_gca002022765v4   
    culex_quinquefasciatus   
    culex_quinquefasciatus_gca015732765v1  
    culicoides_sonorensis
    danaus_plexippus
    daphnia_magna   
    daphnia_magna_gca020631705v2
    daphnia_pulex   
    dendroctonus_ponderosae_gca000355655v1   
    dendronephthya_gigantea_gca004324835v1  
    dermacentor_silvarum_gca013339745v1
    dermatophagoides_pteronyssinus_gca001901225v2   
    diabrotica_virgifera_gca003013835v2
    dimorphilus_gyrociliatus_gca904063045v1   
    dinothrombium_tinctorium   
    diuraphis_noxia_gca001186385v1   
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
    eurytemora_affinis_gca000591075v2
    exaiptasia_diaphana_gca001417965v1
    folsomia_candida  
    gigantopelta_aegis_gca016097555v1
    glossina_austeni
    glossina_brevipalpis
    glossina_fuscipes   
    glossina_morsitans  
    glossina_pallidipes
    glossina_palpalis   
    haemaphysalis_longicornis_gca013339765v1  
    heliconius_melpomene   
    helobdella_robusta  
    hermetia_illucens_gca905115235v1   
    hofstenia_miamia  
    homarus_americanus_gca018991925v1
    hyalella_azteca_gca000764305v2
    hyalomma_asiaticum_gca013339685v1
    hydra_vulgaris_gca000004095v1   
    hymenolepis_microstoma  
    ixodes_persulcatus_gca013358835v1
    ixodes_scapularis   
    ixodes_scapularis_gca016920785v2  
    leptinotarsa_decemlineata_gca000500325v2   
    limulus_polyphemus_gca000517525v1
    lingula_anatina_gca001039355v2   
    lottia_gigantea  
    lucilia_cuprina
    lutzomyia_longipalpis   
    lytechinus_variegatus_gca018143015v1  
    mayetiola_destructor   
    megaselia_scalaris  
    melitaea_cinxia
    mercenaria_mercenaria_gca014805675v2
    metaseiulus_occidentalis_gca000255335v1
    mizuhopecten_yessoensis_gca002113885v2   
    mnemiopsis_leidyi   
    monomorium_pharaonis_gca013373865v2  
    musca_domestica
    nasonia_vitripennis   
    necator_americanus  
    nematostella_vectensis   
    octopus_bimaculoides
    octopus_bimaculoides_gca001194135v1
    octopus_sinensis_gca006345805v1  
    onchocerca_volvulus
    onthophagus_taurus_gca000648695v2   
    ooceraea_biroi_gca003672135v1   
    orbicella_faveolata_gca002042975v1   
    orchesella_cincta  
    orussus_abietinus_gca000612105v2
    owenia_fusiformis_gca903813345v1   
    parasteatoda_tepidariorum_gca000365465v3
    patiria_miniata_gca015706575v1  
    pediculus_humanus
    penaeus_japonicus_gca017312705v1
    penaeus_monodon_gca015228065v1
    penaeus_vannamei_gca003789085v1
    phlebotomus_papatasi
    phlebotomus_perniciosus_gca918844115
    pocillopora_damicornis_gca003704095v1
    pollicipes_pollicipes_gca011947565v2   
    pomacea_canaliculata_gca003073045v1
    portunus_trituberculatus_gca017591435v1   
    priapulus_caudatus_gca000485595v2  
    pristionchus_pacificus   
    procambarus_clarkii_gca020424385v2
    rhagoletis_pomonella_gca013731165v1   
    rhipicephalus_microplus_gca013339725v1   
    rhipicephalus_sanguineus_gca013339695v1  
    rhodnius_prolixus
    rhopalosiphum_maidis_gca003676215v3   
    saccoglossus_kowalevskii_gca000003605v1   
    sarcoptes_scabiei  
    schistosoma_mansoni
    sipha_flava_gca003268045v1
    solenopsis_invicta
    stegodyphus_mimosarum   
    stomoxys_calcitrans   
    strigamia_maritima   
    strongylocentrotus_purpuratus  
    strongyloides_ratti
    stylophora_pistillata_gca002571385v1
    teleopsis_dalmanni
    tetranychus_urticae   
    thelohanellus_kitauei   
    tigriopus_californicus_gca007210705  
    trialeurodes_vaporariorum_gca011764245   
    tribolium_castaneum   
    trichinella_spiralis   
    trichogramma_pretiosum_gca000599845v3  
    trichoplax_adhaerens   
    trichuris_muris   
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
