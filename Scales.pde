void setup(){
size(750, 750);
frameRate(7);
}

void draw(){
  boolean shift = true;
  for (int y=1000; y >= -255; y= y-55)
  {
    for (int x=1000; x >= -255; x= x-125)
    {
      int r = (int)(Math.random()*256);
      int g = (int)(Math.random()*256);
      int b = (int)(Math.random()*256);
      if(shift == true)
        scale(x+65, y, r, g ,b);
      else 
        scale(x, y, r, g ,b);
    }
    if(shift == true)
      shift = false;
     else 
       shift = true;
  }
}

void scale(int x, int y, int r, int g, int b){
  fill(r, g, b);
  rect(x+10, y, 100, 110, 30);
  triangle(x, y, x+60, y+140, x+120, y);
}
//original scale
//fill(201, 201, 55);
//rect(200, 190, 100, 110, 30);
//triangle(190, 190, 250, 330, 310, 190);
