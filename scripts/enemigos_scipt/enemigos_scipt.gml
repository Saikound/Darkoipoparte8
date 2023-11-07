function calc_entity_movement(){
	x += hsp;
	y += vsp;
	
	hsp *= global.drag;
	vsp *= global.drag;
	
	check_if_stopped();
}

function calc_knockback_movement(){
	x+= hsp;
	y+= vsp;
	
	//penalizacion de movimiento
	hsp *= 0.91;
	vsp *= 0.91;
	
	check_if_stopped();
	
	if hit_time <= 0 state = estados.IDLE;
}

function check_facing(){
	if hit_time	<= 0{
		var _facing = sign(x - xp);
		if _facing != 0 facing = _facing;
	}
}
function proximidad(){
	var _dis = distance_to_object(objPlayer);
	//move_towards_point(player.x, player.y,1);
	if ((_dis <= alert_dis) or alert) and _dis > dist_ataque{
		alert = true;
		if delay_seguimiento-- <= 0{
			delay_seguimiento = delay_seguimiento_tiempo;
			
			if x == xp and y == yp var _type = 0 else var _type = 1;
			var _encontrar_jugador = mp_grid_path(global.mp_grid, path, x, y, objPlayer.x, objPlayer.y, _type);
	
			if (health <= 0){
				_encontrar_jugador = false;
			} else if _encontrar_jugador{
				path_start(path, move_spd, path_action_stop, false)
			}
		}
	}else{
		if _dis <= dist_ataque{
			path_end();
			state = estados.ATACAR;
		}
	}
}

function enemigos_scipt(){
	switch(state){
	case estados.IDLE:
		sprite_index = idle;
		show_hurt();
	break;
	case estados.MOVER:
		sprite_index = walk;
		show_hurt();
	break;
	case estados.ATACAR:
		sprite_index = attack;
	break;
	case estados.KNOCKBACK:
		show_hurt();
	break;
	case estados.MUERTO:
		sprite_index = dead;
	break;
	}
	depth = -bbox_bottom;
	xp = x;
	yp = y;
}

function perform_attack(){
	if image_index >= attack_frame and can_attack{
		can_attack = false;
		alarm[0] = attack_cooldown;
		
		var _dir = point_direction(x, y, objPlayer.x, objPlayer.y);
		
		var _xx = x + lengthdir_x(dist_ataque, _dir);
		var _yy = y + lengthdir_y(dist_ataque, _dir);
		
		var _inst = instance_create_layer(_xx, _yy, "Instances", enemy_hitbox);
		_inst.owner_id = id;
		_inst.damage = damage;
		_inst.knockback_time = knockback_time;
	}
}
function show_hurt(){
	if hit_time-- > 0 sprite_index = EnemiesHurt;
}