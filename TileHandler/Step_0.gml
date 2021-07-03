/// @description Insert description here
// You can write your code in this editor

//player init

//Main function
function Main(){
	
	talkTo(objPlayer)						// Gets player movement and the cell player is on
	getCoordsForDrawing()					// Does the heavy lifting of figuring out where to draw the tiles
	checkInBounds()							//Checks which tiles the movement sprites should be drawn to
	

}

//Checks that player is hovering over a drawn tile
function checkInBounds(){
	if ((xCell <= xMax and xCell >=0) and
		(yCell <= yMax and yCell >= 0)){ 
		inBounds = true
	} else {
		inBounds = false
	}
}

function talkTo(obj){
	// Initializes the player, only gets what cell player is on every frame after.
	if playerInit{
		with(obj){
			other.pMove = movement	// Gets player movement
			other.center = onCell	// Gets cell player is on
		}
	} else {
		with(obj){	other.center = onCell	}
	}
}

// Does the heavy lifting of figuring out where to draw the tiles
function getCoordsForDrawing(){
	hoverCell = getCell(window_views_mouse_get_x(),
					    window_views_mouse_get_y())

	xCell	= hoverCell[0]; yCell	= hoverCell[1]
	xCoord	= hoverCell[2]; yCoord	= hoverCell[3]

	xCoord = global.xOrigin + (xCell - yCell) * global.TILE_WIDTH_HALF
	yCoord = global.yOrigin + (xCell + yCell) * global.TILE_HEIGHT_HALF
}
// Call Main
Main()