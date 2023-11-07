/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if texto == "Nueva Partida" {room_goto(Room2)}

else if texto == "Salir" {game_end()}

else if texto == "Continuar" {room_goto(Room2)}

else if texto == "LEER" {instance_create_layer(x, y, "Instances_1", tutorial_for_now)};

