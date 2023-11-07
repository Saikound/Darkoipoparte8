scrItems();

inventory = ds_list_create();

scrAddItem(Item_Potion,3);
scrAddItem(Item_Potion,3);

var item = scrGetItem(Item_Potion);
show_message(item[Inventory_Quantity]);