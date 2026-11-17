if (global.hitstop > 0) exit;

if (flash_timer > 0) { flash_timer--; image_blend = ((flash_timer div 3) mod 2 == 0) ? c_red : c_white; }
else image_blend = c_white;

if (stun > 0) stun--;