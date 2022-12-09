ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
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
  for (int i = 0; i < rocks.size(); i++){
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d < 10) {
    rocks.remove(i);
    break;
  }
  for (int j = 0; j < shots.size(); j++){
    shots.get(j).move();
    shots.get(j).show();
    float dd = dist((float)shots.get(j).getX(),(float)shots.get(j).getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if(dd < 5){
      shots.remove(j);
      rocks.remove(i);
      break;
    }
  }
  }
if(keyPressed){
  if(key == 'w'){
    bob.accelerate(.1);
  }
  if(key == 's'){
    bob.accelerate(-.1);
  }
  if(key == 'd'){
    bob.turn(5);
  }
  if(key == 'a'){
    bob.turn(-5);
  }
  if(key == 'h'){
    bob.hyperspace();
  } 
   if (key == ' ')
  {
   shots.add(new Bullet(bob)); 
  }
  }
  bob.show();
  bob.move();
}
