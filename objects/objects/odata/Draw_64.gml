/// Menu
if state = "menu"
{
	// Setting
	draw_sprite_stretched(sButtonSlice, 0, xset - mwidth / 2, yset - mheight / 2, mwidth, mheight)
	scrOutlinedBox(xset, yset, mwidth, mheight)
	scrOutlinedText(xset, yset, c_white, c_black, "Настройки", depth, fontArialRusSmall, fa_center, fa_middle)

	// Exit

	draw_sprite_stretched(sButtonSlice, 0, xex - mwidth / 2, yex - mheight / 2, mwidth, mheight)
	scrOutlinedBox(xex, yex, mwidth, mheight)
	scrOutlinedText(xex, yex, c_white, c_black, "Выход", depth, fontArialRusSmall, fa_center, fa_middle)

	// Start
	draw_sprite_stretched(sButtonSlice, 0, xst - mwidth / 2, yst - mheight / 2, mwidth, mheight)
	scrOutlinedBox(xst, yst, mwidth, mheight)
	scrOutlinedText(xst, yst, c_white, c_black, "Начать игру", depth, fontArialRusSmall, fa_center, fa_middle)
}
/// Settings
else if state = "settings"
{
	// Back
	draw_sprite_stretched(sButtonSlice, 0, xback - swidth / 2, yback - sheight / 2, swidth, sheight)
	scrOutlinedBox(xback, yback, swidth, sheight)
	scrOutlinedText(xback, yback, c_white, c_black, "Вернуться", depth, fontArialRusSmall, fa_center, fa_middle)
	
	// Size
	draw_sprite_stretched(sButtonSlice, 0, xsize - swidth / 2, ysize - sheight / 2, swidth, sheight)
	scrOutlinedBox(xsize, ysize, swidth, sheight)
	scrOutlinedText(xsize, ysize, c_white, c_black, "Разрешение экрана: " + string(global.CameraSizes[global.CameraNum][0] * CameraScale) + "x" + string(global.CameraSizes[global.CameraNum][1] * CameraScale), depth, fontArialRusSmall, fa_center, fa_middle)
	
	// Full Screen
	draw_sprite_stretched(sButtonSlice, 0, xfs - swidth / 2, yfs - sheight / 2, swidth, sheight)
	scrOutlinedBox(xfs, yfs, swidth, sheight)
	var fullscreen = window_get_fullscreen()
	if fullscreen == 0
		fullscreen = "Выкл."	
	else
		fullscreen = "Вкл."
	scrOutlinedText(xfs, yfs, c_white, c_black, "Полноэкранный режим: " + fullscreen, depth, fontArialRusSmall, fa_center, fa_middle)
}