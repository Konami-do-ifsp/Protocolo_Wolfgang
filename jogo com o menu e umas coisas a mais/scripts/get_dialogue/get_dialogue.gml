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
    }

    return [];
}