int tileCount = 4;
int actRandomSeed = 0;
int[] Color = {#34bcd1, #ffe042, #ff6397, #276496, #ffffff, #404040}; 
int[] Color2 = {#ff7b00, #ff8800, #ff9500, #ffa200, #ffaa00, #ffb700, #ffc300, #ffd000, #ffdd00, #ffea00};
int[] Color3 = {#ff4f19, #15084d, #5ce6e6};

void setup(){
  size(600,600);
  rectMode(CENTER);
}

void draw(){
  int tw = width / tileCount;
  smooth();
  strokeWeight(5);
  background(100);
  randomSeed(actRandomSeed);
  int stcol = Color3[(int)random(0,3)];
  for (int i= 0; i<tileCount; i++){
    for (int j = 0; j<tileCount; j++){ 
      int centX = i * tw + tw/2;
      int centY = j * tw + tw/2;
      float ang = int(random(0,3))*PI/2;
      push();
      translate(centX,centY);
      rotate(ang);
      fill(Color[(int)random(0,6)]);
      noStroke();
      rect(0,0,tw,tw);
      stroke(stcol);
      noFill();
      arc(-tw / 2, -tw / 2, tw, tw, 0, PI /2);
      arc(tw / 2, tw / 2, tw, tw, PI, PI / 2 * 3);
      pop();

    }
  }
}

void mousePressed() {
  actRandomSeed = (int) random(100000);
}
