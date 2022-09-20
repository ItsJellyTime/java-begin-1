import controlP5.*;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup(){
  size(500,500);
  background(255);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1");
                 
  
  knop1.setCaptionLabel("Test!")
                     .setPosition (225,250)
                     .setColorLabel(color(255,0,0))
                     .setColorBackground(color(100,23,250));
  
  tekstveld1 = cp
                .addTextfield("TextInput1")
                .setPosition(150,200)
                .setText("type here")
                .setCaptionLabel("what is Your name?")
                .setColorLabel(color(255,0,0));
}


void draw(){

}

void Knop1(){
  println("Hi my name is " + tekstveld1.getText());
}
