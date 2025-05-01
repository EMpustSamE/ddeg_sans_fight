switch(Battle_GetMenu()){
	case BATTLE_MENU.FIGHT_ANIM:
		if(shake != dodge){
			shake = dodge;
		}
		break;
	case BATTLE_MENU.FIGHT_DAMAGE:
		shake = shake_normal;
		var damg = instance_create_depth(x,y - 30,0,battle_damage);
		damg.damage = -1;
		break;
}