float r = 0;
float g = 0;
float b = 0;

int strokeSize = 1; 

void setup(){
size(800,800);
background(255);
}


void draw(){

  //This is the default setting for paint - you can draw anything in standard pen stroke & in standard color (black)
   if(mousePressed){
     stroke(r, g, b);
     strokeWeight(strokeSize);
     line(pmouseX, pmouseY, mouseX, mouseY);
   }
   
   //Create the line for the paint options - separates the canvas from the paint options
   strokeWeight(3);
   line(0, height-80, 800, height-80); 
   stroke(0);
   strokeWeight(1);
   fill(255, 0, 0);
   rect(0, height - 80, 80, 80);
 
   fill(0, 255, 0);
   rect(80, height - 80, 80, 80);
     
   fill(0, 0, 255);
   rect(160, height - 80, 80, 80);
 
   fill(0);
   rect(240, height - 80, 80, 80);
  
  fill(255);
  rect(320, height - 80, 80, 80);
  fill(0);
  ellipse(360, height - 40, 80, 80);
  
  
  fill(255);
  rect(400, height - 80, 80, 80);
  fill(0);
  ellipse(440, height - 40, 40, 40);
  
  
   fill(255);
   rect(480, height - 80, 80, 80);
   fill(0);
   ellipse(520, height - 40, 20, 20);
   
   
   fill(255);
   rect(560, height - 80, 80, 80);
   rect(590, height - 65, 20, 50);

   rect(640, height - 80, 80, 80);
   textSize(20);
   fill(0);
   text("Save", 660, height - 35);
   
   rect(720, height - 80, 80, 80);
   textSize(20);
   fill(255);
   text("New", 740, height - 35);
    
  if(mousePressed && mouseX<80 && mouseY> height - 80){
      r = 255; 
      g = 0;
      b = 0;
    }

  if(mousePressed && mouseX>80 && mouseX< 160 && mouseY> height - 80){
      r = 0;
      g = 255; 
      b = 0;
    }

  if(mousePressed && mouseX > 160 && mouseX < 240 && mouseY > height - 80) {
     r = 0;
      g = 0; 
      b = 255;
  }
  
   if(mousePressed && mouseX > 240 && mouseX < 320 && mouseY > height - 80) {
     r = 0;
     g = 0; 
     b = 0;
  }
  
   if(mousePressed && mouseX > 320 && mouseX < 400 && mouseY > height - 80) {
    strokeSize = 50;
  }
  
   if(mousePressed && mouseX > 400 && mouseX < 480 && mouseY > height - 80) {
    strokeSize = 25;
  }
  
   if(mousePressed && mouseX > 480 && mouseX < 560 && mouseY > height - 80) {
    strokeSize = 12 ;
  }
  
   if(mousePressed && mouseX > 560 && mouseX < 640 && mouseY > height - 80) {
    r = 255;
    g = 255;
    b = 255;
  }
}

void mousePressed(){
   if(mouseX > 640 && mouseX < 720 && mouseY > height - 80) {
    saveFrame();
  }
  
  if(mouseX > 720 && mouseX < 800&& mouseY > height - 80) {
    background(255);
  }
}
