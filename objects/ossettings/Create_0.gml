buttons = [oSFullscreen, oSSize, oSBack]
all_buttons = []
surface_changed = false

var windowWidth = global.CameraWidth * CameraScale
var windowHeight = global.CameraHeight * CameraScale
//room_width = windowWidth
//room_height = windowHeight

var bwidth = windowWidth * 0.4
var bheight = windowHeight * 0.1


for (var i = 0; i < array_length(buttons); ++i) 
{
    inst = instance_create_layer(windowWidth / 2, windowHeight / 2 + (windowHeight * 0.1) * i, "Instances", buttons[i])
	inst.width = bwidth
	inst.height = bheight
	array_push(all_buttons, inst)
}