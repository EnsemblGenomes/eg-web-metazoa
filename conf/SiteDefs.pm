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
    acromyrmex_echinatior_gca000204515v1rs
    acropora_millepora_gca013753865v1
    actinia_equina_gca011057435
    actinia_tenebrosa_gca009602425v1   
    acyrthosiphon_pisum_gca005508785v2rs
    adelges_cooleyi_gca023614345v1rs
    adineta_vaga   
    aedes_aegypti_lvpagwg  
    aedes_albopictus   
    aethina_tumida_gca024364675v1rs
    agrilus_planipennis_gca000699045v2
    amblyteles_armatorius_gca933228735v1
    amphibalanus_amphitrite_gca019059575v1  
    amphimedon_queenslandica_gca000090795v2rs
    amyelois_transitella_gca001186105v1rs
    ancistrocerus_nigricornis_gca916049575v1
    anneissia_japonica_gca011630105v1   
    anopheles_albimanus  
    anopheles_arabiensis   
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
    anthonomus_grandis_gca022605725v3rs
    aphidius_gifuensis_gca014905175v1
    apis_dorsata_gca000469605v1rs
    apis_florea_gca000184785v2rs
    apis_mellifera
    aplysia_californica_gca000002075v2
    ascaris_suum
    asterias_rubens_gca902459465v3
    athalia_rosae_gca000344095v2
    athalia_rosae_gca917208135v1
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
    bemisia_tabaci_uganda1
    bicyclus_anynana_gca900239965v1rs
    biomphalaria_glabrata  
    bombus_huntii_gca024542735v1rs
    bombus_impatiens   
    bombus_terrestris   
    bombus_terrestris_gca910591885v2
    bombus_vancouverensis_gca011952275v1rs
    bombyx_mandarina_gca003987935v1rs
    bombyx_mori  
    branchiostoma_lanceolatum
    brugia_malayi   
    caenorhabditis_brenneri   
    caenorhabditis_briggsae  
    caenorhabditis_elegans   
    caenorhabditis_japonica   
    caenorhabditis_remanei   
    camponotus_floridanus_gca003227725v1rs
    capitella_teleta   
    cataglyphis_hispanica_gca021464435v1rs
    centruroides_sculpturatus_gca000671375v2   
    ceratitis_capitata_gca000347755v4  
    chelonus_insularis_gca013357705v1rs
    cimex_lectularius
    clytia_hemisphaerica_gca902728285   
    copidosoma_floridanum_gca000648655v2  
    cotesia_glomerata_gca020080835v1   
    crassostrea_angulata_gca025612915v2rs
    crassostrea_gigas   
    crassostrea_virginica_gca002022765v4 
    cryptotermes_secundus_gca002891405v2rs  
    culex_quinquefasciatus   
    culex_quinquefasciatus_gca015732765v1  
    culicoides_sonorensis
    daktulosphaira_vitifoliae_gca025091365v1rs
    danaus_plexippus
    daphnia_magna_gca020631705v2
    daphnia_pulex   
    daphnia_pulex_gca021134715v1rs
    daphnia_pulicaria_gca021234035v2rs
    dendroctonus_ponderosae_gca000355655v1   
    dendronephthya_gigantea_gca004324835v1  
    dermacentor_andersoni_gca023375885v2rs
    dermacentor_silvarum_gca013339745v1
    dermatophagoides_pteronyssinus_gca001901225v2   
    diabrotica_virgifera_gca003013835v2
    diabrotica_virgifera_gca917563875v2rs
    dimorphilus_gyrociliatus_gca904063045v1   
    dinothrombium_tinctorium   
    diuraphis_noxia_gca001186385v1   
    dreissena_polymorpha_gca020536995v1rs
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
    dufourea_novaeangliae_gca001272555v1rs
    echinococcus_granulosus_gca000524195v1rs   
    eufriesea_mexicana_gca001483705v1rs
    eurytemora_affinis_gca000591075v2
    exaiptasia_diaphana_gca001417965v1
    folsomia_candida  
    galendromus_occidentalis_gca000255335v2rs
    galleria_mellonella_gca003640425v2rs
    gigantopelta_aegis_gca016097555v1
    glossina_austeni
    glossina_brevipalpis
    glossina_fuscipes   
    glossina_morsitans  
    glossina_pallidipes
    glossina_palpalis   
    glyphotaelius_pellucidus_gca936435175v1
    habropoda_laboriosa_gca001263275v1rs
    haemaphysalis_longicornis_gca013339765v1
    haliotis_rubra_gca003918875v1rs 
    haliotis_rufescens_gca023055435v1rs 
    harpegnathos_saltator_gca003227715v2rs
    heliconius_melpomene   
    helicoverpa_armigera_gca023701775v1rs
    helicoverpa_zea_gca022581195v1rs
    helobdella_robusta  
    hermetia_illucens_gca905115235v1   
    hofstenia_miamia  
    homalodisca_vitripennis_gca021130785v2rs
    homarus_americanus_gca018991925v1
    hyalella_azteca_gca000764305v2
    hyalomma_asiaticum_gca013339685v1
    hydra_vulgaris_gca000004095v1   
    hydra_vulgaris_gca022113875v1rs
    hymenolepis_microstoma  
    hypsibius_exemplaris_gca002082055v1
    ichneumon_xanthorius_gca917499995v1
    ixodes_persulcatus_gca013358835v1
    ixodes_scapularis   
    ixodes_scapularis_gca016920785v2  
    ixodes_scapularis_ise6
    leguminivora_glycinivorella_gca023078275v1rs
    lepeophtheirus_salmonis_gca016086655v3rs
    leptinotarsa_decemlineata_gca000500325v2   
    leptotrombidium_deliense
    limnephilus_lunatus_gca917563855v2
    limnephilus_marmoratus_gca917880885v1
    limnephilus_rhombicus_gca929108145v2
    limnoperna_fortunei_gca944474755v1
    limulus_polyphemus_gca000517525v1
    linepithema_humile_gca000217595v1rs
    lineus_longissimus_gca910592395v2
    lingula_anatina_gca001039355v2 
    loa_loa  
    lottia_gigantea  
    lucilia_cuprina
    lucilia_cuprina_gca022045245v1rs
    lutzomyia_longipalpis   
    lytechinus_variegatus_gca018143015v1  
    macrosteles_quadrilineatus_gca028750875v1rs
    manduca_sexta_gca014839805v1rs
    mayetiola_destructor   
    megachile_rotundata_gca000220905v1rs
    megaselia_scalaris  
    melitaea_cinxia
    melitaea_cinxia_gca905220565v1
    mercenaria_mercenaria_gca014805675v2
    mizuhopecten_yessoensis_gca002113885v2   
    mnemiopsis_leidyi   
    monomorium_pharaonis_gca013373865v2  
    musca_domestica
    mya_arenaria_gca026914265v1rs
    nasonia_vitripennis   
    necator_americanus  
    nematostella_vectensis   
    neodiprion_lecontei_gca021901455v1rs
    neodiprion_pinetum_gca021155775v1rs
    nilaparvata_lugens_gca014356525v1rs
    octopus_bimaculoides
    octopus_bimaculoides_gca001194135v1
    octopus_sinensis_gca006345805v1  
    onchocerca_volvulus
    onthophagus_taurus_gca000648695v2   
    ooceraea_biroi_gca003672135v1
    oppia_nitens_gca028296485v1rs   
    orbicella_faveolata_gca002042975v1   
    orchesella_cincta  
    orussus_abietinus_gca000612105v2
    ostrea_edulis_gca023158985v1rs
    owenia_fusiformis_gca903813345v1   
    panonychus_citri_gca014898815v1rs
    parasteatoda_tepidariorum_gca000365465v3
    patella_pellucida_gca917208275v1
    patella_vulgata_gca932274485v1
    patiria_miniata_gca015706575v1  
    pectinophora_gossypiella_gca024362695v1rs
    pediculus_humanus
    penaeus_chinensis_gca019202785v2rs
    penaeus_japonicus_gca017312705v1
    penaeus_monodon_gca015228065v1
    penaeus_vannamei_gca003789085v1
    phlebotomus_papatasi
    phlebotomus_perniciosus_gca918844115v2
    pocillopora_damicornis_gca003704095v1
    pogonomyrmex_barbatus_gca000187915v1rs
    polistes_canadensis_gca001313835v1rs
    polistes_dominula_gca001465965v1rs
    polistes_fuscatus_gca010416935v1rs
    pollicipes_pollicipes_gca011947565v2   
    pomacea_canaliculata_gca003073045v1
    pomphorhynchus_laevis_gca012934845v2gb
    portunus_trituberculatus_gca017591435v1   
    priapulus_caudatus_gca000485595v2  
    pristionchus_pacificus   
    procambarus_clarkii_gca020424385v2
    rhagoletis_pomonella_gca013731165v1   
    rhipicephalus_microplus_gca013339725v1   
    rhipicephalus_sanguineus_gca013339695v1  
    rhipicephalus_sanguineus_gca013339695v2rs
    rhodnius_prolixus
    rhopalosiphum_maidis_gca003676215v3   
    saccoglossus_kowalevskii_gca000003605v1   
    sarcoptes_scabiei  
    schistocerca_americana_gca021461395v2rs
    schistocerca_cancellata_gca023864275v2rs
    schistocerca_gregaria_gca023897955v2rs
    schistocerca_nitens_gca023898315v2rs
    schistocerca_piceifrons_gca021461385v2rs
    schistocerca_serialis_gca023864345v3rs
    schistosoma_haematobium_gca000699445v2rs
    schistosoma_mansoni
    sipha_flava_gca003268045v1
    sitophilus_oryzae_gca002938485v2rs
    solenopsis_invicta
    stegodyphus_dumicola_gca010614865v2rs
    stegodyphus_mimosarum   
    stomoxys_calcitrans   
    strigamia_maritima   
    strongylocentrotus_purpuratus  
    strongyloides_ratti
    stylophora_pistillata_gca002571385v1
    teleopsis_dalmanni
    tetranychus_urticae   
    thelohanellus_kitauei   
    thrips_palmi_gca012932325v1rs
    tigriopus_californicus_gca007210705  
    trialeurodes_vaporariorum_gca011764245   
    tribolium_castaneum   
    trichinella_spiralis   
    trichogramma_pretiosum_gca000599845v3  
    trichoplax_adhaerens   
    trichuris_muris   
    varroa_destructor_gca002443255   
    varroa_jacobsoni_gca002532875v1rs
    venturia_canescens_gca019457755v1rs
    zerene_cesonia_gca012273895v2rs
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
