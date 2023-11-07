/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var salto = keyboard_check_pressed(vk_space) 
switch(state){
	default:		
		reset_variables();
		movimiento3()
		calc_movement();
		check_dash();
		check_fire();
		personaje1();
		anim();
	break;	
	case estados.DASH:
		reset_variables();
		array_push(iframe_array,{x : x, y : y, image_alpha: 0.75});
		x += hsp;
		y+= vsp;
		if iframe_ti-- <=0{
			state = estados.MOVER;
			hsp = 0;
			vsp = 0;
			can_iframe = false;
			alarm[CAN_DASH] = iframe_cd;
			image_index = 2;
		}
		personaje1();
		anim();
		
	case estados.KNOCKBACK:
		reset_variables();
		calc_movement();
		personaje1();	
		if hit_time-- <= 0 state = estados.IDLE;
	break;	
	case estados.MUERTO:
		reset_variables();
		calc_movement();
		if ready_to_restart and mouse_check_button_pressed(mb_right) game_restart();
		break;
}


