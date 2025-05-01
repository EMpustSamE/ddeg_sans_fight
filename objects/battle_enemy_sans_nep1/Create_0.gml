// Inherit the parent event
event_inherited();

_head = 0;
_body = 0;
_hand = 0;
_legs = 0;

_headx = 0;
_heady = 0;
_bodyx = 0;
_bodyy = 0;
_legsx = 0;
_legsy = 0;

_sin = 0;

audio_time = 0;
audio = -1;

shake_normal = function(){
	var previous_cycles = floor(_sin / (2 * pi)); 
	_sin += 0.05;
	var current_cycles = floor(_sin / (2 * pi));
	if (current_cycles > previous_cycles) {
		_sin = 0;
	}
}
dodge = function(){
	if(!Anim_IsExists(id,"x")){
		var rand = choose(0,1);
		if(rand == 0){
			Anim_Create(id,"x",ANIM_TWEEN.LINEAR,ANIM_EASE.IN,x,-80,15);
			Anim_Create(id,"x",ANIM_TWEEN.LINEAR,ANIM_EASE.IN,x - 80,80,15,40);
		}
		if(rand == 1){
			Anim_Create(id,"x",ANIM_TWEEN.LINEAR,ANIM_EASE.IN,x,80,15);
			Anim_Create(id,"x",ANIM_TWEEN.LINEAR,ANIM_EASE.IN,x + 80,-80,15,40);
		}
	}
}
shake = function(){};
