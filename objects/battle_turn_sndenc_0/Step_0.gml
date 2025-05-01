if(start){
	time ++;
	audio_time ++;
}

if(audio_is_playing(global._bgm_id[5])){
	if(abs((audio_sound_get_track_position(global._bgm_id[5]) - (audio_time / 60))) >= 0.02){
		audio_sound_set_track_position(global._bgm_id[5],(audio_time / 60));
	}
}

if(time == 1){
	Battle_MakeBoneWallLeft(beat.BeatToFrames(1),40,beat.BeatToFrames(1/2));
}
if(time == beat.BeatToFrames(1/4)){
	Battle_MakeBoneWallRight(beat.BeatToFrames(3/4),40,beat.BeatToFrames(1/2));
}
if(time == beat.BeatToFrames(1/2)){
	Battle_MakeBoneWallBottom(beat.BeatToFrames(3/2),40,beat.BeatToFrames(1/2));
}
if(time == beat.BeatToFrames(1)){
	BlueSoulControl(DIR.DOWN);
}
if(time == beat.BeatToFrames(5/2)){
	Battle_SetSoul(battle_soul_red);
}
if(time > beat.BeatToFrames(3/2) && time % beat.BeatToFrames(1/2) == 0 && time <= beat.BeatToFrames(30)){
	var rand = irandom(3);
	if(rand == 0){
		var b = Battle_MakeBone(320,230,70,0,0,0,false,0,0,false);
		Anim_Create(b,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,230,50,20);
		Anim_Create(b,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,280,-50,20,20);
	}
	if(rand == 1){
		var b = Battle_MakeBone(410,320,70,0,0,0,false,90,0,false);
		Anim_Create(b,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,410,-50,20);
		Anim_Create(b,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,360,50,20,20);
	}
	if(rand == 2){
		var b = Battle_MakeBone(320,410,70,0,0,0,false,0,0,false);
		Anim_Create(b,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,410,-50,20);
		Anim_Create(b,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,360,50,20,20);
	}
	if(rand == 3){
		var b = Battle_MakeBone(230,320,70,0,0,0,false,90,0,false);
		Anim_Create(b,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,230,50,20);
		Anim_Create(b,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,280,-50,20,20);
	}
}
if(time > beat.BeatToFrames(3/2) && time % beat.BeatToFrames(4) == 0 && time <= beat.BeatToFrames(30)){
	var rand = irandom(1);
	var rand1 = irandom(1);
	var randx = [(rand == 0 ? 0 : 640),(rand == 0 ? random_range(0,200) : random_range(440,640))];
	var randy = [(rand1 == 0 ? 0 : 480),(rand1 == 0 ? random_range(0,200) : random_range(440,480))]
	Battle_MakeGB(randx[0],randy[0],randx[1],randy[1],random(360),point_direction(randx[1],randy[1],battle_soul.x,battle_soul.y),2,1.5,0,beat.BeatToFrames(1));
}