// Inherit the parent event
event_inherited();

menu_text = Lang_GetString("shop.emp.menu");

host_sprite = spr_emp;
host_sprite_scale = 10;

shop_item[0] = ITEM_TOY_KNIFE;
shop_item[1] = ITEM_STICK;
shop_item[2] = ITEM_BANDAGE;
shop_item[3] = ITEM_FADED_RIBBON;
buy_before_text = Lang_GetString("shop.emp.buy.b");
buy_after_text = Lang_GetString("shop.emp.buy.a");
buy_false_text_0 = Lang_GetString("shop.emp.buy.l");
buy_false_text_1 = Lang_GetString("shop.emp.buy.t");

sold_available = false;
sold_false_text = Lang_GetString("shop.emp.sell");

dialog_before_text = Lang_GetString("shop.emp.talk");

for(var i = 0;i < 3;i ++){
	Shop_SetDialog(Lang_GetString("shop.emp.talk." + string(i)),c_white,Lang_GetString("shop.emp.talk." + string(i) + ".ans"));
}

exit_text = Lang_GetString("shop.emp.exit");