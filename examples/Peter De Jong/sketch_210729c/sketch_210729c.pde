int pointCount = 3000000;
float x, y = 1;
float xn, yn;

float a=1.024095;
float b=5.1200485;
float c=0.37292677;
float d=5.943328;


//1.024095
//5.1200485
//0.37292677
//5.943328

//3.1680005
//5.2232447
//0.9110237
//1.7412953

float [][]pointAry = new float[2][10000000];


void setup(){
  size(1200,800);
  smooth();
  println(a);
  println(b);
  println(c);
  println(d);
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

save("dejong_210729c.png");

}
