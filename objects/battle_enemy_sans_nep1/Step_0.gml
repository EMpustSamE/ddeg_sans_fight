live;
//event_inherited();
if(global.debug){
	_draw_dir ++;
	if(_draw_dir == 360){
		_draw_dir = 0;
	}
}



_headx = x + sin(_sin) * 6;
_heady = y - 26 - sin(2 * _sin) * 0.5;
_bodyx = x + sin(_sin) * 5;
_bodyy = y + 20 + sin(2 * _sin) * 1.5;
_legsx = x;
_legsy = y + 60;
shake();

audio_time ++;

if(audio_is_playing(global._bgm_id[5])){
	if(abs((audio_sound_get_track_position(global._bgm_id[5]) - (audio_time / 60))) >= 0.02){
		audio_sound_set_track_position(global._bgm_id[5],(audio_time / 60));
	}
}
