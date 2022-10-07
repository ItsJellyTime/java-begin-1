//boter kaas en eieren

Grid grid;
int numsets = 9;
int collom, rij;
boolean player1Playing = true;
int[] sets = new int[numsets];

// als iemand wint --------------------------
  
int[][] LijstVanIndexenVoorMogeLijkeWinnaars = {
  //voorbeeld bord
  //1 2 3
  //4 5 6
  //7 8 9

//horizontaal
  {0, 1, 2}, 
  {3, 4, 5}, 
  {6, 7, 8}, 
//verticaal
  {0, 3, 6}, 
  {1, 4, 7}, 
  {2, 5, 8}, 
//diagoonaal
  { 0, 4, 8 }, 
  { 6, 4, 2 }

};

int LijstVanIndexenVoorMogeLijkeWinnaars_To_Show=-1;

// Winnaar is: 
int winnaarIs=-1; 
boolean hetIsGelijkspel=false; 

//------------------------------------------------------------------

void setup() {
  size(600, 630);
  grid = new Grid();
  
}

void draw() {
  background(237,201,175);
  grid.afbeelden();
  drawPlayerLabel();
  gameEigenschappen();

  showWinningLine();
  heeftIemandGewonnen();
  showWinner();
}

//------------------------------------------------------------------

void mousePressed() {
//waar je klikt komt een vierkantje of circel
  if (winnaarIs!=-1) 
    return; // leave

  collom = mouseX/200;
  rij = mouseY/200;
//dit zorgt ervoor dat je 3 rijen hebt waar je op kan klikken
  int indexInArray = collom + (rij * 3);

  // Is field empty?
  if (sets[indexInArray] == 0) {
    //ok
    if (player1Playing) {
      sets[indexInArray] = 1;
    } else {
      sets[indexInArray] = 2;
    }
  }//if
  player1Playing = ! player1Playing;

  printArray(sets);
  println();
}

void keyPressed() {
  switch(key) { //<>//
  case 'n':
  //als n word geklikt komt er een nieuw spel
    sets = new int[numsets];
    player1Playing = true;
    winnaarIs=-1;
    LijstVanIndexenVoorMogeLijkeWinnaars_To_Show=-1; 
    hetIsGelijkspel=false;
    break;

  default:
    LijstVanIndexenVoorMogeLijkeWinnaars_To_Show=key-48;
    println(LijstVanIndexenVoorMogeLijkeWinnaars_To_Show);
    break;
  }
}

//------------------------------------------------------------------
//laat zien we heeft gewonnen
void showWinner() {
  switch( winnaarIs) {
  case -1: 
    //none
    break; 
//als player 1 wint //<>//
  case 1:
    fill(0); 
    text("Player 1 heeft gewonnen (N voor nieuw spel)", 300, 15);
    break; 
//als player 2 wint
  case 2:
    fill(0);
    text("Player 2 heeft gewonnen!(N voor nieuw spel)", 300, 15);
    break;
  }
}

void heeftIemandGewonnen() {
  int count=0;

  // check als iemand heeft gewonnen
  for (int checkPlayer=1; checkPlayer<=2; checkPlayer++) {

    int tripleCounter=0; 
    for (int[] a : LijstVanIndexenVoorMogeLijkeWinnaars) {   
      count=0;        
      for (int i : a) {
        if ( sets[i] == checkPlayer ) {
          count++;
        }//count
      }//for
      if (count==3) {
        winnaarIs = checkPlayer;
        LijstVanIndexenVoorMogeLijkeWinnaars_To_Show=tripleCounter;
      }
      tripleCounter++;
    }//for
  }//for
}
//deze laat de lijn zien waardoor een player heeft gewonnen
void showWinningLine() {
  int tripleCounter=0; 
  strokeWeight(7);
 
  for (int[] a : LijstVanIndexenVoorMogeLijkeWinnaars) {
    stroke(  255, 0, 0   );
    if (tripleCounter==LijstVanIndexenVoorMogeLijkeWinnaars_To_Show) {
   
      for (int i : a) {
        collom = i % 3;
        rij = i / 3;
        
        PVector pv = new PVector(100 + 200 * collom, 100 + 200* rij);
        line(pv.x-33, pv.y+63, 
          pv.x+33, pv.y+63);
      }//for
    }//if
    tripleCounter++;
  }//for
  strokeWeight(1);
}

void drawPlayerLabel() {
  String label = "Player 1";

  if (player1Playing == false) {
    label = "Player 2";
  }

  if (hetIsGelijkspel) {
    label = "GELIJKSPEL Klik N voor nieuw spel!";
  }
   if (winnaarIs!=-1) {
    label = "Klik N voor een nieuw spel!";
   }
   //deze code zorgt ervoor dat de text onderaan komt te staan in het midden
  fill(0);
  textSize(16);
  textAlign(CENTER, BOTTOM);
  text(label, width/2, height - 5);
}

void gameEigenschappen() {
  int count = 0; 

  for ( int i = 0; i < sets.length; i++) {
    collom = i % 3;
    rij = i / 3;

    switch (sets[i]) {
    case 1:  
      new Cross(collom, rij); 
      break;
    case 2: 
      new Circle(collom, rij); 
      break;
    }//switch
    if (sets[i]!=0) {
      count++;
    }
  }//for 
//als 9 sets dan gelijkspel
  if (count==numsets) {
    //println
    hetIsGelijkspel=true;
  }
}

// ==============================================================
//circel voor tic tac toe!
class Circle {

  int column, row;

  Circle(int column, int row) {
    this.column = column;
    this.row = row;

    afbeelden();
  }
//rondjeeeeee
  void afbeelden() {
    strokeWeight(15);
    stroke(0,0,179);
    fill(237,201,175);
    pushMatrix();
    //waar hij moet komen als je op je muis klikt
    ellipse(100 + 200 * column, 100 + 200* row, 
      100, 100);

    popMatrix();
  }
}

// ==============================================================
//kruisje voor tic tac toe!
class Cross {
  int column, row;

  Cross(int column, int row) {
    this.column = column;
    this.row = row;

    afbeelden(); 
  }

  void afbeelden() {
    strokeWeight(15);
    stroke(0,0,0);
//lines voor kruisje
    pushMatrix();
    //de lijnen om het kruisje te maken en de posities waar hij op moet komen als je op je muis klikt
    translate( 100 + column * 200, 100 + row * 200);
    line(- 40, -40, 40, 40);
    line(- 40, 40, 40, -40);

    popMatrix();
  }
}

// ==============================================================
//de code voor het bord
class Grid {

  //het bord
  void afbeelden() {
    strokeWeight(7);
    stroke(0);
    //de lijnen voor de bord
    line(width/3,20, width/3, height - 25);
    line(width/3*2,20, width/3*2, height - 25);
    line(0, height/3, width, height/3);
    line(0, height/3*2, width, height/3*2);
  }
}
