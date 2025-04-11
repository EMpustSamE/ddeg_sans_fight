x = Battle_GetEnemyCenterPosX(_enemy_slot);
y = Battle_GetEnemyCenterPosY(_enemy_slot);

var bg = instance_create_depth(0,0,0,battle_bg);
bg.image_blend = make_color_hsv(0,255,255 / 2);