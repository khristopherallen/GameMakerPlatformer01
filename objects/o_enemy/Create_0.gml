/// @description Initialize enemy
speed_ = [0, 0]
health_ = 2;
dir_ = 0;
acceleration_ = 0.05;
gravity_ = 1;
attack_distance_ = 100;
max_speed_ = 2;
max_speed_push_ = 5;
type_ = "chaser";

// Bullet cooldown
bullet_cooldown_ = random_range(room_speed, room_speed*2);
alarm[0] = bullet_cooldown_;

// States
MOVEMENT_ = 0;

state_ = MOVEMENT_;
