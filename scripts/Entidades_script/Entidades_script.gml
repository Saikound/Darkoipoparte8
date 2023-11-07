// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function damage_entity(_tid, _sid, _damage, _time){
	
	with(_tid){
		hp -= _damage;
		var _dead = is_dead();
		path_end();
		//distancia de alejamiento al golpe
		if _dead var _dis = 5 else var _dis = 3;
		var _dir = point_direction(_sid.x, _sid.y, x, y);
		hsp += lengthdir_x(_dis, _dir);
		vsp += lengthdir_y(_dis, _dir);
		calc_path_delay = _time;
		alert = true;
		hit_time = _time;
		alarm[HURT] = hurt_time;
		if !_dead state = estados.KNOCKBACK;
		image_index= 0;
		return _dead;
	}
}

function is_dead(){
	if state != estados.MUERTO{
		if hp <= 0{
			state = estados.MUERTO;
			hp = 0;
			image_index = 0;
			switch ( object_index){
				default:
					//sound
				break;
				case objPlayer:
					//Player sound
				break;
			}
			return true;
		}
	} else return true;
}

function check_if_stopped(){
	if abs(hsp) < 0.1 hsp = 0;
	if abs(vsp) < 0.1 vsp = 0;
}

/*
function barra_de_vida(){
	if hp != hp_max and hp > 0 {
		draw_healthbar(x-7, y- 16, x + 7, y-14, hp/hp_max* 100, $003300, $3232FF, $00B200, 0, 1, 1);
	}
}
*/		
	