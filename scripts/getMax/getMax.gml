// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getMax(array){
	
	for (var i = 0 ; i < array_length(array) ; i += 1){
		var xMax = 0
		var yMax = 0
		if (array[i][0] > xMax){
			xMax = array[i][0]
		}
		if(array[i][1] > yMax){
			yMax = array[i][1]
		}
	} //end for loop
	return [xMax, yMax]
}