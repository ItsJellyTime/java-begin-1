float gewicht =65;
float lengte = 1.85;
float leeftijd = 16;
float BMI =0;

BMI = gewicht / (lengte * lengte);
BMI *= 10;
BMI = round (BMI);
BMI /= 10;
println(BMI);


size(700,500);
background(255,255,255);

rect(150,200,100,30);
rect(300,100,100,30);
rect(450,200,100,30);

fill(0,0,0);
text("gewicht: " + gewicht + "KG",160,220,100 );
text("leeftijd: " + leeftijd + " Jaar",310,120,100 );
text("lengte: " +lengte + " Meter",453,220,100);

textSize(30);
text("BMI: " + BMI , 300,300);

if (BMI  < 18.5){

}else if(BMI < 25){

}else if(BMI < 30){

}else{
}
if(BMI < 22){
}
