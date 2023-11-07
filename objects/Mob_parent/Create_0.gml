/// @description Inserte aquí la descripción
// Evento innerado de mob

event_inherited();
//vida de los enemigos 
hp_max = 15;
hp = hp_max;
alert= false; 
alert_dis = 100;
attack_angle= irandom(360);
dist_ataque = 12;

attack_frame= 6;
can_attack= true;
attack_cooldown = 75;
damage = 1;
knockback_time = 10;

path = path_add();

move_spd = 2;

delay_seguimiento = 30;

delay_seguimiento_tiempo = irandom(60);