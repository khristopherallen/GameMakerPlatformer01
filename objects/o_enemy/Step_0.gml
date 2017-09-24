/// @description Move toward the player
event_user(state_);

// Death
	if health_ <= 0 {
		instance_destroy();
	}
	
// Warp
warp();