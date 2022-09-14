float seconden = 654000;
float minuten = 0;
float uren = 0;
float dagen = 0;
float jaren = 0;

minuten = seconden / 60;
minuten *= 10;
minuten = (int) minuten;
minuten /= 10;
println(minuten);

uren = seconden / 3600;
uren *= 10;
uren = (int) uren;
uren /= 10;
println(uren);

dagen = seconden / 86400;
dagen *= 10;
dagen = (int) dagen;
dagen /= 10;
println(dagen);

jaren = seconden / 31622400;
jaren *= 1000;
jaren = (int) jaren;
jaren /= 1000;
println(jaren);
