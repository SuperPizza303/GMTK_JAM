function scrMove(spd)
{
	var key_up = keyboard_check(ord("W")) or keyboard_check(vk_up);
	var key_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
	var key_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
	var key_down = keyboard_check(ord("S")) or keyboard_check(vk_down);

	var movement_dir = point_direction(0, 0, key_right - key_left, key_down - key_up);
	var movement_input = (key_right - key_left != 0) or (key_down - key_up != 0);

	if (movement_input)
	{
		var h_speed = lengthdir_x(spd, movement_dir);
		var v_speed = lengthdir_y(spd, movement_dir);
		x += h_speed;
		y += v_speed
		return true
	}
	else
	{
		return false	
	}
}