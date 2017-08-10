//Alexander Gross
//August 10, 2017

PImage img;
PImage img2;
int ImageW = 720;
int ImageH = 480;
float x,y,rot;
void setup() {
  size(720, 640);
  img=loadImage("Tesla.jpg");
  img2=loadImage("Rotate.png");
  x= 360;
  y= 240;
  rot=0;
}
void draw() {
  background(140);
  imageMode(CENTER);
  image(img, 360, 240, ImageW, ImageH);
  if(mouseX<720 && mouseY<480){
    if (mousePressed) {
    ImageW = mouseX;
    ImageH= mouseY;
    }
  }
  fill(144,238,144);
  rect(0,480,240,240);
  if(mouseX<240 && mouseY>480){
    if (mousePressed){
      tint(144,238,144);
      image(img, 360, 240, ImageW, ImageH);
    }
  }
  fill(255,0,0);
  rect(240,480,240,240);
  if(mouseX>240 && mouseX<480){
    if(mouseY>480){
      if(mousePressed){
      tint(255,0,0);
      image(img, 360, 240, ImageW, ImageH);
      }
    }
  }
  image(img2,600,560,240,160);
  if(mouseX>480 && mouseY>480){
    if(mousePressed){
    background(140);
    translate(x,y);
    rotate(rot);
    imageMode(CENTER);
    image(img,0, 0, ImageW, ImageH);
    rot += 0.01;
    }
  }
}