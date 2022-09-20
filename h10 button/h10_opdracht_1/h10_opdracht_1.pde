import controlP5.*;

ControlP5 cp;

Button knop2;
Button knop1;

void setup(){
 size(250,250);
 background(255);
cp = new ControlP5(this);
// eerste knop
knop1 = cp.addButton("Knop1")

              .setPosition(25,50)
              .setSize(50,50)
              .setCaptionLabel("klik mij");
cp.getController("Knop1").setColorActive(color(255,0,0));; 
// tweede knop
cp = new ControlP5(this);
knop2 = cp.addButton("Knop2")
              
              .setPosition(170,50)
              .setSize(50,50)
              .setCaptionLabel("Klik mij");
cp.getController("Knop2").setColorActive(color(255,10,55)); 

}

void draw(){
  
}
void Knop1(){
  println("je bent dood");
}
void Knop2(){
println("Je hebt gewonnen");

}
