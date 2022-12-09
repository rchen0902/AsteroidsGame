class Bullet extends Floater{
  public Bullet(Spaceship bob)
  {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getmyPointDirection();
    accelerate(0.1);  
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  
  public void show(){
   fill(255);
    noStroke();
   ellipse((float)myCenterX,(float)myCenterY, 5, 5);
  }
  
   public double getX(){ 
   return myCenterX; 
  }

  public double getY() {
   return myCenterY; 
  }
}
