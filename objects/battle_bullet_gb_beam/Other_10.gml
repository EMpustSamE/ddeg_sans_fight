if(global.kr){
	switch (type) {
		case 0:
		    Player_HurtKr();
		    break;
		case 1:

		    if (global.moving) {
		        Player_HurtKr();
		    }
		    break;
		case 2:
		    if ! (global.moving) {
		        Player_HurtKr();
		    }
		    break;
		case 3:
		    Player_Heal(1);
		    break;
		case 4:
		    Player_Hurt(1);
		    break;
	}
}else{
	switch (type) {
		case 0:
		    Player_Hurt(1);
			event_inherited();
		    break;
		case 1:

		    if (global.moving) {
		        Player_Hurt(1);
				event_inherited();
		    }
		    break;
		case 2:
		    if ! (global.moving) {
		        Player_Hurt(1);
				event_inherited();
		    }
		    break;
		case 3:
		    Player_Heal(1);
		    break;
		case 4:
		    Player_Hurt(1);
			event_inherited();
		    break;
	}
}