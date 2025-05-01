switch(Battle_GetMenuChoiceButton()){
	case 0:
		break;
	case 1:
		Dialog_Add(Lang_GetString("battle.enemy.sans.actdia." + Battle_GetMenuChoiceAction()));
		Dialog_Start();
		break;
}