/// @description Insert description here
// You can write your code in this editor

global.TILE_WIDTH = 64
global.TILE_HEIGHT = 32
global.TILE_WIDTH_HALF = global.TILE_WIDTH / 2
global.TILE_HEIGHT_HALF = global.TILE_HEIGHT / 2
global.xOrigin = 450			// Starting x
global.yOrigin = 100			// Starting y

//// STATE MACHINE
enum turn {
	player,
	enemy,
	betweenWave
}

global.turnState = turn.player
enum state{
	move,
	attack
}
if room = RoomInit{
	room_goto(Room1)
}
