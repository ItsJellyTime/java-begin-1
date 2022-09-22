boolean gevonden = false;
String zoeknaam ="jan";
String[] namen = {"piet","gert","jan","willem","kay","robin"};

void setup(){
  gevonden = false;
  for(int i = 0; i < namen.length; i++){
    if (namen[i] == zoeknaam){
      gevonden = true;
    }
  }  
  
  
  
   if(gevonden){
  println(zoeknaam+" " + "bestaat");
  }
}
