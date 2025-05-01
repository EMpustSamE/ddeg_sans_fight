///@desc Step
if(start){
	time ++;
	audio_time ++;
}

if(audio_is_playing(audio)){
	if(abs((audio_sound_get_track_position(audio) - (audio_time / 60))) >= 0.02){
		audio_sound_set_track_position(audio,(audio_time / 60));
	}
}