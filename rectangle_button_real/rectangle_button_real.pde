//aiden
color red =#FB3640;
color grey=#605F5E;
color pink=#FCBFB7;
color blue=#26547C;
color green=#06D6A0;

color selectedColor;

void setup (){
  size(800,800);
  selectedColor=pink;
}

void draw(){
  background(grey);
  strokeWeight(5);

tactile(100,50);
  fill(red);
  rect(100,50,75,75);
  
  tactile(600,50);
  fill(blue);
  rect(600,50,75,75);
  
  tactile(400,50);
  fill(green);
  rect(400,50,75,75);
  
  stroke(255);
    fill(selectedColor);
 rect(50,150,700,650);
}

void tactile (int x,int y){
     if (dist(x,y,mouseX,mouseY)<76){
    stroke(0);
  } else {
    stroke (255);
  }
}

void mouseReleased () {
  if(mouseX>100 && mouseX<175 && mouseY>50 &&mouseY<125){
    selectedColor=red;
  }
    if(mouseX>600 && mouseX<675 && mouseY>50 &&mouseY<125){
    selectedColor=blue;
    }
      if(mouseX>400&& mouseX<475 && mouseY>50 &&mouseY<125){
    selectedColor=green;
      }
}
