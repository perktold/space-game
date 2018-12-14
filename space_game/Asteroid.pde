class Asteroid{
  
  float diameter = random(30, 100);
  float x = random(0, width);
  float y = random(-1000, -10);
  float speed = random(2, 4);
  
  float[] move(){
    
    //bewegung
    y += speed;
    
    
    //zurücksetzen, wenn der Bildschirm verlassen wird
    if(y > height){
      y = random(-1000, -10);
      x = random(0, width); 
      
      //schwierigkeitsgrad erhöhen
      speed += 1.5;
    }
    
    //koordinaten zum zurückgeben vorbereiten
    float[] xCoords = new float[2];
    xCoords[0] = x - diameter / 2;
    xCoords[1] = x + diameter / 2;

    
    //übergibt x koordinaten wenn y auf der höhe des raumschiffs
    if(y > 900 - diameter / 2 && y < 900 + diameter / 2){
      return xCoords;
    }
    
    //imaginäre koordinaten
    xCoords[0] = -1001;
    xCoords[1] = -1000;
    return xCoords;
  }
  
  void show(){
    ellipse(x, y, diameter, diameter);
  }
}
