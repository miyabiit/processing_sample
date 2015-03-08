class Oscillator {
  PVector angle;
  PVector velocity;
  PVector amplitude;
  
  Oscillator() {
    angle = new PVector();
    velocity = new PVector(random(-0.05,0.05), random(-0.05, 0.05));
    amplitude = new PVector(random(width/2), random(height/2));
  }
  
  void ascillate() {
    angle.add(velocity);
  }
  
  void display() {
    float x = cos(angle.x)*amplitude.x;
    float y = sin(angle.y)*amplitude.y;
    
    pushMatrix();
    translate(width/2, height/2);
    stroke(0);
    fill(175);
    line(0,0,x,y);
    ellipse(x,y,16,16);
    popMatrix();
  }
}

Oscillator a;

void setup() {
  size (640, 360);
  a = new Oscillator();
}

void draw() {
  background(255);

  a.ascillate();  
  a.display();
}

/*
float angle = 0;
float aVelocity = 0.05;

void setup (){
  size(640, 360);
}

void draw() {
  background(255);
  
  float amplitude = 100;
  float x = amplitude * cos(angle);
  angle += aVelocity;
  
  ellipseMode(CENTER);
  stroke(0);
  fill(175);
  translate(width/2, height/2);
  line(0,0,x,0);
  ellipse(x,0,20,20);
}
*/
