
vsp = vsp + g

// horizontal colition

if (place_meeting(x + hsp, y, obj_wall)){
	while (!place_meeting(x + sign(hsp), y, obj_wall)){
		x += sign(hsp); //sign(x) return 1 if x>0, -1 if x<0, 0 if x=0
	}
	hsp = -hsp;
}

// vertical colition
if (place_meeting(x, y + vsp, obj_wall)){
	while (!place_meeting(x, y + sign(vsp), obj_wall)){
		y += sign(vsp);
	}
	vsp = 0;
}

x += hsp;
y += vsp;


// animations

if (!place_meeting(x,y+1, obj_wall)){
	if (sign(vsp) < 0){
		sprite_index = spr_enemyUp;
	} else {
		sprite_index = spr_enemyDown;
	}
} else {
	if (hsp ==0) {
		sprite_index = spr_enemy;
	} else {
		sprite_index = spr_enemyRunning;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
