// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getCell(xCoord, yCoord){
	// Set constant globals
	var xOr = global.xOrigin
	var yOr = global.yOrigin
	var w	= global.TILE_WIDTH_HALF
	var h	= global.TILE_HEIGHT_HALF
	
	
	//Adjust for origin
	xCoord = xCoord - xOr
	yCoord = yCoord - yOr
	
	var xCell = floor((xCoord / w + yCoord / h) /2)
	var yCell = floor((yCoord / h - (xCoord / w)) /2) + 1 
	
	return [xCell, yCell, xCoord, yCoord]
}