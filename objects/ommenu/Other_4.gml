new_size = global.CameraWidth * CameraScale
if new_size != old_size
{
	var windowWidth = global.CameraWidth * CameraScale
	var windowHeight = global.CameraHeight * CameraScale

	var bwidth = windowWidth * 0.25
	var bheight = windowHeight * 0.1
	for (var i = 0; i < array_length(all_buttons); ++i) 
	{
		all_buttons[i].x = windowWidth / 2 
		all_buttons[i].y = windowHeight * 0.5 + bheight * i
		all_buttons[i].width = bwidth
		all_buttons[i].height = bheight
	}
}