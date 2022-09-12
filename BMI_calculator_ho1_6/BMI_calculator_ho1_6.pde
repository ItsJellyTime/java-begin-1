float gewicht =64;
float lengte = 1.85;
float leeftijd = 16;
float BMI =0;

BMI = gewicht / (lengte * lengte);
BMI *= 10;
BMI = round (BMI);
BMI /= 10;
println(BMI);


size(700,500);
background(0,155,100);

strokeWeight(3);
rect(150,200,100,30);
rect(300,200,100,30);
rect(450,200,100,30);
  
  fill(0,0,0);
text("gewicht: " + gewicht + "KG",160,220,100 );
text("leeftijd: " + leeftijd + " Jaar",310,220,100 );
text("lengte: " +lengte + " Meter",453,220,100);
            

if(leeftijd < 70){
 if (BMI  < 18.5){
   fill(255,255,0);
 }else if(BMI < 25){
   fill(0,255,0);
 }else if(BMI < 30){
   fill(255,255,0);
 }else{
   fill(255,0,0);
 }
}else{
 if(BMI < 22){
   fill(255,255,0);
 }else if(BMI < 28){
   fill(0,255,0);
 }else if(BMI < 30){
   fill(255,255,0);
 }else{
   fill(255,0,0);
 }
}

textSize(30);
text("BMI: " + BMI , 300,300);
