// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrOutlinedBox()
{
	if point_in_rectangle(dmxg, dmyg, x - width / 2, y - height / 2, x + width / 2, y + height / 2)
	{
		draw_set_color(c_white)
		draw_set_alpha(0.15)
		draw_rectangle(x - width / 2, y - height / 2, x + width / 2, y + height / 2, false)
		draw_set_alpha(1)
	}
}