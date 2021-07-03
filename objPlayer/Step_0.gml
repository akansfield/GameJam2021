
//TODO: apply states, get movement working correctly, set up attack
//////// get movement directions -- done, just not applied


// Get useful info from TileHandler
function Main(){
	if global.turnState = turn.player {	
		talkTo(TileHandler)													// Get relevant info from tilehandler
	
		hoverCell = getCell(tileCoordX + 5, tileCoordY)			
		onCell = getCell(playerX + 5, playerY)
					
		getInput()
		#region 
		////////////////////////////////// Very experimental
		//targetxCell = onCell[0] + xdif
		//targetyCell = onCell[1] + ydif

		////get y target
		//yMove = getCoord(tileOriginX, tileOriginY, tileWHalf, tileHHalf, onCell[0], targetyCell)
		//// get x target
		//xMove = getCoord(tileOriginX, tileOriginY, tileWHalf, tileHHalf, targetxCell, targetyCell)
		////STATE move
		////set playerX and playerY
		//targetX = yMove[0]
		//targetY = yMove[1]
		//// move to yMove
		//if yMoving == true{
		//	if (x == targetX) and (y == targetY){
		//		moveSpd = 0
	
		//	} else {
		//		moveSpd = 2
		//		//get difference between target and location. (Stops jitter)
		//		moveDifX = abs(targetX - x)
		//		moveDifY = abs(targetY - y)
		//		move_towards_point(targetX, targetY, moveSpd)
		//		//sets x and y officially
		//		if (moveDifX <= moveSpd) and (moveDifY <= moveSpd){
		//			x = targetX	
		//			y = targetY
		//			playerX = targetX
		//			playerY = targetY
		//			yMoving = false
		//			xMoving = true
		//		}
		//	}
	
	
		//} // while y moving

		//playerX = xMove[0]
		//playerY = xMove[1]
		//while xMoving == true{
		//	if (x == playerX) and (y == playerY){
		//		moveSpd = 0
	
		//	} else {
		//		moveSpd = 2
		//		//get difference between target and location. (Stops jitter)
		//		moveDifX = abs(playerX - x)
		//		moveDifY = abs(playerY - y)
		//		move_towards_point(playerX, playerY, moveSpd)
		//		//sets x and y officially
		//		if (moveDifX <= moveSpd) and (moveDifY <= moveSpd){
		//			x = playerX	
		//			y = playerY
		//			xMoving = false
		//		}
		//	}
	
	
		//} // while y moving
		//////////////////////////////////
		#endregion
		calculateIfInRange()
		playerMovement()
	}
} // End Main

// Get info from TileHandler
function talkTo(obj){
	with(obj){
		other.tileCoordX = xCoord
		other.tileCoordY = yCoord
		other.inBounds = inBounds
	}  // with tile handler
	
}
// Gets input and branches the code into functions for the input
function getInput(){
	if keyboard_check_pressed(vk_space){
		spaceInput()						// Go to spacebar function.
	} else if mouse_check_button_pressed(mb_left) {
		leftMouse()							// Go to left mouse function.
	} else if mouse_check_button_pressed(mb_right) {
		rightMouse()						// Go to right mouse function.
	}
}

// Space bar
function spaceInput(){
	
		//show_debug_message(string(onCell))
		//show_debug_message(hoverCell)
		//show_debug_message(dif)
		switchState()
}

// Left Mouse
function leftMouse(){
	setDir(onCell, hoverCell)
	if inBounds and inRange{
		setPlayerXY()
		//moveCol()
		//moveRow()
		movement = movement - dif
	}// checks that attempted move position is a legal action
	if position_meeting(mouse_x,mouse_y, objEndTurn){
		switchState()
		resetTurn()
		show_debug_message("Constant?")
	}
	
}
 function setPlayerXY(){
		playerX = tileCoordX
		playerY = tileCoordY
		moving = true
 }


// Right mouse
function rightMouse(){
	
}

// Go through movement
function playerMovement(){
	if moving{
		if (x == playerX) and (y == playerY){			// if player is already on x and y, stop movement
			moveSpd = 0
			moving = false
			return
		} else {
			moveSpd = 2
		
			moveDifX = abs(playerX - x)					//get difference between target and location.
			moveDifY = abs(playerY - y)					// (stops jitter)
	
			if moveDifX <= moveSpd {					//sets x officially
				x = playerX	
				//moving = false
			}
		
			if moveDifY <= moveSpd{						//sets y officially
				y = playerY	
			////// END TURN, will be in a different spot later
			
				
			}
		}
		move_towards_point(playerX, playerY, moveSpd)	// Moves to point every frame
		show_debug_message(moving)
	}
}

// Determines if a tile is in the players range
function calculateIfInRange(){
	// get difference between player position and hover
	arrayDif = getDifference(onCell, hoverCell)
	dif = arrayDif[0]
	xdif = arrayDif[1]
	ydif = arrayDif[2]

	
	if dif <= movement{
		inRange = true
	} else {
		inRange = false
	} //if dif <= movement
}
// Switches turn from player to enemy, and enemy to player
function switchState(){
	
	switch global.turnState{
		case turn.player:
			global.turnState = turn.enemy
			break;
		case turn.enemy:
			global.turnState = turn.player
			break;
	}
}

// Reset state info
function resetTurn(){
	movement = MOVEMENT	
}
// Call main
Main()