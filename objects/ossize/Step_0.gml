dmxg = device_mouse_x_to_gui(0)
dmyg = device_mouse_y_to_gui(0)

if point_in_rectangle(dmxg, dmyg, x - width / 2, y - height / 2, x + width / 2, y + height / 2)
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
	oSSettings.surface_changed = true;
}