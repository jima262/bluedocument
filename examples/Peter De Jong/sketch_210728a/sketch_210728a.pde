int pointCount = 6000000;
float x, y = 1;
float xn, yn;

float a=1.3;
float b=3.7;
float c=2.4;
float d=2.2;
//float a=-1.4;
//float b=1.6;
//float c=1.0;
//float d=0.7;
float [][]pointAry = new float[2][10000000];


void setup(){
  size(1200,800);
  smooth();
}

void draw(){
  background(255);
  for (int i = 0; i <= pointCount; i++){
    xn = sin(a*y)-cos(b*x);
    yn = sin(c*x)-cos(d*y);
    x=xn;
    y=yn;
    pointAry[0][i]=x*width/9;
    pointAry[1][i]=y*height/6;
  }

  translate(width/2,height/2);
  for(int i=0;i<pointCount;i++){
    stroke(0,10);
    point(pointAry[0][i],pointAry[1][i]);
  }
  
  noLoop();

save("dejong_210728a.png");

}
