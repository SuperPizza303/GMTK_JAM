// В JS (читай GML) у тебя область жизни переменной заключается везде внутри функций.
// Так что если ты выделил переменные в объекте, то функция, вызванная внутри объекта, 
// Будет видеть эти переменные

// Тут я выделил переменные положения сторон внутри объекта oDice, оттуда вызваю
// Одну из этих функций и меняю переменные oDice уже тут. 

// Ставит начальные положения кубика
function create_dice_state(_down, _up, _forw, _back, _left, _right) 
{
	down = _down
	up = _up
	forw = _forw
	back = _back
	left = _left
	right = _right
}


// Все дальнейшие функции просто меняют положения кубиков
// В джеме важна скорость, а не оптимизация, так что я просто продублировал переменные
// И расставил их в нужном порядке

// Меняет положение кубика при перемещении от игрока
function move_up()
{
	_up = up
	_back = back
	_down = down
	_forw = forw
	
	up = _forw
	back = _up
	down = _back
	forw = _down
}

// Меняет положение кубика при перемещении к игроку
function move_down()
{
	_up = up
	_back = back
	_down = down
	_forw = forw
	
	up = _back
	back = _down
	down = _forw
	forw = _up
}

// Меняет положение кубика при перемещении влево
function move_left()
{
	_up = up
	_left = left
	_down = down
	_right = right
	
	up = _right
	right = _down
	down = _left
	left = _up
	
}

// Меняет положение кубика при перемещении вправо
function move_right()
{
	_up = up
	_left = left
	_down = down
	_right = right
	
	up = _left
	right = _up
	down = _right
	left = _down
}


// Функции для перехода переворота камня.
function turn_around_right()
{
	move_right()
	move_right()
}

function turn_around_forw()
{
	move_up()
	move_up()
}