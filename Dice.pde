void setup(){
  size(1024,768);
  stroke(0,0,0);
  //noLoop();
}
int size=8;
int count=0;
void dice(int x,int y,int n){
  strokeWeight(1);
  rect(x,y,size,size,2);
  strokeWeight(1);
  if(n==1){
    point(x+size/2, y+size/2);
  }
  if(n==2){
    point(x+size/4, y+size/4);
    point(x+size*3/4, y+size*3/4 );
  }
  if(n==3){
    dice(x,y,2);
    point(x+size/2,y+size/2);
  }
  if(n==4){
    dice(x,y,2);
    point(x+size*3/4,y+size/4);
    point(x+size/4,y+size*3/4);
  }
  if(n==5){
    dice(x,y,4);
    dice(x,y,1);
  }
  if(n==6){
    point(x+size/3, y+size/4);  
    point(x+size/3, y+size/2);
    point(x+size/3, y+size*3/4);
    point(x+size*2/3, y+size/4);  
    point(x+size*2/3, y+size/2);
    point(x+size*2/3, y+size*3/4);
  }
}
void draw(){
  count=0;
  background(255,255,255);
  fill(255,255,255);
  for(int i=0; i<width-size; i+=size){
    for(int j=0; j<height-size; j+=size){
      dice(i,j,(int)(Math.random()*6+1));
      count++;
    }  
  }
  fill(50,50,255);
  textAlign(CENTER,CENTER);
  textSize(8);
  text(count+" Dice", width*0.5, height-5);
  noLoop();
};
void mouseClicked(){
  redraw();
}
