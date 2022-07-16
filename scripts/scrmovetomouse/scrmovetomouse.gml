function scrMoveToMouse()
{
	// Перемещение игрока к мыши (и камеры к игроку как следствие)
	if mouse_check_button(mb_right)
	{
		x = lerp(x, mouse_x, 0.05)
		y = lerp(y, mouse_y, 0.05)
		return true
	}
	else
	{
		return false	
	}
}