function scrOutlinedText(xPos, yPos, col, outlinedCol, text, curdepth, font, halign, valign)
{
	depth = -1000
	draw_set_font(font)
	draw_set_halign(halign)
	draw_set_valign(valign)
	draw_set_color(outlinedCol)
	draw_text(xPos+1,yPos,text)
	draw_text(xPos-1,yPos,text)
	draw_text(xPos,yPos+1,text)
	draw_text(xPos,yPos-1,text)
	draw_set_color(col)
	draw_text(xPos,yPos,text)
	depth = curdepth
}
