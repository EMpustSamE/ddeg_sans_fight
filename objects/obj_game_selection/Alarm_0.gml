fader.alpha=0
audio_stop_all()
var flag = Storage_GetTempGeneral();
if(quit){
	flag.Set(FLAG_TEMP_TRIGGER_WARP_LANDMARK, 0);
	flag.Set(FLAG_TEMP_TRIGGER_WARP_DIR, DIR.DOWN);
	room_goto(room_area_0);
}else{
	switch choice{
	case -1:
		break
	case 0:
		Encounter_Start(1)
		break
	case 1:
		switch(phase){
			case 0:
				fader.color = c_black;
				Fader_Fade(1,0,30);
				room_restart();
				CC_Add("Not available yet");
				break;
			case 1:
				Encounter_Start(2);
				break;
			case 2:
				Encounter_Start(3);
		}
		break
	}
}