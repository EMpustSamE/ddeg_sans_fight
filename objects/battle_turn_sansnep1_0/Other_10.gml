Battle_SetTurnInfo(BATTLE_TURN.TIME,beat.BeatToFrames(48));
fader.color = c_black;
Fader_Fade(1,0,beat.BeatToFrames(4));
Anim_Create(id,"block1_x",ANIM_TWEEN.QUART,ANIM_EASE.OUT,320,-1280,beat.BeatToFrames(6));
Anim_Create(id,"block1_ang",ANIM_TWEEN.QUART,ANIM_EASE.OUT,0,15,beat.BeatToFrames(6));
Anim_Create(id,"block2_x",ANIM_TWEEN.QUART,ANIM_EASE.OUT,320,1280,beat.BeatToFrames(6));
Anim_Create(id,"block2_ang",ANIM_TWEEN.QUART,ANIM_EASE.OUT,0,15,beat.BeatToFrames(6));
