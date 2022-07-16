buttons = [oMStart, oMSettings, oMExit]
all_buttons = []

var wwidth = global.CameraWidth * CameraScale
var wheight = global.CameraHeight * CameraScale
var bwidth = wwidth * 0.25
var bheight = wheight * 0.1


for (var i = 0; i < array_length(buttons); ++i) 
{
    //instance_create_layer(room_width / 2, room_height / 2 - 50 + 100 * i, "Instances", buttons[i], {width : bwidth, height : bheight})
    inst = instance_create_layer(wwidth / 2, wheight * 0.5 + bheight * i, "Instances", buttons[i])
	inst.width = bwidth
	inst.height = bheight
	array_push(all_buttons, inst)
}

old_size = global.CameraWidth * CameraScale
new_size = global.CameraWidth * CameraScale