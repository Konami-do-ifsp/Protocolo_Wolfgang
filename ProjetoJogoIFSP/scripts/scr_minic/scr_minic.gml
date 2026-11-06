#macro MC_MAX_STEPS 200000

function mc_err(_msg, _line) { throw { msg: _msg, line: _line }; }

function mc_isdigit(_c) { if (_c == "") return false; var _o = ord(_c); return (_o >= 48 && _o <= 57); }
function mc_isalpha(_c) { if (_c == "") return false; var _o = ord(_c); return ((_o >= 65 && _o <= 90) || (_o >= 97 && _o <= 122) || _o == 95); }
function mc_in(_arr, _v) { for (var i = 0; i < array_length(_arr); i++) { if (_arr[i] == _v) return true; } return false; }
function mc_iskw(_v) { return mc_in(["int","float","string","if","else","while","for","print","break","continue","true","false"], _v); }
function mc_bool(_b) { return _b ? int64(1) : int64(0); }

//=------------TOKENIZER-----------------
function mc_tokenize(_src)
{
    var _tk = [];
    var _len = string_length(_src);
    var _i = 1;
    var _line = 1;

    while (_i <= _len)
    {
        var _c = string_char_at(_src, _i);
        var _n = string_char_at(_src, _i + 1);

        if (_c == "\n") { _line++; _i++; continue; }
        if (_c == " " || _c == "\t" || _c == "\r") { _i++; continue; }

        // comentario
        if (_c == "/" && _n == "/")
        {
            while (_i <= _len && string_char_at(_src, _i) != "\n") _i++;
            continue;
        }

        // comentário de bloco
        if (_c == "/" && _n == "*")
        {
            var _start = _line;
            var _closed = false;
            _i += 2;
            while (_i <= _len)
            {
                if (string_char_at(_src, _i) == "*" && string_char_at(_src, _i + 1) == "/") { _i += 2; _closed = true; break; }
                if (string_char_at(_src, _i) == "\n") _line++;
                _i++;
            }
            if (!_closed) mc_err("comentário /* não foi fechado", _start);
            continue;
        }

        // número
        if (mc_isdigit(_c))
        {
            var _s = "";
            var _isf = false;
            while (_i <= _len)
            {
                var _d = string_char_at(_src, _i);
                if (mc_isdigit(_d)) { _s += _d; _i++; }
                else if (_d == "." && !_isf && mc_isdigit(string_char_at(_src, _i + 1))) { _isf = true; _s += _d; _i++; }
                else break;
            }
            array_push(_tk, { t: "num", v: _isf ? real(_s) : int64(real(_s)), line: _line });
            continue;
        }

        // identificador / palavra reservada
        if (mc_isalpha(_c))
        {
            var _id = "";
            while (_i <= _len && (mc_isalpha(string_char_at(_src, _i)) || mc_isdigit(string_char_at(_src, _i))))
            {
                _id += string_char_at(_src, _i);
                _i++;
            }
            array_push(_tk, { t: "id", v: _id, line: _line });
            continue;
        }

        // texto
        if (_c == "\"")
        {
            var _str = "";
            var _ok = false;
            _i++;
            while (_i <= _len)
            {
                var _ch = string_char_at(_src, _i);
                if (_ch == "\"") { _ok = true; _i++; break; }
                if (_ch == "\n") break;
                if (_ch == "\\")
                {
                    var _e = string_char_at(_src, _i + 1);
                    switch (_e)
                    {
                        case "n":  _str += "\n"; break;
                        case "t":  _str += "    "; break;
                        case "\"": _str += "\""; break;
                        case "\\": _str += "\\"; break;
                        default:   _str += _e; break;
                    }
                    _i += 2;
                    continue;
                }
                _str += _ch;
                _i++;
            }
            if (!_ok) mc_err("texto sem aspas de fechamento", _line);
            array_push(_tk, { t: "str", v: _str, line: _line });
            continue;
        }

        // operadores
        var _two = _c + _n;
        if (mc_in(["==","!=","<=",">=","&&","||","+=","-=","*=","/=","++","--"], _two))
        {
            array_push(_tk, { t: "op", v: _two, line: _line });
            _i += 2;
            continue;
        }
        if (string_pos(_c, "+-*/%<>=!(){};,") > 0)
        {
            array_push(_tk, { t: "op", v: _c, line: _line });
            _i++;
            continue;
        }

        mc_err("caractere inválido '" + _c + "'", _line);
    }

    array_push(_tk, { t: "eof", v: "", line: _line });
    return _tk;
}

// -----PARSER-----------
function mc_peek(_p) { return _p.t[_p.i]; }
function mc_next(_p) { var _k = _p.t[_p.i]; if (_k.t != "eof") _p.i++; return _k; }
function mc_is(_p, _v) { var _k = _p.t[_p.i]; return ((_k.t == "op" || _k.t == "id") && _k.v == _v); }
function mc_accept(_p, _v) { if (mc_is(_p, _v)) { mc_next(_p); return true; } return false; }

function mc_expect(_p, _v)
{
    if (mc_accept(_p, _v)) return;
    var _k = _p.t[_p.i];
    var _line = _k.line;
    if (_v == ";" && _p.i > 0) _line = _p.t[_p.i - 1].line;
    var _got = (_k.t == "eof") ? "o fim do código" : "'" + string(_k.v) + "'";
    mc_err("esperado '" + _v + "' mas encontrou " + _got, _line);
}

function mc_parse_primary(_p)
{
    var _t = mc_next(_p);

    if (_t.t == "num" || _t.t == "str") return { k: "lit", v: _t.v, line: _t.line };

    if (_t.t == "id")
    {
        if (_t.v == "true")  return { k: "lit", v: int64(1), line: _t.line };
        if (_t.v == "false") return { k: "lit", v: int64(0), line: _t.line };
        if (mc_iskw(_t.v)) mc_err("palavra reservada '" + _t.v + "' não pode ser usada aqui", _t.line);
        return { k: "var", name: _t.v, line: _t.line };
    }

    if (_t.t == "op" && _t.v == "(")
    {
        var _e = mc_parse_expr(_p);
        mc_expect(_p, ")");
        return _e;
    }

    if (_t.t == "eof") mc_err("expressão incompleta (fim do código)", _t.line);
    mc_err("expressão inválida perto de '" + string(_t.v) + "'", _t.line);
}

function mc_parse_unary(_p)
{
    var _t = mc_peek(_p);
    if (_t.t == "op" && (_t.v == "-" || _t.v == "!"))
    {
        mc_next(_p);
        return { k: "un", op: _t.v, a: mc_parse_unary(_p), line: _t.line };
    }
    return mc_parse_primary(_p);
}

function mc_parse_level(_p, _lvl)
{
    static _levels = [["||"], ["&&"], ["==","!="], ["<",">","<=",">="], ["+","-"], ["*","/","%"]];

    if (_lvl >= array_length(_levels)) return mc_parse_unary(_p);

    var _a = mc_parse_level(_p, _lvl + 1);
    while (true)
    {
        var _t = mc_peek(_p);
        if (_t.t != "op" || !mc_in(_levels[_lvl], _t.v)) break;
        mc_next(_p);
        var _b = mc_parse_level(_p, _lvl + 1);
        _a = { k: "bin", op: _t.v, a: _a, b: _b, line: _t.line };
    }
    return _a;
}

function mc_parse_expr(_p) { return mc_parse_level(_p, 0); }

// declaração  (sem o ';' final)
function mc_parse_simple(_p)
{
    var _t = mc_peek(_p);

    if (_t.t == "id" && mc_in(["int","float","string"], _t.v))
    {
        mc_next(_p);
        var _nm = mc_next(_p);
        if (_nm.t != "id" || mc_iskw(_nm.v)) mc_err("nome de variável esperado depois de '" + _t.v + "'", _nm.line);
        var _init = undefined;
        if (mc_accept(_p, "=")) _init = mc_parse_expr(_p);
        return { k: "decl", type: _t.v, name: _nm.v, init: _init, line: _t.line };
    }

    if (_t.t == "id" && !mc_iskw(_t.v))
    {
        mc_next(_p);
        var _nx = mc_peek(_p);
        if (_nx.t == "op" && mc_in(["=","+=","-=","*=","/="], _nx.v))
        {
            mc_next(_p);
            var _rhs = mc_parse_expr(_p);
            return { k: "assign", name: _t.v, op: _nx.v, e: _rhs, line: _t.line };
        }
        if (_nx.t == "op" && (_nx.v == "++" || _nx.v == "--"))
        {
            mc_next(_p);
            return { k: "assign", name: _t.v, op: (_nx.v == "++") ? "+=" : "-=", e: { k: "lit", v: int64(1), line: _t.line }, line: _t.line };
        }
    }

    mc_err("instrução inválida perto de '" + string(_t.v) + "'", _t.line);
}

function mc_parse_if(_p)
{
    var _t = mc_next(_p);
    mc_expect(_p, "(");
    var _c = mc_parse_expr(_p);
    mc_expect(_p, ")");
    var _a = mc_parse_stmt(_p);
    var _b = undefined;
    if (mc_accept(_p, "else")) _b = mc_parse_stmt(_p);
    return { k: "if", c: _c, a: _a, b: _b, line: _t.line };
}

function mc_parse_while(_p)
{
    var _t = mc_next(_p);
    mc_expect(_p, "(");
    var _c = mc_parse_expr(_p);
    mc_expect(_p, ")");
    _p.loop++;
    var _b = mc_parse_stmt(_p);
    _p.loop--;
    return { k: "while", c: _c, body: _b, line: _t.line };
}

function mc_parse_for(_p)
{
    var _t = mc_next(_p);
    var _init = undefined;
    var _cond = undefined;
    var _stp = undefined;
    mc_expect(_p, "(");
    if (!mc_is(_p, ";")) _init = mc_parse_simple(_p);
    mc_expect(_p, ";");
    if (!mc_is(_p, ";")) _cond = mc_parse_expr(_p);
    mc_expect(_p, ";");
    if (!mc_is(_p, ")")) _stp = mc_parse_simple(_p);
    mc_expect(_p, ")");
    _p.loop++;
    var _b = mc_parse_stmt(_p);
    _p.loop--;
    return { k: "for", init: _init, c: _cond, stp: _stp, body: _b, line: _t.line };
}

function mc_parse_print(_p)
{
    var _t = mc_next(_p);
    var _args = [];
    mc_expect(_p, "(");
    if (!mc_is(_p, ")"))
    {
        array_push(_args, mc_parse_expr(_p));
        while (mc_accept(_p, ",")) array_push(_args, mc_parse_expr(_p));
    }
    mc_expect(_p, ")");
    mc_expect(_p, ";");
    return { k: "print", args: _args, line: _t.line };
}

function mc_parse_stmt(_p)
{
    var _t = mc_peek(_p);

    if (_t.t == "eof") mc_err("fim inesperado do código", _t.line);

    if (mc_is(_p, "{"))
    {
        mc_next(_p);
        var _list = [];
        while (!mc_is(_p, "}"))
        {
            if (mc_peek(_p).t == "eof") mc_err("o bloco '{' aberto aqui não foi fechado com '}'", _t.line);
            array_push(_list, mc_parse_stmt(_p));
        }
        mc_next(_p);
        return { k: "block", list: _list, line: _t.line };
    }

    if (mc_accept(_p, ";")) return { k: "block", list: [], line: _t.line };

    if (_t.t == "id")
    {
        if (_t.v == "if")    return mc_parse_if(_p);
        if (_t.v == "while") return mc_parse_while(_p);
        if (_t.v == "for")   return mc_parse_for(_p);
        if (_t.v == "print") return mc_parse_print(_p);
        if (_t.v == "break" || _t.v == "continue")
        {
            if (_p.loop <= 0) mc_err("'" + _t.v + "' fora de um laço", _t.line);
            mc_next(_p);
            mc_expect(_p, ";");
            return { k: _t.v, line: _t.line };
        }
        if (_t.v == "else") mc_err("'else' sem 'if' correspondente", _t.line);
    }

    var _s = mc_parse_simple(_p);
    mc_expect(_p, ";");
    return _s;
}

//  INTERPRETADOR 
function mc_out(_vm, _txt, _err)
{
    while (true)
    {
        var _pos = string_pos("\n", _txt);
        if (_pos == 0) break;
        array_push(_vm.out, { txt: string_copy(_txt, 1, _pos - 1), err: _err, dim: false });
        _txt = string_delete(_txt, 1, _pos);
    }
    array_push(_vm.out, { txt: _txt, err: _err, dim: false });
    if (!_err && array_length(_vm.out) > 1000) mc_err("saída muito grande (mais de 1000 linhas)", 0);
}

function mc_real_str(_v)
{
    var _s = string_format(_v, 1, 6);
    var _len = string_length(_s);
    while (_len > 1 && string_char_at(_s, _len) == "0") _len--;
    if (string_char_at(_s, _len) == ".") _len--;
    return string_copy(_s, 1, _len);
}

function mc_to_str(_v)
{
    if (is_string(_v)) return _v;
    if (is_int64(_v)) return string(_v);
    return mc_real_str(_v);
}

function mc_truthy(_v, _line)
{
    if (is_string(_v)) mc_err("uma condição não pode ser um texto", _line);
    return (_v != 0);
}

function mc_to_int(_v) { if (is_int64(_v)) return _v; return int64((_v >= 0) ? floor(_v) : ceil(_v)); }

function mc_coerce(_type, _v, _line, _name)
{
    if (_type == "string")
    {
        if (!is_string(_v)) mc_err("não é possível guardar um número na string '" + _name + "'", _line);
        return _v;
    }
    if (is_string(_v)) mc_err("não é possível guardar um texto em '" + _name + "' (" + _type + ")", _line);
    if (_type == "int") return mc_to_int(_v);
    return real(_v);
}

function mc_lookup(_vm, _name, _line)
{
    for (var i = array_length(_vm.scopes) - 1; i >= 0; i--)
    {
        var _sc = _vm.scopes[i];
        if (variable_struct_exists(_sc, _name)) return _sc[$ _name];
    }
    mc_err("variável '" + _name + "' não foi declarada", _line);
}

function mc_binop(_op, _a, _b, _line)
{
    var _sa = is_string(_a);
    var _sb = is_string(_b);

    if (_op == "+" && (_sa || _sb)) return mc_to_str(_a) + mc_to_str(_b);

    if (_op == "==" || _op == "!=")
    {
        if (_sa != _sb) mc_err("não é possível comparar texto com número", _line);
        var _eq = (_a == _b);
        return mc_bool((_op == "==") ? _eq : !_eq);
    }

    if (_sa || _sb) mc_err("o operador '" + _op + "' não funciona com texto", _line);

    var _both = (is_int64(_a) && is_int64(_b));

    switch (_op)
    {
        case "<":  return mc_bool(_a < _b);
        case ">":  return mc_bool(_a > _b);
        case "<=": return mc_bool(_a <= _b);
        case ">=": return mc_bool(_a >= _b);
        case "+":  return _both ? int64(_a + _b) : (_a + _b);
        case "-":  return _both ? int64(_a - _b) : (_a - _b);
        case "*":  return _both ? int64(_a * _b) : (_a * _b);
        case "/":
            if (_b == 0) mc_err("divisão por zero", _line);
            return _both ? int64(_a div _b) : (_a / _b);
        case "%":
            if (_b == 0) mc_err("divisão por zero", _line);
            return _both ? int64(_a mod _b) : (_a mod _b);
    }
    mc_err("operador desconhecido '" + _op + "'", _line);
}

function mc_eval(_vm, _n)
{
    switch (_n.k)
    {
        case "lit": return _n.v;
        case "var": return mc_lookup(_vm, _n.name, _n.line).val;

        case "un":
            var _ua = mc_eval(_vm, _n.a);
            if (_n.op == "!") return mc_bool(!mc_truthy(_ua, _n.line));
            if (is_string(_ua)) mc_err("o operador '-' não funciona com texto", _n.line);
            return is_int64(_ua) ? int64(-_ua) : -_ua;

        case "bin":
            if (_n.op == "&&")
            {
                if (!mc_truthy(mc_eval(_vm, _n.a), _n.line)) return int64(0);
                return mc_bool(mc_truthy(mc_eval(_vm, _n.b), _n.line));
            }
            if (_n.op == "||")
            {
                if (mc_truthy(mc_eval(_vm, _n.a), _n.line)) return int64(1);
                return mc_bool(mc_truthy(mc_eval(_vm, _n.b), _n.line));
            }
            var _l = mc_eval(_vm, _n.a);
            var _r = mc_eval(_vm, _n.b);
            return mc_binop(_n.op, _l, _r, _n.line);
    }
    mc_err("expressão desconhecida", _n.line);
}


function mc_exec(_vm, _n)
{
    _vm.steps++;
    if (_vm.steps > MC_MAX_STEPS) mc_err("limite de execução atingido (loop infinito?)", _n.line);

    switch (_n.k)
    {
        case "block":
            array_push(_vm.scopes, {});
            var _res = 0;
            for (var i = 0; i < array_length(_n.list); i++)
            {
                _res = mc_exec(_vm, _n.list[i]);
                if (_res != 0) break;
            }
            array_pop(_vm.scopes);
            return _res;

        case "decl":
            var _cur = _vm.scopes[array_length(_vm.scopes) - 1];
            if (variable_struct_exists(_cur, _n.name)) mc_err("a variável '" + _n.name + "' já foi declarada", _n.line);
            var _val;
            if (is_undefined(_n.init))
            {
                if (_n.type == "int") _val = int64(0);
                else if (_n.type == "float") _val = 0.0;
                else _val = "";
            }
            else _val = mc_eval(_vm, _n.init);
            _val = mc_coerce(_n.type, _val, _n.line, _n.name);
            _cur[$ _n.name] = { type: _n.type, val: _val };
            return 0;

        case "assign":
            var _ent = mc_lookup(_vm, _n.name, _n.line);
            var _rhs = mc_eval(_vm, _n.e);
            if (_n.op != "=") _rhs = mc_binop(string_copy(_n.op, 1, 1), _ent.val, _rhs, _n.line);
            _ent.val = mc_coerce(_ent.type, _rhs, _n.line, _n.name);
            return 0;

        case "print":
            var _txt = "";
            for (var j = 0; j < array_length(_n.args); j++)
            {
                if (j > 0) _txt += " ";
                _txt += mc_to_str(mc_eval(_vm, _n.args[j]));
            }
            mc_out(_vm, _txt, false);
            return 0;

        case "if":
            if (mc_truthy(mc_eval(_vm, _n.c), _n.line)) return mc_exec(_vm, _n.a);
            if (!is_undefined(_n.b)) return mc_exec(_vm, _n.b);
            return 0;

        case "while":
            while (mc_truthy(mc_eval(_vm, _n.c), _n.line))
            {
                var _wr = mc_exec(_vm, _n.body);
                if (_wr == 1) break;
            }
            return 0;

        case "for":
            array_push(_vm.scopes, {});
            if (!is_undefined(_n.init)) mc_exec(_vm, _n.init);
            while (is_undefined(_n.c) || mc_truthy(mc_eval(_vm, _n.c), _n.line))
            {
                var _fr = mc_exec(_vm, _n.body);
                if (_fr == 1) break;
                if (!is_undefined(_n.stp)) mc_exec(_vm, _n.stp);
            }
            array_pop(_vm.scopes);
            return 0;

        case "break":    return 1;
        case "continue": return 2;
    }
    mc_err("instrução desconhecida", _n.line);
}

// roda o código e devolve um array de { txt, err, dim } para o terminal
function mc_run(_src)
{
    var _vm = { out: [], scopes: [{}], steps: 0 };

    try
    {
        var _tokens = mc_tokenize(_src);
        var _p = { t: _tokens, i: 0, loop: 0 };
        var _prog = [];
        while (mc_peek(_p).t != "eof") array_push(_prog, mc_parse_stmt(_p));

        for (var i = 0; i < array_length(_prog); i++) mc_exec(_vm, _prog[i]);
    }
    catch (_e)
    {
        if (is_struct(_e) && variable_struct_exists(_e, "msg"))
        {
            var _where = (_e.line > 0) ? "Erro na linha " + string(_e.line) + ": " : "Erro: ";
            mc_out(_vm, _where + _e.msg, true);
        }
        else
        {
            var _m = (is_struct(_e) && variable_struct_exists(_e, "message")) ? _e.message : string(_e);
            mc_out(_vm, "Erro interno: " + _m, true);
        }
    }

    return _vm.out;
}