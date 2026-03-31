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

  
  if (dist(250,75,mouseX,mouseY)<50){
    stroke(0);
  } else {
    stroke (255);
  }

  fill(red);
  ellipse(250,75,75,75);
  
   if (dist(400,75,mouseX,mouseY)<50){
    stroke(0);
  } else {
    stroke (255);
  }
  
  fill(blue);
  ellipse(400,75,75,75);
  
     if (dist(550,75,mouseX,mouseY)<50){
    stroke(0);
  } else {
    stroke (255);
  }
  fill(green);
  ellipse(550,75,75,75);
  
  stroke(255);
    fill(selectedColor);
 rect(50,150,700,650);
}

void mouseReleased () {
  if(dist(250,75,mouseX,mouseY)<50){
    selectedColor=red;
  }
    if(dist(400,75,mouseX,mouseY)<50){
    selectedColor=blue;
    }
      if(dist(550,75,mouseX,mouseY)<50){
    selectedColor=green;
      }
}
