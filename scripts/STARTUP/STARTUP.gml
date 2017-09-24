gml_pragma("global","STARTUP()");

enum dir {
	right,
	up,
	left,
	down
}

global.components = [];
global.components[dir.right] = [1,0];
global.components[dir.up] = [0,-1];
global.components[dir.left] = [-1,0];
global.components[dir.down] = [0,1];
