if(Battle_GetTurnNumber() < 1){
	instance_create_depth(0,0,0,asset_get_index("battle_turn_sndenc_" + string(Battle_GetTurnNumber())));
}