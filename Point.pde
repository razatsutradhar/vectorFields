class Point {
  int x;
  int y;
  int z;
  int xPos;
  int yPos;
  float xVectorFunction;
  float yVectorFunction;
  Point(int x, int y, int xPos, int yPos){
    this.x = x;
    this.y = y;
    this.xPos = xPos;
    this.yPos = yPos;
    
  }
  void drawPoint(float z){
    
    
    
    //vvv put the x and y components of the force HERE vvvv
    xVectorFunction = x*x*y;
    yVectorFunction = 3*x-y*z;
    //^^^ put the x and y components of the force HERE ^^^
    
    
    
    fill(255);
    stroke(255);
    ellipse(xPos,yPos,3,3);
    
    line(xPos,yPos, xPos+xVectorFunction*100, yPos+yVectorFunction*100);
  }
}
