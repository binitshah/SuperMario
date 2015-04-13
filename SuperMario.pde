PGraphics regmario;
float scale;

void setup(){
  size(window.innerWidth, window.innerHeight);
  imageMode(CENTER,CENTER);
  rectMode(CENTER);
  noStroke();
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
}

void draw(){
  background(52, 152, 219);
  fill(20,20,20,50);
  image(regmario, mouseX,mouseY);
}
