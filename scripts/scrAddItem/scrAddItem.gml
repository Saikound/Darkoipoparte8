function scrAddItem(itemId, quantity){
	var item = scrGetItem(itemId);

	if (item != noone){
		item[Inventory_Quantity] += quantity;
	} else {

		item[Inventory_Item] = itemId;
		item[Inventory_Quantity] = quantity;

		ds_list_add(oSystem.inventory, item); 

	}
}