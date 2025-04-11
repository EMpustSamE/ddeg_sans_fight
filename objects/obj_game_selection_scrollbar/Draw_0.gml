draw_set_color(c_white)
var proc=0;
var NUMBER=obj_game_selection.choice_max-obj_game_selection.choice_min+1
var CURRENT=obj_game_selection.choice-obj_game_selection.choice_min

repeat(NUMBER){
	if(proc=0){draw_rectangle(x-30*floor(NUMBER/2)+30*(proc+0.5)-1,y-6,x-30*floor(NUMBER/2)+30*(proc+0.5)+1,y+5,false)}
	if(proc=obj_game_selection.choice_mg-obj_game_selection.choice_min){draw_rectangle(x-30*floor(NUMBER/2)+30*(proc-0.5)-1,y-6,x-30*floor(NUMBER/2)+30*(proc-0.5)+1,y+5,false)}
	if(!(GameSelectionGetInfo(proc+obj_game_selection.choice_min)[3])){var c=c_gray}else{var c=c_white}
	draw_sprite_ext(spr_battle_menu_item_scrollbar_dot,proc==CURRENT,x-30*floor(NUMBER/2)+30*proc,y,1,1,0,c,1);
	proc+=1;
}

if(NUMBER>1){
	if(obj_game_selection.choice!=obj_game_selection.choice_min){
		draw_sprite_ext(spr_battle_menu_item_scrollbar_arrow,0,x-30*floor(NUMBER/2)-15-_arrow,y,1,1,90,c_white,1);
	}
	if(obj_game_selection.choice!=obj_game_selection.choice_max){
		draw_sprite_ext(spr_battle_menu_item_scrollbar_arrow,0,x-30*floor(NUMBER/2)+30*NUMBER-15+_arrow,y,1,-1,90,c_white,1);
	}
}

event_user(0)
