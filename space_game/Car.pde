class Car{
  float speed = 0;
  float speedlimit = 5;
  float x = width / 2;
  float y = 900;
  float diameter = 7;
  
  float move(){
    

    x += speed;
    
    //lenken
    if(key == 'd'){
      speed += 0.2;
    }
    if(key == 'a'){
      speed -= 0.2;
    }
    
    //anstoßen
    if(x < 0){
      x = 0;
    } else if(x > width){
      x = width;
    }
    
    //speed limit
    if(speed < -speedlimit){
      speed = -5;
    } else if(speed > speedlimit){
      speed = 5;
    }
    return x;
  }
  
  void show(){
    line(width / 2, height * 0.99, width / 2 + speed * width / 25, height * 0.99);
    triangle(x, y + diameter, x - diameter, y - diameter, x + diameter, y - diameter);
  }
}
