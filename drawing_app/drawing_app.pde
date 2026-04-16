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
boolean downloadON;
boolean randomON;
PImage download;
PImage random;

void setup () {
  size(1200, 1000);
  sliderX=50;
  download=loadImage("download.png");
  random=loadImage("random.png");
}


void draw () {
  strokeWeight(3);
  stroke(0);

  fill(#00F4FF);
  rect(0, 0, 1200, 300);

  tactile(1100, 75, 50);
  fill(red);
  ellipse(1100, 75, 50, 50);

  tactile(1000, 75, 50);
  fill(grey);
  ellipse(1000, 75, 50, 50);

  tactile(900, 75, 50);
  fill(black);
  ellipse(900, 75, 50, 50);

  tactile(800, 75, 50);
  fill(green);
  ellipse(800, 75, 50, 50);

  tactile(1100, 150, 50);
  fill(purple);
  ellipse(1100, 150, 50, 50);

  tactile(1000, 150, 50);
  fill(yellow);
  ellipse(1000, 150, 50, 50);

  tactile(900, 150, 50);
  fill(blue);
  ellipse(900, 150, 50, 50);

  tactilerect(50, 50);
  fill(red);
  rect(50, 50, 50, 50);

  tactilerect(125, 50);
  fill(grey);
  rect(125, 50, 50, 50);

  tactilerect(200, 50);
  fill(black);
  rect(200, 50, 50, 50);

  tactilerect(275, 50);
  fill(green);
  rect(275, 50, 50, 50);

  tactilerect(350, 50);
  fill(purple);
  rect(350, 50, 50, 50);

  tactilerect(425, 50);
  fill(yellow);
  rect(425, 50, 50, 50);

  tactilerect(500, 50);
  fill(blue);
  rect(500, 50, 50, 50);
  
  //save button
  fill(black);
  rect(850,200,100,50);
  fill(255);
  textSize(40);
  text("save",860,235);
  
  //load button
  fill(black);
  rect(1000,200,100,50);
  fill(255);
  text("load",1010,235);
  

  stroke(black);
  line(50, 200, 550, 200);
  tactile(sliderX, 200, 50);
  fill(255);
  ellipse(sliderX, 200, 50, 50);
  brushsize=map(sliderX, 50, 550, 1, 100);

  fill(#00F4FF);
  stroke(black);
  rect(0, 900, 1200, 100);

  fill(selectedColor);
  ellipse(100, 950, 50, 50);
  
  stroke(selectedColor);
  strokeWeight(brushsize);
  line(200,950,300,950);
  
stroke(black);
strokeWeight(1);
  if (downloadON) {
  fill(red);
} else {
  fill(grey);
}
rect(1100, 900, 100, 100);
  image(download, 1100, 900, 100, 100);

  if (randomON) {
  fill(red);
} else {
  fill(grey);
}
rect(1000, 900, 100, 100);
  image(random, 1000, 900, 100, 100);
}



void mouseDragged() {
  controlSlider();
  
  if (mouseX>=0&&mouseX<=1200&&mouseY>=300&&mouseY<=900)

  if (downloadON) {
    image(download, pmouseX, pmouseY, 100, 100);
  } else if (randomON) {
    image(random, pmouseX, pmouseY, 100, 100);
  } else {
    strokeWeight(brushsize);
    stroke(selectedColor);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY)<r) {
    stroke(255);
  } else {
    stroke (0);
  }
}

void mousePressed () {
  if (dist(1100, 75, mouseX, mouseY)<50) {
    selectedColor=red;
  }
  if (dist(1000, 75, mouseX, mouseY)<50) {
    selectedColor=grey;
  }
  if (dist(900, 75, mouseX, mouseY)<50) {
    selectedColor=black;
  }
  if (dist(800, 75, mouseX, mouseY)<50) {
    selectedColor=green;
  }
  if (dist(1100, 150, mouseX, mouseY)<50) {
    selectedColor=purple;
  }
  if (dist(1000, 150, mouseX, mouseY)<50) {
    selectedColor=yellow;
  }
  if (dist(900, 150, mouseX, mouseY)<50) {
    selectedColor=blue;
  }
  if (mouseX>50 &&mouseX<100 && mouseY>50 && mouseY<100) {
    backgroundcolor=red;
    background(backgroundcolor);
  }
  if (mouseX>125 &&mouseX<175 && mouseY>50 && mouseY<100) {
    backgroundcolor=grey;
    background(backgroundcolor);
  }
  if (mouseX>200 &&mouseX<250 && mouseY>50 && mouseY<100) {
    backgroundcolor=black;
    background(backgroundcolor);
  }
  if (mouseX>275 &&mouseX<325 && mouseY>50 && mouseY<100) {
    backgroundcolor=green;
    background(backgroundcolor);
  }
  if (mouseX>350 &&mouseX<400 && mouseY>50 && mouseY<100) {
    backgroundcolor=purple;
    background(backgroundcolor);
  }
  if (mouseX>425 &&mouseX<475 && mouseY>50 && mouseY<100) {
    backgroundcolor=yellow;
    background(backgroundcolor);
  }
  if (mouseX>500 &&mouseX<550 && mouseY>50 && mouseY<100) {
    backgroundcolor=blue;
    background(backgroundcolor);
  }
  controlSlider();

  if (mouseX>1100&&mouseX<1200&&mouseY>900&&mouseY<1000) {
    downloadON=!downloadON;
    randomON=false;
  }

  if (mouseX>1000&&mouseX<1100&&mouseY>900&&mouseY<1000) {
    randomON=!randomON;
    downloadON=false;
  }
  
  //load button
  if (mouseX>1000&&mouseX<1100&&mouseY>200&&mouseY<250){
    selectInput("Pick an image to load","openImage");
  }
  
  //save button
  if(mouseX>850&&mouseX<950&&mouseY>200&&mouseY<250){
    selectOutput("Choose a name for your new image file","saveImage");
  }
}

void tactilerect(int x, int y) {
  if (mouseX>x&&mouseX<x+50&&mouseY>y&&mouseY<y+50) {
    stroke(255);
  } else {
    stroke (0);
  }
}

void controlSlider() {
  if (mouseX>50&&mouseX<550&&mouseY>175&&mouseY<225) {
    sliderX=mouseX;
  }
}

void saveImage(File f){
  if (f != null){
    PImage canvas = get(0, 300, width, height - 300);
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f){
  if (f!=null){
    int n=0;
    while (n<100){
      PImage pic=loadImage(f.getPath());
      image(pic,0,300);
      n=n+1;
    }
  }
}
