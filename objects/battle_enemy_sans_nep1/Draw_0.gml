live;
event_inherited();

draw_sprite_pos(spr_enemy_sans_nep1_legs,_legs,_legsx - 42 + sin(_sin) * 5,_legsy - 22 + sin(2 * _sin) * 1.5,_legsx + 46 + sin(_sin) * 5,_legsy - 22 + sin(2 * _sin) * 1.5,_legsx + 46,_legsy + 24,_legsx - 42,_legsy + 24,1);
draw_sprite_ext(spr_enemy_sans_nep1_body,0,_bodyx,_bodyy,2,2,0,c_white,1);
draw_sprite_ext(spr_enemy_sans_nep1_hand,0,_bodyx + 34,_bodyy - 24,2,2,sin(_sin) * 3,c_white,1);
draw_sprite_ext(spr_enemy_sans_nep1_head,0,_headx,_heady,2,2,0,c_white,1);
draw_sprite_ext(spr_enemy_sans_nep1_hoodie,0,_bodyx,_bodyy - 54,2,2,0,c_white,1);
