// Los recursos de Script han cambiado para la v2.3.0 Consulta
#macro CAN_ATTACK  0
#macro HURT		   1
#macro CAN_DASH    3

#region Macros Leo
	#macro Item_Name 0
	#macro Item_Desc 1
	#macro Item_Sprite 2
	#macro Item_Action 3
	
	#macro Item_Potion 0
	
	#macro Inventory_Item 0
	#macro Inventory_Quantity 1
	
#endregion

enum estados{
	IDLE,
	MOVER,
	ATACAR,
	MUERTO,
	KNOCKBACK,
	DASH
}