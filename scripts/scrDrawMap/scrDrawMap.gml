// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scrDrawMap(){
	//draw_sprite(tileGrass_full, 0, xOr, yOr)
	var xOr = global.xOrigin
	var yOr = global.yOrigin
	var w	= global.TILE_WIDTH_HALF
	var h	= global.TILE_HEIGHT_HALF
	
	var mapArray = scrMap()
	var newX = 0
	var newY = 0
	//var tile = 0
	
	// Somehow places tiles correcty without me needing to specify row and column.
	//	(I'll take it?)
	
	for (i = 0 ; i < array_length(mapArray); i += 1){
		//newX			 cell x            cell y
		newX = xOr + (mapArray[i][0] - mapArray[i][1]) * w
		//newY			cell x             cell y
		newY = yOr + (mapArray[i][0] + mapArray[i][1]) * h
		
		//print(i, " ", xpos, " ", ypos, " ", mapArray[i][0])
		//skips render if third value is -1, indicating empty tile
		
		if mapArray[i][2] == -1{
			continue
		} //don't draw if third value is -1
		
		draw_sprite(tileGrass_full, 0, newX, newY)
	} // End of for loop

} // End function