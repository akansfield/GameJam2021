/// @description Insert description here
// You can write your code in this editor
if global.turnState = turn.enemy{
	drawDuringEnemyTurn()	
}


draw_self()

function drawDuringEnemyTurn(){
	scrDrawMovement(2, center, tileAttackSelect)
}

//Test// Draw line from zombie to player
with(objPlayer){
	draw_line_color(other.x,other.y, x + global.TILE_WIDTH_HALF,y, c_orange,c_red)
}