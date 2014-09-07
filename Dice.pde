void setup(){
  size(1024,768);
  stroke(0,0,0);
  //noLoop();
}
int side=8;
int c=0;
void dice(int x,int y,int n){
  strokeWeight(1);
  rect(x,y,side,side,2);
  strokeWeight(1);
  if(n==1){
    point(x+side/2, y+side/2);
  }
  if(n==2){
    point(x+side/4, y+side/4);
    point(x+side*3/4, y+side*3/4 );
  }
  if(n==3){
    dice(x,y,2);
    point(x+side/2,y+side/2);
  }
  if(n==4){
    dice(x,y,2);
    point(x+side*3/4,y+side/4);
    point(x+side/4,y+side*3/4);
  }
  if(n==5){
    dice(x,y,4);
    dice(x,y,1);
  }
  if(n==6){
    point(x+side/3, y+side/4);  
    point(x+side/3, y+side/2);
    point(x+side/3, y+side*3/4);
    point(x+side*2/3, y+side/4);  
    point(x+side*2/3, y+side/2);
    point(x+side*2/3, y+side*3/4);
  }
}
void draw(){
  c=0;
  background(255,255,255);
  fill(255,255,255);
  for(int i=0; i<width-side; i+=side){
    for(int j=0; j<height-side; j+=side){
      dice(i,j,(int)(Math.random()*6+1));
      c++;
    }  
  }
  fill(50,50,255);
  textAlign(CENTER,CENTER);
  textSize(8);
  text(c+" Dice", width*0.5, height-5);
  noLoop();
};
void mouseClicked(){
  redraw();
}
