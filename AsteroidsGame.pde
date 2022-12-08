//your variable declarations here
Spaceship lisa = new Spaceship();
Star [] ella = new Star [200];
int score = 0;
ArrayList <Bullet> shots = new ArrayList <Bullet>();
//Bullet tracy = new Bullet(lisa);
ArrayList <Asteroid> list = new ArrayList <Asteroid>();

public void setup() 
{
  size (500,500);
  background (0);
  for(int i = 0; i < ella.length; i++){
  ella[i] = new Star();
  }
  for (int nI = 0; nI < 20; nI++){
  list.add (new Asteroid());
  }
  //your code here
}
public void draw() 
{
  background (0);
  textSize (20);
  fill(255);
  text ("Score: " + score + "/20",20,30);
  lisa.move();
  lisa.show();
  for(int k = 0; k < ella.length; k++){
  ella[k].show();
  }
  //tracy.show();
  for (int j = 0; j < list.size(); j++){
  list.get(j).move();
  list.get(j).show();
  if (dist((int)lisa.getCenterX(), (int)lisa.getCenterY(), (int)list.get(j).getCenterX(), (int)list.get(j).getCenterY()) < 20){
  list.remove(j);
  score++;
  }
  }
  for (int i = 0; i < shots.size(); i++){
  shots.get(i).move();
  shots.get(i).show();
  }
  for(int l = 0; l < shots.size(); l++){
    for(int n = 0; n < list.size(); n++){
  if (dist((int)shots.get(l).getCenterX(), (int)shots.get(l).getCenterY(), (int)list.get(n).getCenterX(), (int)list.get(n).getCenterY()) < 20){
  list.remove(n);
  shots.remove(l);
  score++;
  break;
  }
  }
  }
}
  //your code here
public void keyPressed()
{
  //turn right
  if (key == 'd')
  {
    lisa.turn(15);
  }
  //turn left
  if(key == 'a')
  {
    lisa.turn(-15);
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
  if (key == ' '){
  shots.add(new Bullet(lisa));
  }
  lisa.move();
  lisa.show();
}
