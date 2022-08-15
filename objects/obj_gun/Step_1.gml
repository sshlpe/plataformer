//ocurre antes de cualquier frame
x = obj_player.x;
y = obj_player.y + 10;

image_angle = point_direction(x, y, mouse_x, mouse_y);

/*
image_xscale = obj_player.image_xscale;
if (sign(image_xscale) > 0 ) {
	image_angle = point_direction(x, y, mouse_x, mouse_y);
} else {
	image_angle = point_direction(-x, -y, mouse_x, mouse_y) * -1;
}*/

fireDelay -= 1;
recoil = max(0, recoil - 1);

if (mouse_check_button(mb_left)) && (fireDelay < 0){
	fireDelay = 5; // i can shoot every 5 frames
	recoil = 4;
	image_angle +=  irandom_range(-presition, presition);
	with (instance_create_layer(x,y, "bullets", obj_bullet)) {
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
	}
}

/*
lengthdir_x(): obtiene el largo x de un vector dado un angulo y un modulo.
*/

x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);

if (image_angle > 90) && (image_angle < 270) {
	image_yscale = -1;
} else {
	image_yscale = 1;
}