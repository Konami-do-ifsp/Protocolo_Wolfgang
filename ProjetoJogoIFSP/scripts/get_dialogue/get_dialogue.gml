function get_dialogue(_id)
{
    switch (_id)
    {
        case "intro":
            return [
                "Fala Wolf como tu ta?", 
                "Pega a chave la po"
               
            ];

        case "waiting_for_key":
            return [
                "Pega la a chave po"
            ];
		case "key_delivered":
			return[
				"vlw meu parca" 
			];
		case "done":
			return[
				"tenho mais nada para tu"
			];
    }

    return [];
}