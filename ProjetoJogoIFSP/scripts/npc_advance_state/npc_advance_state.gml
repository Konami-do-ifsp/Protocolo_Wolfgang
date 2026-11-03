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
					if(global._tem_aspirador){
						return "mateus_dps_aspirador";
					}
					return "done_DT";
				case"mateus_dps_aspirador":
					return "mateus_dps_aspirador"
            }
            break;

    return _current_state;
	}
}