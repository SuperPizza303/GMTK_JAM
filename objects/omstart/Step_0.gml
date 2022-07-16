dmxg = device_mouse_x_to_gui(0)
dmyg = device_mouse_y_to_gui(0)

/*
if instance_position(dmxg, dmyg, self) and mouse_check_button_pressed(mb_left)
{
	room_goto(Room1)
}
*/

if point_in_rectangle(dmxg, dmyg, x - width / 2, y - height / 2, x + width / 2, y + height / 2)
and mouse_check_button_pressed(mb_left)
{
	room_goto(Room_Game);	
}