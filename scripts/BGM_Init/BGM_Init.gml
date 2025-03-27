function BGM_Init() {
	var proc=0;
	repeat(6){
		global._bgm_id[proc]=-1;
		global._bgm_audio[proc]=-1;
		global._bgm_loop_start[proc]=-1;
		global._bgm_loop_end[proc]=-1;
		proc+=1;
	}
	
	{
		if(!file_exists(working_directory+"bgm/bgm_sans_sndencstart.ogg")){show_error("'working_directory+\"bgm/bgm_sans_sndencstart.ogg\"' doesn't exists.",true)};global._bgm_sans_sndencstart=audio_create_stream(working_directory+"bgm/bgm_sans_sndencstart.ogg");#macro bgm_sans_sndencstart global._bgm_sans_sndencstart
	}
}
