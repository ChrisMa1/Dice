void setup(){
  size(1000,670);
  stroke(0,0,0);
  //noLoop();
}
int side=5; //size of dice
boolean showCount=true; //display counters over dice
int ct=0; //
int total=0;
void dice(int x,int y,int n){
  noStroke();
  if((x+y)%(side*2)==0){
    fill(255,255,255);
  }else{
    fill(175,175,175);
  }
  
  rect(x,y,side,side,1);
  strokeWeight(1);
  stroke(0);
  if(n==1){
    point(x+side/2, y+side/2);
  }
  if(n==2){
    point(x+1, y+1);
    point(x+3,y+3);
  }
  if(n==3){
    point(x+1, y+1);
    point(x+3,y+3);
    point(x+2,y+2);
  }
  if(n==4){
    point(x+1, y+1);
    point(x+3,y+1);
    point(x+1,y+3);
    point(x+3,y+3);
  }
  if(n==5){
    point(x+1, y+1);
    point(x+3,y+1);
    point(x+1,y+3);
    point(x+3,y+3);
    point(x+2,y+2);
  }
  if(n==6){
    point(x+1, y);  
    point(x+1, y+2);
    point(x+1, y+4);
    point(x+3, y);  
    point(x+3, y+2);
    point(x+3, y+4);
  }
}
void draw(){
  ct=0;
  background(255,255,255);
  fill(255,255,255);
  for(int i=0; i<width-side+1; i+=side){
    for(int j=0; j<height-side+1; j+=side){
       int dots=(int)(Math.random()*6+1);
       //int dots=(int)(6);
       total+=dots;
       dice(i,j,dots);
       ct++; 
    }  
  }
  if(showCount){
    fill(50,50,255);
  textAlign(CENTER,CENTER);
  textSize(50);
  text(ct+" Dice", width*0.5, height*0.5);
  textSize(30);
  text("Total: "+total+" dots", width*0.5, height*0.5+50);
  }
  noLoop();
};
void mouseClicked(){
  if(showCount){
    showCount=false;
  }else{
    showCount=true;
  }
  redraw();
}
