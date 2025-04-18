Event_AddFunction(event,function(){
	char_player.alarm[0] = -1;
	char_player.moveable = false;
	camera.target = noone;
	Anim_Create(camera,"x",0,0,camera.x,40,60,60);
});
Event_AddSleep(event,200);
Event_Dialog(event,"{font FONT.SANS}{voice VOICE.SANS}" + Lang_GetString("dialog.test"));
Event_EncounterStart(event,2);