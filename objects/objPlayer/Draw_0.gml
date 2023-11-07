/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, 1);

var _size = array_length(iframe_array);
for (var i = _size - 1; i >= 0; i--){
	iframe_array[i].image_alpha -= 0.05;
	if iframe_array[i].image_alpha > 0 {
		draw_sprite_ext(sprPlayerDash, 0,
			iframe_array[i].x,
			iframe_array[i].y + 2,
			facing, 1, 0, c_white, iframe_array[i].image_alpha);
	} else array_delete(iframe_array, i, 1);
}


// Inherit the parent event
event_inherited();


