PGraphics regmario;
float scale;
float yloc;
float x;
float y;
float gravity;
float ground;
float roof;

void setup(){
  size(window.innerWidth, window.innerHeight);
  //size(700,300);
  imageMode(CENTER,CENTER);
  noStroke();
  rectMode(CENTER);
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
  yloc = 0;
  x = 0;
  y = 0;
  gravity = -2;
  ground = (height*0.75 - ((height*0.12)/2 + (scale)/2))+5;
  roof = scale/2;
}

void draw(){
  background(52, 152, 219);
  fill(20,20,20,50);
  image(regmario,width*0.4,yloc);
  fill(87,98,110);
  rect(width/2,height*0.75,width,height*0.12);
  fill(0);
  rectMode(CORNER);
  rect(0,height*0.75+(height*0.12)/2,width,height);
  rectMode(CENTER);
  
  yloc+=gravity;
  //block1
  if(width*0.4 > (width/2 + x) - scale && width*0.4 < (width/2 + x) + scale){
    if(yloc <= height*0.33-scale*0.25){
      roof = scale/2;
      ground = height*0.33-scale*0.83;
    }
    else{
      roof = height*0.33 + scale;
      ground = (height*0.75 - ((height*0.12)/2 + (scale)/2))+5;
    }
  }
  else if(width*0.4 > (width/2+scale+30+x) - scale && width*0.4 < (width/2 +scale+ 30+x) + scale){
    if(yloc <= height*0.33-scale*0.25){
      roof = scale/2;
      ground = height*0.33-scale*0.83;
    }
    else{
      roof = height*0.33 + scale;
      ground = (height*0.75 - ((height*0.12)/2 + (scale)/2))+5;
    }
  }
  else{
    roof = scale/2;
    ground = (height*0.75 - ((height*0.12)/2 + (scale)/2))+5;
  }
 
  //ground
  if(yloc < ground){
    gravity+=0.75;
  }
  else{
    gravity = 0;
    yloc = ground;
  }
  //roof
  if(yloc < roof){
    gravity = 0;
    yloc = roof;
  }
  controls();
  
  text(height*0.33-scale*0.5,20,40);
  text(mouseY,20,60);
  fill(139,69,19);
  rect(width/2+x,height*0.33,scale,scale);
  fill(255,222,173);
  rect(width/2+scale+30+x,height*0.33,scale,scale);
}

void mousePressed(){
  if(x < 120){
    if(mouseX > 0 && mouseX <= width*0.2){
      x+=30;
    }
    if(mouseX > width*0.2 && mouseX <= width*0.4){
      gravity = -10;
      x+=30;
    }
    if(mouseX > width*0.4 && mouseX <= width*0.6){
      gravity = -10;
    }
    if(mouseX > width*0.6 && mouseX <= width*0.8){
      gravity = -10;
      x-=30;
    }
    if(mouseX > width*0.8 && mouseX <= width){
      x-=30;
    }
  }
  else{
    x = 119;
  }
}

void controls(){
  fill(255,255,255,130);
  textSize(scale);
  text("←", width*0.1,height*0.95);
  rect(width*0.2,height*0.9,width*0.01,height*0.02);
  text("↖", width*0.3,height*0.95);
  rect(width*0.4,height*0.9,width*0.01,height*0.02);
  text("↑", width*0.5,height*0.95);
  rect(width*0.6,height*0.9,width*0.01,height*0.02);
  text("↗", width*0.7,height*0.95);
  rect(width*0.8,height*0.9,width*0.01,height*0.02);
  text("→", width*0.9,height*0.95);
}
