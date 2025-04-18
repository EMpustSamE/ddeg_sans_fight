function Dialog_Start() {
	show_debug_message("Dialog Start")
	if(!instance_exists(ui_dialog)&&!Player_IsInBattle()){
		instance_create_depth(0,0,0,ui_dialog);
		return true;
	}else{
		return false;
	}


}