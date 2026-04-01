color red =#FB3640;
color grey=#605F5E;
color pink=#FCBFB7;
color blue=#26547C;
color green=#06D6A0;

int toggle;

void setup(){
  size(800,800);
  strokeWeight(5);
  textSize(30);
  toggle=1;
}

void draw(){
  background(pink);
  
  fill(red);
  stroke(255);
  rect(400,400,100,100);
  
  if(toggle>0){
  guidlines();
  }
}

void mouseReleased(){
  if(mouseX>400 && mouseX<500 && mouseY>400&&mouseY<500) {
    toggle=toggle*-1;
  }
}

void guidlines(){
  fill(blue);
  stroke(blue);
  line(0,mouseY,width,mouseY);
  line(mouseX,0,mouseX,height);
}
