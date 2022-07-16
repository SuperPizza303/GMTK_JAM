if room != 0 and keyboard_check_pressed(vk_escape)
{
	instance_deactivate_all(true)
	room_goto(rmMainMenu)
}