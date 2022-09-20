
int baksteenbreedte = 40;
int baksteenhoogte = 25;

int rijen = 13;
int collomen = 10;

int off = 0;

void setup (){
  size(750,495);
}


void draw (){
  
  background(255);
  fill(200);
  


  for ( int j = 0; j < baksteenbreedte; j++ ) { 
    //rij
    for ( int i = 0; i < baksteenhoogte; i++ ) { 
     //collom
     
  if (j % 2 == 1) 
        off = baksteenbreedte / 2;
      else off=0;  

    
 rect(i * baksteenbreedte + off +-20,j * baksteenhoogte + 50,baksteenbreedte ,baksteenhoogte);
 
    }
  }
}
 
 
