 // 1. Seguir jogador (Suavizado com lerp)
var _alvo_x = obj_player.x - (camera_get_view_width(view_camera) / 2);
var _alvo_y = obj_player.y - (camera_get_view_height(view_camera) / 2);

x = lerp(x, _alvo_x, 0.1);
y = lerp(y, _alvo_y, 0.1);

// 2. Sistema de Tremor Agressivo e Fluido
var off_x = 0;
var off_y = 0;

if (shake_time > 0)
{
    shake_time--;

    // CHOOSE força a câmera a ir de um extremo ao outro (Dá muito mais impacto!)
    off_x = choose(-shake, shake) + random_range(-shake * 0.2, shake * 0.2);
    off_y = choose(-shake, shake) + random_range(-shake * 0.2, shake * 0.2);

    // SUBTRAÇÃO LINEAR: O fade-out fica muito mais natural e previsível
    shake -= shake_fade; 
}
else
{
    shake = 0;
}

// 3. Aplica na câmera (com arredondamento para evitar artefatos de pixel se seu jogo for pixel art)
camera_set_view_pos(view_camera[0], round(x + off_x), round(y + off_y));
