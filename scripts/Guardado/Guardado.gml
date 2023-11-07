// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
global.game_data = 
{
	vida:5,
	room_data: {}
};
function Save_game(){
	
	save_room();
	
	var _string =json_stringify(global.game_data);
	
	var _bufer = buffer_create( string_byte_length(_string) + 1, buffer_fixed, 1);
	
	buffer_write( _buffer, buffer_string, _string);
	
	buffer_save( _buffer, "save.txt");
	
	buffer_delete( _buffer);
}


function save_room(){
	var _array = [];
	
	//el with se ocupara para guardar la informacion de un objeto especifico
	//Por ende se debera ocupar un with paara cada objeto que se desea guardar
	with(objPlayer)
	{		
		var _struct = 
		{
			//Darkoipo: global.Darkoipo, //Darkoipo hace referencia a texto en el juego, osea un dato, ejemplo vida = 2,
			object: object_get_name(object_index),//guardar cualquier cambio que se haya creado en el objeto
			x: objPlayer.x,				//si ponemos global.vida se guardara el dato de la vida en cuestion
			y: objPlayer.y,
			image_index: objPlayer.image_index
		};
		array_push(_array, _struct);
	}
	
	with(arco)
	{
		
		var _struct = 
		{
			x:x,				
			y:y,
			image_index:image_index
		};
		array_push(_array, _struct);
	}
}
function Load_game(){
	if (file_exists("save.txt"))
	{
		var _buffer = buffer_load( "save.txt");
		
		var _json = buffer_read( _buffer, buffer_string );
		
		buffer_delete( _buffer);
		
		global.game_data = json_parse(_json);
		
		load_room();
			
		
	}
		
}

function load_room(){
	
	var _array = struct_get( global.game_data.room_data, room_get_name(room));
	
	if( _array != undefined)
	{
		instance_destroy(arco);
		instance_destroy(objPlayer);
		
		
		for(var i = 0; i < array_length( _array); i += 1)
		{
			var _struct = _array[i];
			
			instance_create_layer(_struct.x, _struct.y, "Instances", asset_get_index(_struct.object), _struct);
		}
		
	}
}
