/// @description Fullscreen mode
if window_get_fullscreen() = true {
	window_set_fullscreen(false);
	//camera_set_view_size(view_camera[0], 1280, 720);
} else {
	window_set_fullscreen(true);
	//camera_set_view_size(view_camera[0], 1920, 1080);
}
