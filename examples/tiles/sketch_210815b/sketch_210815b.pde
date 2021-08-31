
int tileCount = 6;

void setup(){
  size(600,400);
  rectMode(CENTER);
  println(tileCount);
  println(width);
  println(max(width,height));
}

int actRandomSeed = 0;

void draw(){
  
  int tw = width / tileCount;
  smooth();
  //background(100);
  randomSeed(actRandomSeed);
  //int stcol = 255;
  for (int i= 0; i<tileCount; i++){
    for (int j = 0; j<tileCount; j++){ 
      int centX = i * tw + tw/2;
      int centY = j * tw + tw/2;
      float ang = int(random(0,3))*PI/2;
      push();
      translate(centX,centY);
      rotate(ang);
      fill(255);
      noStroke();
      rect(0,0,tw,tw);
      noStroke();
      //stroke(0);
      fill(random(0,200));
      arc(-tw / 2, -tw / 2, 2*tw, 2*tw, 0, PI /2);
      //arc(tw / 2, tw / 2, tw, tw, PI, PI / 2 * 3);
      pop();

    }
  }
}

void mousePressed() {
  actRandomSeed = (int) random(100000);
}
