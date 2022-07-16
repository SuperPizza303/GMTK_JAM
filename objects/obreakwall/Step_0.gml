if ((collision_point(x + XDIFF, y, oDice, 1, 1) or
	collision_point(x - XDIFF, y, oDice, 1, 1) or
	collision_point(x, y + YDIFF, oDice, 1, 1) or
	collision_point(x, y - YDIFF, oDice, 1, 1)) and 
	oDice.up == num) 	
{
	instance_destroy()
}