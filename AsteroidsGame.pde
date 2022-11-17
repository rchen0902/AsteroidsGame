Star[] nightSky = new Star[200];
Spaceship bob = new Spaceship();
public void setup()
{
  size(500,500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  bob.move();
  bob.show();
}
public void keyPressed(){
  if(key == 'w'){
    bob.accelerate(.1);
  }
  if(key == 's'){
    bob.accelerate(-.1);
  }
  if(key == 'd'){
    bob.turn(10);
  }
  if(key == 'a'){
    bob.turn(-10);
  }
  if(key == 'h'){
    bob.hyperspace();
  } 
}
