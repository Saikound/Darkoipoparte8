function scrCreateItem(name, description, sprite, action){
	
	var item;
	
		item[Item_Name] = name;
		item[Item_Desc] = description;
		item[Item_Sprite] = sprite;
		item[Item_Action] = action;
		
	return item;
}