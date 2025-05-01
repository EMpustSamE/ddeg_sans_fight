x = Battle_GetEnemyCenterPosX(_enemy_slot);
y = Battle_GetEnemyCenterPosY(_enemy_slot);

Battle_SetEnemyName(_enemy_slot,Lang_GetString("battle.enemy.sans.name"));
Battle_SetEnemyActionNumber(_enemy_slot,2);
Battle_SetEnemyActionName(_enemy_slot,0,Lang_GetString("battle.enemy.sans.act.0"));
Battle_SetEnemyActionName(_enemy_slot,1,Lang_GetString("battle.enemy.sans.act.1"));

hp = 100;
hp_max = 100;

var bg = instance_create_depth(0,0,0,battle_bg);
bg.image_blend = make_color_hsv(0,255,255 / 2);
