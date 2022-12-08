class Bullet extends Floater{
public Bullet (Spaceship theShip){
   corners = 0;
    xCorners = new int [corners];
    yCorners = new int [corners];
    myColor = color(255,0,0);
    myCenterX = lisa.getCenterX();
    myCenterY = lisa.getCenterY();;
    myPointDirection = lisa.getPointDirection();
    myXspeed = lisa.getSpeed();
    myYspeed = lisa.getYSpeed();
    accelerate(6);
}
public void show(){
fill(myColor);
noStroke();
ellipse((float)myCenterX, (float)myCenterY, 6.0,6.0);
}
public double getCenterX (){
  return myCenterX;
  }
  public double getCenterY (){
  return myCenterY;
  }
  
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
  }
}
