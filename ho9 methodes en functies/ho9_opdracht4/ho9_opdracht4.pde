

void setup(){
  size(500,500);
 
}

void draw (){
  background(0,255,255);
  //rect(100,100,100,100);
  vierkant(200,200,200,200);
}

void vierkant ( int x, int y, int h, int w){
  // top line \
  line(x,y,x+w,y);
  //bottom line
  line(x,y+h,x+w,y+h);
  //left line
  line(x,y,x,y+h);
  //right line
  line(x+w,y,x+w,y+w);
}
