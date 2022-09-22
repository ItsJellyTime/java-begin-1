
import controlP5.*;

         float mijnCijfer;
            float mijnGetal;
            String mijnString;
            String mijnstring;
            float resultaat;


ControlP5 cp;
Button knop1;
Button knop2;
Button knop3;
Button knop4;

Textfield TF1;

Textfield TF2;
            
      
void setup(){
  
  size(350,500);
  background(255);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1");
             //knop *
             knop1.setCaptionLabel("*")
            .setColorForeground(color(155,155,155))
            .setSize(20,30)
            .setPosition(305,200);
            
  knop2 = cp.addButton("Knop2");          //knop /
             knop2.setCaptionLabel("/")
            .setColorForeground(color(155,155,155))
            .setSize(20,30)
            .setPosition(270,200);
            
  knop3 = cp.addButton("Knop3");           //knop -
             knop3.setCaptionLabel("-")
            .setColorForeground(color(155,155,155))  
            .setSize(20,30)
            .setPosition(285,200);
            
  knop4 = cp.addButton("Knop4");      //knop +
             knop4.setCaptionLabel("+")
            .setColorForeground(color(155,155,155))  
            .setSize(20,30)
            .setPosition(250,200);
            

      TF1 = cp  .addTextfield("ik")         
                .setPosition(100,200)
                .setText("type here")
                .setSize(75,30)
                .setColorLabel(color(255));
      
       TF2 = cp  .addTextfield("jij")         
                .setPosition(175,200)
                .setText("type here")
                .setSize(75,30)
                .setColorLabel(color(255));           
                
      
               
TF2.setAutoClear(false);
TF1.setAutoClear(false);  
        
}

void draw(){
  
  
}

void Knop1(){

mijnString=TF1.getText();
mijnstring=TF2.getText();
mijnGetal = float (mijnString);
mijnCijfer= float (mijnstring);
println(resultaat = mijnGetal * mijnCijfer);

}
void Knop2(){

mijnString=TF1.getText();
mijnstring=TF2.getText();
mijnGetal = float (mijnString);
mijnCijfer= float (mijnstring);
println(resultaat = mijnGetal / mijnCijfer);

}
void Knop3(){

mijnString=TF1.getText();
mijnstring=TF2.getText();
mijnGetal = float (mijnString);
mijnCijfer= float (mijnstring);
println(resultaat = mijnGetal - mijnCijfer);

}
void Knop4(){

mijnString=TF1.getText();
mijnstring=TF2.getText();
mijnGetal = float (mijnString);
mijnCijfer= float (mijnstring);
println(resultaat = mijnGetal + mijnCijfer);

}
