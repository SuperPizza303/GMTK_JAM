
/// Хождение

// Проверяю на возвожность хождения (позже аларма не будет в этом коде)
if image_speed == 0
{
	
	// Все функции, которые начинаются на ctrl_ являются моими. Они сделаны специально, чтобы
	// Можно было быстро настроить управление с клавиатуры и геймпада одновременно
	// Надеюсь, ты поймёшь, что написано под самим условием, разве что разъясню смысл with
	// with -- штука, которая будет интерпретировать дальнейший код, как код другого объекта
	// Написав with (all) я выполняю эту часть кода со стороны всех объектов
	
	if ctrl_up() and place_free(x, y - YDIFF)
	{
		move_up();
		y -= YDIFF
		turns++;
		
		sprite_index = sPlayerUp;
		image_speed = 1
		
		
		if place_empty(x, y)
			gravity = 1
		with (all)
		{
			if y > oDice.y and oDice.gravity != 0
				depth = -10
		}
	}
	else if ctrl_down() and place_free(x, y + YDIFF)
	{
		move_down()
		y += YDIFF
		turns++
		
		sprite_index = sPlayerUp;
		image_speed = -1
		image_index = image_number - 2
		
		if place_empty(x, y)
			gravity = 1
		with (all)
		{
			if y > oDice.y and oDice.gravity != 0
				depth = -10
		}
	}
	else if ctrl_left() and place_free(x - XDIFF, y)
	{
		move_left()
		x -= XDIFF
		turns++
		
		sprite_index = sPlayerRight;
		image_speed = -1
		image_index = image_number - 2
		
		if place_empty(x, y)
			gravity = 1
		with (all)
		{
			if y > oDice.y and oDice.gravity != 0
				depth = -10
		}
	}
	else if ctrl_right() and place_free(x + XDIFF, y)
	{
		move_right()
		x += XDIFF
		turns++
		
		sprite_index = sPlayerRight;
		image_speed = 1
		
		if place_empty(x, y)
			gravity = 1
		with (all)
		{
			if y > oDice.y and oDice.gravity != 0
				depth = -10
		}
	}
}
if image_index = image_number - 1
{
	image_speed = 0
	sprite_index = sPlayer
}

/// Start and Select
if ctrl_select_pressed()
	room_restart()
	


/// Проверка финиша
if x == oFinish.x and y = oFinish.y and up = oFinish.num
	room_goto_next()