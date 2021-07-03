/// @description Insert description here
// You can write your code in this editor

function Main(){
	buildBox()
	getHover()
}
//function mouseHover(){
//	if instance_place(window_views_mouse_get_x(),window_views_mouse_get_y(), objAttack){
//		
//}
function buildBox(){
boxWidth =(sprite_width + padding) * numOfBoxes	
boxHeight = sprite_height

return [boxWidth, boxHeight]
}

function getHover(){
	if position_meeting(mouse_x, mouse_y, id){
		y = yy - bounce	
		onButton = id
	} else {
		y = yy
		onButton = noone
	}
	//if (mouse_x > xx) and (mouse_x < endX){
	//	y = yy - bounce
	//	// get specifics
	//	if instance_meeting((endX % mouse_x), mouse_y)
	//} else{
	//	y = yy
	//}
	
}
Main()