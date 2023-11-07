/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


//dibujar caja de texto
draw_sprite(Textbox, 0, x,y);


//dibujar txt

draw_set_font(Font2);
draw_set_color(c_white);
draw_text_ext(x, y, txt, stringheigth, boxwidth);