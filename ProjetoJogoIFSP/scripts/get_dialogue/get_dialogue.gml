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