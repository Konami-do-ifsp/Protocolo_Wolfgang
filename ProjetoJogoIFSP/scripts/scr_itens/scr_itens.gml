global.item_db = [
    { id: "bilhete1", name: "BILHETE 1", spr: agua },
    { id: "bilhete2", name: "BILHETE 2", spr: aguadaterra },
    {id: "bilhete3", name: "BILHETE 3", spr: casa1},
	{ id: "cpu_item", name: "CPU", spr: Sprite_cpu },
	{ id: "bilhete_chao", name: "BILHETE", spr: spr_bilhete_chao },
    { id: "chave1",   name: "CHAVE",     spr: spr_key },
	{ id: "cooler",          name: "COOLER",   spr: cooler_item },
	{ id: "tecla_1",         name: "TECLA",    spr: teclaF},
	{ id: "tecla_2",         name: "TECLA",    spr: TeclaA },
	{ id: "tecla_3",         name: "TECLA",    spr: TeclaL },
	{ id: "tecla_4",         name: "TECLA",    spr: TeclaS },
	{ id: "tecla_5",         name: "TECLA",    spr: TeclaO },
	{ id: "pilula_vermelha", name: "PILULA",   spr: spr_pilula }
];

function item_get(_id)
{
    for (var i = 0; i < array_length(global.item_db); i++)
    {
        var _e = global.item_db[i];

        if (_e.id == _id)
        {
            if (!variable_struct_exists(_e, "spr")) _e.spr = -1;
            if (!variable_struct_exists(_e, "name")) _e.name = _id;
            return _e;
        }
    }

    return { id: _id, name: _id, spr: -1 };
}