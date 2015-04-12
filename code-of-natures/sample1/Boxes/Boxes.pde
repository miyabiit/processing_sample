import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;
ArrayList<Box> boxes;

void setup() {
  size (400, 300);
  boxes = new ArrayList<Box>();

  box2d = new Box2DProcessing(this);
  box2d.createWorld();
}

void draw() {
  box2d.step();
  background(255);
  
    
  if(mousePressed) {
    Box p = new Box();
    boxes.add(p);
  }
  
  for (Box b: boxes) {
    b.display();
  }
  
  for (int i = boxes.size()-1; i >= 0; i--) {
    Box b = boxes.get(i);
    if (b.done()) {
      boxes.remove(i);
    }
  }

}

