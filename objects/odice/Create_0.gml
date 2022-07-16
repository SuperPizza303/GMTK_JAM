 room_speed = 60
 depth = -1 // Переменная, которая именяет глубину. Чем меньше, тем выше над остальными объектами находится
 image_speed = 0 // Скорость воспроизведения анимации
 
 // Выделяю глобальные переменные
 globalvar YDIFF, XDIFF;
 
// Выделяю переменные сторон
down = 0
up = 0
forw = 0
back = 0
left = 0
right = 0

// Заполняю первоначально стороны
create_dice_state(1, 6, 2, 5, 3, 4)

// Подсчитывает количество ходов, которые сделал игрок. Может пригодиться для того, чтобы сделать доп. мотивацию
turns = 0

// Количество пикселей между соседними клетками по y и х в изометрическом виде
YDIFF = 64
XDIFF = 64