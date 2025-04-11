if(Battle_GetTurnNumber() <= 0){
	if(Battle_GetTurnNumber() == 0){
		audio = audio_play_sound(bgm_sansnep1,5,true);
	}
	instance_create_depth(0,0,0,asset_get_index("battle_turn_sansnep1_" + string(Battle_GetTurnNumber())));
}