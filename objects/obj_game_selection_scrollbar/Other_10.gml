if(obj_game_selection.choice=-1){
	if(instance_exists(text)){
		instance_destroy(text)
	}
	text=instance_create_depth(620,y+22,depth,text_typer)
	text.text=Lang_GetString("games.hintshop");
}else if(obj_game_selection.choice>=obj_game_selection.choice_mg){
	if(instance_exists(text)){
		instance_destroy(text)
	}
	text=instance_create_depth(620,y+22,depth,text_typer)
	text.text="{define `PRE` "+string(obj_game_selection.choice-(obj_game_selection.choice_mg-1))+"/"+string(obj_game_selection.choice_max-obj_game_selection.choice_mg+1)+"}"+Lang_GetString("games.hintminigames");
}else{
	if(instance_exists(text)){
		instance_destroy(text)
	}
	text=instance_create_depth(620,y+22,depth,text_typer)
	text.text="{define `PRE` "+string(obj_game_selection.choice+1)+"/"+string(obj_game_selection.choice_mg)+"}"+Lang_GetString("games.hintbattle");
}
