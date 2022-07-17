
dmxg = device_mouse_x_to_gui(0)
dmyg = device_mouse_y_to_gui(0)

//////////////// Menu
if state = "menu"
{
	// Setting
	if point_in_rectangle(dmxg, dmyg, xset - mwidth / 2, yset - mheight / 2, xset + mwidth / 2, yset + mheight / 2)
	and mouse_check_button_pressed(mb_left)
	{ 
		state = "settings"
	}

	// Exit
	if point_in_rectangle(dmxg, dmyg, xex - mwidth / 2, yex - mheight / 2, xex + mwidth / 2, yex + mheight / 2) 
	and mouse_check_button_pressed(mb_left)
	{
		game_end()
	}

	// Start

	if point_in_rectangle(dmxg, dmyg, xst - mwidth / 2, yst - mheight / 2, xst + mwidth / 2, yst + mheight / 2)
	and mouse_check_button_pressed(mb_left)
	{
		room_goto(lvl1);	
	}
}
else if state = "settings"
{

	if point_in_rectangle(dmxg, dmyg, xfs - swidth / 2, yfs - sheight / 2, xfs + swidth / 2, yfs + sheight / 2)
	and mouse_check_button_pressed(mb_left)
	{
		window_set_fullscreen(!window_get_fullscreen())
	}	
	
	
	if point_in_rectangle(dmxg, dmyg, xback - swidth / 2, yback - sheight / 2, xback + swidth / 2, yback + sheight / 2)
	and mouse_check_button_pressed(mb_left)
	{
		state = "menu"
	}
	
	
	if point_in_rectangle(dmxg, dmyg, xsize - swidth / 2, ysize - sheight / 2, xsize + swidth / 2, ysize + sheight / 2)
	and mouse_check_button_pressed(mb_left)
	{
		if global.CameraNum < array_length(global.CameraSizes) - 1
		{
			global.CameraNum += 1
		}
		else
		{ 
			global.CameraNum = 0	
		}
	
		global.CameraWidth = global.CameraSizes[global.CameraNum][0]
		global.CameraHeight = global.CameraSizes[global.CameraNum][1]
		surface_resize(application_surface, global.CameraWidth * CameraScale,global.CameraHeight * CameraScale) // Пересобираем surface
		window_set_size(global.CameraWidth * CameraScale,global.CameraHeight * CameraScale);
		ChangeScreenSize();
	}
}