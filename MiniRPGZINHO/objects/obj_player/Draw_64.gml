 var largura = 200;
var altura = 20;

var porcentagem = hp_anim / max_hp;

// Fundo (vermelho)
draw_set_color(c_red);
draw_rectangle(20, 20, 20 + largura, 20 + altura, false);

// Vida atual (verde)
draw_set_color(c_lime);
draw_rectangle(
    20,
    20,
    20 + (largura * porcentagem),
    20 + altura,
    false
);



// Volta para branco
draw_set_color(c_white);