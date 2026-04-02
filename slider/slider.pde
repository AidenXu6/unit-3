color red =#FB3640;
color grey=#605F5E;
color pink=#FCBFB7;
color blue=#26547C;
color green=#06D6A0;

float sliderX;

void setup(){
  size(800,800);
  strokeWeight(5);
  stroke(pink);
  fill(pink);
  sliderX=400;
}

void draw() {
  background (grey);
  
  line(100,100,700,100);
  ellipse(sliderX,100,50,50);
  circle(400,550,sliderX);
}
  void mouseDragged(){
controlSlider();
    }

  
    void mousePressed(){
controlSlider();
  }
  
  
  void controlSlider(){
      if(mouseX>100&&mouseX<700&&mouseY>50&&mouseY<150){
    sliderX=mouseX;
    }
  }
