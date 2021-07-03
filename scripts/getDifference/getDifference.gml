
// Gets the absolute value after subtracting player grid position from the mouse grid position
function getDifference(playerCell, hoverCell){
	var xdif = abs(playerCell[0] - hoverCell[0])  // absolute difference between the cell the player is on
	var ydif = abs(playerCell[1] - hoverCell[1])  // and the cell being hovered over
	
	var dif = xdif + ydif
	
	return [dif, xdif, ydif]
}