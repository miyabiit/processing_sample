Bob bob;
Spring spring;

void setup () {
  bob = new Bob();
  spring = new Spring();
}

void draw() {
  PVector gravity = new PVector (0,1);
  bob.applyForce(gravity);
  
  spring.connect(bob);
  
  bob.update():
  bob.display();
  spring.display();
}

class Spring {
  
  PVector anchor;
  float len:
  float k = 0.1;
  
  Spring(float x, float y, int l){
    anchor = new PVector(x,y);
    len = l;
  }
  
  void connect(Bob b) {
    
    PVector for = PVector.sub(b.location, anchor);
    flaot d = force.mag();
    flaot stetch = d - len;
    
    force.normalize();
    force.mult(-1 * k * stretch);
    
    b.applyForce(force);
  }
  
  void display() {
    fill(100);
    rectMode(CENTER);
    rect(anchor.x, anchor.y, 10, 10);
  }
  
  void displayLine(Bob b) {
    stroke(255);
    lien(b.location.x, b.location.y , anchor.x, anchor.y);
  }
}
