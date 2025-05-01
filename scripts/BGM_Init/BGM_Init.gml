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
		if(!file_exists(working_directory+"bgm_sanssndencstart.ogg")){show_error("'working_directory+\"bgm_sanssndencstart.ogg\"' doesn't exists.",true)};global._bgm_sanssndencstart=audio_create_stream(working_directory+"bgm_sanssndencstart.ogg");#macro bgm_sanssndencstart global._bgm_sanssndencstart
		if(!file_exists(working_directory+"bgm_sanssndenc.ogg")){show_error("'working_directory+\"bgm_sanssndenc.ogg\"' doesn't exists.",true)};global._bgm_sanssndenc=audio_create_stream(working_directory+"bgm_sanssndenc.ogg");#macro bgm_sanssndenc global._bgm_sanssndenc
		if(!file_exists(working_directory+"bgm_sansdate.ogg")){show_error("'working_directory+\"bgm_sansdate.ogg\"' doesn't exists.",true)};global._bgm_sansdate=audio_create_stream(working_directory+"bgm_sansdate.ogg");#macro bgm_sansdate global._bgm_sansdate
		if(!file_exists(working_directory+"bgm_sansnep1.ogg")){show_error("'working_directory+\"bgm_sansnep1.ogg\"' doesn't exists.",true)};global._bgm_sansnep1=audio_create_stream(working_directory+"bgm_sansnep1.ogg");#macro bgm_sansnep1 global._bgm_sansnep1
		if(!file_exists(working_directory+"bgm_sansnep2.ogg")){show_error("'working_directory+\"bgm_sansnep2.ogg\"' doesn't exists.",true)};global._bgm_sansnep2=audio_create_stream(working_directory+"bgm_sansnep2.ogg");#macro bgm_sansnep2 global._bgm_sansnep2
		if(!file_exists(working_directory+"bgm_intro.ogg")){show_error("'working_directory+\"bgm_intro.ogg\"' doesn't exists.",true)};global._bgm_intro=audio_create_stream(working_directory+"bgm_intro.ogg");#macro bgm_intro global._bgm_intro
		if(!file_exists(working_directory+"bgm_menu.ogg")){show_error("'working_directory+\"bgm_menu.ogg\"' doesn't exists.",true)};global._bgm_menu=audio_create_stream(working_directory+"bgm_menu.ogg");#macro bgm_menu global._bgm_menu
	}
}
