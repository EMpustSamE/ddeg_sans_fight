draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(font_mars_needs_cunnilingus);
draw_text_transformed_color(0,0,"DEBUG",1.5,1.5,0,make_color_rgb(random(255),random(255),random(255)),make_color_rgb(random(255),random(255),random(255)),make_color_rgb(random(255),random(255),random(255)),make_color_rgb(random(255),random(255),random(255)),1);
draw_set_font(Lang_GetFont(Lang_GetString("font.battle.0")));
draw_text_transformed_color(0,30,string("Room:{0}({1})\nFPS:{2}({3})\nInstance Count:{4}\nTurn Number:{5}\nTurn Time:{6}\nBattle Turn Time:{7}",room,room_get_name(room),fps,fps_real,instance_count,(Player_IsInBattle() ? string(Battle_GetTurnNumber()) : "Not in battle"),(Player_IsInBattle() ? string(instance_exists(battle_turn) ? string(battle_turn.time) : "Not in turn") : "Not in battle"),(Player_IsInBattle() ? string(instance_exists(battle_turn) ? string(battle._turn_time) : "Not in turn") : "Not in battle")),1,1,0, make_color_rgb(random(255), random(255), random(255)), make_color_rgb(random(255), random(255), random(255)), make_color_rgb(random(255), random(255), random(255)), make_color_rgb(random(255), random(255), random(255)),1);
