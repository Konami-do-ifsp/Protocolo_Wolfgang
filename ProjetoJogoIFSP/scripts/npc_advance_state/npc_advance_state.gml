function npc_advance_state(_npc_id, _current_state)
{
    switch (_npc_id)
    {
        case "joao":

            switch (_current_state)
            {
                case "intro":
                    return "waiting_for_key";

                case "waiting_for_key":
                    // só avança pra "key_delivered" se o jogador tiver o item
                    if (global.has_key)
                    {
                        global.has_key = false; // "entrega" a chave
                        return "key_delivered";
                    }
                    return "waiting_for_key"; // continua esperando

                case "key_delivered":
                    return "done";

                case "done":
                    return "done"; // ja acabo
            }
            break;
    }

    return _current_state;
}