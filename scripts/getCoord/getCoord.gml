// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getCoord(cellX, cellY){
	// set global vars
	var xOr = global.xOrigin
	var yOr = global.yOrigin
	var w	= global.TILE_WIDTH_HALF
	var h	= global.TILE_HEIGHT_HALF
	
	//var mapArray = scrMap()
	var newX = xOr + (cellX - cellY) * w
		//newY			cell x             cell y
	var newY = yOr + (cellX + cellY) * h
	
	return [newX, newY]
}