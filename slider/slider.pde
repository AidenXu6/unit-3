color red =#FB3640;
color grey=#605F5E;
color pink=#FCBFB7;
color blue=#26547C;
color green=#06D6A0;

float sliderX;
float diameter;

void setup(){
  size(800,800);
  strokeWeight(5);
  stroke(pink);
  fill(pink);
  sliderX=400;
  diameter=10;
}

void draw() {
  background (grey);
  diameter=map(sliderX,700,100,100,200);
  line(100,100,100,700);
  ellipse(100,sliderX,50,50);
  circle(500,400,diameter);
}
  void mouseDragged(){
controlSlider();
    }

  
    void mousePressed(){
controlSlider();
  }
  
  
  void controlSlider(){
      if(mouseX>50&&mouseX<150&&mouseY>100&&mouseY<700){
    sliderX=mouseY;
    }
  }
  
