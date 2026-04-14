PImage download;

boolean downloadON;
void setup() {
  size(600,600);
  background(100);
  download=loadImage("download.png");
}


void draw(){
  rect(0,0,100,100);
  image(download,00,00,100,100);
}

void mouseDragged(){
if(downloadON==false){
  line(pmouseX,pmouseY,mouseX,mouseY);
}
else{image(download,pmouseX,pmouseY,100,100);
  }
}

void mousePressed(){
  if(mouseX>0&&mouseX<100&&mouseY>0&&mouseY<100){
    downloadON=!downloadON;
  }
}
