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
    }

    return [];
}