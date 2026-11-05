draw_self();

if (proximo) {
    var _flutuar = sin(current_time / 200) * 4; 
    var _icone_y = y - (sprite_height / 2) - 24 + _flutuar; 

    draw_sprite(spr_E, e_frame, x, _icone_y);
}