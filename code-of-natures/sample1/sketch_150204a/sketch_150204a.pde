Mover m;
Attractor a;

void setup(){
  size(640, 360);
  m = new Mover();
  a = new Attractor();
}

void draw(){
  background(255);
  
  PVector force = a.attract(m);
  m.applyForce(force);
  m.update();
  
  a.display();
  m.display();
}

class Mover {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  
  Mover() {
    mass = 1;
    location = new PVector(30,30);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void applyForce(PVector force) {
    PVector  f= PVector.div(force, mass);
    acceleration.add(f);
  }
  
  void update (){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, mass*16, mass*16);
  }
}

class Attractor {
  float mass;
  PVector location;
  float G;
  
  Attractor() {
    location = new PVector(width/2, height/2);
    mass = 20;
    G = 0.4;
  }
  
  PVector attract(Mover m) {
    PVector force = PVector.sub(location, m.location);
    float distance = force.mag();
    distance = constrain(distance, 5.0, 25.0);
    force.normalize();
    float strength = (G* mass * m.mass) / (distance * distance);
    force.mult(strength);
    return force;
  }
  
  void display() {
    stroke(0);
    fill(175, 200);
    ellipse(location.x, location.y, mass*2, mass*2);
  }
}
