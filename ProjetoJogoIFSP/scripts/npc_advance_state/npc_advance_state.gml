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