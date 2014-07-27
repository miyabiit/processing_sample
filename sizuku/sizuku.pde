/*
drop curve 1 by line.
http://blog.livedoor.jp/reona396/archives/54891368.html
*/
float r;
int R = 150;
int A = 5;

void setup(){
	size(400, 400);
	background(255);
}

void draw(){
	background(255);
	noFill();
	stroke(255, 0, 0);
	
	//drop
	pushMatrix();
	translate(width/2, height/2);
	rotate(radians(-90));
	beginShape();
	for(float t = 0; t < TWO_PI; t += 0.1){
		r = 1 / (A * sin(t/2)+1);
		vertex( R * r * cos(t), R * r * sin(t));
	}

	endShape(CLOSE);
	popMatrix();

	//line
	stroke(0, 12);
	line(width/2, 0, width/2, height);
	line(0, height/2, width, height/2);
}
