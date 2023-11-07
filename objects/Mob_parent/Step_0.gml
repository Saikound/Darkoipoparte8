/// @description Inserte aquí la descripción
// Estados de todos los enemigos
// Si se quieren crear mas enemigos con diferentes estados, se debe mnidificar esto

switch(state){
	case estados.IDLE:
		calc_entity_movement();
		proximidad();
		enemigos_scipt();
		if path_index != -1 state= estados.MOVER;
	break;
	case estados.MOVER:
		calc_entity_movement();
		proximidad();
		check_facing();
		if path_index == -1 state = estados.IDLE;
		enemigos_scipt();			
	break;
	case estados.KNOCKBACK:
		calc_knockback_movement();	
		enemigos_scipt();	
	break;
	case estados.ATACAR:
		calc_entity_movement();	
		perform_attack();
		check_facing();
		enemigos_scipt();
	break;
	case estados.MUERTO:
		calc_entity_movement();
		enemigos_scipt();
	break;
}

