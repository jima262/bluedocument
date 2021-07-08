int pointCount = 9000000;
float x, y = 1;
float xn, yn;

float a=2;
float b=-0.729585147;
float c=-0.593156738;
float d=-1.70812516;
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
