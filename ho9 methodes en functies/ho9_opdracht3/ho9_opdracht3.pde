int mijngetal;

void setup (){
  
  println(mijnfunctie(5,15));
  mijngetal = mijnfunctie(25,45);
  println(mijngetal);
}

void draw(){
  
}

int mijnfunctie(int getal1, int getal2){

  int antwoord;
  antwoord = (getal1 + getal2)/2;
 return antwoord;
  
}
