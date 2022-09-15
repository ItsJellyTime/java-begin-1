size(500,500);
background(255,255,255);

int xWaarde = 100;
int yWaarde = 100;

for(int i = 0; i < 10; i++){
  for(int j = 0; j < 10; j++){
    rect(xWaarde, yWaarde, 20,20);
  yWaarde += 20;
}
yWaarde = 100;
xWaarde += 20;
}
