// Script assets have changed for v2.3.0 see
//Works similarly to get Difference but instead of absolute difference we're looking for the signs
function setDir(onCell, hoverCell){
	var xdir; var ydir;
	var xdif = onCell[0] - hoverCell[0]
	var ydif = onCell[1] - hoverCell[1]
	switch(sign(xdif)){
		case 1: xdir = "W" 
			break;
		case -1: xdir = "E" 
			break;
		case 0: xdir = "" 
			break;
	}
	switch(sign(ydif)){
		case 1: ydir = "N" 
			break;
		case -1: ydir = "S"
			break;
		case 0 : ydir = ""
			break;
	}
	
	//var dif = xdif + ydif
	show_debug_message(ydir)
	show_debug_message(xdir)
	show_debug_message(ydif)
	show_debug_message(xdif)
}