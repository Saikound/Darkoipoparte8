function scrUseItem(ItemId){
	var item = global.items[ItemId];
	var	action = item[Item_Desc];

	//action();
	show_message("Usaste el item");
}