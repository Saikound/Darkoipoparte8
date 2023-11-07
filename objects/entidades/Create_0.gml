/// @description Inserte aquí la descripción

//Estados de las identidades, todos comienzan con el sprite idle
state = estados.IDLE;

xp = x; 
yp = y;
facing = 1;
hsp = 0; 
vsp = 0;

hit_time = 0;
hurt_time = 30;

flash_initial = 16;
flash = flash_initial / 2;
show_flash_initial = 4;
show_flash = show_flash_initial;