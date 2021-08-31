int pointCount = 3000000;
float x, y = 1;
float xn, yn;

float a=5.4263773;
float b=1.7525446;
float c=0.66966486;
float d=3.0687423;//dが大きいと面白くなくなる

//5.4263773
//1.7525446
//0.66966486
//3.0687423

//5.752166
//1.7066066
//0.98712677
//3.3695467

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

save("dejong_210729a.png");

}
