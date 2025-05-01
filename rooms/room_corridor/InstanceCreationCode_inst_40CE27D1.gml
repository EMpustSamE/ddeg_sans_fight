Event_AddFunction(event,function(){
	char_player.alarm[0] = -1;
	char_player.moveable = false;
	camera.target = noone;
	Anim_Create(camera,"x",ANIM_TWEEN.LINEAR,ANIM_EASE.IN,camera.x,40,60,60);
});
Event_AddFunction(event,function(){
	audio_play_sound(snd_churchbell,0,false);
})
Event_AddSleep(event,600);
Event_Dialog(event,"{font FONT.SANS}{voice VOICE.SANS}" + Lang_GetString("dialog.test"));
Event_EncounterStart(event,2);