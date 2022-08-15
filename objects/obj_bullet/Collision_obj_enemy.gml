with(other){ // other returns the coliding objt, especific enemy hitted.
	hp -- ; // => hp -= 1
	flash = 3;
	hitFrom = other.direction; 
	// other inside the with refers to the bullet (other)
}

instance_destroy();
