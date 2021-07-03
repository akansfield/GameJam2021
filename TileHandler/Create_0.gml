/// @description Insert description here
// You can write your code in this editor
mapArray = scrMap()
var mapMax = getMax(mapArray)
xMax = mapMax[0]
yMax = mapMax[1]


inBounds = false

//xOrigin		= global.xOrigin		// Starting x
//yOrigin		= global.yOrigin		// Starting y

// init y and x coord (Place where tile will be drawn
yCoord	= 0
xCoord	= 0
	
//Player	
pMove = 0
center = [0,0]

playerInit = true
