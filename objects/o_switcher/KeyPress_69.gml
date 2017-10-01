/// @description gravity swap
var upDir = global.components[dir.up];

if (upDir[1] == -1){
	global.components[dir.up] = [0,1];
	global.components[dir.down] = [0,-1];
} else {
	global.components[dir.up] = [0,-1];
	global.components[dir.down] = [0,1];
}