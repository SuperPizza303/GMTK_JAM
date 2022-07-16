function scrMoveToEdge(pspeed)
{
	var dmxg = device_mouse_x_to_gui(0)
	var dmyg = device_mouse_y_to_gui(0)
	
	if dmxg > (CameraScale * global.CameraWidth) * 0.1
	and dmxg < (CameraScale * global.CameraWidth) * 0.9
	and dmyg > (CameraScale * global.CameraHeight) * 0.1
	and dmyg < (CameraScale * global.CameraHeight) * 0.9
	{
		return false
	}
	
	if dmxg < (CameraScale * global.CameraWidth) * 0.1
	{
		x -= pspeed	
	}
	else if dmxg > (CameraScale * global.CameraWidth) * 0.9
	{
		x += pspeed	
	}

	if dmyg < (CameraScale * global.CameraHeight) * 0.1
	{
		y -= pspeed	
	}
	else if dmyg > (CameraScale * global.CameraHeight) * 0.9
	{
		y += pspeed	
	}
	return true
}