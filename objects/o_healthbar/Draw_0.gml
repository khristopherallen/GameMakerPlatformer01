/// @description Draw the heath bar
draw_self();

// Get rid of health bar when player dies
if !instance_exists(o_player) exit;

draw_health_ = lerp(draw_health_, o_player.health_, .25);

draw_set_color(c_red);
draw_rectangle(x+4, y+4, x+123*draw_health_/o_player.max_health_, y+11, false);
draw_set_color(c_white);