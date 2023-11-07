/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//sprite_index = asset_get_index("sprPlayer" + action + face);
var _depth = (aim_per > 0 and aim_per < 180);
arma_distancia.depth = depth + _depth;

arma_distancia.x = x + lengthdir_x(distancia_arco, aim_per);
arma_distancia.y = y + lengthdir_y(distancia_arco, aim_per);

distancia_arco = lerp(distancia_arco, 11, 0.3);