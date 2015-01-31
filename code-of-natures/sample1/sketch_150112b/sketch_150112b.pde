float t = 0;

void setup(){
  size(300,360);
}

void draw(){
  float n = noise(t);
  float x = map(n, 0, 1, 0, width);
  ellipse(x, 180, 16, 16);
  
  // println(n);
  t += 0.01;
}

