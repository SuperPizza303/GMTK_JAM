// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateObj(obj, xx=549, yy=289, dpt=(x-y) div 10)
{
	return instance_create_depth(x - 16 * (x div 64) + 47 * (y div 64) - xx, y - 32 * (y div 64) - 32 * (x div 64) + yy, dpt, obj)
}