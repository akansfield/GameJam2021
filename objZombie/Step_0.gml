/// @description Insert description here
// You can write your code in this editor
function Main(){
		
	if global.turnState = turn.enemy{	// Check for enemy turn
		enemyCell = getCell(x,y)			// Get enemy cell
		talkTo(objPlayer)
		enemyMove()				// Move enemy *instance* towards the player
		checkInRange()			// Check if the enemy is in attacking range
		enemyAttack()			// Go through with attack
		
		global.turnState = turn.player	// Set to player turn TODO: Will probably cause problems with multiple instances

	}
}
function talkTo(obj){
	with(obj){
		other.playerLocation = onCell // get players cell	
		show_debug_message(other.playerLocation)
		
		
	}
}
function enemyMove(){
	//Check col cell
	if playerLocation[1] > enemyCell[1] {
		enemyCol = enemyCell[1] + movement
		show_debug_message(enemyCol)
		newLocation = getCoord(enemyCell[0], enemyCol)
		with(TileHandler){
			show_debug_message(hoverCell)	
		}
	//	movement -= movement // Movement will later be more exact, allowing for more exact movement
							//movement for the enemy will be reset after the turn
	}
	//check row
	//if movement != 0{
	//	if playerLocation[0] > enemyCell[0]{
	//		enemyRow = enemyCell[0] + movement
			
	//		newLocation = getCoord(enemyRow, enemyCell[1])
	//		movement -= movement
	//	}
	//}
	
	x = newLocation[0] + global.TILE_WIDTH_HALF
	y = newLocation[1]
	show_debug_message(enemyCell)
	//movement = MOVEMENT
	global.turnState = turn.player

	
}
function checkInRange(){
	
}

function enemyAttack(){
	
}

Main()
