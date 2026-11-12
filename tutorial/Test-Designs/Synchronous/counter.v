module counter (clk, count, enable, reset);

		input clk;
		output [31:0] count;
		input enable;
		input reset;

		wire sngl_w__280__Y, sngl_w_tutorial_name_5_QN, sngl_w__374__Y, sngl_w__330__Y;
		wire sngl_w__270__Y, sngl_w__265__Y, sngl_w__314__Y, sngl_w__335__Y;
		wire sngl_w_tutorial_name_25_QN, sngl_w__256__Y, sngl_w__255__Y, sngl_w_tutorial_name_17_QN;
		wire sngl_w_tutorial_name_23_QN, sngl_w__347__Y, sngl_w__287__Y, sngl_w__375__Y;
		wire sngl_w_tutorial_name_28_QN, sngl_w__281__Y, sngl_w_tutorial_name_19_QN, sngl_w_tutorial_name_16_QN;
		wire sngl_w__268__Y, sngl_w__333__Y, sngl_w__332__Y, sngl_w__394__Y;
		wire sngl_w__362__Y, sngl_w__316__Y, sngl_w_tutorial_name_20_QN, sngl_w__305__Y;
		wire sngl_w__323__Y, sngl_w__399__Y, sngl_w_tutorial_name_18_QN, sngl_w__400__Y;
		wire sngl_w_tutorial_name_3_QN, sngl_w_tutorial_name_4_QN, sngl_w__419__Y, sngl_w_tutorial_name_7_QN;
		wire sngl_w__408__Y, sngl_w__254__Y, sngl_w_tutorial_name_13_QN, sngl_w__409__Y;
		wire sngl_w__299__Y, sngl_w_tutorial_name_10_QN, sngl_w__291__Y, sngl_w_tutorial_name_12_QN;
		wire sngl_w__277__Y, sngl_w__269__Y, sngl_w_tutorial_name_9_QN, sngl_w__388__Y;
		wire sngl_w__396__Y, sngl_w__258__Y, sngl_w_tutorial_name_8_QN, sngl_w_tutorial_name_6_QN;
		wire sngl_w_tutorial_name_29_QN, sngl_w__384__Y, sngl_w__383__Y, sngl_w_tutorial_name_15_QN;
		wire sngl_w__262__Y, sngl_w__292__Y, sngl_w__385__Y, sngl_w__411__Y;
		wire sngl_w__397__Y, sngl_w__395__Y, sngl_w__271__Y, sngl_w__263__Y;
		wire sngl_w__360__Y, sngl_w__302__Y, sngl_w_tutorial_name_21_QN, sngl_w__321__Y;
		wire sngl_w__410__Y, sngl_w__322__Y, sngl_w__398__Y, sngl_w__370__Y;
		wire sngl_w__369__Y, sngl_w__357__Y, sngl_w__289__Y, sngl_w__364__Y;
		wire sngl_w_tutorial_name_14_QN, sngl_w_tutorial_name_26_QN, sngl_w_tutorial_name_27_QN, sngl_w__283__Y;
		wire sngl_w__301__Y, sngl_w__272__Y, sngl_w__379__Y, sngl_w__381__Y;
		wire sngl_w__424__Y, sngl_w__342__Y, sngl_w__338__Y, sngl_w__284__Y;
		wire sngl_w__382__Y, sngl_w__405__Y, sngl_w__261__Y, sngl_w__380__Y;
		wire sngl_w__358__Y, sngl_w__278__Y, sngl_w__343__Y, sngl_w__425__Y;
		wire sngl_w__371__Y, sngl_w__406__Y, sngl_w__308__Y, sngl_w__348__Y;
		wire sngl_w__349__Y, sngl_w__252__Y, sngl_w__309__Y, sngl_w__365__Y;
		wire sngl_w__366__Y, sngl_w__295__Y, sngl_w__355__Y, sngl_w__354__Y;
		wire sngl_w__344__Y, sngl_w__253__Y, sngl_w__279__Y, sngl_w__276__Y;
		wire sngl_w__403__Y, sngl_w__356__Y, sngl_w__331__Y, sngl_w__345__Y;
		wire sngl_w__304__Y, sngl_w_tutorial_name_1_QN, sngl_w__324__Y, sngl_w__320__Y;
		wire sngl_w__359__Y, sngl_w__306__Y, sngl_w__351__Y, sngl_w__352__Y;
		wire sngl_w__290__Y, sngl_w__325__Y, sngl_w__401__Y, sngl_w__353__Y;
		wire sngl_w__336__Y, sngl_w_tutorial_name_30_QN, sngl_w__298__Y, sngl_w_tutorial_name_31_QN;
		wire sngl_w_tutorial_name_2_QN, sngl_w_tutorial_name_24_QN, sngl_w__386__Y, sngl_w__389__Y;
		wire sngl_w__337__Y, sngl_w__300__Y, sngl_w_tutorial_name_0_QN, sngl_w__421__Y;
		wire sngl_w__402__Y, sngl_w__286__Y, sngl_w_tutorial_name_11_QN, sngl_w__260__Y;
		wire sngl_w_tutorial_name_22_QN, sngl_w__350__Y, sngl_w__387__Y, sngl_w__310__Y;
		wire sngl_w__404__Y, sngl_w__392__Y, sngl_w__418__Y, sngl_w__334__Y;
		wire sngl_w__423__Y, sngl_w__367__Y, sngl_w__341__Y, sngl_w__311__Y;
		wire sngl_w__368__Y, sngl_w__275__Y, sngl_w__329__Y, sngl_w__293__Y;
		wire sngl_w__390__Y, sngl_w__426__SN, sngl_w__294__Y, sngl_w__391__Y;
		wire sngl_w__377__Y, sngl_w__378__Y, sngl_w__416__Y, sngl_w__346__Y;
		wire sngl_w__266__Y, sngl_w__426__CON, sngl_w__376__Y, sngl_w__313__Y;
		wire sngl_w__264__Y, sngl_w__417__Y, sngl_w__319__Y, sngl_w__361__Y;
		wire sngl_w__363__Y, sngl_w__315__Y, sngl_w__393__Y, sngl_w__328__Y;
		wire sngl_w__285__Y, sngl_w__307__Y, sngl_w__412__Y, sngl_w__303__Y;
		wire sngl_w__407__Y, sngl_w__413__Y, sngl_w__372__Y, sngl_w__288__Y;
		wire sngl_w__422__Y, sngl_w__373__Y, sngl_w__318__Y, sngl_w__317__Y;
		wire sngl_w__312__Y, sngl_w__420__Y, sngl_w__415__Y, sngl_w__297__Y;
		wire sngl_w__414__Y, sngl_w__296__Y;




		INVx1_ASAP7_75t_R _214_ ( .A(sngl_w_tutorial_name_24_QN), .Y(count[31]) );
		INVx1_ASAP7_75t_R _215_ ( .A(sngl_w_tutorial_name_0_QN), .Y(count[0]) );
		INVx1_ASAP7_75t_R _216_ ( .A(sngl_w_tutorial_name_11_QN), .Y(count[1]) );
		INVx1_ASAP7_75t_R _217_ ( .A(sngl_w_tutorial_name_22_QN), .Y(count[2]) );
		INVx1_ASAP7_75t_R _218_ ( .A(sngl_w_tutorial_name_25_QN), .Y(count[3]) );
		INVx1_ASAP7_75t_R _219_ ( .A(sngl_w_tutorial_name_26_QN), .Y(count[4]) );
		INVx1_ASAP7_75t_R _220_ ( .A(sngl_w_tutorial_name_27_QN), .Y(count[5]) );
		INVx1_ASAP7_75t_R _222_ ( .A(sngl_w_tutorial_name_28_QN), .Y(count[6]) );
		INVx1_ASAP7_75t_R _223_ ( .A(sngl_w_tutorial_name_29_QN), .Y(count[7]) );
		INVx1_ASAP7_75t_R _224_ ( .A(sngl_w_tutorial_name_30_QN), .Y(count[8]) );
		INVx1_ASAP7_75t_R _225_ ( .A(sngl_w_tutorial_name_31_QN), .Y(count[9]) );
		INVx1_ASAP7_75t_R _226_ ( .A(sngl_w_tutorial_name_1_QN), .Y(count[10]) );
		INVx1_ASAP7_75t_R _227_ ( .A(sngl_w_tutorial_name_2_QN), .Y(count[11]) );
		INVx1_ASAP7_75t_R _229_ ( .A(sngl_w_tutorial_name_3_QN), .Y(count[12]) );
		INVx1_ASAP7_75t_R _230_ ( .A(sngl_w_tutorial_name_4_QN), .Y(count[13]) );
		INVx1_ASAP7_75t_R _231_ ( .A(sngl_w_tutorial_name_5_QN), .Y(count[14]) );
		INVx1_ASAP7_75t_R _232_ ( .A(sngl_w_tutorial_name_6_QN), .Y(count[15]) );
		INVx1_ASAP7_75t_R _233_ ( .A(sngl_w_tutorial_name_7_QN), .Y(count[16]) );
		INVx1_ASAP7_75t_R _234_ ( .A(sngl_w_tutorial_name_8_QN), .Y(count[17]) );
		INVx1_ASAP7_75t_R _235_ ( .A(sngl_w_tutorial_name_9_QN), .Y(count[18]) );
		INVx1_ASAP7_75t_R _237_ ( .A(sngl_w_tutorial_name_10_QN), .Y(count[19]) );
		INVx1_ASAP7_75t_R _238_ ( .A(sngl_w_tutorial_name_12_QN), .Y(count[20]) );
		INVx1_ASAP7_75t_R _239_ ( .A(sngl_w_tutorial_name_13_QN), .Y(count[21]) );
		INVx1_ASAP7_75t_R _240_ ( .A(sngl_w_tutorial_name_14_QN), .Y(count[22]) );
		INVx1_ASAP7_75t_R _242_ ( .A(sngl_w_tutorial_name_15_QN), .Y(count[23]) );
		INVx1_ASAP7_75t_R _244_ ( .A(sngl_w_tutorial_name_16_QN), .Y(count[24]) );
		INVx1_ASAP7_75t_R _245_ ( .A(sngl_w_tutorial_name_17_QN), .Y(count[25]) );
		INVx1_ASAP7_75t_R _246_ ( .A(sngl_w_tutorial_name_18_QN), .Y(count[26]) );
		INVx1_ASAP7_75t_R _247_ ( .A(sngl_w_tutorial_name_19_QN), .Y(count[27]) );
		INVx1_ASAP7_75t_R _249_ ( .A(sngl_w_tutorial_name_20_QN), .Y(count[28]) );
		INVx1_ASAP7_75t_R _250_ ( .A(sngl_w_tutorial_name_21_QN), .Y(count[29]) );
		INVx1_ASAP7_75t_R _251_ ( .A(sngl_w_tutorial_name_23_QN), .Y(count[30]) );
		OR5x1_ASAP7_75t_R _252_ ( .A(sngl_w_tutorial_name_15_QN), .B(sngl_w_tutorial_name_16_QN), .C(sngl_w_tutorial_name_17_QN), .D(sngl_w_tutorial_name_18_QN), 
				.E(sngl_w_tutorial_name_19_QN), .Y(sngl_w__252__Y) );
		OR3x1_ASAP7_75t_R _253_ ( .A(sngl_w_tutorial_name_20_QN), .B(sngl_w_tutorial_name_21_QN), .C(sngl_w__252__Y), .Y(sngl_w__253__Y) );
		OR3x1_ASAP7_75t_R _254_ ( .A(sngl_w_tutorial_name_6_QN), .B(sngl_w_tutorial_name_7_QN), .C(sngl_w_tutorial_name_8_QN), .Y(sngl_w__254__Y) );
		OR3x1_ASAP7_75t_R _255_ ( .A(sngl_w_tutorial_name_31_QN), .B(sngl_w_tutorial_name_1_QN), .C(sngl_w_tutorial_name_2_QN), .Y(sngl_w__255__Y) );
		OR3x1_ASAP7_75t_R _256_ ( .A(sngl_w_tutorial_name_3_QN), .B(sngl_w_tutorial_name_4_QN), .C(sngl_w_tutorial_name_5_QN), .Y(sngl_w__256__Y) );
		OR3x1_ASAP7_75t_R _258_ ( .A(sngl_w__254__Y), .B(sngl_w__255__Y), .C(sngl_w__256__Y), .Y(sngl_w__258__Y) );
		INVx1_ASAP7_75t_R _260_ ( .A(enable), .Y(sngl_w__260__Y) );
		OR3x1_ASAP7_75t_R _261_ ( .A(sngl_w_tutorial_name_25_QN), .B(sngl_w_tutorial_name_26_QN), .C(sngl_w_tutorial_name_27_QN), .Y(sngl_w__261__Y) );
		OR4x1_ASAP7_75t_R _262_ ( .A(sngl_w__260__Y), .B(sngl_w_tutorial_name_22_QN), .C(sngl_w__426__CON), .D(sngl_w__261__Y), .Y(sngl_w__262__Y) );
		OR4x1_ASAP7_75t_R _263_ ( .A(sngl_w_tutorial_name_9_QN), .B(sngl_w_tutorial_name_10_QN), .C(sngl_w_tutorial_name_12_QN), .D(sngl_w_tutorial_name_13_QN), .Y(sngl_w__263__Y) );
		OR3x1_ASAP7_75t_R _264_ ( .A(sngl_w_tutorial_name_28_QN), .B(sngl_w_tutorial_name_29_QN), .C(sngl_w_tutorial_name_30_QN), .Y(sngl_w__264__Y) );
		OR3x1_ASAP7_75t_R _265_ ( .A(sngl_w_tutorial_name_14_QN), .B(sngl_w__263__Y), .C(sngl_w__264__Y), .Y(sngl_w__265__Y) );
		OR4x1_ASAP7_75t_R _266_ ( .A(sngl_w__253__Y), .B(sngl_w__258__Y), .C(sngl_w__262__Y), .D(sngl_w__265__Y), .Y(sngl_w__266__Y) );
		NOR2xp33_ASAP7_75t_R _268_ ( .A(sngl_w_tutorial_name_23_QN), .B(reset), .Y(sngl_w__268__Y) );
		OR4x1_ASAP7_75t_R _269_ ( .A(sngl_w_tutorial_name_15_QN), .B(sngl_w_tutorial_name_16_QN), .C(sngl_w_tutorial_name_17_QN), .D(sngl_w_tutorial_name_18_QN), .Y(sngl_w__269__Y) );
		OR3x1_ASAP7_75t_R _270_ ( .A(sngl_w_tutorial_name_19_QN), .B(sngl_w_tutorial_name_20_QN), .C(sngl_w_tutorial_name_21_QN), .Y(sngl_w__270__Y) );
		NOR2xp33_ASAP7_75t_R _271_ ( .A(sngl_w__269__Y), .B(sngl_w__270__Y), .Y(sngl_w__271__Y) );
		NOR3xp33_ASAP7_75t_R _272_ ( .A(sngl_w__254__Y), .B(sngl_w__255__Y), .C(sngl_w__256__Y), .Y(sngl_w__272__Y) );
		INVx1_ASAP7_75t_R _275_ ( .A(sngl_w__426__CON), .Y(sngl_w__275__Y) );
		NOR3xp33_ASAP7_75t_R _276_ ( .A(sngl_w_tutorial_name_25_QN), .B(sngl_w_tutorial_name_26_QN), .C(sngl_w_tutorial_name_27_QN), .Y(sngl_w__276__Y) );
		AND4x1_ASAP7_75t_R _277_ ( .A(enable), .B(count[2]), .C(sngl_w__275__Y), .D(sngl_w__276__Y), .Y(sngl_w__277__Y) );
		NOR2xp33_ASAP7_75t_R _278_ ( .A(sngl_w_tutorial_name_9_QN), .B(sngl_w_tutorial_name_10_QN), .Y(sngl_w__278__Y) );
		NOR3xp33_ASAP7_75t_R _279_ ( .A(sngl_w_tutorial_name_28_QN), .B(sngl_w_tutorial_name_29_QN), .C(sngl_w_tutorial_name_30_QN), .Y(sngl_w__279__Y) );
		AND5x1_ASAP7_75t_R _280_ ( .A(count[20]), .B(count[21]), .C(count[22]), .D(sngl_w__278__Y), 
				.E(sngl_w__279__Y), .Y(sngl_w__280__Y) );
		INVx1_ASAP7_75t_R _281_ ( .A(reset), .Y(sngl_w__281__Y) );
		AND2x2_ASAP7_75t_R _283_ ( .A(sngl_w_tutorial_name_23_QN), .B(sngl_w__281__Y), .Y(sngl_w__283__Y) );
		AND5x1_ASAP7_75t_R _284_ ( .A(sngl_w__271__Y), .B(sngl_w__272__Y), .C(sngl_w__277__Y), .D(sngl_w__280__Y), 
				.E(sngl_w__283__Y), .Y(sngl_w__284__Y) );
		AO21x1_ASAP7_75t_R _285_ ( .A1(sngl_w__266__Y), .A2(sngl_w__268__Y), .B(sngl_w__284__Y), .Y(sngl_w__285__Y) );
		OR2x2_ASAP7_75t_R _286_ ( .A(sngl_w_tutorial_name_0_QN), .B(sngl_w_tutorial_name_11_QN), .Y(sngl_w__286__Y) );
		OR4x1_ASAP7_75t_R _287_ ( .A(sngl_w__260__Y), .B(sngl_w_tutorial_name_22_QN), .C(sngl_w__261__Y), .D(sngl_w__286__Y), .Y(sngl_w__287__Y) );
		OR5x1_ASAP7_75t_R _288_ ( .A(sngl_w_tutorial_name_20_QN), .B(sngl_w__252__Y), .C(sngl_w__258__Y), .D(sngl_w__265__Y), 
				.E(sngl_w__287__Y), .Y(sngl_w__288__Y) );
		NOR2xp33_ASAP7_75t_R _289_ ( .A(sngl_w_tutorial_name_21_QN), .B(reset), .Y(sngl_w__289__Y) );
		NOR2xp33_ASAP7_75t_R _290_ ( .A(sngl_w_tutorial_name_20_QN), .B(sngl_w__252__Y), .Y(sngl_w__290__Y) );
		NOR2xp33_ASAP7_75t_R _291_ ( .A(sngl_w_tutorial_name_0_QN), .B(sngl_w_tutorial_name_11_QN), .Y(sngl_w__291__Y) );
		AND4x1_ASAP7_75t_R _292_ ( .A(enable), .B(count[2]), .C(sngl_w__276__Y), .D(sngl_w__291__Y), .Y(sngl_w__292__Y) );
		AND2x2_ASAP7_75t_R _293_ ( .A(sngl_w_tutorial_name_21_QN), .B(sngl_w__281__Y), .Y(sngl_w__293__Y) );
		AND5x1_ASAP7_75t_R _294_ ( .A(sngl_w__290__Y), .B(sngl_w__272__Y), .C(sngl_w__280__Y), .D(sngl_w__292__Y), 
				.E(sngl_w__293__Y), .Y(sngl_w__294__Y) );
		AO21x1_ASAP7_75t_R _295_ ( .A1(sngl_w__288__Y), .A2(sngl_w__289__Y), .B(sngl_w__294__Y), .Y(sngl_w__295__Y) );
		OR4x1_ASAP7_75t_R _296_ ( .A(sngl_w__252__Y), .B(sngl_w__258__Y), .C(sngl_w__262__Y), .D(sngl_w__265__Y), .Y(sngl_w__296__Y) );
		NOR2xp33_ASAP7_75t_R _297_ ( .A(sngl_w_tutorial_name_20_QN), .B(reset), .Y(sngl_w__297__Y) );
		INVx1_ASAP7_75t_R _298_ ( .A(sngl_w__252__Y), .Y(sngl_w__298__Y) );
		AND2x2_ASAP7_75t_R _299_ ( .A(sngl_w_tutorial_name_20_QN), .B(sngl_w__281__Y), .Y(sngl_w__299__Y) );
		AND5x1_ASAP7_75t_R _300_ ( .A(sngl_w__298__Y), .B(sngl_w__272__Y), .C(sngl_w__277__Y), .D(sngl_w__280__Y), 
				.E(sngl_w__299__Y), .Y(sngl_w__300__Y) );
		AO21x1_ASAP7_75t_R _301_ ( .A1(sngl_w__296__Y), .A2(sngl_w__297__Y), .B(sngl_w__300__Y), .Y(sngl_w__301__Y) );
		OR4x1_ASAP7_75t_R _302_ ( .A(sngl_w__269__Y), .B(sngl_w__258__Y), .C(sngl_w__265__Y), .D(sngl_w__287__Y), .Y(sngl_w__302__Y) );
		NOR2xp33_ASAP7_75t_R _303_ ( .A(sngl_w_tutorial_name_19_QN), .B(reset), .Y(sngl_w__303__Y) );
		INVx1_ASAP7_75t_R _304_ ( .A(sngl_w__269__Y), .Y(sngl_w__304__Y) );
		AND2x2_ASAP7_75t_R _305_ ( .A(sngl_w_tutorial_name_19_QN), .B(sngl_w__281__Y), .Y(sngl_w__305__Y) );
		AND5x1_ASAP7_75t_R _306_ ( .A(sngl_w__304__Y), .B(sngl_w__272__Y), .C(sngl_w__280__Y), .D(sngl_w__292__Y), 
				.E(sngl_w__305__Y), .Y(sngl_w__306__Y) );
		AO21x1_ASAP7_75t_R _307_ ( .A1(sngl_w__302__Y), .A2(sngl_w__303__Y), .B(sngl_w__306__Y), .Y(sngl_w__307__Y) );
		OR3x1_ASAP7_75t_R _308_ ( .A(sngl_w_tutorial_name_15_QN), .B(sngl_w_tutorial_name_16_QN), .C(sngl_w_tutorial_name_17_QN), .Y(sngl_w__308__Y) );
		OR4x1_ASAP7_75t_R _309_ ( .A(sngl_w__308__Y), .B(sngl_w__258__Y), .C(sngl_w__262__Y), .D(sngl_w__265__Y), .Y(sngl_w__309__Y) );
		NOR2xp33_ASAP7_75t_R _310_ ( .A(sngl_w_tutorial_name_18_QN), .B(reset), .Y(sngl_w__310__Y) );
		INVx1_ASAP7_75t_R _311_ ( .A(sngl_w__308__Y), .Y(sngl_w__311__Y) );
		AND2x2_ASAP7_75t_R _312_ ( .A(sngl_w_tutorial_name_18_QN), .B(sngl_w__281__Y), .Y(sngl_w__312__Y) );
		AND5x1_ASAP7_75t_R _313_ ( .A(sngl_w__311__Y), .B(sngl_w__272__Y), .C(sngl_w__277__Y), .D(sngl_w__280__Y), 
				.E(sngl_w__312__Y), .Y(sngl_w__313__Y) );
		AO21x1_ASAP7_75t_R _314_ ( .A1(sngl_w__309__Y), .A2(sngl_w__310__Y), .B(sngl_w__313__Y), .Y(sngl_w__314__Y) );
		OR5x1_ASAP7_75t_R _315_ ( .A(sngl_w_tutorial_name_15_QN), .B(sngl_w_tutorial_name_16_QN), .C(sngl_w__258__Y), .D(sngl_w__265__Y), 
				.E(sngl_w__287__Y), .Y(sngl_w__315__Y) );
		NOR2xp33_ASAP7_75t_R _316_ ( .A(sngl_w_tutorial_name_17_QN), .B(reset), .Y(sngl_w__316__Y) );
		NOR2xp33_ASAP7_75t_R _317_ ( .A(sngl_w_tutorial_name_15_QN), .B(sngl_w_tutorial_name_16_QN), .Y(sngl_w__317__Y) );
		AND2x2_ASAP7_75t_R _318_ ( .A(sngl_w_tutorial_name_17_QN), .B(sngl_w__281__Y), .Y(sngl_w__318__Y) );
		AND5x1_ASAP7_75t_R _319_ ( .A(sngl_w__317__Y), .B(sngl_w__272__Y), .C(sngl_w__280__Y), .D(sngl_w__292__Y), 
				.E(sngl_w__318__Y), .Y(sngl_w__319__Y) );
		AO21x1_ASAP7_75t_R _320_ ( .A1(sngl_w__315__Y), .A2(sngl_w__316__Y), .B(sngl_w__319__Y), .Y(sngl_w__320__Y) );
		OR4x1_ASAP7_75t_R _321_ ( .A(sngl_w_tutorial_name_15_QN), .B(sngl_w__258__Y), .C(sngl_w__262__Y), .D(sngl_w__265__Y), .Y(sngl_w__321__Y) );
		NOR2xp33_ASAP7_75t_R _322_ ( .A(sngl_w_tutorial_name_16_QN), .B(reset), .Y(sngl_w__322__Y) );
		AND2x2_ASAP7_75t_R _323_ ( .A(sngl_w_tutorial_name_16_QN), .B(sngl_w__281__Y), .Y(sngl_w__323__Y) );
		AND5x1_ASAP7_75t_R _324_ ( .A(count[23]), .B(sngl_w__272__Y), .C(sngl_w__277__Y), .D(sngl_w__280__Y), 
				.E(sngl_w__323__Y), .Y(sngl_w__324__Y) );
		AO21x1_ASAP7_75t_R _325_ ( .A1(sngl_w__321__Y), .A2(sngl_w__322__Y), .B(sngl_w__324__Y), .Y(sngl_w__325__Y) );
		AO31x2_ASAP7_75t_R _328_ ( .A1(sngl_w__272__Y), .A2(sngl_w__280__Y), .A3(sngl_w__292__Y), .B(count[23]), .Y(sngl_w__328__Y) );
		OR4x1_ASAP7_75t_R _329_ ( .A(sngl_w_tutorial_name_15_QN), .B(sngl_w__258__Y), .C(sngl_w__265__Y), .D(sngl_w__287__Y), .Y(sngl_w__329__Y) );
		AND3x1_ASAP7_75t_R _330_ ( .A(sngl_w__281__Y), .B(sngl_w__328__Y), .C(sngl_w__329__Y), .Y(sngl_w__330__Y) );
		OR5x1_ASAP7_75t_R _331_ ( .A(sngl_w__260__Y), .B(sngl_w_tutorial_name_22_QN), .C(sngl_w__426__CON), .D(sngl_w__261__Y), 
				.E(sngl_w__264__Y), .Y(sngl_w__331__Y) );
		OR3x1_ASAP7_75t_R _332_ ( .A(sngl_w__258__Y), .B(sngl_w__263__Y), .C(sngl_w__331__Y), .Y(sngl_w__332__Y) );
		NOR2xp33_ASAP7_75t_R _333_ ( .A(sngl_w_tutorial_name_14_QN), .B(reset), .Y(sngl_w__333__Y) );
		INVx1_ASAP7_75t_R _334_ ( .A(sngl_w__263__Y), .Y(sngl_w__334__Y) );
		AND5x1_ASAP7_75t_R _335_ ( .A(enable), .B(count[2]), .C(sngl_w__275__Y), .D(sngl_w__276__Y), 
				.E(sngl_w__279__Y), .Y(sngl_w__335__Y) );
		AND5x1_ASAP7_75t_R _336_ ( .A(sngl_w_tutorial_name_14_QN), .B(sngl_w__281__Y), .C(sngl_w__272__Y), .D(sngl_w__334__Y), 
				.E(sngl_w__335__Y), .Y(sngl_w__336__Y) );
		AO21x1_ASAP7_75t_R _337_ ( .A1(sngl_w__332__Y), .A2(sngl_w__333__Y), .B(sngl_w__336__Y), .Y(sngl_w__337__Y) );
		OR5x1_ASAP7_75t_R _338_ ( .A(sngl_w__260__Y), .B(sngl_w_tutorial_name_22_QN), .C(sngl_w__261__Y), .D(sngl_w__264__Y), 
				.E(sngl_w__286__Y), .Y(sngl_w__338__Y) );
		OR3x1_ASAP7_75t_R _341_ ( .A(sngl_w_tutorial_name_9_QN), .B(sngl_w_tutorial_name_10_QN), .C(sngl_w_tutorial_name_12_QN), .Y(sngl_w__341__Y) );
		OR4x1_ASAP7_75t_R _342_ ( .A(sngl_w__254__Y), .B(sngl_w__255__Y), .C(sngl_w__256__Y), .D(sngl_w__341__Y), .Y(sngl_w__342__Y) );
		OR3x1_ASAP7_75t_R _343_ ( .A(sngl_w_tutorial_name_13_QN), .B(sngl_w__338__Y), .C(sngl_w__342__Y), .Y(sngl_w__343__Y) );
		OAI21xp5_ASAP7_75t_R _344_ ( .A1(sngl_w__338__Y), .A2(sngl_w__342__Y), .B(sngl_w_tutorial_name_13_QN), .Y(sngl_w__344__Y) );
		AND3x1_ASAP7_75t_R _345_ ( .A(sngl_w__281__Y), .B(sngl_w__343__Y), .C(sngl_w__344__Y), .Y(sngl_w__345__Y) );
		OR4x1_ASAP7_75t_R _346_ ( .A(sngl_w_tutorial_name_9_QN), .B(sngl_w_tutorial_name_10_QN), .C(sngl_w__258__Y), .D(sngl_w__331__Y), .Y(sngl_w__346__Y) );
		NOR2xp33_ASAP7_75t_R _347_ ( .A(sngl_w_tutorial_name_12_QN), .B(reset), .Y(sngl_w__347__Y) );
		AND5x1_ASAP7_75t_R _348_ ( .A(sngl_w_tutorial_name_12_QN), .B(sngl_w__281__Y), .C(sngl_w__272__Y), .D(sngl_w__278__Y), 
				.E(sngl_w__335__Y), .Y(sngl_w__348__Y) );
		AO21x1_ASAP7_75t_R _349_ ( .A1(sngl_w__346__Y), .A2(sngl_w__347__Y), .B(sngl_w__348__Y), .Y(sngl_w__349__Y) );
		OR4x1_ASAP7_75t_R _350_ ( .A(sngl_w_tutorial_name_9_QN), .B(sngl_w__254__Y), .C(sngl_w__255__Y), .D(sngl_w__256__Y), .Y(sngl_w__350__Y) );
		OAI21xp5_ASAP7_75t_R _351_ ( .A1(sngl_w__338__Y), .A2(sngl_w__350__Y), .B(sngl_w_tutorial_name_10_QN), .Y(sngl_w__351__Y) );
		OR3x1_ASAP7_75t_R _352_ ( .A(sngl_w_tutorial_name_10_QN), .B(sngl_w__338__Y), .C(sngl_w__350__Y), .Y(sngl_w__352__Y) );
		AND3x1_ASAP7_75t_R _353_ ( .A(sngl_w__281__Y), .B(sngl_w__351__Y), .C(sngl_w__352__Y), .Y(sngl_w__353__Y) );
		OR3x1_ASAP7_75t_R _354_ ( .A(sngl_w_tutorial_name_9_QN), .B(sngl_w__258__Y), .C(sngl_w__331__Y), .Y(sngl_w__354__Y) );
		AO21x1_ASAP7_75t_R _355_ ( .A1(sngl_w__272__Y), .A2(sngl_w__335__Y), .B(count[18]), .Y(sngl_w__355__Y) );
		AND3x1_ASAP7_75t_R _356_ ( .A(sngl_w__281__Y), .B(sngl_w__354__Y), .C(sngl_w__355__Y), .Y(sngl_w__356__Y) );
		NOR2xp33_ASAP7_75t_R _357_ ( .A(sngl_w__255__Y), .B(sngl_w__256__Y), .Y(sngl_w__357__Y) );
		AND5x1_ASAP7_75t_R _358_ ( .A(enable), .B(count[2]), .C(sngl_w__276__Y), .D(sngl_w__279__Y), 
				.E(sngl_w__291__Y), .Y(sngl_w__358__Y) );
		AND4x1_ASAP7_75t_R _359_ ( .A(count[15]), .B(count[16]), .C(sngl_w__357__Y), .D(sngl_w__358__Y), .Y(sngl_w__359__Y) );
		OR2x2_ASAP7_75t_R _360_ ( .A(sngl_w_tutorial_name_8_QN), .B(reset), .Y(sngl_w__360__Y) );
		OR2x2_ASAP7_75t_R _361_ ( .A(sngl_w_tutorial_name_6_QN), .B(sngl_w_tutorial_name_7_QN), .Y(sngl_w__361__Y) );
		OR2x2_ASAP7_75t_R _362_ ( .A(sngl_w__255__Y), .B(sngl_w__256__Y), .Y(sngl_w__362__Y) );
		OR5x1_ASAP7_75t_R _363_ ( .A(count[17]), .B(reset), .C(sngl_w__361__Y), .D(sngl_w__362__Y), 
				.E(sngl_w__338__Y), .Y(sngl_w__363__Y) );
		OAI21xp5_ASAP7_75t_R _364_ ( .A1(sngl_w__359__Y), .A2(sngl_w__360__Y), .B(sngl_w__363__Y), .Y(sngl_w__364__Y) );
		OR4x1_ASAP7_75t_R _365_ ( .A(sngl_w_tutorial_name_6_QN), .B(sngl_w__255__Y), .C(sngl_w__256__Y), .D(sngl_w__331__Y), .Y(sngl_w__365__Y) );
		NOR2xp33_ASAP7_75t_R _366_ ( .A(sngl_w_tutorial_name_7_QN), .B(reset), .Y(sngl_w__366__Y) );
		INVx1_ASAP7_75t_R _367_ ( .A(sngl_w__255__Y), .Y(sngl_w__367__Y) );
		NOR2xp33_ASAP7_75t_R _368_ ( .A(sngl_w_tutorial_name_6_QN), .B(sngl_w__256__Y), .Y(sngl_w__368__Y) );
		AND5x1_ASAP7_75t_R _369_ ( .A(sngl_w_tutorial_name_7_QN), .B(sngl_w__281__Y), .C(sngl_w__367__Y), .D(sngl_w__335__Y), 
				.E(sngl_w__368__Y), .Y(sngl_w__369__Y) );
		AO21x1_ASAP7_75t_R _370_ ( .A1(sngl_w__365__Y), .A2(sngl_w__366__Y), .B(sngl_w__369__Y), .Y(sngl_w__370__Y) );
		OR3x1_ASAP7_75t_R _371_ ( .A(sngl_w_tutorial_name_6_QN), .B(sngl_w__362__Y), .C(sngl_w__338__Y), .Y(sngl_w__371__Y) );
		AO21x1_ASAP7_75t_R _372_ ( .A1(sngl_w__357__Y), .A2(sngl_w__358__Y), .B(count[15]), .Y(sngl_w__372__Y) );
		AND3x1_ASAP7_75t_R _373_ ( .A(sngl_w__281__Y), .B(sngl_w__371__Y), .C(sngl_w__372__Y), .Y(sngl_w__373__Y) );
		OR4x1_ASAP7_75t_R _374_ ( .A(sngl_w_tutorial_name_3_QN), .B(sngl_w_tutorial_name_4_QN), .C(sngl_w__255__Y), .D(sngl_w__331__Y), .Y(sngl_w__374__Y) );
		NOR2xp33_ASAP7_75t_R _375_ ( .A(sngl_w_tutorial_name_5_QN), .B(reset), .Y(sngl_w__375__Y) );
		NOR2xp33_ASAP7_75t_R _376_ ( .A(sngl_w_tutorial_name_3_QN), .B(sngl_w_tutorial_name_4_QN), .Y(sngl_w__376__Y) );
		AND5x1_ASAP7_75t_R _377_ ( .A(sngl_w_tutorial_name_5_QN), .B(sngl_w__281__Y), .C(sngl_w__367__Y), .D(sngl_w__376__Y), 
				.E(sngl_w__335__Y), .Y(sngl_w__377__Y) );
		AO21x1_ASAP7_75t_R _378_ ( .A1(sngl_w__374__Y), .A2(sngl_w__375__Y), .B(sngl_w__377__Y), .Y(sngl_w__378__Y) );
		OR4x1_ASAP7_75t_R _379_ ( .A(sngl_w_tutorial_name_3_QN), .B(sngl_w_tutorial_name_4_QN), .C(sngl_w__255__Y), .D(sngl_w__338__Y), .Y(sngl_w__379__Y) );
		NOR2xp33_ASAP7_75t_R _380_ ( .A(sngl_w_tutorial_name_3_QN), .B(sngl_w__255__Y), .Y(sngl_w__380__Y) );
		AO21x1_ASAP7_75t_R _381_ ( .A1(sngl_w__358__Y), .A2(sngl_w__380__Y), .B(count[13]), .Y(sngl_w__381__Y) );
		AND3x1_ASAP7_75t_R _382_ ( .A(sngl_w__281__Y), .B(sngl_w__379__Y), .C(sngl_w__381__Y), .Y(sngl_w__382__Y) );
		OR3x1_ASAP7_75t_R _383_ ( .A(sngl_w_tutorial_name_3_QN), .B(sngl_w__255__Y), .C(sngl_w__331__Y), .Y(sngl_w__383__Y) );
		AO21x1_ASAP7_75t_R _384_ ( .A1(sngl_w__367__Y), .A2(sngl_w__335__Y), .B(count[12]), .Y(sngl_w__384__Y) );
		AND3x1_ASAP7_75t_R _385_ ( .A(sngl_w__281__Y), .B(sngl_w__383__Y), .C(sngl_w__384__Y), .Y(sngl_w__385__Y) );
		OR4x1_ASAP7_75t_R _386_ ( .A(sngl_w_tutorial_name_31_QN), .B(sngl_w_tutorial_name_1_QN), .C(sngl_w_tutorial_name_2_QN), .D(sngl_w__338__Y), .Y(sngl_w__386__Y) );
		NOR2xp33_ASAP7_75t_R _387_ ( .A(sngl_w_tutorial_name_31_QN), .B(sngl_w_tutorial_name_1_QN), .Y(sngl_w__387__Y) );
		AO21x1_ASAP7_75t_R _388_ ( .A1(sngl_w__387__Y), .A2(sngl_w__358__Y), .B(count[11]), .Y(sngl_w__388__Y) );
		AND3x1_ASAP7_75t_R _389_ ( .A(sngl_w__281__Y), .B(sngl_w__386__Y), .C(sngl_w__388__Y), .Y(sngl_w__389__Y) );
		OR3x1_ASAP7_75t_R _390_ ( .A(sngl_w_tutorial_name_31_QN), .B(sngl_w_tutorial_name_1_QN), .C(sngl_w__331__Y), .Y(sngl_w__390__Y) );
		AO21x1_ASAP7_75t_R _391_ ( .A1(count[9]), .A2(sngl_w__335__Y), .B(count[10]), .Y(sngl_w__391__Y) );
		AND3x1_ASAP7_75t_R _392_ ( .A(sngl_w__281__Y), .B(sngl_w__390__Y), .C(sngl_w__391__Y), .Y(sngl_w__392__Y) );
		XNOR2xp5_ASAP7_75t_R _393_ ( .A(sngl_w_tutorial_name_31_QN), .B(sngl_w__358__Y), .Y(sngl_w__393__Y) );
		AND2x2_ASAP7_75t_R _394_ ( .A(sngl_w__281__Y), .B(sngl_w__393__Y), .Y(sngl_w__394__Y) );
		OR4x1_ASAP7_75t_R _395_ ( .A(sngl_w_tutorial_name_28_QN), .B(sngl_w_tutorial_name_29_QN), .C(sngl_w_tutorial_name_30_QN), .D(sngl_w__262__Y), .Y(sngl_w__395__Y) );
		NOR2xp33_ASAP7_75t_R _396_ ( .A(sngl_w_tutorial_name_28_QN), .B(sngl_w_tutorial_name_29_QN), .Y(sngl_w__396__Y) );
		AO21x1_ASAP7_75t_R _397_ ( .A1(sngl_w__277__Y), .A2(sngl_w__396__Y), .B(count[8]), .Y(sngl_w__397__Y) );
		AND3x1_ASAP7_75t_R _398_ ( .A(sngl_w__281__Y), .B(sngl_w__395__Y), .C(sngl_w__397__Y), .Y(sngl_w__398__Y) );
		OA21x2_ASAP7_75t_R _399_ ( .A1(sngl_w_tutorial_name_28_QN), .A2(sngl_w__287__Y), .B(count[7]), .Y(sngl_w__399__Y) );
		AND3x1_ASAP7_75t_R _400_ ( .A(count[6]), .B(sngl_w_tutorial_name_29_QN), .C(sngl_w__292__Y), .Y(sngl_w__400__Y) );
		OA21x2_ASAP7_75t_R _401_ ( .A1(sngl_w__399__Y), .A2(sngl_w__400__Y), .B(sngl_w__281__Y), .Y(sngl_w__401__Y) );
		XNOR2xp5_ASAP7_75t_R _402_ ( .A(sngl_w_tutorial_name_28_QN), .B(sngl_w__277__Y), .Y(sngl_w__402__Y) );
		AND2x2_ASAP7_75t_R _403_ ( .A(sngl_w__281__Y), .B(sngl_w__402__Y), .Y(sngl_w__403__Y) );
		OR5x1_ASAP7_75t_R _404_ ( .A(sngl_w__260__Y), .B(sngl_w_tutorial_name_22_QN), .C(sngl_w_tutorial_name_25_QN), .D(sngl_w_tutorial_name_26_QN), 
				.E(sngl_w__286__Y), .Y(sngl_w__404__Y) );
		XNOR2xp5_ASAP7_75t_R _405_ ( .A(count[5]), .B(sngl_w__404__Y), .Y(sngl_w__405__Y) );
		AND2x2_ASAP7_75t_R _406_ ( .A(sngl_w__281__Y), .B(sngl_w__405__Y), .Y(sngl_w__406__Y) );
		OR3x1_ASAP7_75t_R _407_ ( .A(sngl_w__260__Y), .B(sngl_w_tutorial_name_22_QN), .C(sngl_w__426__CON), .Y(sngl_w__407__Y) );
		OA21x2_ASAP7_75t_R _408_ ( .A1(sngl_w_tutorial_name_25_QN), .A2(sngl_w__407__Y), .B(count[4]), .Y(sngl_w__408__Y) );
		AND5x1_ASAP7_75t_R _409_ ( .A(enable), .B(count[2]), .C(count[3]), .D(sngl_w_tutorial_name_26_QN), 
				.E(sngl_w__275__Y), .Y(sngl_w__409__Y) );
		OA21x2_ASAP7_75t_R _410_ ( .A1(sngl_w__408__Y), .A2(sngl_w__409__Y), .B(sngl_w__281__Y), .Y(sngl_w__410__Y) );
		AND3x1_ASAP7_75t_R _411_ ( .A(enable), .B(count[2]), .C(sngl_w__291__Y), .Y(sngl_w__411__Y) );
		XNOR2xp5_ASAP7_75t_R _412_ ( .A(sngl_w_tutorial_name_25_QN), .B(sngl_w__411__Y), .Y(sngl_w__412__Y) );
		AND2x2_ASAP7_75t_R _413_ ( .A(sngl_w__281__Y), .B(sngl_w__412__Y), .Y(sngl_w__413__Y) );
		AO21x1_ASAP7_75t_R _414_ ( .A1(enable), .A2(sngl_w__275__Y), .B(count[2]), .Y(sngl_w__414__Y) );
		AND3x1_ASAP7_75t_R _415_ ( .A(sngl_w__281__Y), .B(sngl_w__407__Y), .C(sngl_w__414__Y), .Y(sngl_w__415__Y) );
		NAND2xp5_ASAP7_75t_R _416_ ( .A(enable), .B(sngl_w__426__SN), .Y(sngl_w__416__Y) );
		OA211x2_ASAP7_75t_R _417_ ( .A1(enable), .A2(count[1]), .B(sngl_w__281__Y), .C(sngl_w__416__Y), .Y(sngl_w__417__Y) );
		XNOR2xp5_ASAP7_75t_R _418_ ( .A(enable), .B(sngl_w_tutorial_name_0_QN), .Y(sngl_w__418__Y) );
		AND2x2_ASAP7_75t_R _419_ ( .A(sngl_w__281__Y), .B(sngl_w__418__Y), .Y(sngl_w__419__Y) );
		AND5x1_ASAP7_75t_R _420_ ( .A(count[30]), .B(sngl_w__271__Y), .C(sngl_w__272__Y), .D(sngl_w__280__Y), 
				.E(sngl_w__292__Y), .Y(sngl_w__420__Y) );
		OR2x2_ASAP7_75t_R _421_ ( .A(sngl_w_tutorial_name_24_QN), .B(reset), .Y(sngl_w__421__Y) );
		OR3x1_ASAP7_75t_R _422_ ( .A(sngl_w_tutorial_name_23_QN), .B(sngl_w__269__Y), .C(sngl_w__270__Y), .Y(sngl_w__422__Y) );
		NAND2xp5_ASAP7_75t_R _423_ ( .A(sngl_w_tutorial_name_24_QN), .B(sngl_w__281__Y), .Y(sngl_w__423__Y) );
		OR5x1_ASAP7_75t_R _424_ ( .A(sngl_w__258__Y), .B(sngl_w__265__Y), .C(sngl_w__287__Y), .D(sngl_w__422__Y), 
				.E(sngl_w__423__Y), .Y(sngl_w__424__Y) );
		OAI21xp5_ASAP7_75t_R _425_ ( .A1(sngl_w__420__Y), .A2(sngl_w__421__Y), .B(sngl_w__424__Y), .Y(sngl_w__425__Y) );
		HAxp5_ASAP7_75t_R _426_ ( .A(count[0]), .B(count[1]), .CON(sngl_w__426__CON), .SN(sngl_w__426__SN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_0 ( .CLK(clk), .D(sngl_w__419__Y), .QN(sngl_w_tutorial_name_0_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_1 ( .CLK(clk), .D(sngl_w__392__Y), .QN(sngl_w_tutorial_name_1_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_2 ( .CLK(clk), .D(sngl_w__389__Y), .QN(sngl_w_tutorial_name_2_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_3 ( .CLK(clk), .D(sngl_w__385__Y), .QN(sngl_w_tutorial_name_3_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_4 ( .CLK(clk), .D(sngl_w__382__Y), .QN(sngl_w_tutorial_name_4_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_5 ( .CLK(clk), .D(sngl_w__378__Y), .QN(sngl_w_tutorial_name_5_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_6 ( .CLK(clk), .D(sngl_w__373__Y), .QN(sngl_w_tutorial_name_6_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_7 ( .CLK(clk), .D(sngl_w__370__Y), .QN(sngl_w_tutorial_name_7_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_8 ( .CLK(clk), .D(sngl_w__364__Y), .QN(sngl_w_tutorial_name_8_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_9 ( .CLK(clk), .D(sngl_w__356__Y), .QN(sngl_w_tutorial_name_9_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_10 ( .CLK(clk), .D(sngl_w__353__Y), .QN(sngl_w_tutorial_name_10_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_11 ( .CLK(clk), .D(sngl_w__417__Y), .QN(sngl_w_tutorial_name_11_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_12 ( .CLK(clk), .D(sngl_w__349__Y), .QN(sngl_w_tutorial_name_12_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_13 ( .CLK(clk), .D(sngl_w__345__Y), .QN(sngl_w_tutorial_name_13_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_14 ( .CLK(clk), .D(sngl_w__337__Y), .QN(sngl_w_tutorial_name_14_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_15 ( .CLK(clk), .D(sngl_w__330__Y), .QN(sngl_w_tutorial_name_15_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_16 ( .CLK(clk), .D(sngl_w__325__Y), .QN(sngl_w_tutorial_name_16_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_17 ( .CLK(clk), .D(sngl_w__320__Y), .QN(sngl_w_tutorial_name_17_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_18 ( .CLK(clk), .D(sngl_w__314__Y), .QN(sngl_w_tutorial_name_18_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_19 ( .CLK(clk), .D(sngl_w__307__Y), .QN(sngl_w_tutorial_name_19_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_20 ( .CLK(clk), .D(sngl_w__301__Y), .QN(sngl_w_tutorial_name_20_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_21 ( .CLK(clk), .D(sngl_w__295__Y), .QN(sngl_w_tutorial_name_21_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_22 ( .CLK(clk), .D(sngl_w__415__Y), .QN(sngl_w_tutorial_name_22_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_23 ( .CLK(clk), .D(sngl_w__285__Y), .QN(sngl_w_tutorial_name_23_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_24 ( .CLK(clk), .D(sngl_w__425__Y), .QN(sngl_w_tutorial_name_24_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_25 ( .CLK(clk), .D(sngl_w__413__Y), .QN(sngl_w_tutorial_name_25_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_26 ( .CLK(clk), .D(sngl_w__410__Y), .QN(sngl_w_tutorial_name_26_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_27 ( .CLK(clk), .D(sngl_w__406__Y), .QN(sngl_w_tutorial_name_27_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_28 ( .CLK(clk), .D(sngl_w__403__Y), .QN(sngl_w_tutorial_name_28_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_29 ( .CLK(clk), .D(sngl_w__401__Y), .QN(sngl_w_tutorial_name_29_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_30 ( .CLK(clk), .D(sngl_w__398__Y), .QN(sngl_w_tutorial_name_30_QN) );
		DFFHQNx1_ASAP7_75t_R tutorial_name_31 ( .CLK(clk), .D(sngl_w__394__Y), .QN(sngl_w_tutorial_name_31_QN) );

endmodule

