draw_self(); // default draw 

if (flash > 0) {
	shader_set(shd_white);
	draw_self();
	shader_reset();
	flash --;
}
