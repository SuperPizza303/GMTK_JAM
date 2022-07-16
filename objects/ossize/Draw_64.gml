draw_sprite_stretched(sButtonSlice, 0, x - width / 2, y - height / 2, width, height)

scrOutlinedBox()

scrOutlinedText(x, y, c_white, c_black, "Разрешение экрана: " + string(global.CameraSizes[global.CameraNum][0] * CameraScale) + "x" + string(global.CameraSizes[global.CameraNum][1] * CameraScale), depth, fontArialRusSmall, fa_center, fa_middle)