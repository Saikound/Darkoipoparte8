/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (alarm[HURT] > 0 and flash-- < flash_initial/2) or show_flash-- > 0 {
	gpu_set_fog(1, c_white, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, 1);
	gpu_set_fog(0, c_white, 0, 1);
	
	if flash <= 0 flash = flash_initial;

} else {
	draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, 1);
}

//Para mostrar que el jugador y los enemigos fueron golpeados
