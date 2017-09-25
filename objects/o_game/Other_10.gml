/// @description Toggle pause

if !paused_ {
	paused_ = true;
//	How to make a screenshot. This will make a sprite that looks like the screen, and delete the previous pause sprite if one already exists.
//	if sprite_exists(pause_sprite_) sprite_delete(pause_sprite_);
//	pause_sprite_ = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, false, false, 0, 0);
	instance_deactivate_all(true);
} else {
	paused_ = false;
	instance_activate_all();
}
