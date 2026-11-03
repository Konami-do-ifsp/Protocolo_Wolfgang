// Verifica se o obj_player está colidindo com esta porta
if (place_meeting(x, y, obj_player)) {
    
    // Se o jogador apertar a tecla E, muda de sala
    if (keyboard_check_pressed(ord("E"))) {
        // Substitua "rm_dungeon" pelo nome exato da sua sala destino
        room_goto(dungeon); 
    }
}