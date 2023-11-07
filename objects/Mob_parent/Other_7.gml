/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

switch(state){
	case estados.MUERTO:
		image_index = image_number - 1; 
		image_speed = 0;
		instance_destroy();
	break;
	case estados.ATACAR:
		image_index = 0;
		state = estados.IDLE;
	break;
}