
import controlP5.*;

ControlP5 cp;

Button knop1;

Button knop2;

Button knop3;

Button knop4;

Textfield TF1;

Textfield TF2;

            float mijnGetal;
            String mijnString = "5";
            float resultaat;

void setup(){
  
  size(500,500);
  background(255);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1");
             //knop *
             knop1.setCaptionLabel("+")
            .setColorForeground(color(155,155,155))
            .setSize(10,20)
            .setPosition(200,200);
            
  knop2 = cp.addButton("Knop2");          //knop /
             knop1.setCaptionLabel("/")
            .setColorForeground(color(155,155,155))
            .setSize(10,20)
            .setPosition(200,200);
            
  knop3 = cp.addButton("Knop3");           //knop -
             knop1.setCaptionLabel("-")
            .setColorForeground(color(155,155,155))  
            .setSize(10,20)
            .setPosition(200,200);
            
  knop4 = cp.addButton("Knop4");      //knop +
             knop1.setCaptionLabel("+")
            .setColorForeground(color(155,155,155))  
            .setSize(10,20)
            .setPosition(255,200);
            

      TF1 = cp  .addTextfield("")         
                .setPosition(150,200)
                .setText("type here")
                .setSize(100,20)
                .setColorLabel(color(255,0,0));
      
       TF2 = cp  .addTextfield("")         
                .setPosition(150,200)
                .setText("type here")
                .setSize(100,20)
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
