// Этот скрипт проверяет нажатие клавиш управления.
// Все функции начинаются с ctrl_ -- дальше идёт считывание кнопок с клавы и геймпада
// Названия- функции настроены под геймпад от Xbox
// Функции направления настроены на крестовину
function ctrl_up()
{
	return gamepad_button_check(0, gp_padu)	 or keyboard_check(ord("W"))
}

function ctrl_down()
{
	return gamepad_button_check(0, gp_padd)	 or keyboard_check(ord("S"))
}

function ctrl_right()
{
	return gamepad_button_check(0, gp_padr)	 or keyboard_check(ord("D"))
}

function ctrl_left()
{
	return gamepad_button_check(0, gp_padl)	 or keyboard_check(ord("A"))
}

function ctrl_A()
{
	return gamepad_button_check(0, gp_face1) or keyboard_check(ord("J"))
}

function ctrl_B()
{
	return gamepad_button_check(0, gp_face2) or keyboard_check(ord("K"))
}

function ctrl_Y()
{
	return gamepad_button_check(0, gp_face4) or keyboard_check(ord("I"))
}

function ctrl_X()
{
	return gamepad_button_check(0, gp_face3) or keyboard_check(ord("U"))
}

function ctrl_up_pressed()
{
	return gamepad_button_check_pressed(0, gp_padu)	 or keyboard_check_pressed(ord("W"))
}

function ctrl_down_pressed()
{
	return gamepad_button_check_pressed(0, gp_padd)	 or keyboard_check_pressed(ord("S"))
}

function ctrl_right_pressed()
{
	return gamepad_button_check_pressed(0, gp_padr)	 or keyboard_check_pressed(ord("D"))
}

function ctrl_left_pressed()
{
	return gamepad_button_check_pressed(0, gp_padl)	 or keyboard_check_pressed(ord("A"))
}

function ctrl_A_pressed()
{
	return gamepad_button_check_pressed(0, gp_face1) or keyboard_check_pressed(ord("J"))
}

function ctrl_B_pressed()
{
	return gamepad_button_check_pressed(0, gp_face2) or keyboard_check_pressed(ord("K"))
}

function ctrl_Y_pressed()
{
	return gamepad_button_check_pressed(0, gp_face4) or keyboard_check_pressed(ord("I"))
}

function ctrl_X_pressed()
{
	return gamepad_button_check_pressed(0, gp_face3) or keyboard_check_pressed(ord("U"))
}

function ctrl_up_released()
{
	return gamepad_button_check_released(0, gp_padu) or keyboard_check_released(ord("W"))
}

function ctrl_down_released()
{
	return gamepad_button_check_released(0, gp_padd) or keyboard_check_released(ord("S"))
}

function ctrl_right_released()
{
	return gamepad_button_check_released(0, gp_padr) or keyboard_check_released(ord("D"))
}

function ctrl_left_released()
{
	return gamepad_button_check_released(0, gp_padl)	 or keyboard_check_released(ord("A"))
}

function ctrl_A_released()
{
	return gamepad_button_check_released(0, gp_face1) or keyboard_check_released(ord("J"))
}

function ctrl_B_released()
{
	return gamepad_button_check_released(0, gp_face2) or keyboard_check_released(ord("K"))
}

function ctrl_Y_released()
{
	return gamepad_button_check_released(0, gp_face4) or keyboard_check_released(ord("I"))
}

function ctrl_X_released()
{
	return gamepad_button_check_released(0, gp_face3) or keyboard_check_released(ord("U"))
}

function ctrl_select_pressed()
{
	return gamepad_button_check_pressed(0, gp_select) or keyboard_check_pressed(ord("R"))
}

function ctrl_start_pressed()
{
	return gamepad_button_check_pressed(0, gp_start) or keyboard_check_pressed(vk_escape)
}

