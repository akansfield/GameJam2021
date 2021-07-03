/// @description Insert description here
// You can write your code in this editor
arrayWave1 = [[3,0],[5,0],[7,0]]

for (i = 0; i < array_length(arrayWave1); i += 1){
	enemyCoord = getCoord(
						  arrayWave1[i][0], arrayWave1[i][1])
	enX = enemyCoord[0]
	enY = enemyCoord[1] - global.TILE_HEIGHT_HALF
	
	instance_create_layer(enX,enY,"InstancesTest", objZombie)		  
}

