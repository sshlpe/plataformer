if (hp <= 0){
	instance_destroy();
	with (instance_create_layer(x, y, layer, obj_corpse)) {
		direction = other.hitFrom;
		hsp = lengthdir_x(4, direction);
		vsp = lengthdir_y(4, direction) - 2;
		if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	
}
