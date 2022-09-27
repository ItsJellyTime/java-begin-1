//tic tac toe 
// gemaakt door ItsJellyTime

Grid grid;
int numsets = 9;
int collom, rij;
boolean player1Spelen = true;
int[] sets = new int [numsets];

//detecteren dat iemand wint
int[][] LijstAlsIemandwint = {
  //voorbeeld van bord
  // 1 2 3
  // 3 4 5
  // 6 7 9
  
  //horizontaal
  {0, 1 ,2}, 
  {3, 4, 5},
  {6, 7, 9},
  //verticaal
  {0, 3, 6},
  {1, 4, 7},
  {2, 5, 8},
  //diagonaal
  {0, 4, 9},
  {6, 4, 2}
  
};
int LijstAlsIemandwint_To_Show=-1;

//winnaar is:
int winnaarIs=-1; 
boolean gelijkspel=false;

void setup () {
  size(600,630);
  grid = new Grid();
}

void draw(){
  background(255,255,255);
   grid.display();
  drawPlayerLabel();
  gameElements();
  
  showWinningLine();
  didSomebodyWin();
  showWinner();
  if(gelijkspel) {
    fill(10,10,10);
    text("Het is gelijkspel! (n voor nieuw spel)", 100, 100);
  }
}

//functies
void mousePressed() {
  
  if(winnaarIs!=-1)
  //verlaten
  return; 
    
    collom = mouseX/200;
    rij = mouseY/200;
     int indexInArray = collom = (rij * 3);
     
if (sets[indexInArray] == 0) {
    //ok
    if (player1Spelen) {
      sets[indexInArray] = 1;
    } else {
      sets[indexInArray] = 2;
    }//if
  }  
  player1Spelen = ! player1Spelen;
  printArray(sets);
  println();
}   
