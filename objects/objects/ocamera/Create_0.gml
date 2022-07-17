if instance_exists(oPlayer)
{
	cameraTarget = oPlayer;
}
else
{
	cameraTarget = room;	
}

global.Camera = camera_create_view(0, 0, global.CameraWidth, global.CameraHeight);
view_enabled = true;
view_visible[0] = true;
view_set_camera(0, global.Camera);