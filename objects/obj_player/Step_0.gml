
key_left = keyboard_check(ord("A")); // return 1 if true, 0 if false
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));

var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + g

if (key_up)  and (place_meeting(x, y+1, obj_wall)) {
	vsp = -7;
}

// horizontal colition

if (place_meeting(x + hsp, y, obj_wall)){
	while (!place_meeting(x + sign(hsp), y, obj_wall)){
		x += sign(hsp); //sign(x) return 1 if x>0, -1 if x<0, 0 if x=0
	}
	hsp = 0;
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
		sprite_index = spr_playerUp;
	} else {
		sprite_index = spr_playerDown;
	}
} else {
	if (hsp ==0) {
		sprite_index = spr_player;
	} else {
		sprite_index = spr_playerRunning;
	}
}


if (hsp != 0) image_xscale = sign(hsp);
