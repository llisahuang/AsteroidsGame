//your variable declarations here
Spaceship lisa = new Spaceship();
Star [] ella = new Star [200];
public void setup() 
{
  size (500,500);
  background (0);
  for(int i = 0; i < ella.length; i++)
  ella[i] = new Star();
  //your code here
}
public void draw() 
{
  background (0);
  lisa.move();
  lisa.show();
  
  for(int i = 0; i < ella.length; i++)
  ella[i].show();
  //your code here
}

public void keyPressed()
{
  //turn right
  if (key == 'd')
  {
    lisa.turn(20);
  }
  //turn left
  if(key == 'a')
  {
    lisa.turn(-20);
  }
  if(key == 'w'){
  lisa.accelerate(1);
}
if (key == 'q'){
  lisa.myXspeed = 0;
    lisa.myYspeed = 0;
}
  if (key == 's'){
    lisa.myXspeed = 0;
    lisa.myYspeed = 0;
    lisa.myCenterX = (int)(Math.random()*498)+1;
    lisa.myCenterY = (int)(Math.random()*498)+1;
  }
  lisa.move();
  lisa.show();
}
