int pointCount = 500000;
float x, y = 1;
float xn, yn;

//float a=-2.24458046630025;
//float b=-1.25191834103316;
//float c=-2.81590817030519;
//float d=-2.90866735205054;
float a=-0.8;
float b=-0.5;
float c=-05.;
float d=-0.3;
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

}
