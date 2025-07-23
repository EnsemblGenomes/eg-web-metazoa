=head1 LICENSE

Copyright [2009-2024] EMBL-European Bioinformatics Institute

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
    aedes_albopictus_gca035046485v1rs
    aethina_tumida_gca024364675v1rs
    agrilus_planipennis_gca000699045v2
    amblyomma_americanum_gca030143305v2gb
    amblyteles_armatorius_gca933228735v1
    amphibalanus_amphitrite_gca019059575v1  
    amphimedon_queenslandica_gca000090795v2rs
    amyelois_transitella_gca032362555v1rs
    anastrepha_ludens_gca028408465v1rs
    anastrepha_obliqua_gca027943255v1rs
    ancistrocerus_nigricornis_gca916049575v1
    anneissia_japonica_gca011630105v1   
    anopheles_albimanus_gca000349125v2vb
    anopheles_albimanus_gca013758885v1rs
    anopheles_arabiensis   
    anopheles_atroparvus_gca914969975
    anopheles_christyi
    anopheles_coluzzii_gca004136515v2vb
    anopheles_coluzzii_gca943734685v1rs
    anopheles_culicifacies
    anopheles_darlingi
    anopheles_darlingi_gca943734745v1rs
    anopheles_dirus 
    anopheles_epiroticus  
    anopheles_farauti
    anopheles_funestus
    anopheles_funestus_gca943734845v1rs
    anopheles_gambiae   
    anopheles_gambiae_gca943734735v2vb
    anopheles_maculatus   
    anopheles_melas  
    anopheles_merus
    anopheles_minimus   
    anopheles_quadriannulatus_gca000349065v1vb
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
    argiope_bruennichi_gca947563725v1rs
    ascaris_suum
    asterias_rubens_gca902459465v3
    athalia_rosae_gca917208135v1
    atta_cephalotes   
    bactrocera_dorsalis_gca023373825v1rs
    bactrocera_latifrons_gca001853355v1
    bactrocera_neohumeralis_gca024586455v2rs
    bactrocera_oleae_gca001188975v4rs
    bactrocera_tryoni_gca016617805v2
    belgica_antarctica
    bemisia_tabaci_asiaii5
    bemisia_tabaci_ssa1nig
    bemisia_tabaci_ssa1ug   
    bemisia_tabaci_ssa2nig  
    bemisia_tabaci_ssa3nig  
    bemisia_tabaci_uganda1
    bicyclus_anynana_gca947172395v1
    biomphalaria_glabrata_gca947242115v1rs
    bombus_affinis_gca024516045v2rs
    bombus_huntii_gca024542735v1rs
    bombus_impatiens   
    bombus_terrestris_gca910591885v2
    bombus_vancouverensis_gca011952275v1rs
    bombyx_mandarina_gca003987935v1rs
    bombyx_mori_gca030269925v1rs
    bradysia_coprophila_gca014529535v1rs
    branchiostoma_lanceolatum
    branchiostoma_lanceolatum_gca035083965v1rs
    brugia_malayi   
    caenorhabditis_brenneri   
    caenorhabditis_briggsae  
    caenorhabditis_elegans   
    caenorhabditis_japonica   
    caenorhabditis_remanei   
    caenorhabditis_remanei_gca010183535v1rs
    camponotus_floridanus_gca003227725v1rs
    capitella_teleta   
    cataglyphis_hispanica_gca021464435v1rs
    centruroides_sculpturatus_gca000671375v2   
    ceratitis_capitata_gca000347755v4  
    chelonus_insularis_gca013357705v1rs
    cherax_quadricarinatus_gca026875155v2rs
    chrysoperla_carnea_gca905475395v1rs
    cimex_lectularius
    clytia_hemisphaerica_gca902728285   
    contarinia_nasturtii_gca009176525v2rs
    copidosoma_floridanum_gca000648655v2  
    coremacera_marginata_gca914767935v1
    cotesia_glomerata_gca020080835v1   
    crassostrea_angulata_gca025612915v2rs
    crassostrea_virginica_gca002022765v4 
    cryptotermes_secundus_gca002891405v2rs  
    ctenocephalides_felis_gca003426905v1rs
    culex_pipiens_gca016801865v2rs
    culex_quinquefasciatus_gca015732765v1vb  
    culicoides_brevitarsis_gca036172545v1rs
    culicoides_sonorensis
    cydia_pomonella_gca033807575v1rs
    cylas_formicarius_gca029955315v1rs
    daktulosphaira_vitifoliae_gca025091365v1rs
    danaus_plexippus
    danaus_plexippus_gca018135715v1
    daphnia_carinata_gca022539665v3rs
    daphnia_magna_gca020631705v2   
    daphnia_pulex_gca021134715v1rs
    daphnia_pulicaria_gca021234035v2rs
    dendroctonus_ponderosae_gca020466585v2rs
    dendronephthya_gigantea_gca004324835v1  
    dermacentor_andersoni_gca023375885v2rs
    dermacentor_silvarum_gca013339745v2rs
    dermatophagoides_pteronyssinus_gca001901225v2   
    diabrotica_virgifera_gca917563875v2rs
    diaphorina_citri_gca000475195v1rs
    dimorphilus_gyrociliatus_gca904063045v1   
    dinothrombium_tinctorium   
    diorhabda_carinulata_gca026250575v1rs
    diorhabda_sublineata_gca026230105v1rs
    diuraphis_noxia_gca001186385v1   
    dreissena_polymorpha_gca020536995v1rs
    drosophila_albomicans_gca009650485v2rs
    drosophila_ananassae_gca017639315v2rs
    drosophila_arizonae_gca001654025v1rs
    drosophila_biarmipes_gca025231255v1rs
    drosophila_bipectinata_gca030179905v2rs
    drosophila_busckii_gca011750605v1rs
    drosophila_elegans_gca018152505v1rs
    drosophila_erecta_gca003286155v2rs
    drosophila_eugracilis_gca018153835v1rs
    drosophila_ficusphila_gca018152265v1rs
    drosophila_grimshawi_gca018153295v1rs
    drosophila_guanche_gca900245975v1rs
    drosophila_gunungcola_gca025200985v1rs
    drosophila_hydei_gca003285905v2rs
    drosophila_innubila_gca004354385v1rs
    drosophila_kikkawai_gca030179895v2rs
    drosophila_mauritiana_gca004382145v1rs
    drosophila_melanogaster   
    drosophila_miranda_gca003369915v2rs
    drosophila_mojavensis_gca018153725v1rs
    drosophila_montana_gca035044405v1rs
    drosophila_nasuta_gca023558535v2rs
    drosophila_navojoa_gca001654015v2rs
    drosophila_novamexicana_gca003285875v3rs
    drosophila_obscura_gca018151105v1rs
    drosophila_persimilis_gca003286085v2rs
    drosophila_pseudoobscura
    drosophila_pseudoobscura_gca009870125v2rs
    drosophila_rhopaloa_gca018152115v1rs 
    drosophila_santomea_gca016746245v2rs
    drosophila_sechellia_gca004382195v2rs
    drosophila_serrata_gca002093755v2rs
    drosophila_simulans_gca016746395v2rs
    drosophila_subobscura_gca008121235v1rs
    drosophila_subpulchrella_gca014743375v2rs
    drosophila_sulfurigaster_gca023558435v2rs
    drosophila_suzukii_gca037355615v1rs
    drosophila_takahashii_gca030179915v2rs
    drosophila_teissieri_gca016746235v2rs
    drosophila_tropicalis_gca018151085v1rs
    drosophila_virilis_gca030788295v1rs
    drosophila_willistoni_gca018902025v2rs
    drosophila_yakuba_gca016746365v2rs
    dufourea_novaeangliae_gca001272555v1rs
    echinococcus_granulosus_gca000524195v1rs   
    eriocheir_sinensis_gca024679095v1rs
    eufriesea_mexicana_gca001483705v1rs
    eufriesea_mexicana_gca001483705v2rs
    eurytemora_carolleeae_gca000591075v1rs
    exaiptasia_diaphana_gca001417965v1
    folsomia_candida  
    galendromus_occidentalis_gca000255335v2rs
    gigantopelta_aegis_gca016097555v1
    glossina_austeni
    glossina_brevipalpis
    glossina_fuscipes   
    glossina_morsitans  
    glossina_pallidipes
    glossina_palpalis   
    glyphotaelius_pellucidus_gca936435175v1
    gordionus_sp_gca954871325v1rs
    habropoda_laboriosa_gca001263275v1rs
    haemaphysalis_longicornis_gca013339765v2vb
    halichondria_panicea_gca963675165v1rs
    haliotis_rubra_gca003918875v1rs 
    haliotis_rufescens_gca023055435v1rs 
    halyomorpha_halys_gca000696795v2rs
    harpegnathos_saltator_gca003227715v2rs
    heliconius_melpomene   
    helicoverpa_armigera_gca030705265v1rs
    helicoverpa_zea_gca022581195v1rs
    helobdella_robusta  
    hermetia_illucens_gca905115235v1   
    hofstenia_miamia  
    homalodisca_vitripennis_gca021130785v2rs
    homarus_americanus_gca018991925v1
    homarus_gammarus_gca958450375v1
    hyalella_azteca_gca000764305v2
    hyalomma_asiaticum_gca013339685v2vb
    hydra_vulgaris_gca022113875v1rs
    hydra_vulgaris_gca038396675v1rs
    hydractinia_symbiolongicarpus_gca029227915v2rs
    hylaeus_anthracinus_gca026225885v1rs
    hylaeus_volcanicus_gca026283585v1rs
    hymenolepis_microstoma  
    hypsibius_exemplaris_gca002082055v1
    ichneumon_xanthorius_gca917499995v1
    ischnura_elegans_gca921293095v1rs
    ixodes_persulcatus_gca013358835v2vb
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
    linepithema_humile_gca040581485v1rs
    lineus_longissimus_gca910592395v2
    lingula_anatina_gca001039355v2
    liolophura_japonica_gca032854445v1rs
    loa_loa  
    lottia_gigantea  
    lucilia_cuprina
    lucilia_cuprina_gca022045245v1rs
    lucilia_sericata_gca015586225v1rs
    lutzomyia_longipalpis   
    lutzomyia_longipalpis_gca024334085v1rs
    lytechinus_pictus_gca015342785v2rs
    lytechinus_pictus_gca037042905v1rs
    lytechinus_variegatus_gca018143015v1  
    machimus_atricapillus_gca933228815v1
    macrobrachium_nipponense_gca015104395v2rs
    macrosteles_quadrilineatus_gca028750875v1rs
    magallana_gigas_gca963853765v1rs
    malaya_genurostris_gca030247185v2rs
    manduca_sexta_gca014839805v1rs
    mayetiola_destructor   
    megachile_rotundata_gca000220905v1rs
    megaselia_scalaris  
    melanaphis_sacchari_gca002803265v2rs
    melitaea_cinxia_gca905220565v1
    mercenaria_mercenaria_gca014805675v2
    mercenaria_mercenaria_gca021730395v1rs
    microctonus_aethiopoides_gca030272655v1cm
    microctonus_aethiopoides_gca030272935v1cm
    microctonus_aethiopoides_gca030347275v1cm
    microctonus_hyperodae_gca030347285v1cm
    microplitis_demolitor_gca026212275v2rs
    microplitis_mediator_gca029852145v1rs
    mizuhopecten_yessoensis_gca002113885v2   
    mnemiopsis_leidyi   
    monomorium_pharaonis_gca013373865v2  
    musca_domestica_gca030504385v2rs
    mya_arenaria_gca026914265v1rs
    myopa_tessellatipennis_gca943737955v2
    mytilus_californianus_gca021869535v1rs
    nasonia_vitripennis   
    necator_americanus  
    necator_americanus_gca031761385v1rs
    nematostella_vectensis   
    nematostella_vectensis_gca932526225v1rs
    neodiprion_lecontei_gca021901455v1rs
    neodiprion_pinetum_gca021155775v1rs
    nilaparvata_lugens_gca014356525v1rs
    octopus_bimaculoides_gca001194135v2rs
    octopus_sinensis_gca006345805v1  
    onchocerca_volvulus
    onthophagus_taurus_gca000648695v2   
    ooceraea_biroi_gca003672135v1
    oppia_nitens_gca028296485v1rs   
    orbicella_faveolata_gca002042975v1   
    orchesella_cincta  
    ornithodoros_turicata_gca037126465v1rs
    orussus_abietinus_gca000612105v2
    ostrea_edulis_gca023158985v1rs
    ostrea_edulis_gca947568905v1rs
    owenia_fusiformis_gca903813345v1   
    panonychus_citri_gca014898815v1rs
    paramacrobiotus_metropolitanus_gca019649055v1rs
    parasteatoda_tepidariorum_gca000365465v3
    patella_pellucida_gca917208275v1
    patella_vulgata_gca932274485v1
    patiria_miniata_gca015706575v1  
    pecten_maximus_gca902652985v1rs
    pectinophora_gossypiella_gca024362695v1rs
    pediculus_humanus
    penaeus_chinensis_gca019202785v2rs
    penaeus_japonicus_gca017312705v1
    penaeus_monodon_gca015228065v1
    penaeus_vannamei_gca003789085v1
    phlebotomus_argentipes_gca947086385v1rs
    phlebotomus_papatasi
    phlebotomus_papatasi_gca024763615v2rs
    phlebotomus_perniciosus_gca918844115v2
    photinus_pyralis_gca008802855v1rs
    platynereis_dumerilii_gca026936325v1cm
    plodia_interpunctella_gca027563975v1rs
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
    rhipicephalus_sanguineus_gca013339695v2rs
    rhodnius_prolixus
    rhopalosiphum_maidis_gca003676215v3   
    saccoglossus_kowalevskii_gca000003605v1   
    sarcoptes_scabiei  
    sarcoptes_scabiei_gca020844145v1gb
    schistocerca_americana_gca021461395v2rs
    schistocerca_cancellata_gca023864275v2rs
    schistocerca_gregaria_gca023897955v2rs
    schistocerca_nitens_gca023898315v2rs
    schistocerca_piceifrons_gca021461385v2rs
    schistocerca_serialis_gca023864345v3rs
    schistosoma_haematobium_gca000699445v2rs
    schistosoma_haematobium_gca000699445v3rs
    schistosoma_mansoni
    schmidtea_mediterranea_gca045838255v1cm
    schmidtea_mediterranea_gca045838265v1cm
    schmidtea_nova_gca044892505v1cm
    schmidtea_polychroa_gca044892525v1cm
    sipha_flava_gca003268045v1
    sitophilus_oryzae_gca002938485v2rs
    solenopsis_invicta
    spodoptera_frugiperda_gca023101765v3rs
    stegodyphus_dumicola_gca010614865v2rs
    stegodyphus_mimosarum   
    steinernema_hermaphroditum_gca030435675v2gb
    stomoxys_calcitrans_gca963082655v1rs
    strigamia_maritima   
    strongylocentrotus_purpuratus  
    strongyloides_ratti
    stylophora_pistillata_gca002571385v1
    stylophora_pistillata_gca002571385v2
    teleopsis_dalmanni
    tenebrio_molitor_gca907166875v3gb
    tetranychus_urticae   
    thelohanellus_kitauei   
    thrips_palmi_gca012932325v1rs
    tigriopus_californicus_gca007210705  
    topomyia_yanbarensis_gca030247195v1rs
    toxorhynchites_rutilus_gca029784135v1rs
    trialeurodes_vaporariorum_gca011764245   
    tribolium_castaneum_gca031307605v1rs
    tribolium_madens_gca015345945v1rs
    trichinella_spiralis   
    trichogramma_pretiosum_gca000599845v3  
    trichoplax_adhaerens   
    trichuris_muris   
    uloborus_diversus_gca026930045v1rs  
    uranotaenia_lowii_gca029784155v1rs
    varroa_destructor_gca002443255   
    varroa_jacobsoni_gca002532875v1rs
    venturia_canescens_gca019457755v1rs
    vespa_mandarinia_gca014083535v2rs
    wyeomyia_smithii_gca029784165v1rs
    zerene_cesonia_gca012273895v2rs
    zeugodacus_cucurbitae_gca028554725v2rs
    zootermopsis_nevadensis
  )];

  @SiteDefs::ENSEMBL_PERL_DIRS    = (
    $SiteDefs::ENSEMBL_WEBROOT.'/perl',
    $SiteDefs::ENSEMBL_SERVERROOT.'/eg-web-common/perl',
    $SiteDefs::ENSEMBL_SERVERROOT.'/eg-web-metazoa/perl',
  );

  $SiteDefs::ENSEMBL_VEP_PLUGIN_CONFIG_FILES  = [
	  $SiteDefs::ENSEMBL_SERVERROOT.'/VEP_plugins/plugin_config.txt', # VEP_plugins is cloned from github.com/ensembl-variation/VEP_plugins
	  $SiteDefs::ENSEMBL_SERVERROOT.'/eg-web-metazoa/conf/vep_plugins_web_config.txt'
  ];

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
