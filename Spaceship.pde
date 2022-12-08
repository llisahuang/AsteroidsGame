class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 4;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners [0] = -8;
    yCorners[0] = -8;
    xCorners [1] = 16;
    yCorners[1] = 0;
    xCorners [2] = -8;
    yCorners[2] = 8;
    xCorners [3] = -2;
    yCorners[3] = 0;
    myColor = color(255);
    myCenterX = 250;
    myCenterY = 250;
    myPointDirection = 0;
    myXspeed = 0;
    myYspeed = 0;
  }
  public double getCenterX (){
  return myCenterX;
  }
  public double getCenterY (){
  return myCenterY;
  }
  public void setSpeed (double n){
    myXspeed = n;
  }
  
  public double getSpeed (){
    return myXspeed;
  }
  public void setYSpeed (double n){
    myYspeed = n;
  }
  
  public double getYSpeed (){
    return myYspeed;
  }
  
  public void setPointDirection (double n){
    myPointDirection = n;
  }
  
  public double getPointDirection(){
  return myPointDirection;
  }
  
  public void hyperspace(){
  myXspeed = 0;
  myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
    myPointDirection = (int)(Math.random()*360);
    myCenterX = (int)(Math.random()*498)+1;
    myCenterY = (int)(Math.random()*498)+1;
  }
}
