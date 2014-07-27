import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sizuku_movies extends PApplet {

float r;
int R = 150;
float theta;
float hue;

public void setup() {
	size(400,400);
	colorMode(HSB, 360, 100, 100);
	background(0);
}

public void draw() {
	background(0);
	stroke(360, 120);

	for(int j = 1; j <= 5; j++){
		fill(hue, 100*j/5, 100, 80);
		for(int i = 0; i < 8; i++){
			pushMatrix();
			translate(width/2+R/j*cos(radians(360*i/8)), height/2+R/j*sin(radians(360*i/8)));
			rotate(radians(360*i/8));
			pushMatrix();
			translate(0,0);
			rotate(radians(theta));
			beginShape();
			for(float t = 0; t < TWO_PI; t += 0.1f) {
				r = 1 / (5 * sin(t/2)+1);
				vertex( R * r * cos(t), R * r * sin(t));
			}
			endShape(CLOSE);
			popMatrix();
			popMatrix();
		}
	}
	theta++;
	hue++;

	if (hue > 360) {
		hue = 0;
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "sizuku_movies" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
