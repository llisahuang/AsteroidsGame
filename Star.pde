class Star //note that this class does NOT extend Floater
{
  private int myX, myY,myC;
  public Star()
  {
    myC = color(#CBA6DE, (int)(Math.random()*100) + 100);
    myX = (int)(Math.random()*498) + 1;
    myY = (int)(Math.random()*498) + 1;
  //your code here
  }
  public void show(){
    noStroke();
  fill(myC);
  ellipse(myX, myY, 5,5);
  }
}
