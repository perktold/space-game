Car car = new Car();
Asteroid [] asteroids = new Asteroid[10];
int score;
float speed;
void setup(){
  score = 0;
  textSize(30);
  stroke(254);
  fullScreen();
  for(int i = 0; i < asteroids.length; i++){
    asteroids[i] = new Asteroid();
  }
}

void draw(){
  background(0);
  float carX = car.move();
  car.show();
  text("score: " + score++, LEFT, 30);
  for(int i = 0; i < asteroids.length; i++){
    float[] asteroidCoords = asteroids[i].move();
    asteroids[i].show();
    //prüfen, ob ein asteroid getroffen wurde
    if(asteroidCoords[0] <= carX && asteroidCoords[1] >= carX){
      kill();
    }
  }
}

void kill(){
  try{
    Thread.sleep(1000);
  }catch (InterruptedException e){
  }
  System.exit(0);
}
  
