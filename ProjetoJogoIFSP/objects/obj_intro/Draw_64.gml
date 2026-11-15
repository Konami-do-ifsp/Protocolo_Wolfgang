// --- FUNDO E TEXTO DA CUTSCENE ---
draw_set_font(fnt_dialogo);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text_ext(display_get_gui_width() / 2, display_get_gui_height() / 2, display_text, 24, display_get_gui_width() - 200);

// --- BOTÃO DE PULAR ---
var _spr = tb_menu; 
var _escala_x = 4.5;
var _escala_y = 3.2;
var _escala_texto = 0.75;
var _margem_direita = 40;
var _margem_baixo   = 40;
var _largura = sprite_get_width(_spr) * _escala_x;
var _altura  = sprite_get_height(_spr) * _escala_y;
var _right  = display_get_gui_width() - _margem_direita;
var _bottom = display_get_gui_height() - _margem_baixo;
var _left   = _right - _largura;
var _top    = _bottom - _altura;
var _btn_x = _left + (sprite_get_xoffset(_spr) * _escala_x);
var _btn_y = _top + (sprite_get_yoffset(_spr) * _escala_y);
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);
var _hover = point_in_rectangle(_mx, _my, _left, _top, _right, _bottom);
var _cor_btn = _hover ? c_ltgray : c_white;
draw_sprite_ext(_spr, 0, _btn_x, _btn_y, _escala_x, _escala_y, 0, _cor_btn, 1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
var _centro_x = (_left + _right) / 2;
var _centro_y = ((_top + _bottom) / 2) - (2 * _escala_y);
draw_text_transformed(_centro_x, _centro_y, "Pular", _escala_texto, _escala_texto, 0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (_hover && mouse_check_button_pressed(mb_left))
{
    room_goto(cenario1);
}