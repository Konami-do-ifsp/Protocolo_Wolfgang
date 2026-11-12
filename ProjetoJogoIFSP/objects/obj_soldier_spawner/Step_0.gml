
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