// Johnny Svensson Attractor

int pointCount = 500000;
float x, y = 1;
float xn, yn;

float a = -1.715908; 
float b = -1.715908; 
float c = -1.715908; 
float d = -1.715908;

float [][]pointAry = new float[2][10000000];


void setup(){
  size(600,600);
  smooth();
}
// Clifford Attractor
void draw(){
  background(255);
  for (int i = 0; i <= pointCount; i++){
    xn = d*sin(a*x)-sin(b*y);
    yn = c*cos(a*x)+cos(b*y);
    x=xn;
    y=yn;
    pointAry[0][i]=x*width/6;
    pointAry[1][i]=y*height/6;
  }

  translate(width/2,height/2);
  for(int i=0;i<pointCount;i++){
    stroke(0,10);
    point(pointAry[0][i],pointAry[1][i]);
  }
  
  noLoop();
save("JohnnySvensson.png");
}
