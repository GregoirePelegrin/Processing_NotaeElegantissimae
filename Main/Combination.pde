class Combination{
  ArrayList<Symbol> symbols;
  
  Combination(){
    symbols = new ArrayList<Symbol>();
    
    String[] positions = {"m", "c", "d", "u"};
    for(String p : positions){
      symbols.add(new Symbol(p));
    }
  }
  
  void convert(int toConvert){
    for(int i=0; i<4; i++){
      int temp = int(toConvert / pow(10, 3-i));
      this.symbols.get(i).value = temp;
      toConvert -= temp * pow(10, 3-i);
    }
  }
  
  void display(){
    stroke(255);
    line(width/2, height/2 - (1.5*symbolSize), width/2, height/2 + (1.5*symbolSize));
    for(Symbol s : this.symbols){
      s.display();
    }
  }
  
  String toString(){
    String temp = "Combination(\n";
    for(Symbol s : this.symbols){
      temp += "\t" + s.toString() + "\n";
    }
    temp += ")";
    return temp;
  }
}
