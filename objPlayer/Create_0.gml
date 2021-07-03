/// @description Insert description here
// You can write your code in this editor

//(semi)Const
MOVEMENT = 3





mapArray = scrMap()
playerX = 0
playerY = 0
turnState = turn.player
turnBegin = true
// localize globals (so I don't have to write global every time)
//tileOriginX = global.xOrigin
//tileOriginY = global.yOrigin
//tileWHalf	= global.TILE_WIDTH_HALF
//tileHHalf	= global.TILE_HEIGHT_HALF

//movement cell vars
moving = false
xMoving = false

//Player Stats
movement = 3
inRange = false


// Set starting coordinates -- Returns x and y in an array
startCoord = getCoord(5, 9)
				
playerX = startCoord[0]				// x coord
playerY = startCoord[1]				// y coord

onCell = getCell(playerX + 5, playerY)	
		//newY			cell x             cell y
		
x = playerX
y = playerY