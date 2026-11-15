if (!variable_global_exists("baus_abertos")) global.baus_abertos = {};

abrindo = false;
item_id = "";
spr_abrindo = bau_abrindo;
image_speed = 0;
image_index = 0;
dialogo = "";

bau_checar = function()
{
    if (variable_struct_exists(global.baus_abertos, item_id))
    {
        abrindo = true;
        if (sprite_exists(spr_abrindo)) sprite_index = spr_abrindo;
        image_index = image_number - 1;
        image_speed = 0;
    }
};