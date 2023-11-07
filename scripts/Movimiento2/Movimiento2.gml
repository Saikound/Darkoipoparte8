// Los recursos de Script han cambiado para la v2.3.0 Consulta
//agregar todas las varaisbles a personaje
function personaje1(){
	aim_per = point_direction(x, y, mouse_x, mouse_y);
	arma_distancia.image_angle = aim_per	
}

function reset_variables(){
	left = 0;
	right = 0; 
	up = 0; 
	down = 0;
	vmove = 0;
	hmove = 0;
	dash = false;
}

function movimiento3(){
	if keyboard_check(ord("A")) left = 1;
	if keyboard_check(ord("D")) right = 1;
	if keyboard_check(ord("W")) up = 1;
	if keyboard_check(ord("S")) down = 1;
	if keyboard_check_pressed(vk_space) dash = true;
}



function calc_movement(){
	hmove = right - left;
	vmove = down - up;
	
	var _facing = (aim_per < 90 or aim_per > 270);
	if _facing == 0 _facing = -1;
	facing = _facing; 
	
	if hmove != 0 or vmove != 0{
		var _dir = point_direction(0, 0, hmove, vmove);
		
		hmove = lengthdir_x(spd, _dir);
		vmove = lengthdir_y(spd, _dir);
		
		x += hmove;
		y += vmove;		
	}
	aim_per = point_direction(x, y, mouse_x, mouse_y);
	arma_distancia.image_angle = aim_per	
}

function collision1(){
	var _tx = x; 
	var _ty = y;
	
	x = xprevious;
	y = yprevious;
	
	var _disx = ceil(abs(_tx - x));
	var _disy = ceil(abs(_ty - y));
	
	if place_meeting(x + _disx * sign(_tx - x), y, muro) x = round(x);
	if place_meeting(x, y + _disy * sign(_ty - y), muro) y = round(y);
	
	repeat(_disx){
		if !place_meeting(x + sign(_tx - x), y, muro) x += sign(_tx - x);
	}
	repeat(_disy){
		if !place_meeting(x, y + sign(_ty - y), muro) y += sign(_ty - y);
	}
}

function anim(){
	if hmove != 0 or vmove != 0 {
		sprite_index = sprPlayerWalkR; //corregir animaciones
	} else {
		sprite_index = sprPlayerIdleD;
	}
}
function check_fire(){
	if mouse_check_button(mb_left){
		if can_attack{
			can_attack = false;
			alarm[0] = flechazos;
			var _dir = point_direction(x, y , mouse_x, mouse_y);	
			distancia_arco = 4;
			var _inst = instance_create_layer(x, y, "Arrow", flecha);
			with(_inst){
				speed = other.arrow_speed;
				direction = _dir;
				image_angle = _dir;
				owner_id = other;
			}
		}
	}
}

function check_dash(){
	if dash and can_iframe{
		state = estados.DASH;
		iframe_t = iframe_ti;		
		var _dir = point_direction(0, 0, hmove, vmove);
		hsp = lengthdir_x(iframe_speed, _dir);
		vsp = lengthdir_y(iframe_speed, _dir);
		iframe_array = [];
	}
}

