color red=#FF0505;
color blue=#0528FF;
color purple=#FF05F3;
color green=#00FF1F;
color yellow=#FFF300;
color black=#0D0C01;
color grey=#A09F99;

color selectedColor;
color backgroundcolor;
int sliderX;
float brushsize;

void setup (){
  size(1200,1200);
  sliderX=50;
}


void draw (){
  strokeWeight(3);
  stroke(0);
  
  fill(#00F4FF);
  rect(0,0,1200,300);
  
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
  
  tactilerect(50,50);
   fill(red);
  rect(50,50,50,50);
  
  tactilerect(125,50);
   fill(grey);
  rect(125,50,50,50);
  
  tactilerect(200,50);
  fill(black);
  rect(200,50,50,50);
  
  tactilerect(275,50);
   fill(green);
  rect(275,50,50,50);
  
   tactilerect(350,50);
   fill(purple);
  rect(350,50,50,50);
  
   tactilerect(425,50);
   fill(yellow);
  rect(425,50,50,50);
  
   tactilerect(500,50);
   fill(blue);
  rect(500,50,50,50);
 
 stroke(black);
  line(50,200,550,200);
  tactile(sliderX,200,50);
  fill(255);
   ellipse(sliderX,200,50,50);
   brushsize=map(sliderX,50,550,1,100);
}



void mouseDragged(){
  strokeWeight(brushsize);
  stroke(selectedColor);
  line(pmouseX,pmouseY,mouseX,mouseY);
  controlSlider();
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
        if(mouseX>50 &&mouseX<100 && mouseY>50 && mouseY<100){
    backgroundcolor=red;
    background(backgroundcolor);
  }
    if(mouseX>125 &&mouseX<175 && mouseY>50 && mouseY<100){
    backgroundcolor=grey;
     background(backgroundcolor);
    }
      if(mouseX>200 &&mouseX<250 && mouseY>50 && mouseY<100){
    backgroundcolor=black;
     background(backgroundcolor);
      }
      if(mouseX>275 &&mouseX<325 && mouseY>50 && mouseY<100){
    backgroundcolor=green;
     background(backgroundcolor);
      }
      if(mouseX>350 &&mouseX<400 && mouseY>50 && mouseY<100){
    backgroundcolor=purple;
     background(backgroundcolor);
      }
      if(mouseX>425 &&mouseX<475 && mouseY>50 && mouseY<100){
    backgroundcolor=yellow;
     background(backgroundcolor);
      }
      if(mouseX>500 &&mouseX<550 && mouseY>50 && mouseY<100){
    backgroundcolor=blue;
     background(backgroundcolor);
      }
      controlSlider();
}

void tactilerect(int x, int y){
  if (mouseX>x&&mouseX<x+50&&mouseY>y&&mouseY<y+50){
    stroke(255);
  } else {
    stroke (0);
  }
}

void controlSlider(){
    if(mouseX>50&&mouseX<550&&mouseY>175&&mouseY<225){
    sliderX=mouseX;
    }
  }
  



  
