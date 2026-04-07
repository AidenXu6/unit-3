color red=#FF0505;
color blue=#0528FF;
color purple=#FF05F3;
color green=#00FF1F;
color yellow=#FFF300;
color black=#0D0C01;
color grey=#A09F99;

color selectedColor;

void setup (){
  size(1200,1200);
  
}


void draw (){
  
  strokeWeight(3);
  
  tactile(1100,75,50);
  fill(red);
  ellipse(1100,75,50,50);
  
  tactile(1000,75,50);
   fill(grey);
  ellipse(1000,75,50,50);
  
  tactile(900,75,50);
  fill(black);
  ellipse(900,75,50,50);
  
  tactile(800,75,50);
   fill(green);
  ellipse(800,75,50,50);
  
  tactile(1100,150,50);
   fill(purple);
  ellipse(1100,150,50,50);
  
  tactile(1000,150,50);
   fill(yellow);
  ellipse(1000,150,50,50);
  
  tactile(900,150,50);
   fill(blue);
  ellipse(900,150,50,50);
  
  stroke(black);
   fill(red);
  rect(50,50,50,50);
  
   fill(grey);
  rect(125,50,50,50);
  
  fill(black);
  rect(200,50,50,50);
  
   fill(green);
  rect(275,50,50,50);
  
   fill(purple);
  rect(350,50,50,50);
  
   fill(yellow);
  rect(425,50,50,50);
  
   fill(blue);
  rect(500,50,50,50);
  
  
}



void mouseDragged(){
  stroke(selectedColor);
  line(pmouseX,pmouseY,mouseX,mouseY);
}

void tactile (int x,int y,int r){
     if (dist(x,y,mouseX,mouseY)<r){
    stroke(255);
  } else {
    stroke (0);
  }
}

void mousePressed () {
  if(dist(1100,75,mouseX,mouseY)<50){
    selectedColor=red;
  }
    if(dist(1000,75,mouseX,mouseY)<50){
    selectedColor=grey;
    }
      if(dist(900,75,mouseX,mouseY)<50){
    selectedColor=black;
      }
      if(dist(800,75,mouseX,mouseY)<50){
    selectedColor=green;
      }
      if(dist(1100,150,mouseX,mouseY)<50){
    selectedColor=purple;
      }
      if(dist(1000,150,mouseX,mouseY)<50){
    selectedColor=yellow;
      }
      if(dist(900,150,mouseX,mouseY)<50){
    selectedColor=blue;
      }
}


  
