AND and;

void setup(){
     size(480, 480);
     background(255);
     and = new AND((float)width/2+1, (float)height/2, 50);    
     and.points();
}

void draw(){
  background(255);
  and.display();
  if (mousePressed == true){
     and.update(mouseX, mouseY);
  }
}
