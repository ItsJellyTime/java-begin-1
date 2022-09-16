

void setup(){
  size(500,500);
}

void draw(){
  background(255,255,255);
  drawrightC(250,250 ,200,10);
}
void drawrightC(int x, int y,int sizeC, int aantal){
    for(int i = 0; i < aantal; i++){
    ellipse(300 - sizeC/2,200,sizeC,sizeC);
    sizeC -= 20;
    }  
  
}
