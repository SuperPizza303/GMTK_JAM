//draw_self();
draw_sprite_stretched(sButtonSlice, 0, x - width / 2, y - height / 2, width, height)

/*
if instance_position(dmxg, dmyg, self)
{
	draw_set_color(c_white)
	draw_set_alpha(0.15)
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)
	draw_set_alpha(1)
}
*/

scrOutlinedBox()

scrOutlinedText(x, y, c_white, c_black, "Настройки", depth, fontArialRusSmall, fa_center, fa_middle)