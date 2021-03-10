class Symbol{
  ArrayList<Point> corners;
  String position;
  int value;
  
  Symbol(String _position){
    this.corners = new ArrayList<Point>();
    this.position = _position;
    this.value = 0;
    
    if (this.position == "u"){
      this.corners.add(new Point(this.position + "1", width/2, height/2 - (1.5*symbolSize)));
      this.corners.add(new Point(this.position + "2", width/2 + symbolSize, height/2 - (1.5*symbolSize)));
      this.corners.add(new Point(this.position + "3", width/2, height/2 - (0.5*symbolSize)));
      this.corners.add(new Point(this.position + "4", width/2 + symbolSize, height/2 - (0.5*symbolSize)));
    } else if (this.position == "d") {
      this.corners.add(new Point(this.position + "1", width/2, height/2 - (1.5*symbolSize)));
      this.corners.add(new Point(this.position + "2", width/2 - symbolSize, height/2 - (1.5*symbolSize)));
      this.corners.add(new Point(this.position + "3", width/2, height/2 - (0.5*symbolSize)));
      this.corners.add(new Point(this.position + "4", width/2 - symbolSize, height/2 - (0.5*symbolSize)));
    } else if (this.position == "c") {
      this.corners.add(new Point(this.position + "1", width/2, height/2 + (1.5*symbolSize)));
      this.corners.add(new Point(this.position + "2", width/2 + symbolSize, height/2 + (1.5*symbolSize)));
      this.corners.add(new Point(this.position + "3", width/2, height/2 + (0.5*symbolSize)));
      this.corners.add(new Point(this.position + "4", width/2 + symbolSize, height/2 + (0.5*symbolSize)));
    } else if (this.position == "m") {
      this.corners.add(new Point(this.position + "1", width/2, height/2 + (1.5*symbolSize)));
      this.corners.add(new Point(this.position + "2", width/2 - symbolSize, height/2 + (1.5*symbolSize)));
      this.corners.add(new Point(this.position + "3", width/2, height/2 + (0.5*symbolSize)));
      this.corners.add(new Point(this.position + "4", width/2 - symbolSize, height/2 + (0.5*symbolSize)));
    }
  }
  
  void display(){
    stroke(255);
    line(this.corners.get(0), this.corners.get(2));
    if(this.value == 1){
      line(this.corners.get(0), this.corners.get(1));
    } else if (this.value == 2){
      line(this.corners.get(2), this.corners.get(3));
    } else if (this.value == 3){
      line(this.corners.get(0), this.corners.get(3));
    } else if (this.value == 4){
      line(this.corners.get(2), this.corners.get(1));
    } else if (this.value == 5){
      line(this.corners.get(0), this.corners.get(1));
      line(this.corners.get(1), this.corners.get(2));
    } else if (this.value == 6){
      line(this.corners.get(1), this.corners.get(3));
    } else if (this.value == 7){
      line(this.corners.get(0), this.corners.get(1));
      line(this.corners.get(1), this.corners.get(3));
    } else if (this.value == 8){
      line(this.corners.get(1), this.corners.get(3));
      line(this.corners.get(3), this.corners.get(2));
    } else if (this.value == 9){
      line(this.corners.get(0), this.corners.get(1));
      line(this.corners.get(1), this.corners.get(3));
      line(this.corners.get(3), this.corners.get(2));
    }
  }
  
  String toString(){
    String temp = "Symbol(" + this.position + "(";
    for(Point p : this.corners){
      temp += p;
    }
    return temp + "), " + this.value + ")";
  }
}
