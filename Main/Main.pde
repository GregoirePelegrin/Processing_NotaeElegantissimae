int symbolSize;
int value;
Combination combination;

void setup(){
  size(300, 400);
  frameRate(1000);
  
  symbolSize = 100;
  value = 0;
  combination = new Combination();
}

void draw(){
  background(0);
  
  combination.convert(value);
  combination.display();
  value ++;
}

void line(Point p1, Point p2){
  line(p1.x, p1.y, p2.x, p2.y);
}
