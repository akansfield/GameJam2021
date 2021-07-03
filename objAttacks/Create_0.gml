/// @description Insert description here
// You can write your code in this editor
xx = 100
yy = room_height - sprite_height - 20
global.GUISize = 1
padding = 5
arrayAttacks = [0,0,0]
for(i = 0; i < 3; i++) {
		var a = instance_create_layer(xx, yy, "Instances", objAttack)
		a.image_index = i
		xx = xx + (sprite_width * global.GUISize) + padding
}