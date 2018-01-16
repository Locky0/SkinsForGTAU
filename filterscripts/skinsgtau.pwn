/*
	Skins disponibilizadas pelo GTA: Underground
	Créditos:
	* Toda equipe do GTA: Underground
	
	Script criado por Locky
*/
#include <a_samp>
#include <mSelection>

#define FILTERSCRIPT

#define DIR_III     "skins/III/"
#define DIR_VC      "skins/vc/"
#define DIR_LCS     "skins/lcs/"

#define DialogSelectSkin    14250

// Nomes dos arquivos DFF de GTA III
new files_skin_dff_III[][] = {"III_army.dff","III_asuka.dff","III_b_man1.dff","III_b_man2.dff","III_b_man3.dff","III_b_wom1.dff","III_b_wom2.dff",
"III_b_wom3.dff","III_bomber.dff","III_cas_man.dff","III_cas_wom.dff","III_cat.dff","III_chunky.dff","III_col1.dff",
"III_col2.dff","III_col3.dff","III_colrob.dff","III_const1.dff","III_const2.dff","III_cop.dff","III_criminal01.dff",
"III_criminal02.dff","III_ct_man1.dff","III_ct_man2.dff","III_ct_wom1.dff","III_ct_wom2.dff","III_curly.dff","III_dealer.dff",
"III_docker1.dff","III_docker2.dff","III_eight.dff","III_eight2.dff","III_fan_man1.dff","III_fan_man2.dff","III_fan_wom.dff",
"III_fatfemale01.dff","III_fatfemale02.dff","III_fatmale01.dff","III_fatmale02.dff","III_fbi.dff","III_female01.dff","III_female02.dff",
"III_female03.dff","III_fireman.dff","III_frankie.dff","III_gang01.dff","III_gang02.dff","III_gang03.dff","III_gang04.dff",
"III_gang05.dff","III_gang06.dff","III_gang07.dff","III_gang08.dff","III_gang09.dff","III_gang10.dff","III_gang11.dff",
"III_gang12.dff","III_gang13.dff","III_gang14.dff","III_goon.dff","III_hos_man.dff","III_hos_wom.dff","III_joey.dff","III_joey2.dff",
"III_keeper.dff","III_kenji.dff","III_li_man1.dff","III_li_man2.dff","III_li_wom1.dff","III_li_wom2.dff","III_lips.dff","III_love.dff",
"III_love2.dff","III_luigi.dff","III_male01.dff","III_male02.dff","III_male03.dff","III_maria.dff","III_medic.dff","III_micky.dff",
"III_miguel.dff","III_misty.dff","III_mod_man.dff","III_mod_wom.dff","III_ojg.dff","III_ojg2.dff","III_ojg_p.dff","III_p_man1.dff",
"III_p_man2.dff","III_p_wom1.dff","III_p_wom2.dff","III_pimp.dff","III_player.dff","III_playerp.dff","III_prostitute.dff","III_prostitute2.dff",
"III_ray.dff","III_robber.dff","III_s_guard.dff","III_sam.dff","III_scum_man.dff","III_scum_wom.dff","III_shopper1.dff","III_shopper2.dff",
"III_shopper3.dff","III_st_man.dff","III_st_wom.dff","III_stud_man.dff","III_stud_wom.dff","III_swat.dff","III_tanner.dff","III_taxi_d.dff",
"III_tony.dff","III_worker1.dff","III_worker2.dff"};
// Nomes dos arquivos TXD de GTA III
new files_skin_txd_III[][]={"III_army.txd","III_asuka.txd","III_b_man1.txd","III_b_man2.txd","III_b_man3.txd","III_b_wom1.txd","III_b_wom2.txd",
"III_b_wom3.txd","III_bomber.txd","III_cas_man.txd","III_cas_wom.txd","III_cat.txd","III_chunky.txd","III_col1.txd",
"III_col2.txd","III_col3.txd","III_colrob.txd","III_const1.txd","III_const2.txd","III_cop.txd","III_criminal01.txd",
"III_criminal02.txd","III_ct_man1.txd","III_ct_man2.txd","III_ct_wom1.txd","III_ct_wom2.txd","III_curly.txd","III_dealer.txd",
"III_docker1.txd","III_docker2.txd","III_eight.txd","III_eight2.txd","III_fan_man1.txd","III_fan_man2.txd","III_fan_wom.txd",
"III_fatfemale01.txd","III_fatfemale02.txd","III_fatmale01.txd","III_fatmale02.txd","III_fbi.txd","III_female01.txd","III_female02.txd",
"III_female03.txd","III_fireman.txd","III_frankie.txd","III_gang01.txd","III_gang02.txd","III_gang03.txd","III_gang04.txd","III_gang05.txd",
"III_gang06.txd","III_gang07.txd","III_gang08.txd","III_gang09.txd","III_gang10.txd","III_gang11.txd","III_gang12.txd","III_gang13.txd",
"III_gang14.txd","III_goon.txd","III_hos_man.txd","III_hos_wom.txd","III_joey.txd","III_joey2.txd","III_keeper.txd","III_kenji.txd",
"III_li_man1.txd","III_li_man2.txd","III_li_wom1.txd","III_li_wom2.txd","III_lips.txd","III_love.txd","III_love2.txd","III_luigi.txd",
"III_male01.txd","III_male02.txd","III_male03.txd","III_maria.txd","III_medic.txd","III_micky.txd","III_miguel.txd","III_misty.txd",
"III_mod_man.txd","III_mod_wom.txd","III_ojg.txd","III_ojg2.txd","III_ojg_p.txd","III_p_man1.txd","III_p_man2.txd","III_p_wom1.txd",
"III_p_wom2.txd","III_pimp.txd","III_player.txd","III_playerp.txd","III_prostitute.txd","III_prostitute2.txd","III_ray.txd",
"III_robber.txd","III_s_guard.txd","III_sam.txd","III_scum_man.txd","III_scum_wom.txd","III_shopper1.txd","III_shopper2.txd","III_shopper3.txd",
"III_st_man.txd","III_st_wom.txd","III_stud_man.txd","III_stud_wom.txd","III_swat.txd","III_tanner.txd","III_taxi_d.txd","III_tony.txd",
"III_worker1.txd","III_worker2.txd"};
//////////////////////////////////////////
// Nome dos arquivos DFF de VC
new files_skin_dff_vc[][]={"vc_BFOBE.dff","vc_BFYPR.dff","vc_BFYST.dff","vc_BMOBE.dff","vc_C_worker.dff","vc_Cba.dff","vc_Cla.dff","vc_Clb.dff",
"vc_Gda.dff","vc_Gdb.dff","vc_HFOST.dff","vc_HFOTR.dff","vc_HFYCG.dff","vc_HFYMD.dff","vc_HFYRI.dff","vc_HFYST.dff","vc_Hna.dff","vc_Hnb.dff",
"vc_IGBudy2.dff","vc_IGBudy3.dff","vc_IGCandy.dff","vc_IGColon.dff","vc_IGDiaz.dff","vc_IGDick.dff","vc_IGGonz.dff","vc_IGHlary.dff",
"vc_IGHlry2.dff","vc_IGJezz.dff","vc_IGKen.dff","vc_IGMerc.dff","vc_IGMike2.dff","vc_IGPercy.dff","vc_IGPhil.dff","vc_IGPhil3.dff","vc_IGSonny.dff",
"vc_IGalscb.dff","vc_IGmike.dff","vc_IGphil2.dff","vc_Mba.dff","vc_Mbb.dff","vc_Pgb.dff","vc_S_keep.dff","vc_Sga.dff","vc_Stripa.dff",
"vc_WFYLG.dff","vc_WMYLG.dff","vc_army.dff","vc_avery.dff","vc_bfori.dff","vc_bfost.dff","vc_bfotr.dff","vc_bfybe.dff","vc_bfyri.dff",
"vc_bga.dff","vc_bgb.dff","vc_bka.dff","vc_bkb.dff","vc_bmodk.dff","vc_bmost.dff","vc_bmotr.dff","vc_bmybb.dff","vc_bmybe.dff","vc_bmybu.dff",
"vc_bmycr.dff","vc_bmypi.dff","vc_bmyri.dff","vc_bmyst.dff","vc_burger.dff","vc_cbb.dff","vc_chef.dff","vc_colonel.dff","vc_cop.dff",
"vc_courier.dff","vc_csapoulet.dff","vc_csdeal.dff","vc_csdirec.dff","vc_csdwayn.dff","vc_csjetro.dff","vc_cskelly.dff","vc_cskentpaul.dff",
"vc_csmaude.dff","vc_cspapa.dff","vc_csumbto.dff","vc_dgoon1.dff","vc_diaz.dff","vc_fbi.dff","vc_fsfa.dff","vc_hfobe.dff","vc_hfori.dff",
"vc_hfybe.dff","vc_hfybu.dff","vc_hmobe.dff","vc_hmoca.dff","vc_hmodk.dff","vc_hmori.dff","vc_hmost.dff","vc_hmotr.dff","vc_hmyap.dff",
"vc_hmybe.dff","vc_hmyri.dff","vc_hmyst.dff","vc_hnc.dff","vc_igbuddy.dff","vc_igmerc2.dff","vc_jfoto.dff","vc_jmoto.dff","vc_kentpaul.dff",
"vc_lawyer.dff","vc_male01.dff","vc_medic.dff","vc_mitch.dff","vc_pga.dff","vc_play10.dff","vc_play11.dff","vc_play12.dff","vc_player.dff",
"vc_player2.dff","vc_player3.dff","vc_player4.dff","vc_player5.dff","vc_player6.dff","vc_player7.dff","vc_player8.dff","vc_player9.dff",
"vc_psycho.dff","vc_sam.dff","vc_sgb.dff","vc_sgc.dff","vc_sonnygoona.dff","vc_sonnygoonb.dff","vc_spandxa.dff","vc_spandxb.dff",
"vc_stripb.dff","vc_stripc.dff","vc_swat.dff","vc_taxi_d.dff","vc_vcfd01.dff","vc_vice1.dff","vc_vice2.dff","vc_vice3.dff",
"vc_vice4.dff","vc_vice5.dff","vc_vice6.dff","vc_vice7.dff","vc_vice8.dff","vc_wfobe.dff","vc_wfogo.dff","vc_wfori.dff","vc_wfosh.dff",
"vc_wfost.dff","vc_wfotr.dff","vc_wfybe.dff","vc_wfybu.dff","vc_wfycst.dff","vc_wfyg1.dff","vc_wfyg2.dff","vc_wfyjg.dff","vc_wfypr.dff",
"vc_wfyri.dff","vc_wfysh.dff","vc_wfysk.dff","vc_wfyst.dff","vc_wmobe.dff","vc_wmobu.dff","vc_wmoca.dff","vc_wmogo.dff","vc_wmori.dff",
"vc_wmost.dff","vc_wmotr.dff","vc_wmybe.dff","vc_wmybu.dff","vc_wmycr.dff","vc_wmycw.dff","vc_wmygo.dff","vc_wmyjg.dff","vc_wmypi.dff",
"vc_wmyri.dff","vc_wmysk.dff","vc_wmyst.dff"};
// Nome dos arquivos TXD de VC
new files_skin_txd_vc[][]={"vc_BFOBE.txd","vc_BFYPR.txd","vc_BFYST.txd","vc_BMOBE.txd","vc_C_worker.txd","vc_Cba.txd","vc_Cla.txd","vc_Clb.txd",
"vc_Gda.txd","vc_Gdb.txd","vc_HFOST.txd","vc_HFOTR.txd","vc_HFYCG.txd","vc_HFYMD.txd","vc_HFYRI.txd","vc_HFYST.txd","vc_Hna.txd","vc_Hnb.txd",
"vc_IGBudy2.txd","vc_IGBudy3.txd","vc_IGCandy.txd","vc_IGColon.txd","vc_IGDiaz.txd","vc_IGDick.txd","vc_IGGonz.txd","vc_IGHlary.txd",
"vc_IGHlry2.txd","vc_IGJezz.txd","vc_IGKen.txd","vc_IGMerc.txd","vc_IGMike2.txd","vc_IGPercy.txd","vc_IGPhil.txd","vc_IGPhil3.txd","vc_IGSonny.txd",
"vc_IGalscb.txd","vc_IGmike.txd","vc_IGphil2.txd","vc_Mba.txd","vc_Mbb.txd","vc_Pgb.txd","vc_S_keep.txd","vc_Sga.txd","vc_Stripa.txd",
"vc_WFYLG.txd","vc_WMYLG.txd","vc_army.txd","vc_avery.txd","vc_bfori.txd","vc_bfost.txd","vc_bfotr.txd","vc_bfybe.txd","vc_bfyri.txd",
"vc_bga.txd","vc_bgb.txd","vc_bka.txd","vc_bkb.txd","vc_bmodk.txd","vc_bmost.txd","vc_bmotr.txd","vc_bmybb.txd","vc_bmybe.txd","vc_bmybu.txd",
"vc_bmycr.txd","vc_bmypi.txd","vc_bmyri.txd","vc_bmyst.txd","vc_burger.txd","vc_cbb.txd","vc_chef.txd","vc_colonel.txd","vc_cop.txd",
"vc_courier.txd","vc_csapoulet.txd","vc_csdeal.txd","vc_csdirec.txd","vc_csdwayn.txd","vc_csjetro.txd","vc_cskelly.txd","vc_cskentpaul.txd",
"vc_csmaude.txd","vc_cspapa.txd","vc_csumbto.txd","vc_dgoon1.txd","vc_diaz.txd","vc_fbi.txd","vc_fsfa.txd","vc_hfobe.txd","vc_hfori.txd",
"vc_hfybe.txd","vc_hfybu.txd","vc_hmobe.txd","vc_hmoca.txd","vc_hmodk.txd","vc_hmori.txd","vc_hmost.txd","vc_hmotr.txd","vc_hmyap.txd",
"vc_hmybe.txd","vc_hmyri.txd","vc_hmyst.txd","vc_hnc.txd","vc_igbuddy.txd","vc_igmerc2.txd","vc_jfoto.txd","vc_jmoto.txd","vc_kentpaul.txd",
"vc_lawyer.txd","vc_male01.txd","vc_medic.txd","vc_mitch.txd","vc_pga.txd","vc_play10.txd","vc_play11.txd","vc_play12.txd","vc_player.txd",
"vc_player2.txd","vc_player3.txd","vc_player4.txd","vc_player5.txd","vc_player6.txd","vc_player7.txd","vc_player8.txd","vc_player9.txd",
"vc_psycho.txd","vc_sam.txd","vc_sgb.txd","vc_sgc.txd","vc_soonygoona.txd","vc_soonygoonb.txd","vc_spandxa.txd","vc_spandxb.txd",
"vc_stripb.txd","vc_stripc.txd","vc_swat.txd","vc_taxi_d.txd","vc_vcfd01.txd","vc_vice1.txd","vc_vice2.txd","vc_vice3.txd","vc_vice4.txd",
"vc_vice5.txd","vc_vice6.txd","vc_vice7.txd","vc_vice8.txd","vc_wfobe.txd","vc_wfogo.txd","vc_wfori.txd","vc_wfosh.txd","vc_wfost.txd",
"vc_wfotr.txd","vc_wfybe.txd","vc_wfybu.txd","vc_wfycst.txd","vc_wfyg1.txd","vc_wfyg2.txd","vc_wfyjg.txd","vc_wfypr.txd","vc_wfyri.txd",
"vc_wfysh.txd","vc_wfysk.txd","vc_wfyst.txd","vc_wmobe.txd","vc_wmobu.txd","vc_wmoca.txd","vc_wmogo.txd","vc_wmori.txd","vc_wmost.txd",
"vc_wmotr.txd","vc_wmybe.txd","vc_wmybu.txd","vc_wmycr.txd","vc_wmycw.txd","vc_wmygo.txd","vc_wmyjg.txd","vc_wmypi.txd","vc_wmyri.txd",
"vc_wmysk.txd","vc_wmyst.txd"};
///////////////////////////////////////////
// Nome dos arquivos DFF de LCS
new files_skin_dff_lcs[][]={"lcs_HITMAN.dff","lcs_army.dff","lcs_avery.dff","lcs_b_man2.dff","lcs_b_man3.dff","lcs_b_wom1.dff","lcs_b_wom2.dff",
"lcs_baby.dff","lcs_biker1.dff","lcs_biker2.dff","lcs_camp_man.dff","lcs_camp_wom.dff","lcs_cas_man.dff","lcs_cas_wom.dff","lcs_casa.dff",
"lcs_const1.dff","lcs_const2.dff","lcs_cop.dff","lcs_criminal01.dff","lcs_criminal02.dff","lcs_cscheryl.dff","lcs_csgimp.dff","lcs_csguard.dff",
"lcs_cshobo.dff","lcs_cskas.dff","lcs_cslove.dff","lcs_csmac.dff","lcs_csmar.dff","lcs_csmarb.dff","lcs_csray.dff","lcs_cssal.dff","lcs_cssalp.dff",
"lcs_cstool.dff","lcs_csuncle.dff","lcs_csvinc.dff","lcs_ct_man1.dff","lcs_ct_man2.dff","lcs_ct_wom1.dff","lcs_ct_wom2.dff","lcs_deliass.dff",
"lcs_docker1.dff","lcs_docker2.dff","lcs_donovan.dff","lcs_fan_man1.dff","lcs_fan_man2.dff","lcs_fan_wom.dff","lcs_fatfemale01.dff",
"lcs_fatfemale02.dff","lcs_fatmale01.dff","lcs_fatmale02.dff","lcs_fbi.dff","lcs_female01.dff","lcs_female02.dff","lcs_female03.dff",
"lcs_fireman.dff","lcs_gang01.dff","lcs_gang02.dff","lcs_gang03.dff","lcs_gang04.dff","lcs_gang05.dff","lcs_gang06.dff","lcs_gang07.dff",
"lcs_gang08.dff","lcs_gang09.dff","lcs_gang10.dff","lcs_gang11.dff","lcs_gang12.dff","lcs_gang13.dff","lcs_gang14.dff","lcs_gang15.dff",
"lcs_gang16.dff","lcs_gang17.dff","lcs_gang18.dff","lcs_grdang1.dff","lcs_grdang2.dff","lcs_grease.dff","lcs_gun_ass.dff","lcs_holejog.dff",
"lcs_hopper.dff","lcs_hos_man.dff","lcs_hos_wom.dff","lcs_kas_01.dff","lcs_kazuki.dff","lcs_li_man1.dff","lcs_li_man2.dff","lcs_li_wom1.dff",
"lcs_li_wom2.dff","lcs_m_hole.dff","lcs_male01.dff","lcs_male02.dff","lcs_male03.dff","lcs_mastor.dff","lcs_medic.dff","lcs_mickeyh.dff",
"lcs_miguel.dff","lcs_mod_man.dff","lcs_mod_wom.dff","lcs_ned_01.dff","lcs_p_man1.dff","lcs_p_man2.dff","lcs_p_wom1.dff","lcs_p_wom2.dff",
"lcs_paulie.dff","lcs_philc.dff","lcs_pimp.dff","lcs_plr11.dff","lcs_plr9.dff","lcs_pman2.dff","lcs_prostitute.dff","lcs_sal_01.dff",
"lcs_sal_con.dff","lcs_scum_man.dff","lcs_scum_wom.dff","lcs_shopper1.dff","lcs_shopper2.dff","lcs_shopper3.dff","lcs_st_man.dff","lcs_st_wom.dff",
"lcs_stud_man.dff","lcs_stud_wom.dff","lcs_swat.dff","lcs_taxi_d.dff","lcs_thug_01.dff","lcs_thug_02.dff","lcs_tool_01.dff","lcs_toolsuit.dff",
"lcs_vinc_01.dff","lcs_wayne.dff","lcs_wkas01.dff","lcs_wom3.dff","lcs_worker1.dff","lcs_worker2.dff"};
// Nome dos arquivos TXD de LCS
new files_skin_txd_lcs[][]={"lcs_HITMAN.txd","lcs_army.txd","lcs_avery.txd","lcs_b_man2.txd","lcs_b_man3.txd","lcs_b_wom1.txd","lcs_b_wom2.txd",
"lcs_baby.txd","lcs_biker1.txd","lcs_biker2.txd","lcs_camp_man.txd","lcs_camp_wom.txd","lcs_cas_man.txd","lcs_cas_wom.txd","lcs_casa.txd",
"lcs_const1.txd","lcs_const2.txd","lcs_cop.txd","lcs_criminal01.txd","lcs_criminal02.txd","lcs_cscheryl.txd","lcs_csgimp.txd","lcs_csguard.txd",
"lcs_cshobo.txd","lcs_cskas.txd","lcs_cslove.txd","lcs_csmac.txd","lcs_csmar.txd","lcs_csmarb.txd","lcs_csray.txd","lcs_cssal.txd","lcs_cssalp.txd",
"lcs_cstool.txd","lcs_csuncle.txd","lcs_csvinc.txd","lcs_ct_man1.txd","lcs_ct_man2.txd","lcs_ct_wom1.txd","lcs_ct_wom2.txd","lcs_deliass.txd",
"lcs_docker1.txd","lcs_docker2.txd","lcs_donovan.txd","lcs_fan_man1.txd","lcs_fan_man2.txd","lcs_fan_wom.txd","lcs_fatfemale01.txd",
"lcs_fatfemale02.txd","lcs_fatmale01.txd","lcs_fatmale02.txd","lcs_fbi.txd","lcs_female01.txd","lcs_female02.txd","lcs_female03.txd",
"lcs_fireman.txd","lcs_gang01.txd","lcs_gang02.txd","lcs_gang03.txd","lcs_gang04.txd","lcs_gang05.txd","lcs_gang06.txd","lcs_gang07.txd",
"lcs_gang08.txd","lcs_gang09.txd","lcs_gang10.txd","lcs_gang11.txd","lcs_gang12.txd","lcs_gang13.txd","lcs_gang14.txd","lcs_gang15.txd",
"lcs_gang16.txd","lcs_gang17.txd","lcs_gang18.txd","lcs_grdang1.txd","lcs_grdang2.txd","lcs_grease.txd","lcs_gun_ass.txd","lcs_holejog.txd",
"lcs_hopper.txd","lcs_hos_man.txd","lcs_hos_wom.txd","lcs_kas_01.txd","lcs_kazuki.txd","lcs_li_man1.txd","lcs_li_man2.txd","lcs_li_wom1.txd",
"lcs_li_wom2.txd","lcs_m_hole.txd","lcs_male01.txd","lcs_male02.txd","lcs_male03.txd","lcs_mastor.txd","lcs_medic.txd","lcs_mickeyh.txd",
"lcs_miguel.txd","lcs_mod_man.txd","lcs_mod_wom.txd","lcs_ned_01.txd","lcs_p_man1.txd","lcs_p_man2.txd","lcs_p_wom1.txd","lcs_p_wom2.txd",
"lcs_paulie.txd","lcs_philc.txd","lcs_pimp.txd","lcs_plr11.txd","lcs_plr9.txd","lcs_pman2.txd","lcs_prostitute.txd","lcs_sal_01.txd",
"lcs_sal_con.txd","lcs_scum_man.txd","lcs_scum_wom.txd","lcs_shopper1.txd","lcs_shopper2.txd","lcs_shopper3.txd","lcs_st_man.txd",
"lcs_st_wom.txd","lcs_stud_man.txd","lcs_stud_wom.txd","lcs_swat.txd","lcs_taxi_d.txd","lcs_thug_01.txd","lcs_thug_02.txd","lcs_tool_01.txd",
"lcs_toolsuit.txd","lcs_vinc_01.txd","lcs_wayne.txd","lcs_wkas01.txd","lcs_wom3.txd","lcs_worker1.txd","lcs_worker2.txd"};
/////////////////////////////////////////

new SelectSkinIII, SelectSkinVC, SelectSkinLCS;

public OnFilterScriptInit()
{
	// Carregando arquivos de modelo (dff e txd)
	new filedff[64],filetxd[64],lastskinid=21000, SkinsID[3][180];
	// Modelos do GTA III
	for(new i; i < sizeof(files_skin_dff_III); i++) {
		format(filedff, sizeof(filedff), "%s%s",DIR_III,files_skin_dff_III[i]);
		format(filetxd, sizeof(filetxd), "%s%s",DIR_III,files_skin_txd_III[i]);
		AddCharModel(0, SkinsID[0][i]=lastskinid++, filedff, filetxd);		
 	}
	// Modelos do GTA VC
	for(new i; i < sizeof(files_skin_dff_vc); i++) {
		format(filedff, sizeof(filedff), "%s%s",DIR_VC,files_skin_dff_vc[i]);
		format(filetxd, sizeof(filetxd), "%s%s",DIR_VC,files_skin_txd_vc[i]);
		AddCharModel(0, SkinsID[1][i]=lastskinid++, filedff, filetxd);		
	}
	// Modelos do GTA LCS
    for(new i; i < sizeof(files_skin_dff_lcs); i++) {
		format(filedff, sizeof(filedff), "%s%s",DIR_LCS,files_skin_dff_lcs[i]);
		format(filetxd, sizeof(filetxd), "%s%s",DIR_LCS,files_skin_txd_lcs[i]);
		AddCharModel(0, SkinsID[2][i]=lastskinid++, filedff, filetxd);		
 	}
 	/////////////////////////////////////
	if(!fexist("skins_gtaiii.txt")) {
 	    new line[10], File:fp = fopen("skins_gtaiii.txt", io_write);
        if(fp) {
			for(new s = 0; s < sizeof(files_skin_dff_III); s++) {
			    if(SkinsID[0][s] == 0) break;
				format(line, sizeof(line), "%i\r\n", SkinsID[0][s]);
				fwrite(fp, line);
			}
			fclose(fp);
		} else print("Falha ao gravar em skins_gtaiii.txt");
	}
	if(!fexist("skins_gtavc.txt")) {
 	    new line[10], File:fp = fopen("skins_gtavc.txt", io_write);
 	    if(fp) {
			for(new s = 0; s < sizeof(files_skin_dff_vc); s++) {
			    if(SkinsID[1][s] == 0) break;
				format(line, sizeof(line), "%i\r\n", SkinsID[1][s]);
				fwrite(fp, line);
			}
			fclose(fp);
		} else print("Falha ao gravar em skins_gtavc.txt");
	}
	if(!fexist("skins_gtalcs.txt")) {
 	    new line[10], File:fp = fopen("skins_gtalcs.txt", io_write);
		if(fp) {
			for(new s = 0; s < sizeof(files_skin_dff_lcs); s++) {
			    if(SkinsID[2][s] == 0) break;
				format(line, sizeof(line), "%i\r\n", SkinsID[2][s]);
				fwrite(fp, line);
			}
			fclose(fp);
		} else print("Falha ao gravar em skins_gtalcs.txt");
	}
	// Carregando arquivo com as skins destes games
	SelectSkinIII=LoadModelSelectionMenu("skins_gtaiii.txt");
	SelectSkinVC=LoadModelSelectionMenu("skins_gtavc.txt");
	SelectSkinLCS=LoadModelSelectionMenu("skins_gtalcs.txt");
	return print("Skins: III|VC|LCS - Carregado");
}


public OnPlayerModelSelection(playerid, response, listid, modelid)
{
	if((listid == SelectSkinIII || listid == SelectSkinVC || listid == SelectSkinLCS)) {
            if(!response) return CallLocalFunction("OnPlayerCommandText", "ds", playerid, "/cskin");
	    return SetPlayerSkin(playerid, modelid);
	}
	return 1;
}
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == DialogSelectSkin) {
		if(!response) return 1;
		switch(listitem) {
		    case 0: ShowModelSelectionMenu(playerid, SelectSkinIII, "Gta III");
		    case 1: ShowModelSelectionMenu(playerid, SelectSkinVC, "Gta Vice City");
		    case 2: ShowModelSelectionMenu(playerid, SelectSkinLCS, "Gta Liberty City Stories");
		}
		return 1;
	}
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/cskin", cmdtext, true) == 0)
		return ShowPlayerDialog(playerid, DialogSelectSkin, DIALOG_STYLE_LIST, "{FF0000}# {FFFFFF}Skins GTA: Underground", "GTA III\r\nGTA Vice City\r\nGTA Liberty City (Stories)", "Selecionar", "Cancelar");
	return 0;
}
