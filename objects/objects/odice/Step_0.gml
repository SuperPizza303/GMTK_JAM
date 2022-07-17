
/// Хождение

// Проверяю на возвожность хождения (позже аларма не будет в этом коде)
if image_speed == 0 and !place_empty(x, y) 
{
	
	// Все функции, которые начинаются на ctrl_ являются моими. Они сделаны специально, чтобы
	// Можно было быстро настроить управление с клавиатуры и геймпада одновременно
	// Надеюсь, ты поймёшь, что написано под самим условием, разве что разъясню смысл with
	// with -- штука, которая будет интерпретировать дальнейший код, как код другого объекта
	// Написав with (all) я выполняю эту часть кода со стороны всех объектов
	
	if ctrl_up() and field[pos_x][pos_y - 1] < 2
	{
		move_up();
		y -= YDIFF
		x -= XDIFF
		turns++;
		pos_y--;
		depth = pos_x - pos_y * 2 - 1
		
		sprite_index = sPlayerUp;
		image_speed = 1
		
		
		if field[pos_x][pos_y] = 0
			gravity = 1
		with (all)
		{
			if y > oDice.y and oDice.gravity != 0
				depth -= 10
		}
	}
	else if ctrl_down() and field[pos_x][pos_y + 1] < 2
	{
		move_down()
		y += YDIFF
		x += XDIFF
		turns++
		pos_y++;
		depth = pos_x - pos_y * 2 - 1
		
		sprite_index = sPlayerUp;
		image_speed = -1
		image_index = image_number - 2
		
		if field[pos_x][pos_y] = 0
			gravity = 1
		with (all)
		{
			if y > oDice.y and oDice.gravity != 0
				depth -= 10
		}
	}
	else if ctrl_left() and field[pos_x - 1][pos_y] < 2
	{
		move_left()
		x -= XDIFF
		y += YDIFF
		turns++
		pos_x--;
		depth = pos_x - pos_y * 2 - 1
		
		sprite_index = sPlayerRight;
		image_speed = -1
		image_index = image_number - 2
		
		if field[pos_x][pos_y] = 0
			gravity = 1
		with (all)
		{
			if y > oDice.y and oDice.gravity != 0
				depth -= 10
		}
	}
	else if ctrl_right() and field[pos_x + 1][pos_y] < 2
	{
		move_right()
		x += XDIFF
		y -= YDIFF
		turns++
		pos_x++;
		depth = pos_x - pos_y * 2 - 1
		
		sprite_index = sPlayerRight;
		image_speed = 1
		
		if field[pos_x][pos_y] = 0
			gravity = 1
		with (all)
		{
			if y > oDice.y and oDice.gravity != 0
				depth -= 10
		}
	}
}
if image_index = image_number - 1
{
	image_speed = 0
	sprite_index = sDice
}

/// Start and Select
if ctrl_select_pressed()
	room_restart()
	


/// Проверка финиша
if x == oFinish.x and y = oFinish.y and up = oFinish.num
	room_goto_next()