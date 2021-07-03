// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrDrawMovement(move, center, sprite){
	var xOr = global.xOrigin
	var yOr = global.yOrigin
	var w	= global.TILE_WIDTH_HALF
	var h	= global.TILE_HEIGHT_HALF
	
	var mapArray = scrMap()
	// take away movement on y and x axis from center to draw from the top
	var beginX = center[0] - move
	var beginY = center[1] - move
	
	var endX = beginX + (move* 2)
	var endY = beginY + (move*2)
	for (var i = 0 ; i < array_length(mapArray); i += 1){
		var xdif = abs(center[0] - mapArray[i][0])
		var ydif = abs(center[1] - mapArray[i][1])

		var dif = xdif + ydif

		if dif <= move{
			newX = xOr + (mapArray[i][0] - mapArray[i][1]) * w
			newY = yOr + (mapArray[i][0] + mapArray[i][1]) * h
			
			draw_sprite(sprite, 0, newX, newY)
		}
		
	} // End of for loop
	
	// draw movement * 2
	
}