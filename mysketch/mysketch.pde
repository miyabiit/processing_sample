float y = 100;
void setup(){
	size(640, 360);
	stroke(255);
	noLoop();

	y = height * 0.5;
}

void draw() {
	background(0);
	line(0, y, width, y);
	y= y - 1;
	if(y < 0) {
		y = height;
	}
}

void mousePressed() {
	loop();
}
