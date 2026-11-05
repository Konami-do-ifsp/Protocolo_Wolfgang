if (instance_exists(obj_player)) {
    var _dist = point_distance(x, y, obj_player.x, obj_player.y);
    proximo = (_dist <= raio_interacao);
    
    // Animação da tecla E individual para cada item perto do player
    if (proximo) {
        e_frame += 0.2; 
    } else {
        e_frame = 0;   
    }

    if (proximo && keyboard_check_pressed(ord("E"))) {
        
        if (!variable_global_exists("itens_coletados")) global.itens_coletados = 0;
        
        // Determina qual animação vai rodar com base na quantidade já coletada
        var _anim = sprite_coleta;
        if (_anim == noone) {
            switch (global.itens_coletados) {
                case 0: _anim = Sprite_coleta1; break;
                case 1: _anim = Sprite_coleta2; break;
                case 2: _anim = Sprite_coleta3; break;
                case 3: _anim = Sprite_coleta4; break;
                default: _anim = Sprite_coleta4; break;
            }
        }
        
        global.itens_coletados += 1;
        
        with (obj_player) {
            sprite_index = _anim; 
            image_index = 0;
            image_speed = 1;
            pegando_item = true;
        }
        
        instance_destroy();
    }
}