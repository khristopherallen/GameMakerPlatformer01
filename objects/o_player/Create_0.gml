/// @description Create the variables
friction_ = .2;
speed_ = [0, 0];
max_speed_ = 4;
gravity_ = 1;
jump_height_ = 15;
onGround_ = false;
acceleration_ = .5;
gameType_ = "platform or top_down";
health_ = 10;
max_health_ = 10;

// Map the keys
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(vk_up, vk_space);
keyboard_set_map(ord("W"), vk_space);

// Bullet cooldown
bullet_cooldown_ = room_speed/6
alarm[0] = bullet_cooldown_;

//Scale variables
x_scale_ = image_xscale;
y_scale_ = image_yscale;

// Hide the solids layer
var solid_layer = layer_get_id("Solids");
layer_set_visible(solid_layer, debug_mode);