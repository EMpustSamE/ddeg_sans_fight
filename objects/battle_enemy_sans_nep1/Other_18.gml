if(Battle_GetTurnNumber() <= 0){
	if(Battle_GetTurnNumber() == 0){
		shake = shake_normal;
		BGM_Play(5,bgm_sansnep1);
	}
	instance_create_depth(0,0,0,asset_get_index("battle_turn_sansnep1_" + string(Battle_GetTurnNumber())));
}