void setup(){
  size(1000,660);
  stroke(0,0,0);
  //noLoop();
}
int side=5;
boolean show=true;
int c=0;
int total=0;
void dice(int x,int y,int n){
  strokeWeight(1);
  noFill();
  rect(x,y,side,side,1);
  strokeWeight(1);
  if(n==1){
    point(x+side*2/5, y+side*2/5);
  }
  if(n==2){
    point(x+side*1/5, y+side*1/5);
    point(x+side*3/5, y+side*3/5 );
  }
  if(n==3){
    dice(x,y,2);
    point(x+side*2/5,y+side*2/5);
  }
  if(n==4){
    dice(x,y,2);
    point(x+side*3/5,y+side/5);
    point(x+side/5,y+side*3/5);
  }
  if(n==5){
    dice(x,y,4);
    dice(x,y,1);
  }
  if(n==6){
    point(x+side/5, y+side/5);  
    point(x+side/5, y+side*2/5);
    point(x+side/5, y+side*3/5);
    point(x+side*3/5, y+side/5);  
    point(x+side*3/5, y+side*2/5);
    point(x+side*3/5, y+side*3/5);
  }
}
void draw(){
  c=0;
  background(255,255,255);
  fill(255,255,255);
  for(int i=0; i<width-side+1; i+=side){
    for(int j=0; j<height-side+1; j+=side){
       int dots=(int)(Math.random()*6+1);
       total+=dots;
       dice(i,j,dots);
       c++; 
    }  
  }
  if(show){
    fill(50,50,255);
  textAlign(CENTER,CENTER);
  textSize(50);
  text(c+" Dice", width*0.5, height*0.5);
  textSize(30);
  text("Total: "+total+" dots", width*0.5, height*0.5+50);
  }
  noLoop();
};
void mouseClicked(){
  c=0;
  if(show){
    show=false;
  }else{
    show=true;
  }
  redraw();
}
