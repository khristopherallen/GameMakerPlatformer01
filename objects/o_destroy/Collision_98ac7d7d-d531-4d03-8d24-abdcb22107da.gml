/// @description Destroy the bullet
health_--;
if (health_ <= 0){
	instance_destroy();
}
