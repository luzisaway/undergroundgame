x_speed = 0; // reset horizontal speed 

y_speed = 0; // add gravity to y_speed

if keyboard_check(vk_right) {  // if the right arrow key is pressed

    x_speed = walk_speed;  // set the horizontal speed to heidi's walk_speed

} else if keyboard_check(vk_left) {  // otherwise, if the left arrow key is pressed

    x_speed = -walk_speed;  // set the horizontal speed to negative heidi's walk_speed, making her move left

} else if keyboard_check(vk_up) {

y_speed = walk_speed;

} else if keyboard_check(vk_down) {

y_speed = -walk_speed;

}

if keyboard_check(vk_right) {

    x_speed = walk_speed; 

    image_xscale = 1; // flip heidi's sprite so she faces right

} else if keyboard_check(vk_left) {

    x_speed = -walk_speed; 

    image_xscale = -1; // reset her sprite so she faces left

}