/// @description Draw the player and the gun
var dir = point_direction(x, y, mouse_x, mouse_y);
var flipped = (mouse_x > x) * 2-1;
var xscale = 1;
if mouse_x < x {
	xscale = -1;
}

/* image_counter_++;
if (image_counter_ > 4*image_speed_){
	image_counter_ = 0;
	image_index_ = 4;
}else if (image_counter_ > 3*image_speed_){
	image_index_ = 3;
}else if (image_counter_ > 2*image_speed_){
	image_index_ = 2;
}else if (image_counter_ > image_speed_){
	image_index_ = 1;
}else{
	image_index_ = 0;
} */

// Draw the player
draw_sprite_ext(s_player, 0, x, y, x_scale_ * flipped, y_scale_, 0, image_blend, image_alpha);

// Draw the gun
draw_sprite_ext(s_gun, 0, x - 4 * flipped, y, 1, flipped, dir, image_blend, image_alpha);