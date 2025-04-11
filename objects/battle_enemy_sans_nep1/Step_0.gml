live;
//event_inherited();
if(global.debug){
	_draw_dir ++;
	if(_draw_dir == 360){
		_draw_dir = 0;
	}
}

var previous_cycles = floor(_sin / (2 * pi)); 
_sin += 0.05;
var current_cycles = floor(_sin / (2 * pi));
if (current_cycles > previous_cycles) {
	_sin = 0;
}

_headx = x + sin(_sin) * 6;
_heady = y - 26 - sin(2 * _sin) * 0.5;
_bodyx = x + sin(_sin) * 5;
_bodyy = y + 20 + sin(2 * _sin) * 1.5;
_legsx = x;
_legsy = y + 60;

if(instance_exists(battle_turn)){
	if(battle_turn.start){
		audio_time ++;
	}
}

if(audio_is_playing(audio)){
	if(abs((audio_sound_get_track_position(audio) - (audio_time / 60))) >= 0.02){
		audio_sound_set_track_position(audio,(audio_time / 60));
	}
}
