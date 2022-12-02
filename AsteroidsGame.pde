//your variable declarations here
Spaceship lisa = new Spaceship();
Star [] ella = new Star [200];
ArrayList <Asteroid> list = new ArrayList <Asteroid>();

public void setup() 
{
  size (500,500);
  background (0);
  for(int i = 0; i < ella.length; i++){
  ella[i] = new Star();
  }
  for (int nI = 0; nI < 16; nI++){
  list.add (new Asteroid());
  }
  //your code here
}
public void draw() 
{
  background (0);
  lisa.move();
  lisa.show();
  for(int i = 0; i < ella.length; i++){
  ella[i].show();
  }
  //tracy.show();
  for (int i = 0; i < list.size(); i++){
  list.get(i).move();
  list.get(i).show();
  if (dist((int)lisa.getCenterX(), (int)lisa.getCenterY(), (int)list.get(i).getCenterX(), (int)list.get(i).getCenterY()) < 20){
  list.remove(i);
  }
  }
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
  lisa.setSpeed(0);
    lisa.setYSpeed(0);
}
  if (key == 's'){
    lisa.hyperspace();
  }
  lisa.move();
  lisa.show();
}
