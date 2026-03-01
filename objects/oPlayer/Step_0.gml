var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * walk_speed, _ver * walk_speed, tilemap);

// sprite flip

if (_hor != 0 or _ver != 0)
{
	if (_ver > 0) sprite_index = sWormDown;
	else if (_ver < 0) sprite_index = sWormUp;
	else if (_hor > 0) sprite_index = sWormAnim;
	else if (_hor < 0) sprite_index = sWormAnim;
	facing = point_direction(0, 0, _hor, _ver);
}

if keyboard_check(ord("D")) {  // if the right arrow key is pressed
	image_xscale = 1; // flip heidi's sprite so she faces right
} else if keyboard_check(ord("A")) {  // otherwise, if the left arrow key is pressed
	image_xscale = -1; // reset her sprite so she faces left
}

if (keyboard_check_pressed(vk_space))
{
	var _inst = instance_create_depth(x + lengthdir_x(8, facing), y + lengthdir_y(8, facing), depth, obj_attack);
	_inst.image_angle = facing + 90;
	_inst.damage *= damage;
}