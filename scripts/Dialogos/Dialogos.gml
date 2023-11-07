// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function Dialogos()constructor{
	
	_dialogs = [];
	
	add = function(_sprite, _message){
		array_push(_dialogs, {
			sprite: _sprite,
			message: _message,
		});
	}
	
	pop = function(){
		var _t = array_first(_dialogs);
		array_delete(_dialogs, 0, 1);
		return _t;
	}
	
	count = function(){
		return array_length(_dialogs);
	}
}