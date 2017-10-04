/// @description Player Movement

// Check for death
if health_ <= 0 {
	audio_play_sound(a_death, 6, false);
	instance_destroy();
}

var hInput = keyboard_check(vk_right) - keyboard_check(vk_left);

var downDir = global.components[dir.down];

if (!place_meeting(x, y + downDir[1], o_solid)){
	speed_[v] += gravity_ * downDir[1];
	onGround_ = false;
} else {
	onGround_ = true;
}

// player hit head and needs to go down
if (place_meeting(x, y - downDir[1], o_solid)){
	//speed_[v] = 1;
}

if (keyboard_check(vk_space) && onGround_) {
	speed_[v] = -jump_height_ * downDir[1];
	x_scale_ = image_xscale*.8 * downDir[1];
	y_scale_ = image_xscale*1.4 * downDir[1];
} 

move(speed_, 0);

// Check for landing
if place_meeting(x, y + downDir[1], o_solid) && !place_meeting(x, yprevious + downDir[1], o_solid) {
	x_scale_ = image_xscale*1.2 * downDir[1];
	y_scale_ = image_yscale*.8 * downDir[1];
}

speed_[h] += hInput * acceleration_;
speed_[h] = clamp(speed_[h], -max_speed_, max_speed_);
if (hInput == 0 && onGround_){
	speed_[h] = lerp(speed_[h], 0, friction_);
} 

// Move back to normal scale
x_scale_ = lerp(x_scale_, image_xscale * downDir[1], .2);
y_scale_ = lerp(y_scale_, image_yscale * downDir[1], .2);

// Warp
warp();