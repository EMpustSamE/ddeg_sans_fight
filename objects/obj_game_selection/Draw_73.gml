event_user(0)
if(gameobj.selected){var a=1}else{var a=0}
if(sprite_exists(GameSelectionGetInfo(choice-1)[1])){with(gameobj_previous){draw_sprite_ext(GameSelectionGetInfo(obj_game_selection.choice-1)[1],a,x,y,GameSelectionGetInfo(obj_game_selection.choice-1)[2]*image_xscale,GameSelectionGetInfo(obj_game_selection.choice-1)[2]*image_yscale,0,c_white,image_alpha)}}
if(sprite_exists(GameSelectionGetInfo(choice)[1])){with(gameobj){draw_sprite_ext(GameSelectionGetInfo(obj_game_selection.choice)[1],a,x,y,GameSelectionGetInfo(obj_game_selection.choice)[2]*image_xscale,GameSelectionGetInfo(obj_game_selection.choice)[2]*image_yscale,0,c_white,image_alpha)}}
if(sprite_exists(GameSelectionGetInfo(choice+1)[1])){with(gameobj_next){draw_sprite_ext(GameSelectionGetInfo(obj_game_selection.choice+1)[1],a,x,y,GameSelectionGetInfo(obj_game_selection.choice+1)[2]*image_xscale,GameSelectionGetInfo(obj_game_selection.choice+1)[2]*image_yscale,0,c_white,image_alpha)}}
