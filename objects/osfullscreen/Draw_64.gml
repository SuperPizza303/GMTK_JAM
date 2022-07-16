draw_sprite_stretched(sButtonSlice, 0, x - width / 2, y - height / 2, width, height)

scrOutlinedBox()

var fullscreen = window_get_fullscreen()
if fullscreen == 0
{
	fullscreen = "Выкл."	
}
else
{
	fullscreen = "Вкл."
}
scrOutlinedText(x, y, c_white, c_black, "Полноэкранный режим: " + fullscreen, depth, fontArialRusSmall, fa_center, fa_middle)