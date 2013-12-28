int num = 5000;
float x, y;
float a, b;
float r1 = 0;
float t1 = 0.2;
float r2 = 0;
float t2 = 1.0;
float h2 = 0.5;
int curve_r = 80;
int dot_r = 10;

void setup (){
  size(400,400);
  colorMode(HSB, 360, 100, 100);
  background (0);
  smooth();
  noStroke();
  noLoop();
}
/* 
http://blog.livedoor.jp/reona396/archives/54660457.html
writing super rose curve.
*/

void draw() {
  background(0);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(-90));
  
  for(int i = 0;i < num; i++){
    b = (sin(r2) + cos(r2 * 2)) /2;
    a = b + h2 + 1;
    x = curve_r * a * sin(r1);
    y = curve_r * a * cos(r1);
    r1 += t1;
    r2 += t2;
    
    if(i % 5 == 0){
      dot_r = 20;
      fill(310, 80, 100, 10);
    }
    else{
      dot_r = 5;
      fill(360, 10);
    }
    ellipse(x, y, dot_r, dot_r);
  }
  popMatrix();
}
