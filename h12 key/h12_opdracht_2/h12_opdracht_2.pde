int seconden;
int secondsLeft;
int aantalSpaties = 0;
boolean racing = true;

void setup(){
  size(500,500);
}

void draw(){
  background(255);
  
  seconden = millis()/1000;
  secondsLeft = 10 - seconden;
   if(seconden >= 10){
     racing = false;
     if(secondsLeft <= 0){
     secondsLeft = 0;
     }
   }
   fill(0);
   text("spaties: " + aantalSpaties, 250,250);
   text("Seconds left " + secondsLeft, 250,275);
   
   
}

void keyReleased(){
  if(keyCode == 32 && racing){
    aantalSpaties++;
  }
  
}
