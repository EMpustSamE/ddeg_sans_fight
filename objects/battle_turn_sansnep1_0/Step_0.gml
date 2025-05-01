live;
event_user(4);

if(time == beat.BeatToFrames(8)){
	Battle_MakeBoneWallBottom(beat.BeatToFrames(2),50,beat.BeatToFrames(2));
}
if(time == beat.BeatToFrames(9)){
	BlueSoulControl(DIR.DOWN);
}
if(time == beat.BeatToFrames(10)){
	Battle_MakeBoneWallLeft(beat.BeatToFrames(1),60,beat.BeatToFrames(1));
	Battle_MakeBoneWallRight(beat.BeatToFrames(1.5),60,beat.BeatToFrames(0.5));
	Battle_SetSoul(battle_soul_red);
}
if(time == beat.BeatToFrames(11)){
	Battle_MakeBoneWallTop(0,70,beat.BeatToFrames(1));
}

if(time >= beat.BeatToFrames(12) && time <= beat.BeatToFrames(36) && time % beat.BeatToFrames(1) == 0){
	var rand1 = choose(0,1);
	var rand2 = choose(0,1);
	Battle_MakeBone((rand1 == 0 ? 200 : 440),(rand2 == 0 ? 200 : 440),20,(rand1 == 0 ? 5 : -5),(rand2 == 0 ? 5 : -5),0,true,point_direction((rand1 == 0 ? 200 : 500),(rand2 == 0 ? 200 : 500),battle_soul.x,battle_soul.y),0,false);
}
if(time >= beat.BeatToFrames(12) && time <= beat.BeatToFrames(36) && time % beat.BeatToFrames(2) == 0){
	var rand1 = choose(0,1);
	var rand2 = choose(0,1);
	Battle_MakeGB((rand1 == 0 ? 0 : 640),(rand2 == 0 ? 0 : 480),(rand1 == 0 ? 200 : 440),(rand2 == 0 ? 200 : 440),random(360),point_direction((rand1 == 0 ? 200 : 500),(rand2 == 0 ? 200 : 500),battle_soul.x,battle_soul.y),2,1,0,beat.BeatToFrames(0.5),beat.BeatToFrames(1),beat.BeatToFrames(0.5));
}
if(time >= beat.BeatToFrames(36) && time <= beat.BeatToFrames(47) && time % beat.BeatToFrames(1) == 0){
	var rand = choose(0,1,2,3);
	switch(rand){
		case 0:
			Battle_MakeBoneWallBottom(beat.BeatToFrames(1),20,beat.BeatToFrames(1));
			BlueSoulControl(DIR.DOWN);
			break;
		case 1:
			Battle_MakeBoneWallRight(beat.BeatToFrames(1),20,beat.BeatToFrames(1));
			BlueSoulControl(DIR.RIGHT);
			break;
		case 2:
			Battle_MakeBoneWallLeft(beat.BeatToFrames(1),20,beat.BeatToFrames(1));
			BlueSoulControl(DIR.LEFT);
			break;
		case 3:
			Battle_MakeBoneWallTop(beat.BeatToFrames(1),20,beat.BeatToFrames(1));
			BlueSoulControl(DIR.UP);
			break;
	}
}
if(time >= beat.BeatToFrames(36) && time <= beat.BeatToFrames(47) && time % beat.BeatToFrames(1) == 0){
	var rand = choose(0,1);
	Battle_MakeBone((rand == 0 ? 0 : 640),random_range(250,390),20,(rand == 0 ? 10 : -10),0,0,true,0,0,false);
}
