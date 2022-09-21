
import controlP5.*;

ControlP5 cp;

Button knop1;

Textfield TF1;

            int mijnGetal;
            String mijnString = "5";
            int resultaat;

void setup(){
  
  size(500,500);
  background(155);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1");
  
  knop1.setCaptionLabel("Bereken")
            .setColorForeground(color(144,200,50))
            .setColorActive(color(40,0,255))
            .setSize(200,50)
            .setPosition(150,275);
            
      TF1 = cp
                .addTextfield("TextInput1")
                .setPosition(150,200)
                .setText("type here")
                .setCaptionLabel("Type ur number")
                .setColorLabel(color(255,0,0));
               
    
TF1.setAutoClear(false);  
        
}

void draw(){
  
  
}
void textveld1(){
  
  
}

void Knop1(){

mijnGetal = Integer.valueOf(TF1.getText());

resultaat = mijnGetal + (mijnGetal / 100) * 21;
println(resultaat);
}
