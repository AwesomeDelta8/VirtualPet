import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup () {
  size(800, 800);
  arduino = new Arduino(this, Arduino.list()[1], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}
void draw () {
  int rButton = arduino.analogRead(1);
  int y = arduino.analogRead(5);
    if(y<0){
    y=0;
  }
  if(y>80){
    y=75;
  }
  int switchB = arduino.analogRead(3);
  if(switchB > 0){
    switchB = y+100;
  }
  System.out.println(switchB);
  System.out.println(y);
    background(90,switchB,switchB);
  noStroke();
  //foot
  fill(#F5B363);
  ellipse(600,650,200,100);
  ellipse(200,650,200,100);
  //body
  if(rButton>0){
  fill(#E5EA58);
  }else{
  fill(#3DB77B);
  }
  ellipse(400, 350, 500, 600);
  ellipse(400, 500, 600, 300);
  ellipse(185, 420, 200, 350);
  ellipse(615, 420, 200, 350);
  //belly
  fill(#797765);
  ellipse(400, 400, 360, 360);
  //mouth
  fill(#F5B363);
  arc(400, 195, 150, 20, 0-0.4, PI+0.4);
  //head
  arc(400, 80, 180, 60, 3*PI/3, 9*PI/3);
  ellipse(400, 100, 80, 70);
  //cheeks
  if(rButton>0){
  fill(#C6243A);
  }else{
  fill(#FAE92D);
}

  ellipse(320, 190, 20, 20);
  ellipse(480, 190, 20, 20);
  //eyes
  ellipse(360, 160, 23, 40-0.5*y);
  ellipse(440, 160, 23, 40-0.5*y);
  //yellow orb
  fill(252, 243, 138);
  ellipse(400, 400, 100, 100);
  fill(#FAF6C7);
  ellipse(395, 390, 65, 65);
  //eyes
  rotate(0.5);
  fill(255, 255, 255);
  ellipse(270, 20, 100, 150);
  fill(#FAE92D);
  ellipse(280, 20, 30, 60);
  fill(0, 0, 0);
  ellipse(280, 20, 20, 40);
  rotate(-0.9);
  fill(255, 255, 255);
  ellipse(480, 360, 100, 150);
  fill(#FAE92D);
  ellipse(460, 355, 30, 60);
  fill(0, 0, 0);
  ellipse(460, 355, 20, 40);

  //hips
  fill(#F5B363);
  rotate(0.8);
  ellipse(280, 330, 60, 100);
  ellipse(760, 133, 60, 100);
  rotate(-0.75);
  ellipse(490, 625, 60, 100);
  ellipse(7, 442, 60, 100);

  //arms
  if(rButton>0){
  fill(#E5EA58);
  }else{
  fill(#3DB77B);
  }
  rotate(0.8);
  ellipse(200,150,150,90);
  rotate(-0.8);
  ellipse(570,450,150,90);
  
}
