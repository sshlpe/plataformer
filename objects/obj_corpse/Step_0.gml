if (done == 0) {
	vsp = vsp + g

	// horizontal colition

	if (place_meeting(x + hsp, y, obj_wall)){
		while (!place_meeting(x + sign(hsp), y, obj_wall)){
			x += sign(hsp); //sign(x) return 1 if x>0, -1 if x<0, 0 if x=0
		}
		hsp = 0;
	}

	// vertical colition
	if (place_meeting(x, y + vsp, obj_wall)){
		if (vsp > 0){
			done = 1;
			image_index = 1;
		}
		while (!place_meeting(x, y + sign(vsp), obj_wall)){
			y += sign(vsp);
		}
		vsp = 0;
	}

	x += hsp;
	y += vsp;
}