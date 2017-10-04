/// @description Move toward the player

switch (type_){
	case "chaser":
		image_index = 0;
		break;
	case "walker":
		image_index = 1;
		break;
}

event_user(state_);

// Death
	if health_ <= 0 {
		instance_destroy();
	}
	
// Warp
warp();