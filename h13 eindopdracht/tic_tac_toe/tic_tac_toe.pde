
//tic tac toe
grid Grid;
int numSets = 9;
int collom;
int rij;
boolean player1Playing = true;
int sets[] = new int[numSets];

void setup() {
  size(600, 650);
  grid = new Grid();
}

void draw() {
  background(255, 255, 255);
  grid.display();
  drawPlayerLabel();
  gameElements();
}

void mousePressed(){
  collom = mouseX/200;
  rij = mouseY/200;
   int indexinArray = collom + (rij*3);
  if(sets[indexinArray] == 0){
    if(player1Playing){
      sets[indexinArray] = 1;
    }else{
      moves[indexinArray] = 2;
    }
  }
  player1Playing = !playerPlaying;
}

void drawPlayerLabel(){
  String label = "Player 1"
  
}
