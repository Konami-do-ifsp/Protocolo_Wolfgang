// Checa se terminou qualquer uma das animações de coleta normais
if (sprite_index == Sprite_coleta1 || 
    sprite_index == Sprite_coleta2 || 
    sprite_index == Sprite_coleta3 || 
    sprite_index == Sprite_coleta4) 
{
    // Se for o 4º item (última pecinha), puxa a Sprite_coletafim antes de liberar o player
    if (global.itens_coletados >= 4) {
        sprite_index = Sprite_coletafim;
        image_index = 0;
        image_speed = 1;
        // pegando_item continua true!
    } else {
        pegando_item = false; // Destrava o player normalmente nos 3 primeiros itens
    }
}
// Quando a animação final terminar, libera o personagem
else if (sprite_index == Sprite_coletafim) {
    pegando_item = false;
}