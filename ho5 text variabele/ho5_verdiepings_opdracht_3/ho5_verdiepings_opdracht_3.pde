float gewicht =110;
float lengte = 1.80;
float BMI =0;

BMI = gewicht / (lengte * lengte);
BMI *= 10;
BMI = round (BMI);
BMI /= 10;
println("met een gewicht van 110 KG en een lengte van 180 cm is jouw BMI");
println(BMI);
