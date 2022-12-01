ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
Star[] nightSky = new Star[200];
Spaceship bob = new Spaceship();
public void setup()
{
  size(500,500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 10; i++){
    rocks.add(new Asteroid());
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
  for (int i = 0; i < rocks.size(); i++){
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d < 10)
    rocks.remove(i);
  }
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
