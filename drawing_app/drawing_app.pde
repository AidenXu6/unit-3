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

  //top toolbar
  fill(#00F4FF);
  rect(0, 0, 1200, 300);

  //circle buttons
  circleButton(red, 1100, 75, 50);

  circleButton(grey, 1000, 75, 50);

  circleButton(black, 900, 75, 50);

  circleButton(green, 800, 75, 50);

  circleButton(purple, 1100, 150, 50);

  circleButton(yellow, 1000, 150, 50);

  circleButton(blue, 900, 150, 50);

  //rect buttons
  rectButton(red, 50, 50, 50, 50);

  rectButton(grey, 125, 50, 50, 50);

  rectButton(black, 200, 50, 50, 50);

  rectButton(green, 275, 50, 50, 50);

  rectButton(purple, 350, 50, 50, 50);

  rectButton(yellow, 425, 50, 50, 50);

  rectButton(blue, 500, 50, 50, 50);

  //save button
  rectButton(black, 850, 200, 100, 50);
  fill(255);
  textSize(40);
  text("save", 860, 235);

  //load button
  rectButton(black, 1000, 200, 100, 50);
  fill(255);
  text("load", 1010, 235);

  //slider
  stroke(black);
  line(50, 200, 550, 200);
  tactile(sliderX, 200, 50);
  fill(255);
  ellipse(sliderX, 200, 50, 50);
  brushsize=map(sliderX, 50, 550, 1, 100);

  //bottom toolbar
  fill(#00F4FF);
  stroke(black);
  rect(0, 900, 1200, 100);

  //color indicator
  fill(selectedColor);
  ellipse(100, 950, 50, 50);

  //thickness indicator
  stroke(selectedColor);
  strokeWeight(brushsize);
  line(200, 950, 300, 950);

  //stamp buttons
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

  //squiggly line and stamp code
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

  //circle buttons
  if (dist(1100, 75, mouseX, mouseY)<50) {
    selectedColor=red;
    downloadON = false;
    randomON = false;
  }
  if (dist(1000, 75, mouseX, mouseY)<50) {
    selectedColor=grey;
    downloadON = false;
    randomON = false;
  }
  if (dist(900, 75, mouseX, mouseY)<50) {
    selectedColor=black;
    downloadON = false;
    randomON = false;
  }
  if (dist(800, 75, mouseX, mouseY)<50) {
    selectedColor=green;
    downloadON = false;
    randomON = false;
  }
  if (dist(1100, 150, mouseX, mouseY)<50) {
    selectedColor=purple;
    downloadON = false;
    randomON = false;
  }
  if (dist(1000, 150, mouseX, mouseY)<50) {
    selectedColor=yellow;
    downloadON = false;
    randomON = false;
  }
  if (dist(900, 150, mouseX, mouseY)<50) {
    selectedColor=blue;
    downloadON = false;
    randomON = false;
  }

  //rectangle buttons
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

  //stamp tool code
  if (mouseX>1100&&mouseX<1200&&mouseY>900&&mouseY<1000) {
    downloadON=!downloadON;
    randomON=false;
  }

  if (mouseX>1000&&mouseX<1100&&mouseY>900&&mouseY<1000) {
    randomON=!randomON;
    downloadON=false;
  }

  //load button
  if (mouseX>1000&&mouseX<1100&&mouseY>200&&mouseY<250) {
    selectInput("Pick an image to load", "openImage");
  }

  //save button
  if (mouseX>850&&mouseX<950&&mouseY>200&&mouseY<250) {
    selectOutput("Choose a name for your new image file", "saveImage");
  }
}

void tactilerect(int x, int y, int w, int h) {
  if (mouseX>x&&mouseX<x+w&&mouseY>y&&mouseY<y+h) {
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

void saveImage(File f) {
  if (f != null) {
    PImage canvas = get(0, 300, width, height - 300);
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f) {
  if (f!=null) {
    int n=0;
    while (n<100) {
      PImage pic=loadImage(f.getPath());
      image(pic, 0, 300);
      n=n+1;
    }
  }
}

void circleButton(color c, int x, int y, int r) {
  tactile(x, y, r);
  fill(c);
  ellipse(x, y, r, r);
}

void rectButton(color c, int x, int y, int w, int h) {
  tactilerect(x, y, w, h);
  fill(c);
  rect(x, y, w, h);
}
