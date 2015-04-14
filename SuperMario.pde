PGraphics regmario;
float scale;
float y;
float x;
float gravity;

void setup(){
  size(window.innerWidth, window.innerHeight);
  //size(700,300);
  imageMode(CENTER,CENTER);
  rectMode(CENTER);
  strokeWeight(4);
  scale = width*0.05;
  regmario = createGraphics(scale,scale,P2D);
  regmario.beginDraw();
  regmario.stroke(0);
  regmario.strokeWeight(1);
  regmario.fill(255,195,170);
  regmario.ellipse((scale)/2+scale*0.25,(scale)/2-scale*0.07,scale*0.2,scale*0.15);
  regmario.fill(255,0,0);
  regmario.ellipse((scale)/2,(scale)/2,scale*0.5,scale*0.65);
  regmario.fill(0,0,255);
  regmario.rectMode(CENTER);
  regmario.rect((scale)/2-scale*0.005,(scale)/2+scale*0.18,scale*0.48,scale*0.25,10);
  regmario.fill(255,195,170);
  regmario.ellipse((scale)/2-scale*0.05,(scale)/2-scale*0.07,scale*0.2,scale*0.15);
  regmario.ellipse((scale)/2,(scale)/2-scale*0.32,scale*0.4,scale*0.3);
  regmario.fill(255,0,0);
  regmario.rect((scale)/2-scale*0.005,(scale)/2-scale*0.45,scale*0.36,scale*0.1,15);
  regmario.fill(75,57,50);
  regmario.rect((scale)/2-scale*0.17,(scale)/2+scale*0.26,scale*0.23,scale*0.15,15);
  regmario.rect((scale)/2+scale*0.17,(scale)/2+scale*0.24,scale*0.23,scale*0.15,15);
  regmario.strokeWeight(3);
  regmario.point((scale)/2+scale*0.06,(scale)/2-scale*0.31);
  regmario.point((scale)/2-scale*0.03,(scale)/2-scale*0.305);
  regmario.endDraw();
  y = 0;
  x = 0;
  gravity = -2;
}

void draw(){
  background(52, 152, 219);
  fill(20,20,20,50);
  image(regmario,width*0.4+x,y);
  fill(87,98,110);
  rect(width/2,height*0.75,width,height*0.12);
  
  y+=gravity;
  
  if(y < (height*0.75 - ((height*0.12)/2 + (scale)/2))+3){
    gravity+=0.75;
  }
  else{
    gravity = 0;
    y = (height*0.75 - ((height*0.12)/2 + (scale)/2))+3;
  }
}

void mousePressed(){
  if(mouseX < width*0.75 && mouseX > width*0.25){
    gravity = -10;
  }
  
  if(mouseX > width*0.75){
    x+=10;
  }
  else if(mouseX < width*0.25){
    x-=10;
  }
}

void touchMove(TouchEvent touchEvent) {
 
  fill(180, 180, 100);
  for (int i = 0; i < touchEvent.touches.length; i++) {
    int x = touchEvent.touches[i].offsetX;
    int y = touchEvent.touches[i].offsetY;
    ellipse(x, y, 50, 50);
  }
}
