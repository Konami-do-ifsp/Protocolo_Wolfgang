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