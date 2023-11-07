function scrGetItem(ItemId){
	var lengh = ds_list_size(oSystem.inventory);
	
	for(var i = 0; i < lengh; i++){
		var item = oSystem.inventory[| i];
		
		if (item[Inventory_Item] == ItemId){
			return item;
		}
	}
	
	return noone;
}