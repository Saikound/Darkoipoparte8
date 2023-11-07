/// @description Inserte aquí la descripción

event_inherited();

spd = 3;
health = 10;
hp = health;

//Valores para calcular el arco y las flechas
arma_distancia = instance_create_layer(x, y, "Instances", arco);
aim_per = 0;
distancia_arco = 9;
flechazos = 30;
can_attack = true;
arrow_speed = 8;

cursor_sprite = Sprite5;
window_set_cursor(cr_none);

ready_to_restart = false;

//valores arco: 16 x 32
//valores personaje:30 x 41

//iframe
iframe_speed = 40;
iframe_array = [];
can_iframe = true;
iframe_cd = 360;
iframe_ti = 100;
iframe_t = iframe_ti;

