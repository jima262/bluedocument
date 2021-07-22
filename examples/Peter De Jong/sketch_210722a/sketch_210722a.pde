int pointCount = 2000000;
float x, y = 1;
float xn, yn;

float a=10;
float b=2;
float c=0.2;
float d=4;
//float a=-1.4;
//float b=1.6;
//float c=1.0;
//float d=0.7;
float [][]pointAry = new float[2][10000000];


void setup(){
  size(800,800);
  smooth();
}

void draw(){
  background(255);
  for (int i = 0; i <= pointCount; i++){
    xn = sin(a*y)-cos(b*x);
    yn = sin(c*x)-cos(d*y);
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

save("dejong_210715b.png");

}
