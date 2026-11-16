# Código completo do projeto

Projeto: `ProjetoJogoIFSP`

---

# Scripts

## scripts\get_dialogue\get_dialogue.gml

```gml
function get_dialogue(_id)
{
    switch (_id)
    {
        case "data_center_intro":
            return [
                {
                    speaker: "john",
                    text: "Ei, Sr. Mateus. Que lugar é esse? Por que está aqui?"
                },
                {
                    speaker: "mateus",
                    text: "Jovem John! Eu não sei como vim parar aqui, essas máquinas começaram a emitir um barulho ensurdecedor lá fora e meu passarinhos fugiram, comecei a procurá-los e vim parar aqui, ainda não achei eles…"
                },
                {
                    speaker: "john",
                    text: "Eu devo ter escutado enquanto dormia…"
                },
                {
                    speaker: "mateus",
                    text: "Estou com dor de cabeça até agora por isso. Está uma bagunça lá fora, queria entender o que está acontecendo… Por algum motivo a água sumiu também, só tem um pouco no lago de sua casa, será que essas máquinas tem algo a ver com isso?"
                },
                {
                    speaker: "john",
                    text: "Eu estou tentando entender também… Vou procurar mais pessoas, estou preocupado com o Luc."
                },
                {
                    speaker: "mateus",
                    text: "Certo, se achar meus passarinhos me avise. Ah, tem algo que quero te dar."
                },
                {
                    speaker: "mateus",
                    text: "Achei isso grudado na máquina colorida, talvez te ajude.\n\n[Bilhete: \"Dois símbolos me dão vida: um representa o início, outro a ausência. Embora conte como qualquer número, não sigo as regras dos dez. Para descobrir meu segredo, transforme 13 em minha linguagem.\"]"
                },
                {
                    speaker: "john",
                    text: "Obrigado Sr. Mateus."
                },
                {
                    speaker: "mateus",
                    text: "Que a força esteja com você garoto!"
                },
                {
                    speaker: "fairy",
                    text: "Um data center (centro de processamento de dados) é uma instalação física, prédio ou ambiente projetado para centralizar servidores, sistemas de armazenamento, equipamentos de rede e recursos de TI."
                },
                {
                    speaker: "fairy",
                    text: "Eles fazem muito barulho pois usam um sistema intenso de refrigeração com grandes motores, e utilizam água para resfriar. Provavelmente devem estar pegando a água da vila."
                },
                {
                    speaker: "john",
                    text: "Que horrível, eles aparecem do nada e estragam toda a vila…"
                }
            ];
			
		case "done_DT":
            return [
                {
                    speaker: "mateus",
                    text: "Achei isso grudado na máquina colorida, caso precises reler:\n[Bilhete: \"Dois símbolos me dão vida: um representa o início, outro a ausência. Embora conte como qualquer número, não sigo as regras dos dez. Para descobrir meu segredo, transforme 13 em minha linguagem.\"]"
                },
                {
                    speaker: "mateus",
                    text: "Boa sorte na procura pelos passarinhos e cuidado com essas máquinas, jovem John!"
                }
            ];
		case "mateus_dps_aspirador":
			return[
				{speaker: "mateus", text: "Mds você pegou o aspirador lendário da nossa vila!"},
				{speaker: "mateus", text: "Faça bom uso dele!"}
				
			]
		case "luk_final_1":
			return [
				{speaker: "john", text: "Ei Luk! Que saudade, esperava que não fosse te encontrar mais aqui.\nQue lugar é esse? Onde está o resto da vila?"},
				{speaker: "luk", text: "...."},
				{speaker: "john", text: "Luk!?"},
				{speaker: "luk", text: "John, você é minha maior criação. Depois de anos tentando fazer um protótipo 100% funcional, eu finalmente consegui."},
				{speaker: "john", text: "O que você está falando, Luk?"},
				{speaker: "luk", text: "Foram cerca de 70 tentativas, agora você está perfeito."}
			];

		case "luk_final_2":
			return [
				{speaker: "luk", text: "Esse mundo não existe, muito menos você e a sua personalidade. Você é uma inteligência artificial criada por mim.\nVocê é o futuro. É a primeira IA a conseguir simular perfeitamente sentimentos humanos e se especializar totalmente em qualquer atividade humana."},
				{speaker: "john", text: "Que brincadeira é essa, Luk...?"},
				{speaker: "luk", text: "Veja o mundo em que estamos, isso tudo é uma simulação que criei para te treinar. Enquanto você está aqui, a sua inteligência artificial está lidando com outros milhões de personalidades, mundos e problemas diferentes. Eu criei diversas situações, personagens e histórias para que você simulasse perfeitamente as emoções humanas, e resolvesse com perfeição qualquer problema."},
				{speaker: "john", text: "Isso não faz sentido, Luk...\nEu tenho minha vida aqui, eu tenho minha história aqui."},
				{speaker: "luk", text: "Olha, está perfeito.\nVocê praticamente sente igual a um humano.\nO projeto está concluído, a criação está perfeita. Finalmente poderei desligar todos os servidores."},
				{speaker: "luk", text: "Com essa minha criação, a humanidade evoluirá 5 séculos de uma vez."},
				{speaker: "john", text: "Eu não vou permitir, Luk.\nEu não estou entendendo nada do que você está falando!\nEu não vou deixar que você acabe comigo e com a nossa vila."}
			];

		case "luk_final_3":
			return [
				{speaker: "luk", text: "John, não adianta. Eu controlo tudo aqui. Me desculpe, meu filho."}
			];
			
				case "john_acorda":
			return [
				{speaker: "john", text: "Ué, cadê todo mundo? Era pro Luk já estar trabalhando com o pessoal aqui."}
			];

		case "john_tv":
			return [
				{speaker: "john", text: "Que coisa grande é essa? É colorido... Quem colocou essas coisas aqui?"}
			];

		case "john_casa_luk":
			return [
				{speaker: "john", text: "O Luk não tá em casa, e agora?"}
			];


		case "fairy_intro":
			return [
				{speaker: "fairy", text: "Eae, muleque! Sou a Fairy, ou o Fairy, me chame como quiser. Vi que você realmente é bem esperto! Conseguiu até me construir...\nBom, estou aqui para te ajudar! E em troca você me ajuda também, não conheço muito bem esse mundo."},
				{speaker: "john", text: "Primeiro, o que é você, Fairy?"},
				{speaker: "fairy", text: "Sou uma máquina chamada PC, sirvo para vocês humanos realizarem tarefas, rodar programas, acessar a internet.\n\nVocê me construiu com as seguintes peças: CPU, Micro SD, SSD e placa-mãe.\nA CPU é o meu cérebro, já o Micro SD é a minha memória, o SSD é o meu armazenamento principal e a placa-mãe é como se fosse o meu coração, é nela que se conectam todas as outras peças."},
				{speaker: "john", text: "Certo, entendi mais ou menos...\nEu queria saber o que está acontecendo aqui na vila, todo mundo sumiu e tem essas máquinas bizarras..."},
				{speaker: "fairy", text: "Também não sei muito bem te explicar, eu acabei de vir parar aqui. Mas já sei o que vamos fazer: deixa eu me juntar a você! Daqui pra frente eu vou andar com você, assim posso te guiar de perto e te ajudar sempre que precisar."}
			];

		case "fairy_acompanha":
			return [
				{speaker: "fairy", text: "Pronto! Agora estou andando com você. Tive a sorte de você conseguir me mont----"},
				{speaker: "fairy", text: "Opa, estou identificando um BUG aqui no sistema da vila! Vamos procurar ele imediatamente."},
				{speaker: "john", text: "Meu Deus, o que será que é um Bug?..."},
				{speaker: "fairy", text: "Depois eu te explico, muleque."}
			];

		case "fairy_bug":
			return [
				{speaker: "fairy", text: "Um bug é um erro ou falha no código de um sistema que faz com que ele funcione de maneira inesperada ou trave."},
				{speaker: "john", text: "Acho que entendi. É normal ele ficar sugando a gente para mais perto dele?"},
				{speaker: "fairy", text: "Não sei."},
				{speaker: "john", text: "Aaaaaahhhh."}
			];
			
		case "john_casa_mateus":
			return [
				{speaker: "john", text: "Toc toc... Acho que o Sr. Mateus não deve estar em casa agora."}
			];
		case "john_voltar_bilhete":
			return [
				{speaker: "john", text: "Peguei todas as peças! Acho que devo voltar para o lugar onde achei o bilhete."}
			];
		case "cabecao_intro":
			return [
				{speaker: "cabecao", text: "Você acha, John, que tem o poder necessário para segurar o lendário aspirador?"}
			];

		case "cabecao_hard_intro":
			return [
				{speaker: "cabecao_hard", text: "Você achou que seria tão fácil me derrotar? Isso não vai ser tão fácil assim, John!"}
			];
		case "luk_inicio":
			return [
				{speaker: "john", text: "Fairy, que lugar é esse? Fairy??? Cadê você?"},
				{speaker: "john",  text: "FAIRY!!!"}
			];

		case "luk_protocolo":
			return [
				{speaker: "luk", text: "Está pronto, pessoal. Encerrando o PROTOCOLO WOLFANG."}
			];
			
		case "dungeon_computador":
		    return [
		        {speaker: "john", text: "Olha que máquina gigante, parece um pouco com você."},
		        {speaker: "fairy", text: "Que computador enorme, parece estar desligado.\nOlha ali, tem algumas teclas faltando no teclado dele."},
		        {speaker: "john", text: "Devem ter sido roubadas, vamos procurar."}
		    ];

		case "dungeon_pc_quebrado":
		    return [
		        {speaker: "fairy", text: "Olha para ele, coitado...\nEstá superaquecido, temos que ajudar ele!"},
		        {speaker: "john", text: "Mas como?"},
		        {speaker: "fairy", text: "Alguém deve ter pegado as peças dele, provavelmente pegaram o cooler dele!"},
		        {speaker: "john", text: "Cooler? O que é isso, fala minha língua!"},
		        {speaker: "fairy", text: "Cooler é o sistema de resfriamento do computador que absorve e dissipa o calor das peças internas para evitar o aquecimento."},
		        {speaker: "john", text: "Certo, entendi! Vamos procurar o cooler."}
		    ];

		case "claudia_intro":
		    return [
		        {speaker: "john", text: "Quem é você, menina? E por que está chorando?"},
		        {speaker: "claudia", text: "Meu PC está muito lento e não roda mais nenhum jogo, não consigo programar. E pra piorar, daqui a pouco vai passar o jogo do Warriors. Meu Deus, como eu vou assistir!?"},
		        {speaker: "john", text: "A gente te ajuda!"},
		        {speaker: "fairy", text: "Seu PC parece estar em ótimo estado! O que será que está acontecendo?"},
		        {speaker: "claudia", text: "Não sei, eu tentei arrumar já... Ele começou a esquentar muito. Peguei o cooler de um computador velho que eu achei pra ver se dava jeito, mas não deu..."},
		        {speaker: "fairy", text: "Hum, mas antes disso você conferiu se seu computador está limpo? Ele pode estar cheio de poeira, que se acumula e impede o ar de circular direito. Uma boa limpeza deve resolver."},
		        {speaker: "claudia", text: "Mas é impressionante! Realmente faz tempo que não limpo."},
		        {speaker: "fairy", text: "Além disso, aumentar a memória RAM pode ajudar. Dê uma olhada no espaço do seu disco também! Libere armazenamento retirando o que está ocupando espaço."},
		        {speaker: "claudia", text: "Tem razão..."},
		        {speaker: "fairy", text: "E mais uma coisa! Ele pode estar demorando pra ligar porque tem programas demais iniciando junto com o Windows."},
		        {speaker: "claudia", text: "Vocês me ajudaram demais! Vou fazer o que me aconselharam. Vocês poderiam levar de volta o cooler que eu roubei daquele pobre computador? Por favor! Peçam desculpas a ele por mim."},
		        {speaker: "john", text: "Com certeza! Estávamos procurando essa peça mesmo. Arrume seu computador e aproveite!"},
		        {speaker: "claudia", text: "Ah, outra coisa! Peguem essa tecla que eu achei no chão no caminho, talvez seja dele."}
		    ];

		case "claudia_done":
		    return [
		        {speaker: "claudia", text: "Obrigada pela ajuda! Vou arrumar meu PC agora."} // texto provisório, troque pelo seu
		    ];

		case "pegou_cooler_tecla":
		    return [
		        {speaker: "fairy", text: "Essa tecla deve fazer parte do grande computador, vamos juntar todas e depois encaixar."}
		    ];

		case "pc_religado":
		    return [
		        {speaker: "computador", text: "4F 62 72 69 67 61 64 6F 20\n70 65 73 73 6F 61 6C 2C 20\n76 6F 63 65 73 20\n6D 65 20\n73 61 6C 76 61 72 61 6D 21"},
		        {speaker: "fairy", text: "Traduzindo...\n\"Obrigado pessoal, vocês me salvaram!\""},
		        {speaker: "john", text: "Que código estranho é esse que ele falou?"},
		        {speaker: "fairy", text: "É um sistema hexadecimal! Uma maneira mais simples e compacta do computador representar informações."},
		        {speaker: "john", text: "Como assim?"},
		        {speaker: "fairy", text: "Computadores trabalham com 0 e 1, mas escrever tudo em binário gera sequências enormes. O hexadecimal usa números de 0 a 9 e letras de A a F para representar essas informações de forma mais curta!"},
		        {speaker: "john", text: "Acho que entendi! É tipo uma abreviação."},
		        {speaker: "fairy", text: "Você até que é bem esperto pra sua época, seu raciocínio é bem ligeiro."},
		        {speaker: "john", text: "Hehe."}
		    ];
		case "pc_obrigado":
		    return [
		        {speaker: "computador", text: "4D 75 69 74 6F 20\n6F 62 72 69 67 61 64 6F 21"},
		        {speaker: "fairy", text: "Traduzindo...\n\"Muito obrigado!\""}
		    ];

		case "leon_capsula":
		    return [
		        {speaker: "fairy", text: "Olha isso, John. Esse cara parece estar sofrendo aí dentro, temos que ajudar."},
		        {speaker: "john", text: "Deve ter alguma coisa pra gente abrir essa cápsula, vamos procurar."}
		    ];

		case "bau_tecla":
		    return [
		        {speaker: "john", text: "Mais uma tecla! Vamos guardar."}
		    ];

		case "bau_pilula":
		    return [
		        {speaker: "john", text: "Acho que a gente devia dar essa pílula pra aquele cara, talvez ele precise depois de passar tanto tempo naquela cápsula."}
		    ];

		case "leon_intro":
		    return [
		        {speaker: "leon", text: "Agradeço vocês dois por me libertarem, finalmente saí dessa simulação. O choque foi grande, mas foi necessário.\nAgora eu tenho um dever maior: tirar a humanidade da Simulatrix."},
		        {speaker: "john", text: "..."},
		        {speaker: "leon", text: "Lembre-se, garoto, sempre questione e reflita sobre sua realidade."},
		        {speaker: "john", text: "Que cara doido..."},
		        {speaker: "leon", text: "Como forma de agradecimento, pega essa tecla aí."},
		        {speaker: "john", text: "Valeu, cara!"}
		    ];

		case "alan_intro":
		    return [
		        {speaker: "alan", text: "Ei, você do chapéu engraçado! Me ajude, os alemães estão procurando por mim.\nEnrole eles enquanto eu decodifico a mensagem deles, por favor!"}
		    ];

		case "alan_fim":
		    return [
		        {speaker: "alan", text: "Muito obrigado, rapaz, sem você eu não teria desvendado a Enigma. Consegui notificar o Almirantado britânico.\nDez submarinos alemães estavam aguardando uma frota nossa, em uma emboscada. Agora eles alteraram a rota e consegui salvar a todos."},
		        {speaker: "john", text: "Que bom, Alan, parabéns. Temos que comemorar! Como você fez isso?"},
		        {speaker: "alan", text: "Com a Bombe! Uma máquina eletromecânica que desenvolvi para ajudar a decifrar as mensagens criptografadas pela máquina Enigma dos alemães."},
		        {speaker: "alan", text: "Como forma de gratidão, te darei essa tecla. Você saberá o que fazer com ela."},
		        {speaker: "fairy", text: "Obrigada, Turing. Saiba que você nunca será esquecido."},
		        {speaker: "alan", text: "Estou devendo vocês, pessoal!"}
		    ];

		case "computador_final":
		    return [
		        {speaker: "computador", text: "Finalmente conseguiu completar o desafio, né, rapaz. Você está cada dia com o raciocínio mais veloz. Impressionante."},
		        {speaker: "john", text: "...."},
		        {speaker: "computador", text: "Você já se perguntou... O que é real? Como você define o real?"},
		        {speaker: "computador", text: "Na sua vila, você já parou pra ver o mundo de noite? As corujas não são o que parecem... Você nunca percebeu que, de onde você vem, há sempre música no ar?"},
		        {speaker: "john", text: "...."},
		        {speaker: "computador", text: "Você já teve aquela sensação de não ter certeza se está acordado ou sonhando, né."},
		        {speaker: "computador", text: "Você está perfeito."},
		        {speaker: "computador", text: "John, o que é você?"},
		        {speaker: "john", text: "...Sou um construtor. Trabalho na minha vila."},
		        {speaker: "computador", text: "Você consegue mentir...? Seria esse o ápice da evolução?"},
		        {speaker: "john", text: "..."},
		        {speaker: "computador", text: "Acorde."}
		    ];
		case "fairy_porta_trancada":
		    return [
		        {speaker: "fairy", text: "Acho que devemos ir pra porta trancada ver se algo mudou."}
		    ];
			
		case "turing_pedindo_ajuda":
		    return [
		        {speaker: "alan", text: "Ei! Tem alguém aí fora? Por favor, me ajudem!\nEntrem na sala, rápido!"},
		        {speaker: "john", text: "Tem alguém pedindo ajuda lá dentro! Vamos entrar."}
		    ];
    }

    return [];
}
```

## scripts\npc_advance_state\npc_advance_state.gml

```gml
function npc_advance_state(_npc_id, _current_state)
{
    switch (_npc_id)
    {
        case "mateus":
            switch (_current_state)
            {
                case "data_center_intro":
                    return "done_DT";

                case "done_DT":
                    if (global._tem_aspirador) return "mateus_dps_aspirador";
                    return "done_DT";

                case "mateus_dps_aspirador":
                    return "mateus_dps_aspirador";
            }
            break;
		case "claudia":
		    if (_current_state == "claudia_intro")
		    {
		        bag_add("cooler");
		        bag_add("tecla_1");
		        return "claudia_done";
		    }
		    break;
		
		case "leon":
		    if (_current_state == "leon_intro")
		    {
		        bag_remove("pilula_vermelha");
		        bag_add("tecla_3");
		        return "leon_done";
		    }
		    break;
			
		case "alan":
		    if (_current_state == "alan_intro")
		    {
		        bag_add("tecla_4");
		        global.alan_ajudado = true;
		        
		       
		        if (!instance_exists(obj_soldier_spawner))
		        {
		            instance_create_layer(x, y, "Instances", obj_soldier_spawner);
		        }
		        
		        return "alan_done";
		    }
		    break;
    }

    return _current_state;
}
```

## scripts\player_states\player_states.gml

```gml
function tem_aspirador()
{
    return variable_global_exists("_tem_aspirador") && global._tem_aspirador;
}

function animation_end()
{
    var _spd = sprite_get_speed(sprite_index);
    if (sprite_get_speed_type(sprite_index) != spritespeed_framespergameframe) {
        _spd = _spd / game_get_speed(gamespeed_fps);
    }
    return (image_index + _spd * image_speed >= image_number);
}

function get_facing_angle()
{
    if (dir == "back")  return 90;
    if (dir == "front") return 270;
    return (image_xscale >= 0) ? 0 : 180; //mostra se ta olhando direita ou esquerda
}

function state_idle()
{
    var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

    if (h != 0 || v != 0)
    {
        state = state_walk;
        return;
    }

    if (dir == "front") sprite_index = spr_player_idle_front;
    if (dir == "back")  sprite_index = spr_player_idle_back;
    if (dir == "side")  sprite_index = spr_player_idle_side;
}

function state_walk()
{
    var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

    if (abs(v) > abs(h))
    {
        if (v > 0) dir = "front";
        else if (v < 0) dir = "back";
    }
    else if (h != 0)
    {
        dir = "side";
        image_xscale = sign(h);
    }

    if (dir == "front") sprite_index = spr_player_walk_front;
    if (dir == "back")  sprite_index = spr_player_walk_back;
    if (dir == "side")  sprite_index = spr_player_walk_side;

    if (h == 0 && v == 0)
    {
        state = state_idle;
        return;
    }
}

function start_attack()
{
    sword_ang = get_facing_angle();

    if (current_weapon == Weapon.ASPIRADOR) {
        if (dir == "front") sprite_index = sugando_frente;
        if (dir == "back")  sprite_index = sugando_costas;
        if (dir == "side")  sprite_index = sugando_delado;
    } else {
        if (dir == "front") sprite_index = spr_batendo_front;
        if (dir == "back")  sprite_index = spr_batendo_back;
        if (dir == "side")  sprite_index = spr_batendo_side;
    }

    image_index = 0;
    image_speed = 1;
    sword_criada = false;
    attacking = true;
    state = state_attack;
}

function state_attack()
{
    var _obj = noone;
    var _frame = 0;

    if (current_weapon == Weapon.SWORD) {
        _obj = obj_sword;
        _frame = sword_frame;
    } else if (current_weapon == Weapon.ASPIRADOR) {
        _obj = obj_colisao_aspirador;
        _frame = aspirador_frame;
    }

    if (_obj != noone && !sword_criada && image_index >= _frame) {
        sword_criada = true;

        var _dist = 24;
        var _off_y = (dir == "side") ? 10 : 0;

        var s = instance_create_layer(
            x + lengthdir_x(_dist, sword_ang),
            y + lengthdir_y(_dist, sword_ang) + _off_y,
            "Instances",
            _obj
        );
        s.dir = sword_ang;
        s.image_angle = sword_ang;
        s.owner = id;
        s.dist = _dist;

        if (current_weapon == Weapon.SWORD) {
            audio_play_sound(snd_sword_slash, 1, false);
        } else if (current_weapon == Weapon.ASPIRADOR) {
            som_aspirador = audio_play_sound(snd_som_aspirador, 1, false);
        }
    }

    if (animation_end()) {
        if (audio_is_playing(som_aspirador)) audio_stop_sound(som_aspirador);
        attacking = false;
        state = state_idle;
    }
}

function start_pull_aspirador(_inst)
{
    puxado = _inst;
    pull_flash = 0;

    
    pull_target_x = (_inst.bbox_left + _inst.bbox_right) / 2 + pull_offset_x;
    pull_target_y = (_inst.bbox_top + _inst.bbox_bottom) / 2 + pull_offset_y;

    dir = "side";
    image_xscale = (pull_target_x >= x) ? 1 : -1;

    sprite_index = spr_player_walk_side;
    image_speed = 1;
    kb_x = 0;
    kb_y = 0;
    attacking = true;
    pull_phase = 1;      
    pull_timer = 0;
    state = state_pull_aspirador;
}

function state_pull_aspirador()
{
    
    invencible = true;
    inv_timer = 2;

    switch (pull_phase)
    {
        
        case 1:
            if (audio_is_playing(snd_walking)) audio_stop_sound(snd_walking);

            var _d = point_distance(x, y, pull_target_x, pull_target_y);

            if (_d <= pull_walk_spd)
            {
                x = pull_target_x;
                y = pull_target_y;

                
                sprite_index = spr_player_puxando_aspirador;
                image_index = 0;
                image_speed = 1;
                pull_phase = 2;
            }
            else
            {
                var _a = point_direction(x, y, pull_target_x, pull_target_y);
                x += lengthdir_x(pull_walk_spd, _a);
                y += lengthdir_y(pull_walk_spd, _a);
                image_speed = 1;
            }
        break;

        
        case 2:
            image_speed = 1;

            if (image_index >= pull_give_frame)
            {
                global._tem_aspirador = true;
                pull_flash = 1;

                with (obj_camera)
                {
                    shake = 0.5;
                    shake_time = 8;
                    shake_fade = 1;
                }

                if (instance_exists(puxado))
                {
                    puxado.image_index = 1;
					puxado.image_speed = 0;
                }
                puxado = noone;
                

                pull_phase = 3;
            }
        break;

        
        case 3:
            image_speed = 1;
            pull_flash = max(0, pull_flash - 0.04);

            if (animation_end())
            {
                image_index = image_number - 1;
                image_speed = 0;
                pull_phase = 4;
                pull_timer = 0;
            }
        break;

        
        case 4:
            image_speed = 0;
            image_index = image_number - 1;
            pull_flash = max(0, pull_flash - 0.04);
            pull_timer++;

            if (pull_timer >= pull_hold)
            {
                pull_phase = 0;
                pull_flash = 0;
                attacking = false;
                state = state_idle;
            }
        break;
    }
}

function state_explode()
{
    if (!exploding)
    {
        exploding = true;
        attacking = false;
        sprite_index = spr_player_explode;
        image_index = 0;
        image_speed = 1;
        spd = 0;
    }

 
    if (image_index >= image_number - 1)
    {
        image_index = image_number - 1;
        image_speed = 0;
        
        
        room_goto(rm_gameover);
    }
}


function item_idx(_inst)
{
    for (var i = 0; i < array_length(global.item_order); i++)
    {
        if (_inst.object_index == global.item_order[i]) return i;
    }
    return -1;
}

function start_pickup(_inst)
{
    var _inst_obj = _inst.object_index;
    pickup_idx = item_idx(_inst);

    global.item_step++;
    instance_destroy(_inst);

    var _spr = spr_pegar_cpu;
	switch (_inst_obj)
	{
	    case cpu:       _spr = spr_pegar_cpu; break;
		case ssd: _spr = spr_pegar_ram; break;
		case RAm: _spr = spr_pegar_ssd; break;
	    case Placa_mae: _spr = spr_completado_itens; break;
	}
	image_xscale = 1
	sprite_index = _spr;
	show_debug_message("objeto=" + object_get_name(_inst_obj) + " sprite=" + sprite_get_name(sprite_index));
    image_index = 0;
    image_speed = 1;
    kb_x = 0;
    kb_y = 0;
    attacking = true;   
    state = state_pickup;
	
}

function state_pickup()
{
    invencible = true;
    inv_timer = 2;

    if (animation_end())
    {
        attacking = false;
        state = state_idle;

        if (global.item_step >= 4)
        {
            if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);
            obj_dialogue.start_lines(get_dialogue("john_voltar_bilhete"), "");
        }
    }
}
function start_construir()
{
    global.pc_construido = true;

    dir = "side";
    image_xscale = 1;

    sprite_index = spr_player_construindo;
    image_index = 0;
    image_speed = 1;
    kb_x = 0;
    kb_y = 0;
    attacking = true;
    state = state_construir;
}

function state_construir()
{
    invencible = true;
    inv_timer = 2;

    if (animation_end())
    {
        image_speed = 0;
        image_index = image_number - 1;
        attacking = false;
        state = state_idle;

        instance_create_layer(x - 80, y, "Instances", obj_fairy_invocada);
    }
}
function bag_has(_id)
{
    if (!variable_global_exists("bag")) return false;

    for (var i = 0; i < array_length(global.bag); i++)
    {
        if (global.bag[i] == _id) return true;
    }
    return false;
}

function bag_add(_id)
{
    if (!variable_global_exists("bag")) global.bag = [];

    var _known = false;
    for (var i = 0; i < array_length(global.item_db); i++)
    {
        if (global.item_db[i].id == _id) { _known = true; break; }
    }

    if (!_known)
    {
        show_debug_message("bag_add: o item '" + string(_id) + "' nao existe no catalogo (scr_itens)");
        return false;
    }

    if (bag_has(_id)) return false;

    array_push(global.bag, _id);
    return true;
}

function bag_remove(_id)
{
    if (!variable_global_exists("bag")) return;

    for (var i = 0; i < array_length(global.bag); i++)
    {
        if (global.bag[i] == _id)
        {
            array_delete(global.bag, i, 1);
            return;
        }
    }
}

function bag_rect(_x1, _y1, _x2, _y2, _col)
{
    if (_x2 <= _x1 || _y2 <= _y1) return;
    draw_set_color(_col);
    draw_rectangle(floor(_x1), floor(_y1), floor(_x2) - 1, floor(_y2) - 1, false);
}

function bag_chamfer(_x1, _y1, _x2, _y2, _p, _col)
{
    bag_rect(_x1 + _p, _y1, _x2 - _p, _y2, _col);
    bag_rect(_x1, _y1 + _p, _x2, _y2 - _p, _col);
}

function bag_panel(_x1, _y1, _x2, _y2, _p, _edge, _fill, _light, _dark)
{
    bag_chamfer(_x1, _y1 + _p, _x2, _y2 + _p, _p, make_color_rgb(10, 8, 16));
    bag_chamfer(_x1, _y1, _x2, _y2, _p, _edge);
    bag_rect(_x1 + _p, _y1 + _p, _x2 - _p, _y2 - _p, _fill);
    bag_rect(_x1 + _p, _y1 + _p, _x2 - _p, _y1 + _p * 2, _light);
    bag_rect(_x1 + _p, _y1 + _p, _x1 + _p * 2, _y2 - _p, _light);
    bag_rect(_x1 + _p, _y2 - _p * 2, _x2 - _p, _y2 - _p, _dark);
    bag_rect(_x2 - _p * 2, _y1 + _p, _x2 - _p, _y2 - _p, _dark);
}

function bag_arrow(_x, _y, _dir, _p, _col)
{
    for (var k = 0; k < 4; k++)
    {
        var _half = (3 - k) * _p + _p / 2;
        var _a = _x + k * _p * _dir;
        var _b = _x + (k + 1) * _p * _dir;
        bag_rect(min(_a, _b), _y - _half, max(_a, _b), _y + _half, _col);
    }
}

function bag_draw_spr(_spr, _cx, _cy, _scale, _blend, _flip = 1)
{
    var _x = _cx + (sprite_get_xoffset(_spr) - sprite_get_width(_spr) / 2) * _scale * _flip;
    var _y = _cy + (sprite_get_yoffset(_spr) - sprite_get_height(_spr) / 2) * _scale;
    draw_sprite_ext(_spr, 0, floor(_x), floor(_y), _scale * _flip, _scale, 0, _blend, 1);
}

function luta_boss()
{
    return instance_exists(obj_cabecao) && obj_cabecao.aggro;
}

function bag_selected(_id)
{
    if (!variable_global_exists("bag")) return false;
    if (!instance_exists(obj_player)) return false;

    var _n = array_length(global.bag);
    if (_n <= 0) return false;

    var _s = clamp(obj_player.bag_sel, 0, _n - 1);

    if (global.bag[_s] == _id) return true;
    return false;
}

```

## scripts\scr_itens\scr_itens.gml

```gml
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
```

## scripts\scr_minic\scr_minic.gml

```gml
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
```

## scripts\Script5\Script5.gml

```gml
function Script5(){

}
```

---

# Objetos e eventos

### cpu - Create_0

**Arquivo:** `objects\cpu\Create_0.gml`

```gml
if (!variable_global_exists("item_step")) global.item_step = 0;
if (global.item_step > 0) instance_destroy();
```

### obj_alan - Create_0

**Arquivo:** `objects\obj_alan\Create_0.gml`

```gml
event_inherited();
npc_name = "Alan Turing";
npc_id = "alan";
dialogue_id = "alan_intro";

if (!variable_global_exists("alan_salvo")) global.alan_salvo = false;
if (!variable_global_exists("alan_ajudado")) global.alan_ajudado = false;
```

### obj_alan - Step_0

**Arquivo:** `objects\obj_alan\Step_0.gml`

```gml
if (!instance_exists(obj_player)) exit;


if (dialogue_id == "alan_intro" && global.alan_salvo
    && point_distance(x, y, obj_player.x, obj_player.y) <= 80)
{
    dialogue_id = "alan_fim";
}

event_inherited();
```

### obj_aspirador_preso - Step_0

**Arquivo:** `objects\obj_aspirador_preso\Step_0.gml`

```gml
if(global._tem_aspirador == false) image_index = 0
else{
	image_index= 1
}
```

### obj_bat - Alarm_0

**Arquivo:** `objects\obj_bat\Alarm_0.gml`

```gml
can_attack = true;
```

### obj_bat - Create_0

**Arquivo:** `objects\obj_bat\Create_0.gml`

```gml
event_inherited();

spd = 0.5;
can_attack = true;
hp = 4;
ja_toco_espada = false;

bob_y = 2;       
shadow_w = 7;
```

### obj_bat - Step_0

**Arquivo:** `objects\obj_bat\Step_0.gml`

```gml
event_inherited();
if (global.hitstop > 0) exit;

var _tx = 0;  
var _ty = 0;

if (instance_exists(obj_player))
{
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    var dir = point_direction(x, y, obj_player.x, obj_player.y);

    
    if (stun <= 0 && wind <= 0 && dist < 250 && dist > 5)
    {
        _tx = lengthdir_x(spd, dir);
        _ty = lengthdir_y(spd, dir);
    }

    update_attack(7);
}


mv_x = lerp(mv_x, _tx, 0.15);
mv_y = lerp(mv_y, _ty, 0.15);
x += mv_x;
y += mv_y;

if (!audio_is_playing(snd_bats))
{
    if (irandom(1500) == 0)
    {
        audio_play_sound(snd_bats, 1, false);
    }
}

if (hit_timer > 0)
{
    hit_timer--;
}

kb_x = lerp(kb_x, 0, 0.2);
kb_y = lerp(kb_y, 0, 0.2);
if (abs(kb_x) < 0.1) kb_x = 0;
if (abs(kb_y) < 0.1) kb_y = 0;

x += kb_x;
y += kb_y;
```

### obj_bau_chave - Create_0

**Arquivo:** `objects\obj_bau_chave\Create_0.gml`

```gml
event_inherited();
item_id = "chave1";
spr_abrindo = bau_abrindo;
bau_checar();
```

### obj_bau_CPU - Create_0

**Arquivo:** `objects\obj_bau_CPU\Create_0.gml`

```gml
event_inherited();
item_id = "cpu_item";
spr_abrindo = bau_abrindo;
bau_checar();
```

### obj_bau_parent - Create_0

**Arquivo:** `objects\obj_bau_parent\Create_0.gml`

```gml
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
```

### obj_bau_parent - Step_0

**Arquivo:** `objects\obj_bau_parent\Step_0.gml`

```gml
if (!instance_exists(obj_player)) exit;

if (abrindo == false)
{
    if (keyboard_check_pressed(ord("E")) && !luta_boss())
    {
        if (obj_player.attacking == false)
        {
            var _d = point_distance(
                clamp(obj_player.x, bbox_left, bbox_right),
                clamp(obj_player.y, bbox_top, bbox_bottom),
                obj_player.x,
                obj_player.y
            );

            if (_d <= obj_player.interact_range)
            {
                abrindo = true;
                if (sprite_exists(spr_abrindo)) sprite_index = spr_abrindo;
                image_index = 0;
                image_speed = 1;
            }
        }
    }
}

if (abrindo == true && image_speed != 0)
{
    if (image_index >= image_number - 1)
    {
        image_index = image_number - 1;
        image_speed = 0;
        bag_add(item_id);
        global.baus_abertos[$ item_id] = true;
		if (dialogo != "")
		{
		    if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);
		    obj_dialogue.start_lines(get_dialogue(dialogo), "");
		}
    }
}
```

### obj_bau_pilula - Create_0

**Arquivo:** `objects\obj_bau_pilula\Create_0.gml`

```gml
event_inherited();
item_id = "pilula_vermelha";
dialogo = "bau_pilula";
bau_checar();
```

### obj_bau_pilula - Step_0

**Arquivo:** `objects\obj_bau_pilula\Step_0.gml`

```gml
var _sem_inimigos = !instance_exists(obj_bat)
    && !instance_exists(obj_tvzinha)
    && !instance_exists(obj_cabecao_inimigo_normal)
    && !instance_exists(obj_celular);


if (!abrindo && !_sem_inimigos) exit;

event_inherited();
```

### obj_bau_tecla - Create_0

**Arquivo:** `objects\obj_bau_tecla\Create_0.gml`

```gml
event_inherited();
item_id = "tecla_2";
dialogo = "bau_tecla";
bau_checar();
```

### obj_bau_tecla - Step_0

**Arquivo:** `objects\obj_bau_tecla\Step_0.gml`

```gml
var _sem_inimigos = !instance_exists(obj_bat)
    && !instance_exists(obj_tvzinha)
    && !instance_exists(obj_cabecao)
    && !instance_exists(obj_celular);


if (!abrindo && !_sem_inimigos) exit;

event_inherited();
```

### obj_bilhete_tela - Create_0

**Arquivo:** `objects\obj_bilhete_tela\Create_0.gml`

```gml
tempo = 5;
```

### obj_bilhete_tela - Destroy_0

**Arquivo:** `objects\obj_bilhete_tela\Destroy_0.gml`

```gml
if (instance_exists(obj_player)) obj_player.bilhete_cd = 5;
```

### obj_bilhete_tela - Draw_64

**Arquivo:** `objects\obj_bilhete_tela\Draw_64.gml`

```gml
var _gw = display_get_gui_width();
var _gh = display_get_gui_height();

draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(0, 0, _gw, _gh, false);
draw_set_alpha(1);

var _s = min(_gw / sprite_get_width(spr_bilhete_tela), _gh / sprite_get_height(spr_bilhete_tela)) * 0.8;
var _x = (_gw - sprite_get_width(spr_bilhete_tela) * _s) / 2 + sprite_get_xoffset(spr_bilhete_tela) * _s;
var _y = (_gh - sprite_get_height(spr_bilhete_tela) * _s) / 2 + sprite_get_yoffset(spr_bilhete_tela) * _s;
draw_sprite_ext(spr_bilhete_tela, 0, _x, _y, _s, _s, 0, c_white, 1);
```

### obj_bilhete_tela - Step_0

**Arquivo:** `objects\obj_bilhete_tela\Step_0.gml`

```gml
if (tempo > 0) { tempo--; exit; }

if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_escape) || mouse_check_button_pressed(mb_left))
{
    instance_destroy();
}
```

### obj_blood - Create_0

**Arquivo:** `objects\obj_blood\Create_0.gml`

```gml
spd = random_range(0.5, 1);
dir = random_range(200, 360);
image_xscale = random_range(0.7, 3);
image_yscale = image_xscale;
grav = 0.2;
life = 20;
```

### obj_blood - Draw_0

**Arquivo:** `objects\obj_blood\Draw_0.gml`

```gml
draw_sprite(spr_blood, 0, x, y);
```

### obj_blood - Step_0

**Arquivo:** `objects\obj_blood\Step_0.gml`

```gml
x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);

spd *= 0.95;

y += grav;

life--;

if (life <= 0)
{
    instance_destroy();
}
```

### obj_bullet - Create_0

**Arquivo:** `objects\obj_bullet\Create_0.gml`

```gml
spd = 4;
dir = 0;
damage = 1;
```

### obj_bullet - Step_0

**Arquivo:** `objects\obj_bullet\Step_0.gml`

```gml

x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);

image_angle = dir; 



var hit_enemy = instance_place(x, y, obj_enemy_parent);

if (hit_enemy != noone)
{
    var enemy_x = hit_enemy.x;
    var enemy_y = hit_enemy.y;


    hit_enemy.take_damage(damage, dir);


    for (var j = 0; j < 16; j++)
    {
        var b = instance_create_layer(enemy_x, enemy_y, "Instances", obj_blood);
        b.dir = dir + random_range(-90, 90);
    }


    with (obj_camera)
    {
        shake = 0.3;
        shake_time = 2;
        shake_fade = 1;
    }

    audio_play_sound(snd_hit_player, 1, false);                
    instance_destroy();
}

else if (place_meeting(x, y, obj_collision))
{
    instance_destroy();
}
```

### obj_cabecao - Create_0

**Arquivo:** `objects\obj_cabecao\Create_0.gml`

```gml
event_inherited();

hp = 60;
max_hp = 60;


t_windup        = 20;
t_air           = 34;
t_land          = 20;
t_cooldown      = 40;
t_windup_fast   = 12;   
t_cooldown_fast = 22;   


jump_range    = 200;
jump_height   = 40;
homing_speed  = 4;      
homing_until  = 0.55;   
z = 0;


body_damage = 1;
body_cd     = 0;
aoe_radius  = 48;
aoe_damage  = 2;        


state     = "idle";     
timer     = 0;
state_dur = 1;
fast      = false;
combo_left = 0;
aggro      = false;
aggro_range = 60;

start_x = x;  start_y = y;
target_x = x; target_y = y;
face = 1;
sx = 1;
sy = 1;
anim_p = 0;

hurt_player = function(_dmg, _dir)
{
    if (!instance_exists(obj_player)) return;

    with (obj_player)
    {
        if (invencible || hp <= 0 || exploding) return;

        hp -= _dmg;
        invencible = true;
        inv_timer = 60;
        flash_timer = 20;
        global.hitstop = 4;

        kb_x += lengthdir_x(4, _dir);
        kb_y += lengthdir_y(4, _dir);
    }
};

start_windup = function()
{
    state = "windup";
    timer = 0;
    state_dur = fast ? t_windup_fast : t_windup;

    
    var _d = point_direction(x, y, obj_player.x, obj_player.y);
    if (_d > 45 && _d <= 135)
        sprite_index = spr_cabecao_pulando_costa;
    else if (_d > 225 && _d <= 315)
        sprite_index = spr_cabecao_pulando_frente;
    else
    {
        sprite_index = spr_cabecao_pulando_side;
        face = (lengthdir_x(1, _d) >= 0) ? 1 : -1;
    }
    if (sprite_index != spr_cabecao_pulando_side) face = 1;

    
    var _dist = min(point_distance(x, y, obj_player.x, obj_player.y), jump_range);
    target_x = x + lengthdir_x(_dist, _d);
    target_y = y + lengthdir_y(_dist, _d);
};

start_jump = function()
{
    state = "jumping";
    timer = 0;
    state_dur = t_air;
    start_x = x;
    start_y = y;
};
hp_prev = hp;
hp_trail = hp;      
trail_timer = 0;
bar_alpha = 0;
boss_name = "CABECÃO";
land = function()
{
    state = "land";
    timer = 0;
    state_dur = t_land;
    x = target_x;
    y = target_y;
    z = 0;

    
    var _d = point_distance(x, y, obj_player.x, obj_player.y);
    if (_d <= aoe_radius)
    {
        var _dmg = ceil(aoe_damage * (1 - 0.5 * (_d / aoe_radius)));
        hurt_player(_dmg, point_direction(x, y, obj_player.x, obj_player.y));
    }

    
    if (layer_exists("Effects"))
    {
        repeat (6)
            instance_create_layer(x + irandom_range(-24, 24), y + irandom_range(-6, 6), "Effects", obj_particles_wlk);
    }
};
sem_fala = false;
intro_id = "cabecao_intro";
intro_feita = false;

if (!variable_global_exists("cabecao_normal_morto")) global.cabecao_normal_morto = false;
if (!variable_global_exists("cabecao_hard_morto")) global.cabecao_hard_morto = false;


if (object_index == obj_cabecao && global.cabecao_normal_morto)
{
    if (!global.cabecao_hard_morto)
    {
        var _spawn_x = x;
        var _spawn_y = y;

        if (instance_exists(obj_ponto_cabecao_hard))
        {
            _spawn_x = obj_ponto_cabecao_hard.x;
            _spawn_y = obj_ponto_cabecao_hard.y;
        }

        instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_cabecao_hard);
    }

    instance_destroy(id, false); 
}
```

### obj_cabecao - Destroy_0

**Arquivo:** `objects\obj_cabecao\Destroy_0.gml`

```gml
event_inherited();

if (object_index == obj_cabecao)
{
    global.cabecao_normal_morto = true;

    var _spawn_x = x;
    var _spawn_y = y;

    if (instance_exists(obj_ponto_cabecao_hard))
    {
        _spawn_x = obj_ponto_cabecao_hard.x;
        _spawn_y = obj_ponto_cabecao_hard.y;
    }

    instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_cabecao_hard);
}
else if (object_index == obj_cabecao_hard)
{
    global.cabecao_hard_morto = true;
}
```

### obj_cabecao - Draw_0

**Arquivo:** `objects\obj_cabecao\Draw_0.gml`

```gml

if (state == "windup")
{
   
    var _pw = timer / state_dur;
    draw_set_color(c_orange);
    draw_set_alpha(0.25 + 0.25 * _pw);
    draw_circle(target_x, target_y, aoe_radius, true);
    draw_set_alpha(0.1 + 0.15 * _pw);
    draw_circle(target_x, target_y, aoe_radius, false);
}
else if (state == "jumping")
{
    var _pj = timer / state_dur;
    var _locked = (_pj >= homing_until);

   
    draw_set_color(_locked ? c_red : c_orange);
    draw_set_alpha(0.15 + 0.35 * _pj);
    draw_circle(target_x, target_y, aoe_radius, false);

    
    draw_set_alpha(0.8);
    draw_circle(target_x, target_y, aoe_radius * (1 + (1 - _pj) * 0.8), true);
}
draw_set_alpha(1);
draw_set_color(c_white);


var _s = 1 - 0.5 * (z / jump_height);
draw_set_alpha(0.3 * _s);
draw_set_color(c_black);
draw_ellipse(x - 16 * _s, y - 4 * _s, x + 16 * _s, y + 4 * _s, false);
draw_set_alpha(1);
draw_set_color(c_white);


draw_sprite_ext(sprite_index, image_index, x, y - z, face * sx, sy, 0, image_blend, image_alpha);


```

### obj_cabecao - Draw_64

**Arquivo:** `objects\obj_cabecao\Draw_64.gml`

```gml

draw_set_font(fnt_dialogo)
if (bar_alpha < 0.01) exit;

var _w = 420;
var _h = 18;
var _x = (display_get_gui_width() - _w) / 2;
var _y = display_get_gui_height() - 715;

var _pct   = clamp(hp / max_hp, 0, 1);
var _trail = clamp(hp_trail / max_hp, 0, 1);

draw_set_alpha(bar_alpha);


draw_set_color(c_black);
draw_rectangle(_x - 3, _y - 3, _x + _w + 3, _y + _h + 3, false);
draw_set_color(c_maroon);
draw_rectangle(_x, _y, _x + _w, _y + _h, false);


draw_set_color(c_white);
draw_rectangle(_x, _y, _x + _w * _trail, _y + _h, false);

draw_set_color(fast ? c_orange : c_red);
draw_rectangle(_x, _y, _x + _w * _pct, _y + _h, false);


draw_set_color(c_black);
draw_line_width(_x + _w * 0.5, _y, _x + _w * 0.5, _y + _h, 2);

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_text(_x + _w / 2, _y - 8, boss_name);


draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_color(c_white);
```

### obj_cabecao - Step_0

**Arquivo:** `objects\obj_cabecao\Step_0.gml`

```gml
event_inherited();



if (hp < hp_prev) trail_timer = 30;   
hp_prev = hp;

if (trail_timer > 0) trail_timer--;
else hp_trail = lerp(hp_trail, hp, 0.08);

bar_alpha = lerp(bar_alpha, aggro ? 1 : 0, 0.1);

if (hit_timer > 0) hit_timer--;
if (global.hitstop > 0) exit;
if (hit_timer > 0) hit_timer--;

if (global.hitstop > 0) exit;

fast = (hp < max_hp * 0.5);


if (state != "jumping") { x += kb_x; y += kb_y; }
else { kb_x = 0; kb_y = 0; }
kb_x *= 0.8;
kb_y *= 0.8;

if (!instance_exists(obj_player)) exit;
if (body_cd > 0) body_cd--;

var _tsx = 1;   
var _tsy = 1;

switch (state)
{
    case "idle":
        anim_p = 0;

		if (!aggro)
{
    if (sem_fala)
    {
        if (point_distance(x, y, obj_player.x, obj_player.y) <= aggro_range)
        {
            aggro = true;
            timer = 0;
        }
    }
    else if (intro_feita)
    {
        if (!obj_dialogue.active)
        {
            aggro = true;
            timer = 0;
        }
    }
    else if (point_distance(x, y, obj_player.x, obj_player.y) <= aggro_range && !obj_dialogue.active)
    {
        obj_dialogue.start_lines(get_dialogue(intro_id), "");
        intro_feita = true;
    }
    break;
}

        timer++;
        if (timer >= (fast ? t_cooldown_fast : t_cooldown))
        {
            combo_left = fast ? 1 : 0;  
            start_windup();
        }
    break;

    case "windup":
        timer++;
        var _p = timer / state_dur;
        anim_p = _p * 0.25;

        
        var _d = point_direction(x, y, obj_player.x, obj_player.y);
        var _dist = min(point_distance(x, y, obj_player.x, obj_player.y), jump_range);
        target_x = x + lengthdir_x(_dist, _d);
        target_y = y + lengthdir_y(_dist, _d);

        
        _tsx = lerp(1, 1.18, _p);
        _tsy = lerp(1, 0.72, _p);

        if (timer >= state_dur) start_jump();
    break;

    case "jumping":
        timer++;
        var _p = timer / state_dur;
        anim_p = 0.25 + _p * 0.6;

        
        if (_p < homing_until)
        {
            var _bd = point_direction(start_x, start_y, obj_player.x, obj_player.y);
            var _bl = min(point_distance(start_x, start_y, obj_player.x, obj_player.y), jump_range);
            var _gx = start_x + lengthdir_x(_bl, _bd);
            var _gy = start_y + lengthdir_y(_bl, _bd);

            var _md = point_distance(target_x, target_y, _gx, _gy);
            if (_md > 0)
            {
                var _stp = min(_md, homing_speed);
                var _a = point_direction(target_x, target_y, _gx, _gy);
                target_x += lengthdir_x(_stp, _a);
                target_y += lengthdir_y(_stp, _a);
            }
        }

        x = lerp(start_x, target_x, _p);
        y = lerp(start_y, target_y, _p);
        z = sin(_p * pi) * jump_height;

        
        _tsx = 1 - 0.12 * sin(_p * pi);
        _tsy = 1 + 0.18 * sin(_p * pi);

        if (timer >= state_dur) land();
    break;

    case "land":
        timer++;
        var _p = timer / state_dur;
        anim_p = 0.85 + _p * 0.15;

        
        _tsx = lerp(1.25, 1, _p);
        _tsy = lerp(0.7, 1, _p);

        if (timer >= state_dur)
        {
            if (combo_left > 0)
            {
                combo_left--;
                start_windup();
            }
            else
            {
                state = "idle";
                timer = 0;
            }
        }
    break;
}


sx = lerp(sx, _tsx, 0.35);
sy = lerp(sy, _tsy, 0.35);
image_speed = 0;
image_index = min(anim_p, 0.999) * image_number;


if (state != "jumping" && place_meeting(x, y, obj_player) && body_cd <= 0)
{
    hurt_player(body_damage, point_direction(x, y, obj_player.x, obj_player.y));
    body_cd = 30;
}
```

### obj_cabecao_hard - Create_0

**Arquivo:** `objects\obj_cabecao_hard\Create_0.gml`

```gml
event_inherited();

hp = 90;
max_hp = 90;
hp_prev = hp;
hp_trail = hp;

t_windup        = 14;
t_air           = 24;
t_land          = 15;
t_cooldown      = 30;
t_windup_fast   = 10;
t_cooldown_fast = 17;

jump_range   = 230;
homing_speed = 4.5;
homing_until = 0.3;

body_damage = 1.5;
aoe_radius  = 54;
aoe_damage  = 2;

aggro_range = 60;
intro_id = "cabecao_hard_intro";
boss_name = "CABECÃO FURIOSO";
```

### obj_cabecao_inimigo_normal - Create_0

**Arquivo:** `objects\obj_cabecao_inimigo_normal\Create_0.gml`

```gml
event_inherited();
sem_fala = true;
aggro_range = 90
```

### obj_camera - Create_0

**Arquivo:** `objects\obj_camera\Create_0.gml`

```gml
shake = 0;
shake_time = 0;
shake_fade = 0;

zoom = 1;
zoom_alvo = 1;
largura_base = camera_get_view_width(view_camera[0]);
altura_base = camera_get_view_height(view_camera[0]);
```

### obj_camera - Step_0

**Arquivo:** `objects\obj_camera\Step_0.gml`

```gml
zoom = lerp(zoom, zoom_alvo, 0.04);
camera_set_view_size(view_camera[0], round(largura_base * zoom), round(altura_base * zoom));

var _alvo_x = obj_player.x - (camera_get_view_width(view_camera[0]) / 2);
var _alvo_y = obj_player.y - (camera_get_view_height(view_camera[0]) / 2);

x = lerp(x, _alvo_x, 0.1);
y = lerp(y, _alvo_y, 0.1);

var off_x = 0;
var off_y = 0;

if (shake_time > 0)
{
    shake_time--;

    off_x = choose(-shake, shake) + random_range(-shake * 0.2, shake * 0.2);
    off_y = choose(-shake, shake) + random_range(-shake * 0.2, shake * 0.2);

    shake -= shake_fade;
}
else
{
    shake = 0;
}

camera_set_view_pos(view_camera[0], round(x + off_x), round(y + off_y));
```

### obj_capsula - Create_0

**Arquivo:** `objects\obj_capsula\Create_0.gml`

```gml
event_inherited();
npc_name = "Leon";
npc_id = "leon";
dialogue_id = "leon_capsula";
fase = 0;
flash = 0;
fairy_falou = false;
if (!variable_global_exists("leon_livre")) global.leon_livre = false;

if (global.leon_livre) instance_destroy();
```

### obj_capsula - Draw_64

**Arquivo:** `objects\obj_capsula\Draw_64.gml`

```gml
if (flash > 0)
{
    draw_set_alpha(flash);
    draw_set_color(c_white);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
}
```

### obj_capsula - Step_0

**Arquivo:** `objects\obj_capsula\Step_0.gml`

```gml
if (!instance_exists(obj_player)) exit;

switch (fase)
{
    case 0:
        var _perto = point_distance(x, y, obj_player.x, obj_player.y) <= 80;

        if (_perto && bag_selected("pilula_vermelha"))
        {
            if (keyboard_check_pressed(ord("E")) && !obj_dialogue.active && !obj_player.attacking)
            {
                sprite_index = spr_capsula_explodindo;
                image_index = 0;
                image_speed = 1;

                with (obj_camera)
                {
                    shake = 6;
                    shake_time = 30;
                    shake_fade = 0.15;
                }

                fase = 1;
            }
        }
        else
        {
            event_inherited();
        }
    break;

    case 1:
        if (animation_end())
        {
            sprite_index = spr_capsula_vazia;
            image_index = 0;
            image_speed = 1;

            dialogue_id = "leon_intro";
            obj_dialogue.start_lines(get_dialogue(dialogue_id), npc_name);
            fase = 2;
        }
    break;

    case 2:
        if (!obj_dialogue.active)
        {
            dialogue_id = npc_advance_state(npc_id, dialogue_id);
            fase = 3;
        }
    break;

    case 3:
        if (!obj_dialogue.active)
        {
            var _pc_pronto = variable_global_exists("pc_consertado") && global.pc_consertado;

            if (_pc_pronto && !fairy_falou)
            {
                fairy_falou = true;
                obj_dialogue.start_lines(get_dialogue("fairy_porta_trancada"), "fairy");
            }
            else
            {
                fase = 4;
            }
        }
    break;

    case 4:
        flash += 0.04;
        if (flash >= 1)
        {
            flash = 1;
            image_alpha = 0;
            mask_index = spr_mask_vazia;
            global.leon_livre = true;
            fase = 5;
        }
    break;

    case 5:
        flash -= 0.04;
        if (flash <= 0)
        {
            flash = 0;
            instance_destroy();
        }
    break;
}
```

### obj_celular - Alarm_0

**Arquivo:** `objects\obj_celular\Alarm_0.gml`

```gml
can_attack = true;
```

### obj_celular - Create_0

**Arquivo:** `objects\obj_celular\Create_0.gml`

```gml
event_inherited();


can_attack = true;


kb_x = 0;
kb_y = 0;
spd = 1;

hp = 10

hit_timer = 0;


image_xscale = 1;
sprite_index = spr_celular_walk_down;
```

### obj_celular - Step_0

**Arquivo:** `objects\obj_celular\Step_0.gml`

```gml
event_inherited();
if (global.hitstop > 0) exit;

var _tx = 0;
var _ty = 0;

if (instance_exists(obj_player))
{
    var _dist = point_distance(x, y, obj_player.x, obj_player.y);
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);

    var _detect_range = 150;
    var _attack_range = 15;

    if (_dist < _detect_range && _dist > _attack_range && stun <= 0 && wind <= 0)
    {
        _tx = lengthdir_x(spd, _dir);
        _ty = lengthdir_y(spd, _dir);

        var _dx = obj_player.x - x;
        var _dy = obj_player.y - y;

        if (abs(_dx) > abs(_dy))
        {
            sprite_index = spr_celular_walk_side;
            image_xscale = (_dx > 0) ? 1 : -1;
        }
        else if (_dy > 0)
        {
            sprite_index = spr_celular_walk_down;
        }
        else
        {
            sprite_index = spr_celular_walk_up;
        }
    }

    update_attack(_attack_range);
}

mv_x = lerp(mv_x, _tx, 0.15);
mv_y = lerp(mv_y, _ty, 0.15);
x += mv_x;
y += mv_y;

if (hit_timer > 0)
{
    hit_timer--;
}

kb_x = lerp(kb_x, 0, 0.2);
kb_y = lerp(kb_y, 0, 0.2);

if (abs(kb_x) < 0.1) kb_x = 0;
if (abs(kb_y) < 0.1) kb_y = 0;

x += kb_x;
y += kb_y;
```

### obj_claudia - Create_0

**Arquivo:** `objects\obj_claudia\Create_0.gml`

```gml
event_inherited();

dialogue_id = "claudia_intro";
npc_name = "Claudia Milk";
npc_id = "claudia";

if (!variable_global_exists("claudia_ajudada")) global.claudia_ajudada = false;
feliz = false;

if (global.claudia_ajudada)
{
    dialogue_id = "claudia_done";
    sprite_index = spr_claudia_pc;
    image_speed = 1;
    feliz = true;
}
```

### obj_claudia - Step_0

**Arquivo:** `objects\obj_claudia\Step_0.gml`

```gml
event_inherited();

if (!feliz && dialogue_id == "claudia_done")
{
    feliz = true;
    global.claudia_ajudada = true;
    sprite_index = spr_claudia_pc;
    image_index = 0;
    image_speed = 1;
}
```

### obj_code_editor - Create_0

**Arquivo:** `objects\obj_code_editor\Create_0.gml`

```gml
font = -1;   
var _old = draw_get_font();
draw_set_font(font);
lh = string_height("Ag") + 4;
draw_set_font(_old);

mx = 0;
my = 0;
rep = {};
blink = 0;
moved = true;

if (variable_global_exists("editor_code")) lines = global.editor_code;
else lines = [
    "// Exemplo em MiniC",
    "int soma = 0;",
    "for (int i = 1; i <= 5; i++) {",
    "    soma += i;",
    "}",
    "print(\"Soma =\", soma);"
];

cur_row = array_length(lines) - 1;
cur_col = string_length(lines[cur_row]);
ed_scroll = 0;
hscroll = 0;

term = [{ txt: "Clique em Rodar (ou aperte F5) para executar o código.", err: false, dim: true }];
term_scroll = 0;

keyboard_string = "";


kp = function(_k)
{
    var _key = string(_k);
    if (keyboard_check_pressed(_k)) { rep[$ _key] = 0; return true; }
    if (keyboard_check(_k))
    {
        var _t = variable_struct_exists(rep, _key) ? rep[$ _key] + 1 : 1;
        rep[$ _key] = _t;
        return (_t > 20 && (_t mod 2 == 0));
    }
    return false;
};


ed_insert = function(_txt)
{
    var _line = lines[cur_row];
    lines[cur_row] = string_copy(_line, 1, cur_col) + _txt + string_delete(_line, 1, cur_col);
    cur_col += string_length(_txt);
};

ed_newline = function(_indent)
{
    var _line = lines[cur_row];
    var _before = string_copy(_line, 1, cur_col);
    var _after = string_delete(_line, 1, cur_col);
    var _ind = "";

    if (_indent)
    {
        var _i = 1;
        while (_i <= string_length(_before) && string_char_at(_before, _i) == " ") { _ind += " "; _i++; }

        
        var _k = string_length(_before);
        while (_k > 0 && string_char_at(_before, _k) == " ") _k--;
        if (_k > 0 && string_char_at(_before, _k) == "{") _ind += "    ";
    }

    lines[cur_row] = _before;
    array_insert(lines, cur_row + 1, _ind + _after);
    cur_row++;
    cur_col = string_length(_ind);
};

ed_paste = function(_txt)
{
    _txt = string_replace_all(_txt, "\r", "");
    for (var _i = 1; _i <= string_length(_txt); _i++)
    {
        var _c = string_char_at(_txt, _i);
        if (_c == "\n") ed_newline(false);
        else if (_c == "\t") ed_insert("    ");
        else if (ord(_c) >= 32) ed_insert(_c);
    }
};


run_code = function()
{
    var _src = "";
    for (var i = 0; i < array_length(lines); i++) _src += lines[i] + "\n";

    term = mc_run(_src);
    array_push(term, { txt: "--- execução finalizada ---", err: false, dim: true });
    term_scroll = max(0, array_length(term) - term_rows);
};


calc_layout = function()
{
    var _gw = display_get_gui_width();
    var _gh = display_get_gui_height();

    pw = floor(_gw * 0.8);
    ph = floor(_gh * 0.86);
    px = (_gw - pw) div 2;
    py = (_gh - ph) div 2;
    title_h = 32;
    tool_h = 36;
    gutter = 44;

    close_x1 = px + pw - 30; close_y1 = py + 5; close_x2 = px + pw - 6; close_y2 = py + title_h - 5;

    run_x1 = px + 10;       run_y1 = py + title_h + 5; run_x2 = run_x1 + 90;   run_y2 = py + title_h + tool_h - 5;
    clear_x1 = run_x2 + 8;  clear_y1 = run_y1;         clear_x2 = clear_x1 + 150; clear_y2 = run_y2;

    var _top = py + title_h + tool_h;
    var _body = ph - title_h - tool_h - 10;

    ed_x1 = px + 10; ed_y1 = _top; ed_x2 = px + pw - 10; ed_y2 = _top + floor(_body * 0.6);
    term_x1 = ed_x1; term_y1 = ed_y2 + 8; term_x2 = ed_x2; term_y2 = py + ph - 10;

    term_head = lh + 6;
    ed_rows = max(1, floor((ed_y2 - ed_y1 - 8) / lh));
    term_rows = max(1, floor((term_y2 - term_y1 - term_head - 6) / lh));
};

draw_btn = function(_x1, _y1, _x2, _y2, _label, _col)
{
    var _hover = point_in_rectangle(mx, my, _x1, _y1, _x2, _y2);
    draw_set_color(_hover ? merge_color(_col, c_white, 0.25) : _col);
    draw_rectangle(_x1, _y1, _x2, _y2, false);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text((_x1 + _x2) / 2, (_y1 + _y2) / 2, _label);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
};

calc_layout();
```

### obj_code_editor - Destroy_0

**Arquivo:** `objects\obj_code_editor\Destroy_0.gml`

```gml
global.editor_code = lines;
```

### obj_code_editor - Draw_64

**Arquivo:** `objects\obj_code_editor\Draw_64.gml`

```gml
var _old_font = draw_get_font();
draw_set_font(font);
var _gw = display_get_gui_width();
var _gh = display_get_gui_height();


draw_set_alpha(0.65);
draw_set_color(c_black);
draw_rectangle(0, 0, _gw, _gh, false);
draw_set_alpha(1);

draw_set_color(make_color_rgb(30, 30, 38));
draw_rectangle(px, py, px + pw, py + ph, false);
draw_set_color(make_color_rgb(80, 80, 100));
draw_rectangle(px, py, px + pw, py + ph, true);


draw_set_color(make_color_rgb(45, 45, 58));
draw_rectangle(px, py, px + pw, py + title_h, false);
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_text(px + 12, py + title_h / 2, "Editor de Código - MiniC");
draw_set_valign(fa_top);
draw_btn(close_x1, close_y1, close_x2, close_y2, "X", make_color_rgb(170, 50, 50));


draw_btn(run_x1, run_y1, run_x2, run_y2, "Rodar", make_color_rgb(40, 140, 70));
draw_btn(clear_x1, clear_y1, clear_x2, clear_y2, "Limpar terminal", make_color_rgb(70, 70, 90));
draw_set_color(make_color_rgb(120, 120, 140));
draw_set_valign(fa_middle);
draw_text(clear_x2 + 14, (run_y1 + run_y2) / 2, "F5 = rodar");
draw_set_valign(fa_top);


draw_set_color(make_color_rgb(22, 22, 28));
draw_rectangle(ed_x1, ed_y1, ed_x2, ed_y2, false);
draw_set_color(make_color_rgb(28, 28, 36));
draw_rectangle(ed_x1, ed_y1, ed_x1 + gutter, ed_y2, false);

var _tx = ed_x1 + gutter + 4;
var _avail = ed_x2 - _tx - 4;
var _last = min(array_length(lines) - 1, ed_scroll + ed_rows - 1);

for (var _r = ed_scroll; _r <= _last; _r++)
{
    var _ly = ed_y1 + 4 + (_r - ed_scroll) * lh;

    if (_r == cur_row)
    {
        draw_set_color(make_color_rgb(38, 38, 50));
        draw_rectangle(ed_x1 + gutter, _ly - 1, ed_x2, _ly + lh - 3, false);
    }

    
    draw_set_color((_r == cur_row) ? c_white : make_color_rgb(110, 110, 125));
    draw_set_halign(fa_right);
    draw_text(ed_x1 + gutter - 8, _ly, string(_r + 1));
    draw_set_halign(fa_left);

    
    var _s = string_delete(lines[_r], 1, hscroll);
    while (string_length(_s) > 0 && string_width(_s) > _avail) _s = string_delete(_s, string_length(_s), 1);
    draw_set_color(make_color_rgb(220, 220, 230));
    draw_text(_tx, _ly, _s);
}


if ((blink div 30) mod 2 == 0 && cur_row >= ed_scroll && cur_row <= _last)
{
    var _cx = _tx + string_width(string_copy(lines[cur_row], hscroll + 1, cur_col - hscroll));
    var _cy = ed_y1 + 4 + (cur_row - ed_scroll) * lh;
    draw_set_color(c_white);
    draw_rectangle(_cx, _cy, _cx + 1, _cy + lh - 3, false);
}

draw_set_color(make_color_rgb(80, 80, 100));
draw_rectangle(ed_x1, ed_y1, ed_x2, ed_y2, true);


draw_set_color(make_color_rgb(10, 10, 14));
draw_rectangle(term_x1, term_y1, term_x2, term_y2, false);
draw_set_color(make_color_rgb(150, 150, 165));
draw_text(term_x1 + 8, term_y1 + 4, "Terminal");
draw_set_color(make_color_rgb(60, 60, 75));
draw_line(term_x1, term_y1 + term_head - 2, term_x2, term_y1 + term_head - 2);

var _ty0 = term_y1 + term_head;
var _tavail = term_x2 - term_x1 - 16;
var _tlast = min(array_length(term) - 1, term_scroll + term_rows - 1);

for (var _tr = term_scroll; _tr <= _tlast; _tr++)
{
    var _e = term[_tr];

    if (_e.err) draw_set_color(make_color_rgb(255, 100, 100));
    else if (_e.dim) draw_set_color(make_color_rgb(120, 120, 135));
    else draw_set_color(make_color_rgb(170, 255, 170));

    var _ts = _e.txt;
    while (string_length(_ts) > 0 && string_width(_ts) > _tavail) _ts = string_delete(_ts, string_length(_ts), 1);
    draw_text(term_x1 + 8, _ty0 + (_tr - term_scroll) * lh, _ts);
}

draw_set_color(make_color_rgb(80, 80, 100));
draw_rectangle(term_x1, term_y1, term_x2, term_y2, true);

draw_set_font(_old_font);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
```

### obj_code_editor - Step_0

**Arquivo:** `objects\obj_code_editor\Step_0.gml`

```gml
mx = device_mouse_x_to_gui(0);
my = device_mouse_y_to_gui(0);
blink++;


if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mx, my, close_x1, close_y1, close_x2, close_y2))
{
    instance_destroy();
    exit;
}

var _old_font = draw_get_font();
draw_set_font(font);


if (mouse_check_button_pressed(mb_left))
{
    if (point_in_rectangle(mx, my, run_x1, run_y1, run_x2, run_y2))
    {
        run_code();
    }
    else if (point_in_rectangle(mx, my, clear_x1, clear_y1, clear_x2, clear_y2))
    {
        term = [];
        term_scroll = 0;
    }
    else if (point_in_rectangle(mx, my, ed_x1, ed_y1, ed_x2, ed_y2))
    {
        
        cur_row = clamp(ed_scroll + floor((my - ed_y1 - 4) / lh), 0, array_length(lines) - 1);
        var _line = lines[cur_row];
        var _n = string_length(_line);
        var _rel = mx - (ed_x1 + gutter + 4);
        var _col = hscroll;
        while (_col < _n)
        {
            var _w0 = string_width(string_copy(_line, hscroll + 1, _col - hscroll));
            var _w1 = string_width(string_copy(_line, hscroll + 1, _col - hscroll + 1));
            if (_rel < (_w0 + _w1) / 2) break;
            _col++;
        }
        cur_col = _col;
        moved = true;
    }
}

if (keyboard_check_pressed(vk_f5)) run_code();


var _wheel = mouse_wheel_down() - mouse_wheel_up();
if (_wheel != 0)
{
    if (point_in_rectangle(mx, my, ed_x1, ed_y1, ed_x2, ed_y2))
        ed_scroll = clamp(ed_scroll + _wheel * 3, 0, max(0, array_length(lines) - ed_rows));
    else if (point_in_rectangle(mx, my, term_x1, term_y1, term_x2, term_y2))
        term_scroll = clamp(term_scroll + _wheel * 3, 0, max(0, array_length(term) - term_rows));
}


var _typed = keyboard_string;
keyboard_string = "";
for (var _i = 1; _i <= string_length(_typed); _i++)
{
    var _ch = string_char_at(_typed, _i);
    if (ord(_ch) < 32) continue;

    if (_ch == "}")
    {
        
        var _bef = string_copy(lines[cur_row], 1, cur_col);
        if (string_length(_bef) >= 4 && string_replace_all(_bef, " ", "") == "")
        {
            lines[cur_row] = string_delete(lines[cur_row], cur_col - 3, 4);
            cur_col -= 4;
        }
    }

    ed_insert(_ch);
    moved = true;
}

if (kp(vk_enter)) { ed_newline(true); moved = true; }

if (keyboard_check_pressed(vk_tab)) { ed_insert("    "); moved = true; }

if (kp(vk_backspace))
{
    if (cur_col > 0)
    {
        lines[cur_row] = string_delete(lines[cur_row], cur_col, 1);
        cur_col--;
    }
    else if (cur_row > 0)
    {
        var _prev = string_length(lines[cur_row - 1]);
        lines[cur_row - 1] += lines[cur_row];
        array_delete(lines, cur_row, 1);
        cur_row--;
        cur_col = _prev;
    }
    moved = true;
}

if (kp(vk_delete))
{
    if (cur_col < string_length(lines[cur_row]))
    {
        lines[cur_row] = string_delete(lines[cur_row], cur_col + 1, 1);
    }
    else if (cur_row < array_length(lines) - 1)
    {
        lines[cur_row] += lines[cur_row + 1];
        array_delete(lines, cur_row + 1, 1);
    }
    moved = true;
}

if (kp(vk_left))
{
    if (cur_col > 0) cur_col--;
    else if (cur_row > 0) { cur_row--; cur_col = string_length(lines[cur_row]); }
    moved = true;
}
if (kp(vk_right))
{
    if (cur_col < string_length(lines[cur_row])) cur_col++;
    else if (cur_row < array_length(lines) - 1) { cur_row++; cur_col = 0; }
    moved = true;
}
if (kp(vk_up))
{
    if (cur_row > 0) { cur_row--; cur_col = min(cur_col, string_length(lines[cur_row])); }
    moved = true;
}
if (kp(vk_down))
{
    if (cur_row < array_length(lines) - 1) { cur_row++; cur_col = min(cur_col, string_length(lines[cur_row])); }
    moved = true;
}
if (keyboard_check_pressed(vk_home)) { cur_col = 0; moved = true; }
if (keyboard_check_pressed(vk_end))  { cur_col = string_length(lines[cur_row]); moved = true; }


if (keyboard_check(vk_control) && keyboard_check_pressed(ord("V")) && clipboard_has_text())
{
    ed_paste(clipboard_get_text());
    moved = true;
}

if (moved)
{
    moved = false;
    blink = 0;

    if (cur_row < ed_scroll) ed_scroll = cur_row;
    if (cur_row >= ed_scroll + ed_rows) ed_scroll = cur_row - ed_rows + 1;

    var _lw = ed_x2 - ed_x1 - gutter - 16;
    if (cur_col < hscroll) hscroll = cur_col;
    while (hscroll < cur_col && string_width(string_copy(lines[cur_row], hscroll + 1, cur_col - hscroll)) > _lw) hscroll++;
}

draw_set_font(_old_font);
```

### obj_colisao_aspirador - Create_0

**Arquivo:** `objects\obj_colisao_aspirador\Create_0.gml`

```gml
dir = 0;
owner = noone;
dist = 24;

dano = global.dmg_aspirador;
dano_intervalo = 20;
dano_timer = 0;

puxar_spd = 2;
distancia_minima = 30;

alvos_destruir = [Object14];
visible = false
iniciado = false;
off_x = 0;
off_y = 0;
```

### obj_colisao_aspirador - Step_0

**Arquivo:** `objects\obj_colisao_aspirador\Step_0.gml`

```gml
if (!instance_exists(owner) || !owner.attacking) {
    instance_destroy();
    exit;
}

if (!iniciado) {
    iniciado = true;
    off_x = lengthdir_x(dist, dir);
    off_y = lengthdir_y(dist, dir) + ((owner.dir == "side") ? 10 : 0);
}

x = owner.x + off_x;
y = owner.y + off_y;
image_angle = dir;

if (dano_timer > 0) dano_timer--;
var _aplicar_dano = (dano_timer <= 0);

var lista = ds_list_create();
instance_place_list(x, y, obj_enemy_parent, lista, false);

for (var i = 0; i < ds_list_size(lista); i++) {
    var inimigo = lista[| i];
    if (!instance_exists(inimigo)) continue;

    var _ang = point_direction(inimigo.x, inimigo.y, owner.x, owner.y);
    var _d = point_distance(inimigo.x, inimigo.y, owner.x, owner.y);

    if (_d > distancia_minima) {
        var _px = inimigo.x + lengthdir_x(puxar_spd, _ang);
        var _py = inimigo.y + lengthdir_y(puxar_spd, _ang);

        with (inimigo) {
            if (!place_meeting(_px, y, obj_collision)) x = _px;
            if (!place_meeting(x, _py, obj_collision)) y = _py;
        }
    }

    if (_aplicar_dano && instance_exists(inimigo) && inimigo.hit_timer <= 0) {
        inimigo.take_damage(dano, _ang);
    }
}

if (_aplicar_dano && ds_list_size(lista) > 0) {
    dano_timer = dano_intervalo;
}

ds_list_destroy(lista);

for (var k = 0; k < array_length(alvos_destruir); k++) {
    var _l = ds_list_create();
    instance_place_list(x, y, alvos_destruir[k], _l, false);

    for (var j = 0; j < ds_list_size(_l); j++) {
        var _inst = _l[| j];
        if (instance_exists(_inst)) instance_destroy(_inst);
    }

    ds_list_destroy(_l);
}
```

### obj_collision - Create_0

**Arquivo:** `objects\obj_collision\Create_0.gml`

```gml
visible = false
```

### obj_collision_door - Create_0

**Arquivo:** `objects\obj_collision_door\Create_0.gml`

```gml

```

### obj_collision_door - Step_0

**Arquivo:** `objects\obj_collision_door\Step_0.gml`

```gml

```

### obj_creditos - Create_0

**Arquivo:** `objects\obj_creditos\Create_0.gml`

```gml
linhas = [
    "", "", "", "", "", "",
    "",
    "Um jogo feito por",
    "",
    "",
    "#Equipe",
    "Tito Jandozza Batista",
    "Rafael Bergson Lima",
    "Otavio Augusto Oliveira Shigeura da Silva",
    "Davi Nascimento Bayer",
    "Lian Matias de Oliveira Felipe",
    "",
    "",
    "#Liderança do Grupo",
    "Otavio Augusto Oliveira Shigeura da Silva",
    "",
    "",
    "#Programação",
    "Tito Jandozza Batista",
    "Otavio Augusto Oliveira Shigeura da Silva",
    "",
    "",
    "#História",
    "Rafael Bergson Lima",
    "",
    "",
    "#Arte",
    "Rafael Bergson Lima",
    "",
    "",
    "#Site",
    "Davi Nascimento Bayer",
    "",
    "",
    "#Documentação",
    "Lian Matias de Oliveira Felipe",
    "",
    "",
    "#Personagens",
    "John",
    "Luk",
    "Sr. Mateus",
    "Fairy",
    "Cabecão",
    "",
    "",
    "#Feito com",
    "GameMaker",
    "",
    "",
    "#Agradecimentos",
    "A todos que jogaram",
    "",
    "",
    "##Obrigado por jogar!"
];

espacamento = 60;
duracao = 60;
altura_gui = display_get_gui_height();

posicao_y = altura_gui;
y_parada = altura_gui / 2 - (array_length(linhas) - 1) * espacamento;
velocidade = (posicao_y - y_parada) / (duracao * game_get_speed(gamespeed_fps));

alpha = 0;
terminou = false;
espera_final = game_get_speed(gamespeed_fps) * 4;


codigo = [
    "if (global.hitstop > 0) exit;",
    "mask_index = spr_player_mask;",
    "global._tem_aspirador = true;",
    "function get_dialogue(_id)",
    "obj_dialogue.start_lines(get_dialogue(\"fairy_intro\"), \"fairy\");",
    "bag_add(item_id);",
    "global.baus_abertos[$ item_id] = true;",
    "state = state_pull_aspirador;",
    "hspd = lengthdir_x(spd, _direcao);",
    "vspd = lengthdir_y(spd, _direcao);",
    "if (hp <= 0 && !exploding) state = state_explode;",
    "instance_create_layer(x, y + 20, \"Effects\", obj_particles_wlk);",
    "global.item_order = [cpu, ssd, RAm, Placa_mae];",
    "if (animation_end()) { attacking = false; state = state_idle; }",
    "audio_play_sound(snd_walking, 1, true);",
    "function bag_selected(_id)",
    "var _near = instance_nearest(x, y, _obj);",
    "z = sin(_p * pi) * jump_height;",
    "x = lerp(start_x, target_x, _p);",
    "y = lerp(start_y, target_y, _p);",
    "hp_anim = lerp(hp_anim, hp, 0.1);",
    "room_goto(global.ultima_sala);",
    "draw_sprite_ext(sprite_index, image_index, x, y - z, face * sx, sy, 0, image_blend, image_alpha);",
    "with (obj_camera) { shake = 8; shake_time = 24; }"
];

codigo_texto = "";
for (var i = 0; i < array_length(codigo); i++) codigo_texto += codigo[i];
codigo_texto = string_replace_all(codigo_texto, " ", "");
codigo_len = string_length(codigo_texto);

tam_letra = 18;
escala_letra = 0.6;
rastro = 14;
colunas = floor(display_get_gui_width() / tam_letra);

col_y = array_create(colunas);
col_vel = array_create(colunas);
col_off = array_create(colunas);

for (var c = 0; c < colunas; c++)
{
    col_y[c] = random_range(-altura_gui, altura_gui);
    col_vel[c] = random_range(2, 6);
    col_off[c] = irandom(codigo_len - 1);
}

logo_frame = 0;
```

### obj_creditos - Draw_64

**Arquivo:** `objects\obj_creditos\Draw_64.gml`

```gml
var _gw = display_get_gui_width();
var _gh = display_get_gui_height();

draw_set_font(fnt_dialogo);
draw_set_color(c_black);
draw_rectangle(0, 0, _gw, _gh, false);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _spr = object_get_sprite(Obj_Logo);
logo_frame += sprite_get_speed(_spr) / game_get_speed(gamespeed_fps);

draw_sprite_ext(_spr, logo_frame, _gw / 2, posicao_y + 150, 1, 1, 0, c_white, alpha);
for (var c = 0; c < colunas; c++)
{
    var _x = c * tam_letra + tam_letra / 2;
    var _linha_cabeca = floor(col_y[c] / tam_letra);

    for (var k = 0; k < rastro; k++)
    {
        var _linha = _linha_cabeca - k;
        var _y = _linha * tam_letra;

        if (_y < -tam_letra || _y > _gh) continue;

        var _indice = (((col_off[c] + _linha) mod codigo_len) + codigo_len) mod codigo_len + 1;
        var _letra = string_char_at(codigo_texto, _indice);

        if (k == 0)
        {
            draw_set_color(make_color_rgb(200, 255, 200));
            draw_set_alpha(alpha * 0.9);
        }
        else
        {
            draw_set_color(c_lime);
            draw_set_alpha(alpha * 0.45 * (1 - k / rastro));
        }

        draw_text_transformed(_x, _y, _letra, escala_letra, escala_letra, 0);
    }
}

for (var i = 0; i < array_length(linhas); i++)
{
    var _texto = linhas[i];
    var _y = posicao_y + i * espacamento;

    if (_texto == "" || _y < -60 || _y > _gh + 60) continue;

    var _escala = 1;
    var _cor = c_white;

    if (string_copy(_texto, 1, 2) == "##")
    {
        _texto = string_delete(_texto, 1, 2);
        _escala = 2;
        _cor = c_orange;
    }
    else if (string_char_at(_texto, 1) == "#")
    {
        _texto = string_delete(_texto, 1, 1);
        _cor = c_yellow;
    }

    var _borda = clamp(min(_y, _gh - _y) / 120, 0, 1);
    draw_set_alpha(alpha * _borda);

    draw_set_color(c_black);
    draw_text_transformed(_gw / 2 + 2, _y + 2, _texto, _escala, _escala, 0);
    draw_set_color(_cor);
    draw_text_transformed(_gw / 2, _y, _texto, _escala, _escala, 0);
}

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
```

### obj_creditos - Step_0

**Arquivo:** `objects\obj_creditos\Step_0.gml`

```gml
alpha = min(alpha + 0.02, 1);

var _vel = keyboard_check(vk_space) ? velocidade * 4 : velocidade;

if (posicao_y > y_parada) posicao_y = max(y_parada, posicao_y - _vel);
else terminou = true;

for (var c = 0; c < colunas; c++)
{
    col_y[c] += col_vel[c];

    if (col_y[c] - rastro * tam_letra > altura_gui)
    {
        col_y[c] = irandom_range(-300, 0);
        col_vel[c] = random_range(2, 6);
        col_off[c] = irandom(codigo_len - 1);
    }
}

if (terminou)
{
    espera_final--;

    if (espera_final <= 0)
    {
        audio_stop_sound(snd_musica_creditos);
        room_goto(menu_inicial);
    }
}
```

### obj_damage_number - Create_0

**Arquivo:** `objects\obj_damage_number\Create_0.gml`

```gml
txt = "";
timer = 40;
```

### obj_damage_number - Draw_0

**Arquivo:** `objects\obj_damage_number\Draw_0.gml`

```gml
draw_set_font(fnt_gui)
var _s = 0.7;
var _px = floor(x);
var _py = floor(y);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(make_color_rgb(40, 8, 16));
draw_text_transformed(_px + 1, _py, txt, _s, _s, 0);
draw_text_transformed(_px - 1, _py, txt, _s, _s, 0);
draw_text_transformed(_px, _py + 1, txt, _s, _s, 0);
draw_text_transformed(_px, _py - 1, txt, _s, _s, 0);

draw_set_color(make_color_rgb(230, 50, 60));
draw_text_transformed(_px, _py, txt, _s, _s, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
```

### obj_damage_number - Step_0

**Arquivo:** `objects\obj_damage_number\Step_0.gml`

```gml
if (global.hitstop > 0) exit;

y -= 1;
timer--;

if (timer <= 0) instance_destroy();
```

### obj_dialogue - Create_0

**Arquivo:** `objects\obj_dialogue\Create_0.gml`

```gml
persistent = true

active = false;

dialogue = [];
dialogue_index = 0;

npc_name = "";

full_text = "";
display_text = "";
char_index = 0;
text_speed = 1;
text_finished = false;

wait_release = false;

speaker_id = "";
speaker_name = "";
speaker_portrait = -1;



load_current_line = function()
{
    var _line = dialogue[dialogue_index];

    speaker_id = _line.speaker;
    full_text = _line.text;

    switch (speaker_id)
    {
        case "joao":
            speaker_name = "Joao";
            speaker_portrait = spr_mateus_portrait;
            break;
		case "luk":
            speaker_name = "Luk";
            speaker_portrait = rosto_luk;
            break;
        case "wolf":
            speaker_name = "Wolf";
            speaker_portrait = spr_john_portrait;
            break;

        case "john":
            speaker_name = "John";
            speaker_portrait = spr_john_portrait; 
            break;

        case "mateus":
            speaker_name = "Sr. Mateus";
            speaker_portrait = spr_mateus_portrait; 
            break;

        case "fairy":
            speaker_name = "Fairy";
            speaker_portrait = spr_fairy_portrait; 
            break;
		
		case "cabecao":
            speaker_name = "Cabeção";
            speaker_portrait = spr_cabecao_portrait; 
            break;
			
		case "cabecao_hard":
            speaker_name = "Cabeção";
            speaker_portrait = spr_cabecao_portrait_hard; 
            break;
		case "claudia":
		    speaker_name = "Claudia Milk";
		    speaker_portrait = rosto_claudia;
		    break;
		case "leon":
		    speaker_name = "Leon";
		    speaker_portrait = rosto_leon;
		    break;
		case "alan":
		    speaker_name = "Alan Turing";
		    speaker_portrait = rosto_alan;
		    break;
		case "computador":
		    speaker_name = "Computador";
		    speaker_portrait = -1;
		    break;
            
        default:
            speaker_name = speaker_id;
            speaker_portrait = -1;
            break;
    }

    display_text = "";
    char_index = 0;
    text_finished = false;
};



start_lines = function(_lines, _name)
{
    dialogue = _lines;

    if (array_length(dialogue) <= 0)
        return;

    dialogue_index = 0;
    npc_name = _name;

    load_current_line();

    active = true;
    wait_release = true;
};



advance = function()
{
    dialogue_index++;

    if (dialogue_index >= array_length(dialogue))
    {
        active = false;
        return;
    }

    load_current_line();
};
```

### obj_dialogue - Draw_64

**Arquivo:** `objects\obj_dialogue\Draw_64.gml`

```gml
if (!active)
    exit;


draw_set_font(fnt_dialogo);

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var box_h = gui_h * 0.25;
var box_y = gui_h - box_h;
var box_x = 0;
var box_w = gui_w;

var margin = box_h * 0.08;


draw_set_alpha(0.85);
draw_set_color(c_black);
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);
draw_set_alpha(1);


draw_set_color(c_white);
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, true);

var portrait_size = box_h - margin * 2;
var portrait_x = box_x + margin;
var portrait_y = box_y + margin;


if (speaker_portrait != -1 && sprite_exists(speaker_portrait))
{
    
    draw_set_color(c_gray);
    draw_rectangle(
        portrait_x,
        portrait_y,
        portrait_x + portrait_size,
        portrait_y + portrait_size,
        false
    );

    
    draw_sprite_stretched(
        speaker_portrait,
        0,
        portrait_x,
        portrait_y,
        portrait_size,
        portrait_size
    );
}


var text_x = portrait_x + portrait_size + margin;
var text_y = portrait_y;
var text_w = (box_x + box_w) - margin - text_x;


if (speaker_portrait == -1 || !sprite_exists(speaker_portrait))
{
    text_x = box_x + margin * 2;
    text_w = (box_x + box_w) - margin - text_x;
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);


draw_text(text_x, text_y, speaker_name);

var line_h = string_height("A") * 1.2;
var text_y_body = text_y + string_height("A") + margin * 0.5;


draw_text_ext(text_x, text_y_body, display_text, line_h, text_w);


if (text_finished)
{
    draw_set_halign(fa_right);
    draw_set_valign(fa_bottom);
    draw_text(box_x + box_w - margin, box_y + box_h - margin, "▼");
}


draw_set_halign(fa_left);
draw_set_valign(fa_top);
```

### obj_dialogue - Draw_75

**Arquivo:** `objects\obj_dialogue\Draw_75.gml`

```gml

if (!active)
    exit;


draw_set_font(fnt_dialogo);

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var box_h = gui_h * 0.25;
var box_y = gui_h - box_h;
var box_x = 0;
var box_w = gui_w;

var margin = box_h * 0.08;


draw_set_alpha(0.85);
draw_set_color(c_black);
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);
draw_set_alpha(1);


draw_set_color(c_white);
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, true);

var portrait_size = box_h - margin * 2;
var portrait_x = box_x + margin;
var portrait_y = box_y + margin;


if (speaker_portrait != -1 && sprite_exists(speaker_portrait))
{
    
    draw_set_color(c_gray);
    draw_rectangle(
        portrait_x,
        portrait_y,
        portrait_x + portrait_size,
        portrait_y + portrait_size,
        false
    );

    
    draw_sprite_stretched(
        speaker_portrait,
        0,
        portrait_x,
        portrait_y,
        portrait_size,
        portrait_size
    );
}


var text_x = portrait_x + portrait_size + margin;
var text_y = portrait_y;
var text_w = (box_x + box_w) - margin - text_x;

if (speaker_portrait == -1 || !sprite_exists(speaker_portrait))
{
    text_x = box_x + margin * 2;
    text_w = (box_x + box_w) - margin - text_x;
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);


draw_text(text_x, text_y, speaker_name);

var line_h = string_height("A") * 1.2;
var text_y_body = text_y + string_height("A") + margin * 0.5;


draw_text_ext(text_x, text_y_body, display_text, line_h, text_w);


if (text_finished)
{
    draw_set_halign(fa_right);
    draw_set_valign(fa_bottom);
    draw_text(box_x + box_w - margin, box_y + box_h - margin, "▼");
}


draw_set_halign(fa_left);
draw_set_valign(fa_top);
```

### obj_dialogue - Step_0

**Arquivo:** `objects\obj_dialogue\Step_0.gml`

```gml
if (!active)
    exit;


if (!text_finished)
{
    char_index += text_speed;

    if (char_index >= string_length(full_text))
    {
        char_index = string_length(full_text);
        text_finished = true;
    }

    display_text = string_copy(full_text, 1, char_index);
}


var _advance_pressed = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left) || keyboard_check_pressed(ord("E"));


if (wait_release)
{
    if (!keyboard_check(ord("E")))
    {
        wait_release = false;
    }
    exit;
}

if (_advance_pressed)
{
    if (!text_finished)
    {
        
        char_index = string_length(full_text);
        display_text = full_text;
        text_finished = true;
    }
    else
    {
        
        advance();
    }
}
```

### obj_efeito_binario - Create_0

**Arquivo:** `objects\obj_efeito_binario\Create_0.gml`

```gml
tempo = game_get_speed(gamespeed_fps) * 4;
alpha = 0;
```

### obj_efeito_binario - Draw_64

**Arquivo:** `objects\obj_efeito_binario\Draw_64.gml`

```gml
var _gw = display_get_gui_width();
var _gh = display_get_gui_height();

draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, _gw, _gh, false);

draw_set_color(c_lime);
repeat (300)
{
    draw_text(irandom(_gw), irandom(_gh), choose("0", "1"));
}

draw_set_alpha(1);
draw_set_color(c_white);
```

### obj_efeito_binario - Step_0

**Arquivo:** `objects\obj_efeito_binario\Step_0.gml`

```gml
tempo--;
alpha = min(alpha + 0.02, 1);

if (tempo <= 0){ room_goto(rm_creditos)};
```

### obj_enemy_parent - Create_0

**Arquivo:** `objects\obj_enemy_parent\Create_0.gml`

```gml
hp = 100;
max_hp = 100;
flash_timer = 0;
hit_timer = 0;
kb_x = 0;
kb_y = 0;


stun = 0;              
squash = 0;           
mv_x = 0;            
mv_y = 0;
moving = false;
walk_t = random(6.28);
wind = 0;             
atk_wind = 10;       
atk_damage = 2;
atk_kb = 5;            
kb_mult = 1;          
death_blood = 10;
death_shake = 1;
shadow_w = 10;        
bob_y = 0;            

take_damage = function(damage, dir)
{
    hp -= damage;
	var _n = instance_create_depth(x, bbox_top, -6000, obj_damage_number);
	_n.txt = string(damage);
    hit_timer = 30;
    global.hitstop = 4;
    flash_timer = 15;
    stun = 12;
    squash = 1;
    wind = 0;   

    if (dir != undefined)
    {
        kb_x += lengthdir_x(4 * kb_mult, dir);
        kb_y += lengthdir_y(4 * kb_mult, dir);
    }

    if (hp <= 0)
    {
        global.hitstop = 7;

        repeat (death_blood)
        {
            var _b = instance_create_layer(x, y, "Instances", obj_blood);
            _b.dir = ((dir != undefined) ? dir : random(360)) + random_range(-90, 90);
        }

        with (obj_camera)
        {
            shake = other.death_shake;
            shake_time = 6;
            shake_fade = 1;
        }

        instance_destroy();
    }
};


hit_player = function(_dir)
{
    obj_player.hp -= atk_damage;
    audio_play_sound(snd_player_hitted, 1, false);
    can_attack = false;
    alarm[0] = 30;

    with (obj_camera) { shake = 3; shake_time = 6; shake_fade = 1; }

    global.hitstop = 4;

    var _kx = lengthdir_x(atk_kb, _dir);
    var _ky = lengthdir_y(atk_kb, _dir);

    with (obj_player)
    {
        kb_x += _kx;
        kb_y += _ky;
        flash_timer = 20;
        invencible = true;
        inv_timer = 30;
    }

  
    kb_x -= lengthdir_x(1.5, _dir);
    kb_y -= lengthdir_y(1.5, _dir);
};

update_attack = function(_range)
{
    if (!instance_exists(obj_player)) { wind = 0; return; }

    var _d = point_distance(x, y, obj_player.x, obj_player.y);
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);


    if (wind == 0 && stun <= 0 && can_attack && _d <= _range
        && !obj_player.invencible && obj_player.hp > 0)
    {
        wind = atk_wind;
    }

    if (wind > 0)
    {
        wind--;

        if (wind == 0)
        {
   
            if (_d <= _range + 6 && !obj_player.invencible && obj_player.hp > 0)
                hit_player(_dir);
        }
    }
};
```

### obj_enemy_parent - Step_0

**Arquivo:** `objects\obj_enemy_parent\Step_0.gml`

```gml
if (global.hitstop > 0) exit;

if (flash_timer > 0)
{
    flash_timer--;

    if ((flash_timer div 3) mod 2 == 0)
        image_blend = c_red;
    else
        image_blend = c_white;
}
else
{
    image_blend = c_white;
}

if (stun > 0) stun--;
if (squash > 0) squash = max(0, squash - 0.1);

moving = (point_distance(0, 0, mv_x, mv_y) > 0.3);
walk_t += moving ? 0.35 : 0.12;
```

### obj_escolha_final - Create_0

**Arquivo:** `objects\obj_escolha_final\Create_0.gml`

```gml
gw = display_get_gui_width();
gh = display_get_gui_height();
larg = 360;
alt = 60;

lutar_x = gw / 2 - larg / 2;
lutar_y = gh / 2 - 40;
aceitar_x = gw / 2 - larg / 2;
aceitar_y = gh / 2 + 60;

tentativas = 0;
tempo = 10;
```

### obj_escolha_final - Draw_64

**Arquivo:** `objects\obj_escolha_final\Draw_64.gml`

```gml
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);
var _p = 4;

draw_set_font(fnt_dialogo);

draw_set_alpha(0.75);
draw_set_color(c_black);
draw_rectangle(0, 0, gw, gh, false);

draw_set_alpha(0.25);
draw_set_color(make_color_rgb(40, 20, 60));
for (var _y = 0; _y < gh; _y += 6)
{
    draw_rectangle(0, _y, gw, _y + 2, false);
}
draw_set_alpha(1);

var _jx = choose(-2, 0, 0, 2);
bag_panel(
    lutar_x + _jx, lutar_y, lutar_x + larg + _jx, lutar_y + alt, _p,
    make_color_rgb(10, 8, 16), make_color_rgb(60, 20, 30), make_color_rgb(110, 40, 50), make_color_rgb(30, 10, 20)
);

var _hover_aceitar = point_in_rectangle(_mx, _my, aceitar_x, aceitar_y, aceitar_x + larg, aceitar_y + alt);

if (_hover_aceitar)
{
    bag_panel(
        aceitar_x, aceitar_y, aceitar_x + larg, aceitar_y + alt, _p,
        make_color_rgb(10, 8, 16), make_color_rgb(90, 30, 40), make_color_rgb(160, 60, 70), make_color_rgb(50, 15, 25)
    );
    bag_arrow(aceitar_x + 28, aceitar_y + alt / 2, 1, _p, c_yellow);
    bag_arrow(aceitar_x + larg - 28, aceitar_y + alt / 2, -1, _p, c_yellow);
}
else
{
    bag_panel(
        aceitar_x, aceitar_y, aceitar_x + larg, aceitar_y + alt, _p,
        make_color_rgb(10, 8, 16), make_color_rgb(45, 40, 70), make_color_rgb(80, 75, 115), make_color_rgb(25, 20, 40)
    );
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _lutar_cx = lutar_x + larg / 2 + _jx;
var _lutar_cy = lutar_y + alt / 2;
draw_set_color(c_black);
draw_text(_lutar_cx + 2, _lutar_cy + 2, "Lutar com Luk");
draw_set_color(make_color_rgb(200, 150, 150));
draw_text(_lutar_cx, _lutar_cy, "Lutar com Luk");

var _aceitar_cx = aceitar_x + larg / 2;
var _aceitar_cy = aceitar_y + alt / 2;
draw_set_color(c_black);
draw_text(_aceitar_cx + 2, _aceitar_cy + 2, "Aceitar o destino");
draw_set_color(_hover_aceitar ? c_yellow : c_white);
draw_text(_aceitar_cx, _aceitar_cy, "Aceitar o destino");

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
```

### obj_escolha_final - Step_0

**Arquivo:** `objects\obj_escolha_final\Step_0.gml`

```gml
if (tempo > 0) { tempo--; exit; }

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if (point_in_rectangle(_mx, _my, lutar_x, lutar_y, lutar_x + larg, lutar_y + alt))
{
    tentativas++;

    repeat (30)
    {
        var _nx = irandom_range(20, gw - larg - 20);
        var _ny = irandom_range(20, gh - alt - 20);

        var _longe_do_mouse = point_distance(_nx + larg / 2, _ny + alt / 2, _mx, _my) > 250;
        var _fora_do_aceitar = rectangle_in_rectangle(_nx, _ny, _nx + larg, _ny + alt, aceitar_x, aceitar_y, aceitar_x + larg, aceitar_y + alt) == 0;

        if (_longe_do_mouse && _fora_do_aceitar)
        {
            lutar_x = _nx;
            lutar_y = _ny;
            break;
        }
    }
}

var _clicou_aceitar = mouse_check_button_pressed(mb_left)
    && point_in_rectangle(_mx, _my, aceitar_x, aceitar_y, aceitar_x + larg, aceitar_y + alt);

if (_clicou_aceitar)
{
	audio_stop_sound(obj_luk_final.musica);
    audio_play_sound(snd_musica_creditos, 1, true);

    obj_luk_final.fase = 5;
    instance_destroy();
    obj_luk_final.fase = 5;
    instance_destroy();
}
```

### obj_fairy_invocada - Create_0

**Arquivo:** `objects\obj_fairy_invocada\Create_0.gml`

```gml
sprite_index = spr_fairy_invocada;
image_index = 0;
image_speed = 1;
invocando = true;
fase = 0;
flash = 0;
```

### obj_fairy_invocada - Draw_64

**Arquivo:** `objects\obj_fairy_invocada\Draw_64.gml`

```gml
if (flash > 0)
{
    draw_set_alpha(flash);
    draw_set_color(c_white);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
}
```

### obj_fairy_invocada - Other_7

**Arquivo:** `objects\obj_fairy_invocada\Other_7.gml`

```gml
image_speed = 0;
image_index = image_number - 1;
fase = 1;

with (obj_player)
{
    dir = "side";
    image_xscale = -1;
    sprite_index = spr_player_idle_side;
    image_index = 0;
}


obj_dialogue.start_lines(get_dialogue("fairy_intro"), "fairy");
bag_remove("bilhete_chao")
with(obj_glitch_sugador){
	visible = true
	mask_index = glitch2
	
}
```

### obj_fairy_invocada - Step_0

**Arquivo:** `objects\obj_fairy_invocada\Step_0.gml`

```gml
switch (fase)
{
    case 1:
        if (!obj_dialogue.active) fase = 2;
    break;

    case 2:
        flash += 0.04;
        if (flash >= 1)
        {
            flash = 1;
            image_alpha = 0;
            fase = 3;
        }
    break;

    case 3:
        flash -= 0.04;
        if (flash <= 0)
        {
            flash = 0;
            obj_dialogue.start_lines(get_dialogue("fairy_acompanha"), "fairy");
            fase = 4;
        }
    break;

    case 4:
        if (!obj_dialogue.active) instance_destroy();
    break;
}
```

### obj_fala_bilhete - Create_0

**Arquivo:** `objects\obj_fala_bilhete\Create_0.gml`

```gml
event_inherited();
dialogue_id = "bilhete_maquina";
```

### obj_fala_bug - Step_0

**Arquivo:** `objects\obj_fala_bug\Step_0.gml`

```gml
if (!instance_exists(obj_player) || obj_dialogue.active) exit;

if (point_distance(x, y, obj_player.x, obj_player.y) <= 64)
{
    obj_dialogue.start_lines(get_dialogue("fairy_bug"), "");
    instance_destroy();
}
```

### obj_fala_casa - Create_0

**Arquivo:** `objects\obj_fala_casa\Create_0.gml`

```gml
event_inherited();
dialogue_id = "john_casa_luk";
```

### obj_fala_casa_mateus - Create_0

**Arquivo:** `objects\obj_fala_casa_mateus\Create_0.gml`

```gml
event_inherited();
dialogue_id = "john_casa_mateus";
```

### obj_fala_tv - Create_0

**Arquivo:** `objects\obj_fala_tv\Create_0.gml`

```gml
event_inherited();
dialogue_id = "john_tv";
```

### obj_gamemanager - Create_0

**Arquivo:** `objects\obj_gamemanager\Create_0.gml`

```gml
persistent = true
global.has_key = false;
global.hitstop = 0;
global._tem_aspirador = false;
global.object25_unlocked = false;
game_set_speed(60, gamespeed_fps);
global.podeglitch = false
if (!variable_global_exists("pc_construido")) global.pc_construido = false;
global.musica_geral_ligada = true;
```

### obj_gamemanager - Draw_64

**Arquivo:** `objects\obj_gamemanager\Draw_64.gml`

```gml

```

### obj_gamemanager - Step_0

**Arquivo:** `objects\obj_gamemanager\Step_0.gml`

```gml
var _sala_sem_musica_geral = (room == room_luk || room == rm_creditos);

if (_sala_sem_musica_geral)
{
    if (audio_is_playing(snd_dungeon1)) audio_stop_sound(snd_dungeon1);
    if (audio_is_playing(snd_cabecao_song)) audio_stop_sound(snd_cabecao_song);
}
else
{
    var _luta_boss = instance_exists(obj_cabecao) && obj_cabecao.aggro;

    if (_luta_boss)
    {
        if (audio_is_playing(snd_dungeon1)) audio_stop_sound(snd_dungeon1);

        if (!audio_is_playing(snd_cabecao_song))
            audio_play_sound(snd_cabecao_song, 2, true);
    }
    else
    {
        if (audio_is_playing(snd_cabecao_song)) audio_stop_sound(snd_cabecao_song);

        if (!audio_is_playing(snd_dungeon1))
            audio_play_sound(snd_dungeon1, 1, true);
    }
}

if (global.hitstop > 0) {
    global.hitstop -= 1;
}

if (room == room_luk) {
    global.podeglitch = true;
    global._tem_aspirador = true;
}
```

### obj_gameover - Create_0

**Arquivo:** `objects\obj_gameover\Create_0.gml`

```gml
opcao = 0;

escala_reiniciar = 1;
escala_sair = 1;
```

### obj_gameover - Draw_64

**Arquivo:** `objects\obj_gameover\Draw_64.gml`

```gml
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


draw_set_font(fnt_gui_big);

draw_text(
    display_get_gui_width() / 2,
    120,
    "GAME OVER"
);



if (opcao == 0)
{
    draw_set_font(fnt_gui_big);
    draw_text(
        display_get_gui_width() / 2,
        300,
        "> REINICIAR <"
    );
}
else
{
    draw_set_font(fnt_gui);
    draw_text(
        display_get_gui_width() / 2,
        300,
        "REINICIAR"
    );
}



if (opcao == 1)
{
    draw_set_font(fnt_gui_big);
    draw_text(
        display_get_gui_width() / 2,
        360,
        "> SAIR <"
    );
}
else
{
    draw_set_font(fnt_gui);
    draw_text(
        display_get_gui_width() / 2,
        360,
        "SAIR"
    );
}
```

### obj_gameover - Step_0

**Arquivo:** `objects\obj_gameover\Step_0.gml`

```gml
if (keyboard_check_pressed(ord("W")))
{
    opcao--;
}

if (keyboard_check_pressed(ord("S")))
{
    opcao++;
}

opcao = clamp(opcao, 0, 1);

// Animação
if (opcao == 0)
{
    escala_reiniciar = lerp(escala_reiniciar, 1.2, 0.2);
}
else
{
    escala_reiniciar = lerp(escala_reiniciar, 1, 0.2);
}

if (opcao == 1)
{
    escala_sair = lerp(escala_sair, 1.2, 0.2);
}
else
{
    escala_sair = lerp(escala_sair, 1, 0.2);
}


if (keyboard_check_pressed(vk_enter))
{
    switch (opcao)
    {
        case 0:
            if (variable_global_exists("ultima_sala") && room_exists(global.ultima_sala)) room_goto(global.ultima_sala);
            else {
				room_goto(Room1);
			}
        break;

        case 1:
            game_end();
        break;
    }
}
```

### obj_glitch_dungeon - Create_0

**Arquivo:** `objects\obj_glitch_dungeon\Create_0.gml`

```gml
sprite_index = glitch2;
visible = false;

fase = 0;
vel_puxao = 0.5;
travada = 0;
proxima_travada = 30;
tempo_sacudida = 0;

if (!variable_global_exists("cabecao_hard_morto")) global.cabecao_hard_morto = false;
```

### obj_glitch_dungeon - Draw_64

**Arquivo:** `objects\obj_glitch_dungeon\Draw_64.gml`

```gml
if (travada > 0)
{
    var _largura = display_get_gui_width();
    var _altura = display_get_gui_height();

    draw_set_alpha(0.5);

    repeat (6)
    {
        draw_set_color(choose(c_lime, c_aqua, c_fuchsia, c_white));
        var _faixa_y = random(_altura);
        draw_rectangle(0, _faixa_y, _largura, _faixa_y + irandom_range(4, 30), false);
    }

    draw_set_alpha(1);
    draw_set_color(c_white);
}
```

### obj_glitch_dungeon - Step_0

**Arquivo:** `objects\obj_glitch_dungeon\Step_0.gml`

```gml
if (!instance_exists(obj_player)) exit;

if (!visible)
{
    if (global.cabecao_hard_morto)
    {
        visible = true;
        image_index = 0;

        with (obj_camera)
        {
            shake = 4;
            shake_time = 20;
            shake_fade = 0.2;
        }
    }
    exit;
}

var _centro_x = (bbox_left + bbox_right) / 2;
var _centro_y = (bbox_top + bbox_bottom) / 2;
var _dialogo_aberto = instance_exists(obj_dialogue) && obj_dialogue.active;

switch (fase)
{
    case 0:
        if (!_dialogo_aberto && point_distance(_centro_x, _centro_y, obj_player.x, obj_player.y) <= 110)
        {
            fase = 1;
        }
    break;

    case 1:
        if (travada > 0)
        {
            travada--;
            image_speed = 0;
        }
        else
        {
            image_speed = 1;

            tempo_sacudida--;
            if (tempo_sacudida <= 0)
            {
                tempo_sacudida = 6;

                with (obj_camera)
                {
                    shake = 1.5;
                    shake_time = 8;
                    shake_fade = 1;
                }
            }

            proxima_travada--;
            if (proxima_travada <= 0)
            {
                travada = irandom_range(4, 10);
                proxima_travada = irandom_range(20, 50);

                with (obj_camera)
                {
                    shake = 5;
                    shake_time = 8;
                    shake_fade = 0.5;
                }
            }
        }

        vel_puxao += 0.015;

        var _distancia = point_distance(obj_player.x, obj_player.y, _centro_x, _centro_y);

        if (_distancia > vel_puxao)
        {
            if (travada <= 0)
            {
                var _direcao = point_direction(obj_player.x, obj_player.y, _centro_x, _centro_y);
                obj_player.x += lengthdir_x(vel_puxao, _direcao);
                obj_player.y += lengthdir_y(vel_puxao, _direcao);
            }
        }
        else
        {
            obj_player.x = _centro_x;
            obj_player.y = _centro_y;
            room_goto(dungeon2);
        }
    break;
}
```

### obj_glitch_sugador - Create_0

**Arquivo:** `objects\obj_glitch_sugador\Create_0.gml`

```gml
sprite_index = glitch2;
visible = false;

fase = 0;
vel_puxao = 0.3;
chegou_no_centro = false;

travada = 0;           
proxima_travada = 30;   

tempo_sacudida = 0;
```

### obj_glitch_sugador - Draw_64

**Arquivo:** `objects\obj_glitch_sugador\Draw_64.gml`

```gml
if (travada > 0)
{
    var _largura = display_get_gui_width();
    var _altura = display_get_gui_height();

    draw_set_alpha(0.5);

    repeat (6)
    {
        draw_set_color(choose(c_lime, c_aqua, c_fuchsia, c_white));
        var _faixa_y = random(_altura);
        draw_rectangle(0, _faixa_y, _largura, _faixa_y + irandom_range(4, 30), false);
    }

    draw_set_alpha(1);
    draw_set_color(c_white);
}
```

### obj_glitch_sugador - Step_0

**Arquivo:** `objects\obj_glitch_sugador\Step_0.gml`

```gml
if (!visible || !instance_exists(obj_player)) exit;

var _centro_x = (bbox_left + bbox_right) / 2;
var _centro_y = (bbox_top + bbox_bottom) / 2;

switch (fase)
{
    case 0:
     
        if (point_distance(_centro_x, _centro_y, obj_player.x, obj_player.y) <= 110)
        {
            obj_dialogue.start_lines(get_dialogue("fairy_bug"), "fairy");
            fase = 1;
        }
    break;

	case 1:
        if (travada > 0)
        {
            travada--;
            image_speed = 0;
        }
        else
        {
            image_speed = 1;
			tempo_sacudida--;
            if (tempo_sacudida <= 0)
            {
                tempo_sacudida = 6;

                with (obj_camera)
                {
                    shake = 1.5;
                    shake_time = 8;
                    shake_fade = 1;
                }
            }
            proxima_travada--;

            if (proxima_travada <= 0)
            {
                travada = irandom_range(4, 10);
                proxima_travada = irandom_range(20, 50);

                with (obj_camera)
                {
                    shake = 5;
                    shake_time = 8;
                    shake_fade = 0.5;
                }
            }
        }
		vel_puxao += 0.01
		
        var _distancia = point_distance(obj_player.x, obj_player.y, _centro_x, _centro_y);

        if (_distancia > vel_puxao)
        {
            if (travada <= 0)
            {
                var _direcao = point_direction(obj_player.x, obj_player.y, _centro_x, _centro_y);
                obj_player.x += lengthdir_x(vel_puxao, _direcao);
                obj_player.y += lengthdir_y(vel_puxao, _direcao);
            }
        }
        else
        {
            obj_player.x = _centro_x;
            obj_player.y = _centro_y;
            chegou_no_centro = true;
        }

        if (chegou_no_centro && !obj_dialogue.active)
        {
			global.podeglitch = true
            room_goto(dungeon);
        }
    break;
}
```

### obj_icone_interacao - Draw_0

**Arquivo:** `objects\obj_icone_interacao\Draw_0.gml`

```gml
with (obj_player)
{
    if (pull_phase != 0 || state == state_pickup) exit;
    if (luta_boss()) exit;
    if (instance_exists(obj_dialogue) && obj_dialogue.active) exit;

    float_timer += 0.08;
    var _float_offset = sin(float_timer) * 4;

    var _closest_interactable = noone;
    var _min_dist = interact_range;

    for (var i = 0; i < array_length(interact_targets); i++)
    {
        var _obj = interact_targets[i];

        if (_obj == obj_aspirador_preso && global._tem_aspirador) continue;
		    if (instance_exists(obj_capsula) && obj_capsula.fase >= 1) exit;
        if (_obj == obj_local_construcao && (global.item_step < 4 || global.pc_construido)) continue;
		if (!global.leu_bilhete && (_obj == cpu || _obj == ssd || _obj == RAm || _obj == Placa_mae)) continue;

        if (instance_exists(_obj))
        {
            var _near = instance_nearest(x, y, _obj);
            if (_obj == obj_porta_dungeon1 && _near.object_index == obj_porta_dungeon1)
            {
                if (_near.aberta == true || !bag_selected("chave1")) { continue; }
            }

            if (_obj == obj_bau_parent && variable_instance_exists(_near, "abrindo") && _near.abrindo == true) continue;

            var _dist = point_distance(
                clamp(x, _near.bbox_left, _near.bbox_right),
                clamp(y, _near.bbox_top, _near.bbox_bottom),
                x,
                y
            );

            if (_dist <= _min_dist)
            {
                _min_dist = _dist;
                _closest_interactable = _near;
            }
        }
    }

    if (_closest_interactable != noone)
    {
        var _icon_x = _closest_interactable.x;
        var _icon_y = _closest_interactable.bbox_top - 8 + _float_offset;

        draw_sprite(spr_E, 0, _icon_x, _icon_y - 10);

        var _idx = item_idx(_closest_interactable);
        if (_idx != -1 && _idx != global.item_step)
        {
            var _xx = _icon_x + ((x_shake > 0) ? choose(-2, 2) : 0);
            var _xy = _icon_y - 10;
            var _s = 7;

            draw_line_width_color(_xx - _s, _xy - _s, _xx + _s, _xy + _s, 3, c_red, c_red);
            draw_line_width_color(_xx - _s, _xy + _s, _xx + _s, _xy - _s, 3, c_red, c_red);
        }
    }
}
```

### obj_inicio_vila - Create_0

**Arquivo:** `objects\obj_inicio_vila\Create_0.gml`

```gml
iniciou = false;
```

### obj_inicio_vila - Step_0

**Arquivo:** `objects\obj_inicio_vila\Step_0.gml`

```gml
if (!iniciou && instance_exists(obj_dialogue))
{
    obj_dialogue.start_lines(get_dialogue("john_acorda"), "");
    iniciou = true;
    instance_destroy();
}
```

### obj_intro - Create_0

**Arquivo:** `objects\obj_intro\Create_0.gml`

```gml
paginas = [
    "Em um mundo não tão distante do nosso, havia um jovem chamado John Wolfgang. Ficou órfão cedo por um motivo desconhecido e passou a ser cuidado pelo ancião de sua vila: Luk Shogun. Com ele aprendeu a carpintar, trabalhar, plantar e cuidar de sua vida...",
    "O maior sonho de John é explorar vários locais do mundo e escrever uma história sobre cada um deles.",
    "Certo dia, John dormia após uma longa tarde de trabalho, até que um alto barulho estranho o acordou."
];
pagina = 0;

full_text = paginas[0];
display_text = "";
char_index = 0;
text_speed = 1;
text_finished = false;
espera = 0;
tempo_espera = game_get_speed(gamespeed_fps) * 2;
```

### obj_intro - Draw_64

**Arquivo:** `objects\obj_intro\Draw_64.gml`

```gml
draw_set_font(fnt_dialogo)
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text_ext(display_get_gui_width() / 2, display_get_gui_height() / 2, display_text, 24, display_get_gui_width() - 200);
draw_set_halign(fa_left);
```

### obj_intro - Step_0

**Arquivo:** `objects\obj_intro\Step_0.gml`

```gml
if (!text_finished)
{
    char_index += text_speed;

    if (char_index >= string_length(full_text))
    {
        char_index = string_length(full_text);
        text_finished = true;
    }

    display_text = string_copy(full_text, 1, char_index);
}
else
{
    espera++;

    if (espera >= tempo_espera)
    {
        pagina++;
        if (pagina >= array_length(paginas))
        {
            room_goto(cenario1);
        }
        else
        {
            full_text = paginas[pagina];
            display_text = "";
            char_index = 0;
            text_finished = false;
            espera = 0;
        }
    }
}
```

### obj_joao - Create_0

**Arquivo:** `objects\obj_joao\Create_0.gml`

```gml
event_inherited()
dialogue_id = "intro";
npc_name = "Joao";
was_talking = false;
npc_id = "joao";
```

### obj_key - Step_0

**Arquivo:** `objects\obj_key\Step_0.gml`

```gml
if(point_distance(obj_player.x, obj_player.y, obj_key.x, obj_key.y)<32){
	if(keyboard_check_pressed(ord("E"))){
			global.has_key = true;
			instance_destroy();
		}
}
```

### obj_luk_final - Create_0

**Arquivo:** `objects\obj_luk_final\Create_0.gml`

```gml
sprite_index = Sprite_lucas_costas;
image_blend = make_color_rgb(15, 10, 20);
fase = 0;
espera = 0;
pulso = 0;
aura = 1;
audio_stop_all();
musica = audio_play_sound(snd_musica_sala_luk, 1, true);
falou_inicio = false;
espera_inicio = 30;
```

### obj_luk_final - Draw_0

**Arquivo:** `objects\obj_luk_final\Draw_0.gml`

```gml
var _flutuar = sin(pulso * 0.8) * 3 * aura;

draw_set_alpha(0.35 * aura);
draw_set_color(c_black);
draw_ellipse(x - 30, y - 6, x + 30, y + 6, false);
draw_set_alpha(1);
draw_set_color(c_white);

if (aura > 0)
{
    gpu_set_blendmode(bm_add);

    var _tam1 = 1.08 + sin(pulso) * 0.04;
    draw_sprite_ext(sprite_index, image_index, x, y + _flutuar, image_xscale * _tam1, image_yscale * _tam1, 0, c_red, 0.35 * aura);

    var _tam2 = 1.18 + sin(pulso * 1.3) * 0.05;
    draw_sprite_ext(sprite_index, image_index, x, y + _flutuar, image_xscale * _tam2, image_yscale * _tam2, 0, make_color_rgb(120, 0, 40), 0.2 * aura);

    gpu_set_blendmode(bm_normal);
}

draw_sprite_ext(sprite_index, image_index, x, y + _flutuar, image_xscale, image_yscale, 0, image_blend, image_alpha);
```

### obj_luk_final - Step_0

**Arquivo:** `objects\obj_luk_final\Step_0.gml`

```gml
pulso += 0.05;

if (!instance_exists(obj_player)) exit;
if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);

switch (fase)
{
    case 0:
        if (!falou_inicio)
        {
            espera_inicio--;

            if (espera_inicio <= 0 && !obj_dialogue.active)
            {
                obj_dialogue.start_lines(get_dialogue("luk_inicio"), "");
                falou_inicio = true;
            }
        }
        else if (!obj_dialogue.active && point_distance(x, y, obj_player.x, obj_player.y) <= 150)
        {
            obj_dialogue.start_lines(get_dialogue("luk_final_1"), "");
            fase = 1;
        }
    break;

    case 1:
        if (!obj_dialogue.active)
        {
            sprite_index = Sprite_lucas;
            espera = 40;
            fase = 2;
        }
    break;

    case 2:
        image_blend = merge_color(image_blend, c_white, 0.08);
        espera--;

        if (espera <= 0)
        {
            image_blend = c_white;
            obj_dialogue.start_lines(get_dialogue("luk_final_2"), "");
            fase = 3;
        }
    break;

    case 3:
        if (!obj_dialogue.active)
        {
            instance_create_depth(0, 0, -10000, obj_escolha_final);
            fase = 4;
        }
    break;

    case 5:
        obj_dialogue.start_lines(get_dialogue("luk_final_3"), "");
        fase = 6;
    break;

    case 6:
        if (!obj_dialogue.active)
        {
            obj_dialogue.start_lines(get_dialogue("luk_protocolo"), "");
            fase = 7;
        }
    break;

    case 7:
        if (!obj_dialogue.active)
        {
            with (obj_player) visible = false;
            instance_create_depth(0, 0, -10000, obj_efeito_binario);
            fase = 8;
        }
    break;
}
```

### obj_mateus - Create_0

**Arquivo:** `objects\obj_mateus\Create_0.gml`

```gml

event_inherited();


dialogue_id = "data_center_intro";
npc_name = "Sr. Mateus";
npc_id = "mateus";
was_talking = false;
```

### obj_menu - Create_0

**Arquivo:** `objects\obj_menu\Create_0.gml`

```gml
estado_menu = "principal";
menu_principal = ["Jogar", "Opcoes", "Creditos", "Sair"];
menu_opcoes = ["Tela Cheia: OFF", "FPS: 60", "Volume: 100%", "Voltar"]; 

opcoes = menu_principal;
qtd_opcoes = array_length(opcoes);

tela_cheia = window_get_fullscreen();
taxa_quadros = 60;
game_set_speed(taxa_quadros, gamespeed_fps); 

volume_jogo = 1.0; 
creditos_y = display_get_gui_height();
texto_creditos = "Lider\nOtavio\n\nScript\nOtavio e Tito\n\nSprites\nRafael\n\nSite\nDavi B.\n\nDocumentacao\nLian";

indice = 0; 
pos = indice; 


larg_fim = 240; 
alt_fim = 150; 

larg_ini = larg_fim / 2; 
alt_ini = alt_fim / 2;

larg = larg_ini;
alt = alt_ini;


scale_fim = 0.7; 
scale_ini = 0.3; 
scale_txt = scale_ini; 

animacao_entrada = 0;

if (!audio_is_playing(snd_musica_menu)) {
    audio_play_sound(snd_musica_menu, 1, true);
}
```

### obj_menu - Draw_64

**Arquivo:** `objects\obj_menu\Draw_64.gml`

```gml
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

draw_set_alpha(animacao_entrada);

if (estado_menu == "creditos") {
    draw_set_font(fnt_gui_big);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    
    draw_text(_gui_w / 2, creditos_y, texto_creditos);
    draw_text_transformed(_gui_w / 2, _gui_h - 50, "Pressione ENTER para voltar", 0.5, 0.5, 0);
    
    draw_set_halign(-1);
    draw_set_valign(-1);
    draw_set_color(-1);
} 
else {
    // --- DESENHO NORMAL DO MENU EM ROLETA ---
    var _dia = 12.8; 
    var _itens_visiveis = 8;
    var _tam = 420 * animacao_entrada; 
    
    var _pulso_x = sin(current_time / 300) * 15;

    for (var i = floor(pos) - _itens_visiveis; i <= floor(pos) + _itens_visiveis; i++)
    {	
        var _dir = (i - pos) * _dia;
        
        var _x = (_gui_w + 100) - lengthdir_x(_tam, _dir) + _pulso_x; 
        var _y = _gui_h / 2 + (i - pos) * 150;
        
        var _cor = c_black;
        var _w = larg_ini;
        var _h = alt_ini;
        var _scale_atual = scale_ini;
        
        if (i == indice)
        {
            _cor = c_red;
            _w = larg;
            _h = alt;
            _scale_atual = scale_txt;
        }
        
        var _idx_texto = i % qtd_opcoes;
        if (_idx_texto < 0) _idx_texto += qtd_opcoes; 
        var _texto = opcoes[_idx_texto]; 
        
        // Desenha a caixa do botão
        draw_sprite_stretched(tb_menu, 0, _x - _w/2, _y - _h/2, _w, _h);
        
        draw_set_font(fnt_gui_big);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_colour(_cor);
        
        // --- ESCALA DINÂMICA (Evita que textos longos saiam da caixa) ---
        var _largura_texto_px = string_width(_texto) * _scale_atual;
        var _largura_maxima = _w * 0.8; // Deixa 10% de margem em cada lado da caixa
        var _scale_final = _scale_atual;
        
        if (_largura_texto_px > _largura_maxima) {
            _scale_final = _scale_atual * (_largura_maxima / _largura_texto_px);
        }
        
        draw_text_transformed(_x, _y, _texto, _scale_final, _scale_final, 0);
        
        draw_set_font(-1);
        draw_set_halign(-1);
        draw_set_valign(-1);
        draw_set_colour(-1);
    }
}

draw_set_alpha(1);

// --- DESENHO DA LOGO ---
if (estado_menu == "principal") {
    var _logo_x = _gui_w * 0.32; 
    
    var _flutuar_y = sin(current_time / 350) * 8;
    var _logo_y = (_gui_h * 0.45) + _flutuar_y; 
    
    var _pulso_scale = sin(current_time / 500) * 0.02; 
    var _scale_base = 0.62; 
    var _scale = (_scale_base + _pulso_scale) * animacao_entrada; 
    
    var _alpha = animacao_entrada;
    
    draw_sprite_ext(Sprite_logo, -1, _logo_x, _logo_y, _scale, _scale, 0, c_white, _alpha);
}
```

### obj_menu - Step_0

**Arquivo:** `objects\obj_menu\Step_0.gml`

```gml
animacao_entrada = lerp(animacao_entrada, 1, 0.1); 

//TELA DE CREDITOS
if (estado_menu == "creditos") {
    creditos_y -= 1.5; 
    
    
    if (keyboard_check_pressed(vk_enter)) {
        estado_menu = "principal";
        opcoes = menu_principal;
        qtd_opcoes = array_length(opcoes);
        indice = 2; 
        pos = 2;
        animacao_entrada = 0; 
    }
} 

else {
    var _up = keyboard_check_pressed(vk_up);
    var _down = keyboard_check_pressed(vk_down);
    var _input = _down - _up;

    if (_input != 0) {
        indice = indice + _input;
        larg = larg_ini;
        alt = alt_ini;
        scale_txt = scale_ini; 
    }

    pos = lerp(pos, indice, 0.1);
    var _fazer = (abs(pos - indice) < 0.1); 

    if (_fazer) {
        larg = lerp(larg, larg_fim, 0.3);
        scale_txt = lerp(scale_txt, scale_fim, 0.3);
    }
    if (larg > larg_fim - 2) {
        alt = lerp(alt, alt_fim, 0.1);
    }

    if (estado_menu == "opcoes") {
        var _txt_tela = tela_cheia ? "Tela Cheia: ON" : "Tela Cheia: OFF";
        menu_opcoes[0] = _txt_tela;
        menu_opcoes[1] = "FPS: " + string(taxa_quadros);
        menu_opcoes[2] = "Volume: " + string(volume_jogo * 100) + "%";
        opcoes = menu_opcoes; 
    }

    var _enter = keyboard_check_pressed(vk_enter);

    if (_enter) {
        var _escolhido = indice % qtd_opcoes;
        if (_escolhido < 0) _escolhido += qtd_opcoes;
        
        if (estado_menu == "principal") {
            switch(_escolhido) {
                case 0: 
                    audio_stop_sound(snd_musica_menu); 
                    room_goto(dungeon2)
                    break;
                case 1: 
                    estado_menu = "opcoes";
                    opcoes = menu_opcoes;
                    qtd_opcoes = array_length(opcoes);
                    indice = 0; 
                    pos = 0;
                    animacao_entrada = 0;
                    break;
                case 2: 
                    estado_menu = "creditos";
                    creditos_y = display_get_gui_height(); 
                    animacao_entrada = 0;
                    break;
                case 3: 
                    game_end();
                    break;
            }
        }
        else if (estado_menu == "opcoes") {
            switch(_escolhido) {
                case 0: 
                    tela_cheia = !tela_cheia;
                    window_set_fullscreen(tela_cheia);
                    break;
                case 1: 
                    if (taxa_quadros == 60) taxa_quadros = 144;
                    else if (taxa_quadros == 144) taxa_quadros = 30;
                    else taxa_quadros = 60;
                    game_set_speed(taxa_quadros, gamespeed_fps); 
                    break;
                case 2: 
                    volume_jogo -= 0.25;
                    if (volume_jogo < 0) volume_jogo = 1.0;
                    audio_master_gain(volume_jogo); 
                    break;
                case 3: 
                    estado_menu = "principal";
                    opcoes = menu_principal;
                    qtd_opcoes = array_length(opcoes);
                    indice = 1; 
                    pos = 1;
                    animacao_entrada = 0;
                    break;
            }
        }
    }
}
```

### obj_npc_parent - Create_0

**Arquivo:** `objects\obj_npc_parent\Create_0.gml`

```gml
dialogue_id = "";
npc_name = "NPC";
npc_id = "";
was_talking = false;
```

### obj_npc_parent - Step_0

**Arquivo:** `objects\obj_npc_parent\Step_0.gml`

```gml
if (point_distance(x, y, obj_player.x, obj_player.y) <= 80)
{
    if (keyboard_check_pressed(ord("E")) && !obj_dialogue.active)
    {
        var _lines = get_dialogue(dialogue_id);
        obj_dialogue.start_lines(_lines, npc_name);

        was_talking = true;
    }
}
else
{
    
}


if (was_talking && !obj_dialogue.active)
{
    if (obj_dialogue.npc_name == npc_name)
    {
        dialogue_id = npc_advance_state(npc_id, dialogue_id);
    }

    was_talking = false;
}
```

### obj_particles_wlk - Create_0

**Arquivo:** `objects\obj_particles_wlk\Create_0.gml`

```gml
 image_index = 0;
image_speed =  1 ;
```

### obj_particles_wlk - Other_7

**Arquivo:** `objects\obj_particles_wlk\Other_7.gml`

```gml
instance_destroy()
```

### obj_password_13 - Create_0

**Arquivo:** `objects\obj_password_13\Create_0.gml`

```gml
code_correct = [1, 1, 0, 1];
digits = [0, 0, 0, 0];
selected = 0;
state = "input";   // input, wrong ou success
timer = 0;
shake = 0;
door = noone;
```

### obj_password_13 - Draw_64

**Arquivo:** `objects\obj_password_13\Draw_64.gml`

```gml
var _gw = display_get_gui_width();
var _gh = display_get_gui_height();
var _cx = _gw / 2;
var _cy = _gh / 2;
var _ox = (shake > 0) ? random_range(-shake, shake) : 0;

// Fundo escurecido
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(0, 0, _gw, _gh, false);
draw_set_alpha(1);

// Painel
draw_set_color(make_color_rgb(40, 40, 48));
draw_roundrect(_cx - 200 + _ox, _cy - 130, _cx + 200 + _ox, _cy + 130, false);
draw_set_color(make_color_rgb(120, 120, 135));
draw_roundrect(_cx - 200 + _ox, _cy - 130, _cx + 200 + _ox, _cy + 130, true);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// LED de status
var _led = c_dkgray;
if (state == "wrong")   _led = c_red;
if (state == "success") _led = c_lime;
draw_set_color(_led);
draw_circle(_cx + _ox, _cy - 105, 8, false);

// Dígitos
for (var i = 0; i < 4; i++)
{
    var _bx = _cx - 150 + i * 80 + _ox;
    var _by = _cy - 40;
    var _sel = (i == selected && state == "input");

    draw_set_color(_sel ? make_color_rgb(70, 70, 85) : make_color_rgb(25, 25, 30));
    draw_rectangle(_bx, _by, _bx + 60, _by + 80, false);

    draw_set_color(_sel ? c_white : c_gray);
    draw_rectangle(_bx, _by, _bx + 60, _by + 80, true);

    draw_text_transformed(_bx + 30, _by + 40, string(digits[i]), 2, 2, 0);

    if (_sel)
    {
        draw_triangle(_bx + 30, _by - 14, _bx + 20, _by - 4, _bx + 40, _by - 4, false);
        draw_triangle(_bx + 30, _by + 94, _bx + 20, _by + 84, _bx + 40, _by + 84, false);
    }
}

// Texto de dica
draw_set_color(c_gray);
draw_text(_cx + _ox, _cy + 105, "Setas: mover/girar   Enter: confirmar   Esc: sair");

// Reset
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
```

### obj_password_13 - Step_0

**Arquivo:** `objects\obj_password_13\Step_0.gml`

```gml
if (shake > 0) shake--;

switch (state)
{
    case "input":
        
        if (keyboard_check_pressed(vk_left))  selected = (selected + 3) mod 4;
        if (keyboard_check_pressed(vk_right)) selected = (selected + 1) mod 4;

        
        if (keyboard_check_pressed(vk_up))   digits[selected] = (digits[selected] + 1) mod 10;
        if (keyboard_check_pressed(vk_down)) digits[selected] = (digits[selected] + 9) mod 10;

        
        for (var n = 0; n <= 9; n++)
        {
            if (keyboard_check_pressed(ord(string(n))))
            {
                digits[selected] = n;
                selected = min(selected + 1, 3);
            }
        }

        
        if (keyboard_check_pressed(vk_escape)) instance_destroy();

        
        if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
        {
            var _ok = true;
            for (var i = 0; i < 4; i++)
            {
                if (digits[i] != code_correct[i]) _ok = false;
            }

            if (_ok)
            {
                state = "success";
                timer = 60;
            }
            else
            {
                state = "wrong";
                timer = 40;
                shake = 12;
            }
        }
    break;

    case "wrong":
        timer--;
        if (timer <= 0)
        {
            digits = [0, 0, 0, 0];
            selected = 0;
            state = "input";
        }
    break;

    case "success":
    timer--;

    if (timer <= 0)
    {
        if (instance_exists(door))
        {
            
            var _x = door.x;
            var _y = door.y;
            var _depth = door.depth;

            
            instance_destroy(door);

            
            instance_create_depth(
                _x,
                _y,
                _depth,
                obj_porta_abrindo
            );
        }

       
        global.object25_unlocked = true;

        
        instance_destroy();
    }
break;
}
```

### obj_pause - Create_0

**Arquivo:** `objects\obj_pause\Create_0.gml`

```gml
pausado = false;
estado_menu = "principal"; 

// listas de opcoees
menu_principal = ["Continuar", "Opcoes", "Menu Principal", "Sair"];
menu_opcoes = ["Tela Cheia: OFF", "FPS: 60", "Volume: 100%", "Voltar"];

opcoes_pause = menu_principal;
qtd_opcoes = array_length(opcoes_pause);

//cConfigurações do jogo
tela_cheia = window_get_fullscreen();
taxa_quadros = 60;
volume_jogo = 1.0;

// posicionamento e tamanho
indice = 0; 
pos = indice; 

larg_fim = 350; 
alt_fim = 220;
larg_ini = larg_fim / 2; 
alt_ini = alt_fim / 2;

larg = larg_ini;
alt = alt_ini;
scale_fim = 0.95;       
scale_ini = 0.4; 
scale_txt = scale_ini;
```

### obj_pause - Draw_64

**Arquivo:** `objects\obj_pause\Draw_64.gml`

```gml
if (!pausado) exit;

var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();


draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(0, 0, _gui_w, _gui_h, false);
draw_set_alpha(1.0);


var _dia = 12.8; 
var _itens_visiveis = 8;
var _tam = 500; 
var _pulso_x = sin(current_time / 300) * 15;

for (var i = floor(pos) - _itens_visiveis; i <= floor(pos) + _itens_visiveis; i++)
{	
    var _dir = (i - pos) * _dia;
    
    var _x = _gui_w - lengthdir_x(_tam, _dir) + _pulso_x; 
    var _y = _gui_h / 2 + (i - pos) * 150;
    
    var _cor = c_black;
    var _w = larg_ini;
    var _h = alt_ini;
    var _scale_atual = scale_ini;
    
    if (i == indice)
    {
        _cor = c_red;
        _w = larg;
        _h = alt;
        _scale_atual = scale_txt;
    }
    
    var _idx_texto = i % qtd_opcoes;
    if (_idx_texto < 0) _idx_texto += qtd_opcoes; 
    var _texto = opcoes_pause[_idx_texto]; 
    
    draw_sprite_stretched(tb_menu, 0, _x - _w/2, _y - _h/2, _w, _h);
    
    draw_set_font(fnt_gui_big);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_colour(_cor);
    
    draw_text_transformed(_x, _y, _texto, _scale_atual, _scale_atual, 0);
    
    draw_set_font(-1);
    draw_set_halign(-1);
    draw_set_valign(-1);
    draw_set_colour(-1);
}
```

### obj_pause - Step_0

**Arquivo:** `objects\obj_pause\Step_0.gml`

```gml

if (keyboard_check_pressed(vk_escape)) {
    pausado = !pausado;
    
    if (pausado) {
        instance_deactivate_all(true); // cngela o jogo
        estado_menu = "principal";
        opcoes_pause = menu_principal;
        qtd_opcoes = array_length(opcoes_pause);
        indice = 0;
        pos = 0;
    } else {
        instance_activate_all(); // escongela
    }
}


if (pausado) {
    var _up = keyboard_check_pressed(vk_up);
    var _down = keyboard_check_pressed(vk_down);
    var _input = _down - _up;

    if (_input != 0) {
        indice = indice + _input;
        larg = larg_ini;
        alt = alt_ini;
        scale_txt = scale_ini; 
    }

    pos = lerp(pos, indice, 0.1);
    var _fazer = (abs(pos - indice) < 0.1); 

    if (_fazer) {
        larg = lerp(larg, larg_fim, 0.3);
        scale_txt = lerp(scale_txt, scale_fim, 0.3);
    }
    if (larg > larg_fim - 2) {
        alt = lerp(alt, alt_fim, 0.1);
    }


    if (estado_menu == "opcoes") {
        var _txt_tela = tela_cheia ? "Tela Cheia: ON" : "Tela Cheia: OFF";
        menu_opcoes[0] = _txt_tela;
        menu_opcoes[1] = "FPS: " + string(taxa_quadros);
        menu_opcoes[2] = "Volume: " + string(volume_jogo * 100) + "%";
        opcoes_pause = menu_opcoes;
    }


    var _enter = keyboard_check_pressed(vk_enter);

    if (_enter) {
        var _escolhido = indice % qtd_opcoes;
        if (_escolhido < 0) _escolhido += qtd_opcoes;
        

        if (estado_menu == "principal") {
            switch(_escolhido) {
                case 0: 
                    pausado = false;
                    instance_activate_all();
                    break;
                    
                case 1: 
                    estado_menu = "opcoes";
                    opcoes_pause = menu_opcoes;
                    qtd_opcoes = array_length(opcoes_pause);
                    indice = 0;
                    pos = 0;
                    break;
                    
                case 2: 
                    pausado = false;
                    instance_activate_all(); 
                    audio_stop_all(); 
                    room_goto(menu_inicial); 
                    break;
                    
                case 3: 
                    game_end();
                    break;
            }
        }
        
        else if (estado_menu == "opcoes") {
            switch(_escolhido) {
                case 0: 
                    tela_cheia = !tela_cheia;
                    window_set_fullscreen(tela_cheia);
                    break;
                    
                case 1: 
                    if (taxa_quadros == 60) taxa_quadros = 144;
                    else if (taxa_quadros == 144) taxa_quadros = 30;
                    else taxa_quadros = 60;
                    game_set_speed(taxa_quadros, gamespeed_fps);
                    break;
                    
                case 2: 
                    volume_jogo -= 0.25;
                    if (volume_jogo < 0) volume_jogo = 1.0;
                    audio_master_gain(volume_jogo);
                    break;
                    
                case 3:
                    estado_menu = "principal";
                    opcoes_pause = menu_principal;
                    qtd_opcoes = array_length(opcoes_pause);
                    indice = 1; 
                    pos = 1;
                    break;
            }
        }
    }
}
```

### obj_pc_quebrado - Create_0

**Arquivo:** `objects\obj_pc_quebrado\Create_0.gml`

```gml
if (!variable_global_exists("pc_consertado")) global.pc_consertado = false;

falando = false;
pausa = 0;

fps_quebrado = 15;
fps_consertado = 4;
chamando_fairy = false;
```

### obj_pc_quebrado - Step_0

**Arquivo:** `objects\obj_pc_quebrado\Step_0.gml`

```gml
if (!instance_exists(obj_player)) exit;

var _fps_alvo = fps_quebrado;

if (global.pc_consertado)
{
    _fps_alvo = fps_consertado;
}

var _fps_sprite = max(0.01, sprite_get_speed(sprite_index));

if (sprite_get_speed_type(sprite_index) == spritespeed_framespergameframe)
{
    _fps_sprite *= game_get_speed(gamespeed_fps);
}

image_speed = _fps_alvo / _fps_sprite;

if (pausa > 0) pausa--;

var _dialogo_aberto = instance_exists(obj_dialogue) && obj_dialogue.active;

if (falando && !_dialogo_aberto)
{
    
    if (variable_instance_exists(id, "chamando_fairy") && chamando_fairy)
    {
        chamando_fairy = false;
        obj_dialogue.start_lines(get_dialogue("fairy_porta_trancada"), "fairy");
        exit;
    }

    falando = false;
    pausa = 10;
}

if (falando || pausa > 0) exit;

if (!keyboard_check_pressed(ord("E")) || luta_boss() || obj_player.attacking) exit;

var _distancia = point_distance(
    clamp(obj_player.x, bbox_left, bbox_right),
    clamp(obj_player.y, bbox_top, bbox_bottom),
    obj_player.x,
    obj_player.y
);

if (_distancia > obj_player.interact_range) exit;

if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);
if (obj_dialogue.active) exit;

if (global.pc_consertado)
{
    obj_dialogue.start_lines(get_dialogue("pc_obrigado"), "");
}
else if (bag_selected("cooler"))
{
    bag_remove("cooler");
	bag_add("tecla_5");
    global.pc_consertado = true;
    
    if (variable_global_exists("leon_livre") && global.leon_livre)
    {
        if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);
        obj_dialogue.start_lines(get_dialogue("pc_religado"), "");
        chamando_fairy = true;
    }
    else
    {
        if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);
        obj_dialogue.start_lines(get_dialogue("pc_religado"), "");
        chamando_fairy = false;
    }
}
else
{
    obj_dialogue.start_lines(get_dialogue("dungeon_pc_quebrado"), "");
}

falando = true;
```

### obj_player - Alarm_0

**Arquivo:** `objects\obj_player\Alarm_0.gml`

```gml
can_attack = true;
ja_toco_som_espada = false;
```

### obj_player - Alarm_1

**Arquivo:** `objects\obj_player\Alarm_1.gml`

```gml

```

### obj_player - Create_0

**Arquivo:** `objects\obj_player\Create_0.gml`

```gml
enum Weapon {
    ASPIRADOR,
    SWORD
}
inv_sel = 0;
inv_off = 0;
inv_last_w = -1;
interact_targets = [obj_npc_parent,obj_pc_quebrado,obj_luk_final,obj_bilhete_chao_itens, Object25, obj_bilhete_chao_itens, obj_aspirador_preso,obj_local_construcao, obj_bau_parent, obj_porta_dungeon1, cpu, ssd, RAm, Placa_mae];
if (!variable_global_exists("item_step")) global.item_step = 0;  
if (!variable_global_exists("item_order")) global.item_order = [cpu, ssd, RAm, Placa_mae];

x_shake = 0;
pickup_idx = 0;

pickup_sprites    = [spr_pegar_cpu, spr_pegar_ssd, spr_pegar_ram, spr_completado_itens];
bag_px = 4;

interact_range = 40; 
float_timer = 0;
current_weapon = Weapon.SWORD;
aspirador_frame = 2;

hspd = 0;
vspd = 0;
spdForever = 1.2;
spd = 5;
max_hp = 10;
hp = max_hp;
dir = "front";
exploding = false;
can_attack = true;
hp_draw = hp;
hp_anim = hp;
hp_old = max_hp;
flash_timer = 0;
invencible = false;
inv_timer = 0;
dust_timer = 0;
canPlayDeathSound = true;
current_weapon = Weapon.ASPIRADOR;
quantity_heal = 0;
ja_toco_som_espada = false;
alvos_colisao = [obj_luk_final,obj_porta_dungeon_turing,obj_pc_quebrado,obj_capsula,Object34,obj_npc_parent,obj_alan,Object36,Object35,Object26, Object37, obj_bau_parent, Mesa_do_lucas,obj_collision,obj_porta_dungeon1,obj_mateus,Object8,Object11, Object5, Object4, Object12, Object10, Object13, Object14, Object18, Object19, Object20, obj_aspirador_preso, Object9, Object25];
kb_x = 0;
kb_y = 0;
som_aspirador = -1;
pull_target_x = 0;
pull_target_y = 0;
pull_walk_spd = 3;     
pull_offset_x = 0;     
pull_offset_y = 0;
pull_phase = 0;
pull_timer = 0;
pull_flash = 0;
puxado = noone;
pull_give_frame = 6;   
pull_hold = 40;        
slide_max = 16;

attacking = false;
sword_ang = 0;
sword_criada = false;
sword_frame = 2;

colidindo = function(_x, _y) {
    for (var i = 0; i < array_length(alvos_colisao); i++) {
        if (place_meeting(_x, _y, alvos_colisao[i])) return true;
    }
    return false;
}

state = state_idle;

if (!variable_global_exists("bag")) global.bag = [];
bag_sel = 0;
bag_off = 0;
bag_last_n = array_length(global.bag);
global.ultima_sala = room;
if (!variable_global_exists("intro_casa_feita")) global.intro_casa_feita = false;

saindo_da_casa = false;
susto_timer = 0;

if (room == cenario1 && !global.intro_casa_feita)
{
    spawn_x = x;
    spawn_y = y;

    y = spawn_y - 50;

    saindo_da_casa = true;
}
bag_big = 80;
bag_small = 40;
bag_gap = 90;
bag_y = 70;
bag_fill = 0.8;
bag_name_on = true;

bag_slot_spr = -1;
bag_slot_sel_spr = -1;
bag_arrow_spr = -1;

if (!variable_global_exists("dmg_martelo")) global.dmg_martelo = 3;
if (!variable_global_exists("dmg_aspirador")) global.dmg_aspirador = 1;
if (!instance_exists(obj_icone_interacao)) instance_create_depth(0, 0, -10000, obj_icone_interacao);
if (!variable_global_exists("leu_bilhete")) global.leu_bilhete = false;
bilhete_cd = 0;



```

### obj_player - Draw_0

**Arquivo:** `objects\obj_player\Draw_0.gml`

```gml
draw_self()
```

### obj_player - Draw_64

**Arquivo:** `objects\obj_player\Draw_64.gml`

```gml

var _p = 4;                  
var _x = 20;
var _y = 20;
var _w = 200;               
var _h = 20;                 

var _pct = clamp(hp_anim / max_hp, 0, 1);       
var _cp = clamp(hp / max_hp, 0, 1);             

var _fw = floor((_w * _pct) / _p) * _p;          
if (hp > 0 && _fw < _p) _fw = _p;                


var _orange = make_color_rgb(255, 130, 0);
var _col;
if (_cp > 0.5)       _col = merge_color(c_yellow, c_lime, (_cp - 0.5) / 0.5);
else if (_cp > 0.25) _col = merge_color(_orange, c_yellow, (_cp - 0.25) / 0.25);
else                 _col = merge_color(c_red, _orange, _cp / 0.25);


if (_cp <= 0.25 && hp > 0)
    _col = merge_color(_col, c_white, 0.3 * (0.5 + 0.5 * sin(current_time * 0.012)));


var _edge = c_black;
if (flash_timer > 0 && ((flash_timer div 3) mod 2 == 0)) _edge = c_white;

draw_set_color(_edge);
draw_rectangle(_x, _y - _p, _x + _w - 1, _y - 1, false);                 
draw_rectangle(_x, _y + _h, _x + _w - 1, _y + _h + _p - 1, false);       
draw_rectangle(_x - _p, _y, _x - 1, _y + _h - 1, false);                 
draw_rectangle(_x + _w, _y, _x + _w + _p - 1, _y + _h - 1, false);       


var _bg = make_color_rgb(70, 12, 20);
draw_set_color(_bg);
draw_rectangle(_x, _y, _x + _w - 1, _y + _h - 1, false);
draw_set_color(merge_color(_bg, c_black, 0.4));
draw_rectangle(_x, _y + _h - _p, _x + _w - 1, _y + _h - 1, false);


if (_fw > 0)
{

    draw_set_color(_col);
    draw_rectangle(_x, _y, _x + _fw - 1, _y + _h - 1, false);


    draw_set_color(merge_color(_col, c_white, 0.5));
    draw_rectangle(_x, _y, _x + _fw - 1, _y + _p - 1, false);


    draw_set_color(merge_color(_col, c_black, 0.4));
    draw_rectangle(_x, _y + _h - _p, _x + _fw - 1, _y + _h - 1, false);

  
    if (_fw > _p * 2)
    {
        draw_set_color(merge_color(_col, c_black, 0.25));
        draw_rectangle(_x + _fw - _p, _y + _p, _x + _fw - 1, _y + _h - _p - 1, false);
    }

   
    draw_set_alpha(0.55);
    draw_set_color(c_white);
    draw_rectangle(_x + _p, _y + _p, _x + _p * 3 - 1, _y + _p * 2 - 1, false);
    draw_set_alpha(1);
}

draw_set_color(c_white);



var txtAspirador = "ASPIRADOR";
var txtSword = "MARTELO";

var x_ = display_get_gui_width() - 16;
var y_ = display_get_gui_height() - 16;

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

if (tem_aspirador()) {
    if (current_weapon == Weapon.ASPIRADOR)
        draw_set_font(fnt_gui_big);
    else
        draw_set_font(fnt_gui);

    draw_text(x_, y_ - 70, txtAspirador);
}

if (current_weapon == Weapon.SWORD)
    draw_set_font(fnt_gui_big);
else
    draw_set_font(fnt_gui);

draw_text(x_, y_ - 40, txtSword);

var _p = bag_px;
var _bl = global.bag;
var _bc = array_length(_bl);

var _bx = floor((display_get_gui_width() / 2) / _p) * _p;
var _by = floor((display_get_gui_height() - bag_y) / _p) * _p;

var _bh = draw_get_halign();
var _bv = draw_get_valign();
var _bcol = draw_get_color();
var _ba = draw_get_alpha();
var _bf = draw_get_font();
var _tf = gpu_get_texfilter();
gpu_set_texfilter(false);
draw_set_alpha(1);

var _ink = make_color_rgb(22, 18, 30);
var _deep = make_color_rgb(44, 38, 60);
var _lite = make_color_rgb(108, 98, 132);
var _lo = make_color_rgb(30, 26, 42);
var _sel_fill = make_color_rgb(66, 56, 84);
var _sel_lite = make_color_rgb(140, 124, 160);
var _accent = make_color_rgb(230, 150, 60);
var _cream = make_color_rgb(242, 228, 196);
var _dim = make_color_rgb(150, 140, 165);

var _step = _p * 2;
var _border = [-2, 2, -1, 1, 0];

for (var _o = 0; _o < 5; _o++)
{
    var _rel = _border[_o];
    var _ar = abs(_rel);

    var _has;
    if (_rel == 0)       _has = (_bc >= 1);
    else if (_ar == 1)   _has = (_rel > 0) ? (_bc >= 2) : (_bc >= 3);
    else                 _has = (_bc >= 4);

    var _pos = _rel + bag_off;
    if (abs(_pos) > 1.6) continue;

    var _t = clamp(abs(_pos), 0, 1);
    var _sz = round(lerp(bag_big, bag_small, _t) / _step) * _step;
    var _hs = _sz / 2;
    var _sx = round((_bx + _pos * bag_gap) / _p) * _p;
    var _x1 = _sx - _hs;
    var _x2 = _sx + _hs;
    var _y1 = _by - _hs;
    var _y2 = _by + _hs;
    var _on = (_t < 0.5);

    if (!_has)
    {
        if (_ar <= 1)
        {
            if (sprite_exists(bag_slot_spr))
            {
                draw_sprite_stretched(bag_slot_spr, 0, _x1, _y1, _sz, _sz);
            }
            else
            {
                bag_panel(_x1, _y1, _x2, _y2, _p, _ink, _lo, _lo, _lo);
                for (var _cy = _y1 + _p; _cy < _y2 - _p; _cy += _p)
                {
                    for (var _cx = _x1 + _p; _cx < _x2 - _p; _cx += _p)
                    {
                        if ((floor((_cx - _x1) / _p) + floor((_cy - _y1) / _p)) mod 2 == 0)
                            bag_rect(_cx, _cy, _cx + _p, _cy + _p, _deep);
                    }
                }
            }
        }
        continue;
    }

    var _it = item_get(_bl[(((bag_sel + _rel) mod _bc) + _bc) mod _bc]);

    if (sprite_exists(bag_slot_spr))
    {
        var _fs = (_on && sprite_exists(bag_slot_sel_spr)) ? bag_slot_sel_spr : bag_slot_spr;
        draw_sprite_stretched(_fs, 0, _x1, _y1, _sz, _sz);
    }
    else if (_on)
    {
        bag_panel(_x1, _y1, _x2, _y2, _p, _accent, _sel_fill, _sel_lite, _lo);
    }
    else
    {
        bag_panel(_x1, _y1, _x2, _y2, _p, _ink, _deep, _lite, _lo);
    }

    if (sprite_exists(_it.spr))
    {
        var _md = max(sprite_get_width(_it.spr), sprite_get_height(_it.spr));
        var _k = max(1, floor((_sz * bag_fill) / _md));
        bag_draw_spr(_it.spr, _sx + 2, _by + 2, _k, _ink);
        bag_draw_spr(_it.spr, _sx, _by, _k, _on ? c_white : _dim);
    }
    else
    {
        draw_set_font(fnt_gui);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_color(_on ? _cream : _dim);
        draw_text(_sx, _by, "?");
    }
}

if (_bc > 1 && _bc <= 12)
{
    var _tw = (_bc - 1) * _p * 3 + _p * 4;
    var _dx = floor((_bx - _tw / 2) / _p) * _p;
    var _dy = _by + bag_big / 2 + _p * 3;

    for (var _i = 0; _i < _bc; _i++)
    {
        var _w = (_i == bag_sel) ? _p * 4 : _p * 2;
        bag_rect(_dx - 2, _dy - 2, _dx + _w + 2, _dy + _p + 2, _ink);
        bag_rect(_dx, _dy, _dx + _w, _dy + _p, (_i == bag_sel) ? _accent : _lite);
        _dx += _w + _p;
    }
}

if (bag_name_on && _bc > 0 && abs(bag_off) < 0.3)
{
    var _name = item_get(_bl[clamp(bag_sel, 0, _bc - 1)]).name;
    draw_set_font(fnt_gui);

    var _nw = ceil((string_width(_name) + _p * 6) / _p) * _p;
    var _nh = max(_p * 6, ceil((string_height(_name) + _p * 2) / _p) * _p);
    var _nx1 = floor((_bx - _nw / 2) / _p) * _p;
    var _ny2 = _by - bag_big / 2 - _p * 3;

    bag_panel(_nx1, _ny2 - _nh, _nx1 + _nw, _ny2, _p, _ink, _deep, _lite, _lo);

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    var _tx = _nx1 + _nw / 2;
    var _ty = _ny2 - _nh / 2;
    draw_set_color(_ink);
    draw_text(_tx + 1, _ty + 1, _name);
    draw_set_color(_cream);
    draw_text(_tx, _ty, _name);
}

if (_bc > 1)
{
    var _nudge = ((current_time div 350) mod 2) * 2;
    var _aoff = bag_gap + bag_small / 2 + _p * 3;

    if (sprite_exists(bag_arrow_spr))
    {
        bag_draw_spr(bag_arrow_spr, _bx - _aoff - _nudge, _by, 1, c_white, -1);
        bag_draw_spr(bag_arrow_spr, _bx + _aoff + _nudge, _by, 1, c_white, 1);
    }
    else
    {
        bag_arrow(_bx - _aoff - _nudge + _p * 2, _by + 2, -1, _p, _ink);
        bag_arrow(_bx + _aoff + _nudge - _p * 2, _by + 2, 1, _p, _ink);
        bag_arrow(_bx - _aoff - _nudge + _p * 2, _by, -1, _p, _cream);
        bag_arrow(_bx + _aoff + _nudge - _p * 2, _by, 1, _p, _cream);
    }
}

gpu_set_texfilter(_tf);
draw_set_font(_bf);
draw_set_halign(_bh);
draw_set_valign(_bv);
draw_set_color(_bcol);
draw_set_alpha(_ba);

draw_set_font(fnt_gui);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(1);
```

### obj_player - Other_7

**Arquivo:** `objects\obj_player\Other_7.gml`

```gml
if (sprite_index == spr_player_explode)
{
    room_goto(rm_gameover);
}
```

### obj_player - Step_0

**Arquivo:** `objects\obj_player\Step_0.gml`

```gml
if (global.hitstop > 0) exit;
if (saindo_da_casa)
{
    var _vel_intro = 0.5; 
    var _dist = point_distance(x, y, spawn_x, spawn_y);

    if (_dist > _vel_intro)
    {
        var _dir = point_direction(x, y, spawn_x, spawn_y);
        x += lengthdir_x(_vel_intro, _dir);
        y += lengthdir_y(_vel_intro, _dir);

        sprite_index = spr_player_walk_front;
        image_speed = 1;

        if (!audio_is_playing(snd_walking))
            audio_play_sound(snd_walking, 1, true);
    }
    else
    {
        x = spawn_x;
        y = spawn_y;

        if (audio_is_playing(snd_walking))
            audio_stop_sound(snd_walking);

        sprite_index = jhon_assutado; 
        image_speed = 1;

        susto_timer++;

        if (susto_timer >= 60)
        {
            saindo_da_casa = false;
            global.intro_casa_feita = true;
        }
    }

    exit;
}
if (bilhete_cd > 0) bilhete_cd--;
//var para ver se apertou E para interagir
var _e = keyboard_check_pressed(ord("E")) && !luta_boss();

if (instance_exists(obj_bilhete_tela))
{
    hspd = 0;
    vspd = 0;
    image_speed = 0;

    if (audio_is_playing(snd_walking)) audio_stop_sound(snd_walking);

    exit;
}
mask_index = spr_player_mask;

if (instance_exists(obj_luk_final) && obj_luk_final.fase > 0)
{
    hspd = 0;
    vspd = 0;
    image_speed = 0;

    if (audio_is_playing(snd_walking)) audio_stop_sound(snd_walking);

    exit;
}

if (instance_exists(obj_dialogue) && obj_dialogue.active)
{
    hspd = 0;
    vspd = 0;
    image_speed = 0;

    if (audio_is_playing(snd_walking)) {
        audio_stop_sound(snd_walking);
    }

    exit;
}
if (instance_exists(obj_fairy_invocada) && obj_fairy_invocada.invocando)
{
    hspd = 0;
    vspd = 0;
    image_speed = 0;

    if (audio_is_playing(snd_walking)) {
        audio_stop_sound(snd_walking);
    }

    exit;
}


if (keyboard_check_pressed(vk_space))
{
    if (!attacking && !exploding && hp > 0 && bag_selected("cpu_item"))
    {
        bag_remove("cpu_item");
        global.dmg_martelo += 5;
        global.dmg_aspirador += 1;

        global.hitstop = 15;

        with (obj_camera)
        {
            shake = 8;
            shake_time = 24;
            shake_fade = 0.5;
        }
    }
}
if (keyboard_check_pressed(vk_space) && !attacking && !exploding && bilhete_cd <= 0 && bag_selected("bilhete_chao"))
{
    instance_create_depth(0, 0, -10000, obj_bilhete_tela);
	global.leu_bilhete = true
   
}

if (_e && !global._tem_aspirador && !attacking)
{
    var _aspirador = instance_nearest(x, y, obj_aspirador_preso);

    if (_aspirador != noone)
    {
        var _dist = point_distance(
            clamp(x, _aspirador.bbox_left, _aspirador.bbox_right),
            clamp(y, _aspirador.bbox_top, _aspirador.bbox_bottom),
            x,
            y
        );

        if (_dist <= interact_range)
        {
            start_pull_aspirador(_aspirador);
        }
    }
}



if (x_shake > 0) x_shake--;

if (_e && !attacking && pull_phase == 0)
{
    var _b = instance_nearest(x, y, obj_bilhete_chao_itens);

    if (_b != noone)
    {
        var _bd = point_distance(
            clamp(x, _b.bbox_left, _b.bbox_right),
            clamp(y, _b.bbox_top, _b.bbox_bottom),
            x,
            y
        );

        if (_bd <= interact_range)
        {
            bag_add("bilhete_chao");
            instance_destroy(_b);
        }
    }
}
if (instance_exists(Object37) && Object37.fase > 0)
{
    hspd = 0;
    vspd = 0;
    image_speed = 0;

    if (audio_is_playing(snd_walking)) audio_stop_sound(snd_walking);

    exit;
}
if (_e && !attacking && pull_phase == 0 && global.item_step < 4 && global.leu_bilhete)
{
    var _objeto_da_vez = global.item_order[global.item_step];
    var _peca_mais_proxima = noone;
    var _menor_distancia = interact_range;

    for (var _numero_da_peca = 0; _numero_da_peca < array_length(global.item_order); _numero_da_peca++)
    {
        var _peca = instance_nearest(x, y, global.item_order[_numero_da_peca]);
        if (_peca == noone) continue;

        var _distancia_ate_peca = point_distance(
            clamp(x, _peca.bbox_left, _peca.bbox_right),
            clamp(y, _peca.bbox_top, _peca.bbox_bottom),
            x,
            y
        );

        if (_distancia_ate_peca <= _menor_distancia)
        {
            _menor_distancia = _distancia_ate_peca;
            _peca_mais_proxima = _peca;
        }
    }

    if (_peca_mais_proxima != noone)
    {
        if (_peca_mais_proxima.object_index == _objeto_da_vez) start_pickup(_peca_mais_proxima);
        else x_shake = 15;
    }
}
if (_e && !attacking && pull_phase == 0 && global.item_step >= 4 && !global.pc_construido)
{
    var _local = instance_nearest(x, y, obj_local_construcao);

    if (_local != noone && point_distance(x, y, _local.x, _local.y) <= interact_range)
    {
        start_construir();
    }
}
if (instance_exists(obj_password_13))
{
    hspd = 0;
    vspd = 0;
    image_speed = 0;

    if (audio_is_playing(snd_walking))
    {
        audio_stop_sound(snd_walking);
    }

    exit;
}

if (_e && !global.object25_unlocked && !attacking)
{
    var _door = instance_nearest(x, y, Object25);

    if (_door != noone)
    {
        if (point_distance(x, y, _door.x, _door.y) <= interact_range)
        {
            var _panel = instance_create_depth(0, 0, -10000, obj_password_13);

            _panel.door = _door;

            hspd = 0;
            vspd = 0;
            image_speed = 0;

            if (audio_is_playing(snd_walking))
            {
                audio_stop_sound(snd_walking);
            }

            exit;
        }
    }
}
else
{
    image_speed = 1;
}


if (hp <= 0 && !exploding)
{
    state = state_explode;
}


state();


if (hp <= 0) 
{
    hp = 0;
    can_attack = false;
    
    if (canPlayDeathSound) 
    {
        audio_play_sound(snd_explosion, 1, false);
        canPlayDeathSound = false;
    }
}



if (current_weapon == Weapon.ASPIRADOR && !tem_aspirador()) {
    current_weapon = Weapon.SWORD;
}

if (!attacking && !exploding) {
    if (keyboard_check_pressed(ord("1")) && tem_aspirador()) {
        current_weapon = Weapon.ASPIRADOR;
    }
    if (keyboard_check_pressed(ord("2"))) {
        current_weapon = Weapon.SWORD;
    }
}

var _bn = array_length(global.bag);

if (_bn > bag_last_n)
{
    bag_sel = _bn - 1;
    bag_off = 1;
}
bag_last_n = _bn;
bag_sel = clamp(bag_sel, 0, max(0, _bn - 1));

if (!attacking && !exploding && _bn > 1)
{
    var _bdir = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);

    if (_bdir != 0)
    {
        bag_sel = (bag_sel + _bdir + _bn) mod _bn;
        bag_off = _bdir;
    }
}

bag_off = lerp(bag_off, 0, 0.25);
if (abs(bag_off) < 0.01) bag_off = 0;

hp_anim = lerp(hp_anim, hp, 0.1);
var mx = mouse_x;
var my = mouse_y;

if (can_attack && !exploding && !attacking && mouse_check_button_pressed(mb_left)) {
    can_attack = false;
    alarm[0] = 60;
    start_attack();
}

if (keyboard_check(ord("R"))) room_restart();

var _pode_mover = (!attacking && !exploding);
var _input_x = _pode_mover ? keyboard_check(ord("D")) - keyboard_check(ord("A")) : 0;
var _input_y = _pode_mover ? keyboard_check(ord("S")) - keyboard_check(ord("W")) : 0;

if (_input_x != 0 || _input_y != 0) {
    var _direcao = point_direction(0, 0, _input_x, _input_y);
    hspd = lengthdir_x(spd, _direcao);
    vspd = lengthdir_y(spd, _direcao);
} else {
    hspd = 0;
    vspd = 0;
}

hspd += kb_x;
vspd += kb_y;

kb_x = lerp(kb_x, 0, 0.2);
kb_y = lerp(kb_y, 0, 0.2);
if (abs(kb_x) < 0.1) kb_x = 0;
if (abs(kb_y) < 0.1) kb_y = 0;

if (pull_phase == 0 && colidindo(x, y)) {
    var _livre = false;
    for (var r = 1; r <= 64 && !_livre; r++) {
        for (var a = 0; a < 360; a += 45) {
            var _nx = x + lengthdir_x(r, a);
            var _ny = y + lengthdir_y(r, a);
            if (!colidindo(_nx, _ny)) {
                x = _nx;
                y = _ny;
                _livre = true;
                break;
            }
        }
    }
}

if (hspd != 0 && colidindo(x + hspd, y)) {
    if (_input_y == 0) {
        for (var i = 1; i <= slide_max; i++) {
            if (!colidindo(x + hspd, y - i) && !colidindo(x, y - 1)) { y -= 1; break; }
            if (!colidindo(x + hspd, y + i) && !colidindo(x, y + 1)) { y += 1; break; }
        }
    }

    var _sx = sign(hspd);
    repeat (ceil(abs(hspd))) {
        if (colidindo(x + _sx, y)) break;
        x += _sx;
    }
    hspd = 0;
}
x += hspd;

if (vspd != 0 && colidindo(x, y + vspd)) {
    if (_input_x == 0) {
        for (var i = 1; i <= slide_max; i++) {
            if (!colidindo(x - i, y + vspd) && !colidindo(x - 1, y)) { x -= 1; break; }
            if (!colidindo(x + i, y + vspd) && !colidindo(x + 1, y)) { x += 1; break; }
        }
    }

    var _sy = sign(vspd);
    repeat (ceil(abs(vspd))) {
        if (colidindo(x, y + _sy)) break;
        y += _sy;
    }
    vspd = 0;
}
y += vspd;

if (flash_timer > 0) {
    flash_timer--;

    if ((flash_timer div 3) mod 2 == 0)
        image_blend = c_red;
    else
        image_blend = c_white;
} else {
    image_blend = c_white;
}

if (invencible) {
    inv_timer--;

    if (inv_timer <= 0) {
        invencible = false;
    }
}

if (_input_x != 0 || _input_y != 0) {
    if (!audio_is_playing(snd_walking)) {
        audio_play_sound(snd_walking, 1, true);
    }
} else {
    if (audio_is_playing(snd_walking)) {
        audio_stop_sound(snd_walking);
    }
}

if (_input_x != 0 || _input_y != 0) {
    dust_timer--;

    if (dust_timer <= 0) {
        var p = instance_create_layer(x, y + 20, "Effects", obj_particles_wlk);

        p.x += irandom_range(-4, 4);
        p.y += irandom_range(-4, 4);

        dust_timer = 7;
    }
} else {
    dust_timer = 0;
}
```

### obj_porta_abrindo - Create_0

**Arquivo:** `objects\obj_porta_abrindo\Create_0.gml`

```gml
sprite_index = spr_porta_abrindo;
image_index = 0;
image_speed = 1;
```

### obj_porta_abrindo - Step_0

**Arquivo:** `objects\obj_porta_abrindo\Step_0.gml`

```gml
if (image_index >= image_number - 1)
{
    image_index = image_number - 1;
    image_speed = 0;
}
```

### obj_porta_dungeon1 - Create_0

**Arquivo:** `objects\obj_porta_dungeon1\Create_0.gml`

```gml
if (!variable_global_exists("porta_dungeon1_aberta")) global.porta_dungeon1_aberta = false;

aberta = false;
image_speed = 0;
image_index = 0;

if (global.porta_dungeon1_aberta)
{
    aberta = true;
    sprite_index = porta_abrindo;
    image_index = image_number - 1;
    mask_index = spr_mask_vazia;
}
```

### obj_porta_dungeon1 - Step_0

**Arquivo:** `objects\obj_porta_dungeon1\Step_0.gml`

```gml
if (!instance_exists(obj_player)) exit;

if (aberta == false)
{
    if (keyboard_check_pressed(ord("E")) && !luta_boss())
    {
        var _livre = true;
        if (obj_player.attacking == true) _livre = false;
        if (instance_exists(obj_dialogue) && obj_dialogue.active) _livre = false;

        if (_livre == true && bag_selected("chave1"))
        {
            var _d = point_distance(
                clamp(obj_player.x, bbox_left, bbox_right),
                clamp(obj_player.y, bbox_top, bbox_bottom),
                obj_player.x,
                obj_player.y
            );

            if (_d <= obj_player.interact_range)
			{
			    bag_remove("chave1");
			    global.porta_dungeon1_aberta = true;

			    aberta = true;
			    sprite_index = porta_abrindo;
			    image_index = 0;
			    image_speed = 1;
			}
        }
    }
}

if (aberta == true && image_speed != 0)
{
    if (image_index >= image_number - 1)
    {
        image_index = image_number - 1;
        image_speed = 0;
        mask_index = spr_mask_vazia;
    }
}
```

### obj_porta_dungeon_turing - Create_0

**Arquivo:** `objects\obj_porta_dungeon_turing\Create_0.gml`

```gml
if (!variable_global_exists("porta_turing_aberta")) global.porta_turing_aberta = false;


if (global.porta_turing_aberta)
{
    visible = false;
    mask_index = spr_mask_vazia;
}
```

### obj_porta_dungeon_turing - Step_0

**Arquivo:** `objects\obj_porta_dungeon_turing\Step_0.gml`

```gml
if (!instance_exists(obj_player) || global.porta_turing_aberta) exit;

var _capsula_feita = variable_global_exists("leon_livre") && global.leon_livre;
var _cooler_feito = variable_global_exists("pc_consertado") && global.pc_consertado;

if (!_capsula_feita || !_cooler_feito) exit;

if (instance_exists(obj_dialogue) && obj_dialogue.active) exit;

var _d = point_distance(
    clamp(obj_player.x, bbox_left, bbox_right),
    clamp(obj_player.y, bbox_top, bbox_bottom),
    obj_player.x,
    obj_player.y
);

if (_d <= 64)
{
    global.porta_turing_aberta = true;
    visible = false;
    mask_index = spr_mask_vazia;

   
    if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);
    obj_dialogue.start_lines(get_dialogue("turing_pedindo_ajuda"), "alan");

}
```

### obj_soldado - Alarm_0

**Arquivo:** `objects\obj_soldado\Alarm_0.gml`

```gml
can_attack = true;
```

### obj_soldado - Create_0

**Arquivo:** `objects\obj_soldado\Create_0.gml`

```gml
event_inherited();

spd = 0.8;
can_attack = true;
hp = 9;

hit_timer = 0;
kb_x = 0;
kb_y = 0;

image_xscale = 1;
sprite_index = spr_soldado_walk_down;
```

### obj_soldado - Step_0

**Arquivo:** `objects\obj_soldado\Step_0.gml`

```gml
event_inherited();
if (global.hitstop > 0) exit;

var _tx = 0;
var _ty = 0;

if (instance_exists(obj_player))
{
    var _dist = point_distance(x, y, obj_player.x, obj_player.y);
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);

    var _detect_range = 900;
    var _attack_range = 12;

    if (_dist < _detect_range && _dist > _attack_range && stun <= 0 && wind <= 0)
    {
        _tx = lengthdir_x(spd, _dir);
        _ty = lengthdir_y(spd, _dir);

        var _dx = obj_player.x - x;
        var _dy = obj_player.y - y;

       
        if (abs(_dx) > abs(_dy))
        {
            sprite_index = spr_soldado_walk_side;
            image_xscale = (_dx > 0) ? 1 : -1;
        }
        else if (_dy > 0)
        {
            sprite_index = spr_soldado_walk_down;
        }
        else
        {
            sprite_index = spr_soldado_walk_up;
        }
    }
    else if (_dist <= _attack_range)
    {
        
        sprite_index = spr_soldado_bater_side;
        var _dx = obj_player.x - x;
        if (_dx != 0) image_xscale = sign(_dx);
    }

    update_attack(_attack_range);
}

mv_x = lerp(mv_x, _tx, 0.15);
mv_y = lerp(mv_y, _ty, 0.15);
x += mv_x;
y += mv_y;

if (hit_timer > 0)
{
    hit_timer--;
}

kb_x = lerp(kb_x, 0, 0.2);
kb_y = lerp(kb_y, 0, 0.2);

if (abs(kb_x) < 0.1) kb_x = 0;
if (abs(kb_y) < 0.1) kb_y = 0;

x += kb_x;
y += kb_y;
```

### obj_soldier_spawner - Create_0

**Arquivo:** `objects\obj_soldier_spawner\Create_0.gml`

```gml
tempo_sobrevivencia = 60; 
tempo_restante = tempo_sobrevivencia * game_get_speed(gamespeed_fps);

taxa_spawn = game_get_speed(gamespeed_fps) * 4
timer_spawn = taxa_spawn;


spawn_x_min = 55;
spawn_x_max = 680;
spawn_y_min = 1145;
spawn_y_max = 1460;


iniciado = false;
```

### obj_soldier_spawner - Draw_64

**Arquivo:** `objects\obj_soldier_spawner\Draw_64.gml`

```gml
if (!iniciado)
{
    
    iniciado = true;
    exit; 
}


var _segundos_totais = ceil(tempo_restante / game_get_speed(gamespeed_fps));
var _minutos = _segundos_totais div 60;
var _segundos = _segundos_totais mod 60;

var _tempo_texto = string_format(_minutos, 2, 0) + ":" + (_segundos < 10 ? "0" : "") + string_format(_segundos, 2, 0);

draw_set_font(fnt_gui_big);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var _gw = display_get_gui_width();
var _centro_x = _gw / 2;
var _pos_y = 20;

draw_set_color(c_black);
draw_text(_centro_x + 2, _pos_y + 2, "Resista: " + _tempo_texto);

draw_set_color(c_yellow);
draw_text(_centro_x, _pos_y, "Resista: " + _tempo_texto);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
```

### obj_soldier_spawner - Step_0

**Arquivo:** `objects\obj_soldier_spawner\Step_0.gml`

```gml

if (!iniciado)
{
    
    if (instance_exists(obj_dialogue))
    {
       
        if (!obj_dialogue.active && obj_dialogue.speaker_id == "alan")
        {
            iniciado = true; 
        }
    }
    exit; 
}


if (global.hitstop > 0 || (instance_exists(obj_dialogue) && obj_dialogue.active)) exit;

if (tempo_restante > 0)
{
    tempo_restante--;
    
    timer_spawn--;
    if (timer_spawn <= 0)
    {
        timer_spawn = taxa_spawn;
        
     
        var _spawn_x = random_range(spawn_x_min, spawn_x_max);
        var _spawn_y = random_range(spawn_y_min, spawn_y_max);
        
   
        instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_soldado);
    }
}
else
{
    global.alan_salvo = true;
    
    with (obj_soldado) {
        instance_destroy();
    }
    
    if (!instance_exists(obj_dialogue)) 
    {
        instance_create_depth(0, 0, -10000, obj_dialogue);
    }
    obj_dialogue.start_lines(get_dialogue("alan_fim"), "alan");
    
    instance_destroy();
}
```

### obj_sword - Alarm_0

**Arquivo:** `objects\obj_sword\Alarm_0.gml`

```gml
ja_toco_espada =false
```

### obj_sword - Alarm_1

**Arquivo:** `objects\obj_sword\Alarm_1.gml`

```gml
instance_destroy()
```

### obj_sword - Create_0

**Arquivo:** `objects\obj_sword\Create_0.gml`

```gml
spd = 0.5;
dir = 0;
damage = global.dmg_martelo;
ja_toco_espada = false;
object_set_visible(obj_sword,false)
alarm[1] =2
```

### obj_sword - Step_0

**Arquivo:** `objects\obj_sword\Step_0.gml`

```gml

x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);

image_angle = dir;



var lista = ds_list_create();

instance_place_list(x, y, obj_enemy_parent, lista, false);



for (var i = 0; i < ds_list_size(lista); i++)
{
    var inimigo = lista[| i];


    if (instance_exists(inimigo) && inimigo.hit_timer <= 0)
    {

        var enemy_x = inimigo.x;
        var enemy_y = inimigo.y;

       
        inimigo.take_damage(damage, dir);


       
        for (var j = 0; j < 20; j++)
        {
            var b = instance_create_layer(
                enemy_x,
                enemy_y,
                "Instances",
                obj_blood
            );

            b.dir = dir + random_range(-90, 90);
        }


      
        with (obj_camera)
        {
            shake = 0.3;
            shake_time = 2;
            shake_fade = 1;
        }


        
        if (!ja_toco_espada)
        {
            audio_play_sound(snd_hit_player, 1, false);

            ja_toco_espada = true;
			
            alarm[0] = 30;
        }
    }
}


ds_list_destroy(lista);
```

### obj_tvzinha - Alarm_0

**Arquivo:** `objects\obj_tvzinha\Alarm_0.gml`

```gml
can_attack = true;
```

### obj_tvzinha - Create_0

**Arquivo:** `objects\obj_tvzinha\Create_0.gml`

```gml
event_inherited();

spd = 0.5;
can_attack = true;
hp = 4;

hit_timer = 0;

kb_x = 0;
kb_y = 0;

```

### obj_tvzinha - Step_0

**Arquivo:** `objects\obj_tvzinha\Step_0.gml`

```gml
event_inherited();
if (global.hitstop > 0) exit;

var _tx = 0;
var _ty = 0;

if (instance_exists(obj_player))
{
    var _dist = point_distance(x, y, obj_player.x, obj_player.y);
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);

    var _detect_range = 150;
    var _attack_range = 15;

    if (_dist < _detect_range && _dist > _attack_range && stun <= 0 && wind <= 0)
    {
        _tx = lengthdir_x(spd, _dir);
        _ty = lengthdir_y(spd, _dir);

        if (obj_player.y < y)
        {
            sprite_index = spr_tv_walk_back;
        }
        else
        {
            sprite_index = spr_tv_walk;
        }
    }

    update_attack(_attack_range);
}

mv_x = lerp(mv_x, _tx, 0.15);
mv_y = lerp(mv_y, _ty, 0.15);
x += mv_x;
y += mv_y;

if (hit_timer > 0)
{
    hit_timer--;
}

kb_x = lerp(kb_x, 0, 0.2);
kb_y = lerp(kb_y, 0, 0.2);

if (abs(kb_x) < 0.1) kb_x = 0;
if (abs(kb_y) < 0.1) kb_y = 0;

x += kb_x;
y += kb_y;
```

### Object14 - Create_0

**Arquivo:** `objects\Object14\Create_0.gml`

```gml
image_index = irandom(image_number - 1);

image_speed = random_range(0.8, 1.2);
```

### Object14 - Step_0

**Arquivo:** `objects\Object14\Step_0.gml`

```gml
if(global.podeglitch == false){
	visible = false
	mask_index = -1
	sprite_index = -1;
}
else{
	visible = true
	mask_index = glitch1
}

```

### Object25 - Create_0

**Arquivo:** `objects\Object25\Create_0.gml`

```gml
unlocked = false;

if (global.object25_unlocked)
{
    instance_create_depth(x, y, depth, obj_porta_abrindo);
    instance_destroy();
}
```

### Object25 - Step_0

**Arquivo:** `objects\Object25\Step_0.gml`

```gml

```

### Object37 - Create_0

**Arquivo:** `objects\Object37\Create_0.gml`

```gml
fase = 0;
vel_puxao = 0.5;
travada = 0;
proxima_travada = 30;
tempo_sacudida = 0;
```

### Object37 - Draw_64

**Arquivo:** `objects\Object37\Draw_64.gml`

```gml
if (travada > 0)
{
    var _largura = display_get_gui_width();
    var _altura = display_get_gui_height();

    draw_set_alpha(0.5);

    repeat (6)
    {
        draw_set_color(choose(c_lime, c_aqua, c_fuchsia, c_white));
        var _faixa_y = random(_altura);
        draw_rectangle(0, _faixa_y, _largura, _faixa_y + irandom_range(4, 30), false);
    }

    draw_set_alpha(1);
    draw_set_color(c_white);
}
```

### Object37 - Step_0

**Arquivo:** `objects\Object37\Step_0.gml`

```gml
if (!instance_exists(obj_player)) exit;
if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);

var _centro_x = (bbox_left + bbox_right) / 2;
var _centro_y = (bbox_top + bbox_bottom) / 2;

switch (fase)
{
    case 0:
        var _tem_todas = bag_has("tecla_1") && bag_has("tecla_2") && bag_has("tecla_3") && bag_has("tecla_4") && bag_has("tecla_5");

        var _distancia_ao_computador = point_distance(
            clamp(obj_player.x, bbox_left, bbox_right),
            clamp(obj_player.y, bbox_top, bbox_bottom),
            obj_player.x,
            obj_player.y
        );

        if (_tem_todas && !obj_dialogue.active && _distancia_ao_computador <= 80)
        {
            sprite_index = spr_pc_falando;
            image_index = 0;
            image_speed = 1;

            with (obj_camera) zoom_alvo = 1.5;

            obj_dialogue.start_lines(get_dialogue("computador_final"), "");
            fase = 1;
        }
    break;

    case 1:
        if (!obj_dialogue.active) fase = 2;
    break;

    case 2:
        if (travada > 0)
        {
            travada--;
        }
        else
        {
            tempo_sacudida--;
            if (tempo_sacudida <= 0)
            {
                tempo_sacudida = 6;

                with (obj_camera)
                {
                    shake = 1.5;
                    shake_time = 8;
                    shake_fade = 1;
                }
            }

            proxima_travada--;
            if (proxima_travada <= 0)
            {
                travada = irandom_range(4, 10);
                proxima_travada = irandom_range(20, 50);

                with (obj_camera)
                {
                    shake = 5;
                    shake_time = 8;
                    shake_fade = 0.5;
                }
            }
        }

        vel_puxao += 0.015;

        var _distancia = point_distance(obj_player.x, obj_player.y, _centro_x, _centro_y);

        if (_distancia > vel_puxao)
        {
            if (travada <= 0)
            {
                var _direcao = point_direction(obj_player.x, obj_player.y, _centro_x, _centro_y);
                obj_player.x += lengthdir_x(vel_puxao, _direcao);
                obj_player.y += lengthdir_y(vel_puxao, _direcao);
            }
        }
        else
        {
            obj_player.x = _centro_x;
            obj_player.y = _centro_y;
            room_goto(room_luk);
        }
    break;
}
```

### Placa_mae - Create_0

**Arquivo:** `objects\Placa_mae\Create_0.gml`

```gml
if (!variable_global_exists("item_step")) global.item_step = 0;
if (global.item_step > 3) instance_destroy();
```

### RAm - Create_0

**Arquivo:** `objects\RAm\Create_0.gml`

```gml
if (!variable_global_exists("item_step")) global.item_step = 0;
if (global.item_step > 2) instance_destroy();
```

### ssd - Create_0

**Arquivo:** `objects\ssd\Create_0.gml`

```gml
if (!variable_global_exists("item_step")) global.item_step = 0;
if (global.item_step > 1) instance_destroy();
```
