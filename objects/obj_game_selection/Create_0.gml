depth=DEPTH_UI.TEXT

bgu=instance_create_depth(0,0-24,depth+1,battle_bg)
bgu.image_yscale=1
bgu.alarm[2]=1
bgd=instance_create_depth(640,480+24,depth+1,battle_bg)
bgd.image_angle=180
bgd.image_yscale=1
bgd.alarm[2]=1
bgl=instance_create_depth(0-24,480,depth+1,battle_bg)
bgl.image_angle=90
bgl.image_yscale=1
bgl.alarm[2]=1
bgr=instance_create_depth(640+24,0,depth+1,battle_bg)
bgr.image_angle=-90
bgr.image_yscale=1
bgr.alarm[2]=1
rainbow=0

choice=-1
choice_min=-1
choice_max=1
choice_mg=choice_max-(-1)
phase=0
phases=0
quit=false
enabled=true
changing=false
starting=false

instance_create_depth(320,45,0,obj_game_selection_scrollbar)
instance_create_depth(160,200,depth,obj_game_selection_arrow_left)
instance_create_depth(480,200,depth,obj_game_selection_arrow_right)
instance_create_depth(320+100,405+12,depth,obj_game_selection_arrow_up)
instance_create_depth(320+100,460-12,depth,obj_game_selection_arrow_down)
instance_create_depth(0,0,depth,obj_game_selection_quit)
gameobj=instance_create_depth(320,200,depth,obj_game)
gameobj_previous=noone
gameobj_next=noone

text1 = noone
text2 = noone