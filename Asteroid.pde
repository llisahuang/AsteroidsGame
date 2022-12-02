class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid(){
  corners = 6;
  xCorners = new int [corners];
  yCorners = new int [corners];
  xCorners[0] = -11;
  yCorners[0] = -8;
  xCorners[1] = 7;
  yCorners[1] = -8;
  xCorners[2] = 13;
  yCorners[2] = 0;
  xCorners[3] = 6;
  yCorners[3] = 10;
  xCorners[4] = -11;
  yCorners[4] = 8;
  xCorners[5] = -5;
  yCorners[5] = 0;
  myColor = color(#B1BDDE);
   myCenterX = (int)(Math.random()*490) + 1;
   myCenterY = (int)(Math.random()*490) + 1;
   myPointDirection = 0;
   myXspeed = 2;
   myYspeed = 2;
   rotSpeed = (int)(Math.random()*5) + 1;
  }
  
  public double getCenterX (){
  return myCenterX;
  }
  public double getCenterY (){
  return myCenterY;
  }
  public void move(){
  turn(rotSpeed);
  super.move();
  }
}
