global.carregando = false;

function save_existe() {
    return file_exists("save.ini");
}
function apagar_save() {
    if (save_existe()) file_delete("save.ini");
}
function save_jogo() {
    var _bools = [
        "has_key", "_tem_aspirador", "object25_unlocked", "podeglitch",
        "pc_construido", "pc_consertado", "leon_livre", "cabecao_normal_morto",
        "cabecao_hard_morto", "porta_turing_aberta", "porta_dungeon1_aberta",
        "intro_casa_feita", "claudia_ajudada", "alan_salvo", "alan_ajudado",
        "leu_bilhete"
    ];
    var _nums = ["item_step", "dmg_martelo", "dmg_aspirador"];

    ini_open("save.ini");

    ini_write_string("jogador", "sala", room_get_name(room));
    ini_write_real("jogador", "x", obj_player.x);
    ini_write_real("jogador", "y", obj_player.y);
    ini_write_real("jogador", "hp", obj_player.hp);
    ini_write_real("jogador", "arma", obj_player.current_weapon);

    for (var i = 0; i < array_length(_bools); i++) {
        var _v = variable_global_exists(_bools[i]) ? variable_global_get(_bools[i]) : false;
        ini_write_real("flags", _bools[i], _v ? 1 : 0);
    }
    for (var i = 0; i < array_length(_nums); i++) {
        var _v = variable_global_exists(_nums[i]) ? variable_global_get(_nums[i]) : 0;
        ini_write_real("flags", _nums[i], _v);
    }

    var _bag = variable_global_exists("bag") ? global.bag : [];
    ini_write_real("bag", "qtd", array_length(_bag));
    for (var i = 0; i < array_length(_bag); i++) {
        ini_write_string("bag", string(i), _bag[i]);
    }

    var _baus = variable_global_exists("baus_abertos") ? variable_struct_get_names(global.baus_abertos) : [];
    ini_write_real("baus", "qtd", array_length(_baus));
    for (var i = 0; i < array_length(_baus); i++) {
        ini_write_string("baus", string(i), _baus[i]);
    }

    ini_close();
}

function carregar_jogo() {
    if (!save_existe()) return;

    var _bools = [
        "has_key", "_tem_aspirador", "object25_unlocked", "podeglitch",
        "pc_construido", "pc_consertado", "leon_livre", "cabecao_normal_morto",
        "cabecao_hard_morto", "porta_turing_aberta", "porta_dungeon1_aberta",
        "intro_casa_feita", "claudia_ajudada", "alan_salvo", "alan_ajudado",
        "leu_bilhete"
    ];
    var _nums = ["item_step", "dmg_martelo", "dmg_aspirador"];

    ini_open("save.ini");

    for (var i = 0; i < array_length(_bools); i++) {
        variable_global_set(_bools[i], ini_read_real("flags", _bools[i], 0) == 1);
    }
    for (var i = 0; i < array_length(_nums); i++) {
        variable_global_set(_nums[i], ini_read_real("flags", _nums[i], 0));
    }

    global.bag = [];
    var _qtd = ini_read_real("bag", "qtd", 0);
    for (var i = 0; i < _qtd; i++) {
        array_push(global.bag, ini_read_string("bag", string(i), ""));
    }

    global.baus_abertos = {};
    _qtd = ini_read_real("baus", "qtd", 0);
    for (var i = 0; i < _qtd; i++) {
        global.baus_abertos[$ ini_read_string("baus", string(i), "")] = true;
    }

    var _sala = ini_read_string("jogador", "sala", "");
    ini_close();

    global.carregando = true;
    room_goto(asset_get_index(_sala));
}


function aplicar_save() {
    if (!global.carregando) return;

    ini_open("save.ini");
    x = ini_read_real("jogador", "x", x);
    y = ini_read_real("jogador", "y", y);
    hp = ini_read_real("jogador", "hp", hp);
    current_weapon = ini_read_real("jogador", "arma", current_weapon);
    ini_close();

    hp_draw = hp;
    hp_anim = hp;
    hp_old = hp;
    global.carregando = false;
}