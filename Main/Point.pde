class Point{
  String id;
  float x;
  float y;
  
  Point(String _id, float _x, float _y){
    this.id = _id;
    this.x = _x;
    this.y = _y;
  }
  
  String toString(){
    return "(" + this.id + ", " + this.x + ", " + this.y + ")";
  }
}
