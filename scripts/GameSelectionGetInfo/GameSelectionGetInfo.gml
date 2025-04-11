///@arg *choice
function GameSelectionGetInfo(){
	var choice=obj_game_selection.choice
	if(argument_count>0){choice=argument[0]}
	var text="{scale 2}{font FONT.MENU}{instant true}{align 1 1}"
	var spr=noone
	var scale=1
	var enabled=true
	var phases=0
	var phasetext0=text+Lang_GetString("games.corridor")//str_game_selection_intro
	var phasetext1=text+Lang_GetString("games.phase1")
	var phasetext2=text+Lang_GetString("games.phase2")
	var phasetext3=text+Lang_GetString("games.phase3")
	var phasetext4=text+Lang_GetString("games.phase4")//str_game_selection_phase5
	var phaseenabled0=true
	var phaseenabled1=true
	var phaseenabled2=true
	var phaseenabled3=true
	var phaseenabled4=true
	switch choice{
	case -1:
		text+=Lang_GetString("games.shop")
		spr=spr_shopping_cart
		enabled=false
		break
	case 0:
		text+=Lang_GetString("games.sndenc")
		spr=-1
		enabled=true
		break
	case 1:
		text+="{instant true}{align 1 1}Normal Route Sans Fight"
		spr=spr_enemy_sans_nep1
		enabled=true
		phases=4
		scale=2
		break
	}
	text+="{font FONT.MENU}"
	if(obj_game_selection.phase=0&&!phaseenabled0){enabled=false}
	if(obj_game_selection.phase=1&&!phaseenabled1){enabled=false}
	if(obj_game_selection.phase=2&&!phaseenabled2){enabled=false}
	if(obj_game_selection.phase=3&&!phaseenabled3){enabled=false}
	if(obj_game_selection.phase=4&&!phaseenabled4){enabled=false}
	if(enabled){
		text+=Lang_GetString("games.start")
	}else{
		text+=Lang_GetString("games.na")
	}
	return [text,spr,scale,enabled,phases,phasetext0,phasetext1,phasetext2,phasetext3,phasetext4,phaseenabled0,phaseenabled1,phaseenabled2,phaseenabled3,phaseenabled4]
}