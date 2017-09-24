var half_width = sprite_width/2;
if x > room_width + half_width {
	x = -half_width;
	return true;
}

if x < -half_width {
	x = room_width + half_width;
	return true;
}

return false;

//Vertical warp attempt - fail

/*var half_height = sprite_height/2;
if y < room_height + half_height {
	y = -half_height;
	return true;
}

if y > -half_height {
	y = room_height + half_height;
	return true;
}

return false; */