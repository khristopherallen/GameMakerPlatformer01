/// @description Warping

if warp() {
	warp_health_-=1;
}

if warp_health_ < 0 {
	instance_destroy();
}