int pointCount = 5000000;
float x, y = 0;
float xn, yn;

float A = -1.2; 
float B = -1.1;
float C = -1.0;
float D = -0.9;
float E = -0.8;
float F = -0.7;
float G = -0.6;
float H = -0.5;
float I = -0.4;
float J = -0.3;
float K = -0.2;
float L = -0.1;
float M = 0;
float N = 0.1;
float O = 0.2;
float P = 0.3;
float Q = 0.4;
float R = 0.5;
float S = 0.6;
float T = 0.7;
float U = 0.8;
float V = 0.9;
float W = 1.0;
float X = 1.1;
float Y = 1.2;

float [][]pointAry = new float[2][10000000];


void setup(){
  size(600,600);
  smooth();
}
// Clifford Attractor
void draw(){
  background(255);
  
  float  a0 = F;
  float  a1 = U;
  float  a2 = X;
  float  a3 = R;
  float  a4 = R;
  float  a5 = R;
  float  a6 = U;
  float  a7 = I;
  float  a8 = R;
  float  a9 = D;
  float a10 = Y;
  float a11 = K;
  float a12 = D;
  float a13 = U;
  float a14 = B;
  float a15 = P;
  float a16 = H;
  float a17 = H;
  float a18 = O;
  float a19 = M;
  float a20 = O;
  float a21 = B;
  float a22 = R;
  float a23 = I;
  float a24 = R;
  float a25 = B;
  float a26 = I;
  float a27 = N;
  float a28 = C;
  float a29 = S;

  
  
  for (int i = 0; i <= pointCount; i++){
    //println(x);
    xn = a0+a1*x+a2*x*x+a3*x*x*x+a4*x*x*x*x+a5*x*x*x*y+a6*x*x*y+a7*x*x*y*y+
         a8*x*y+a9*x*y*y+a10*x*y*y*y+a11*y+a12*y*y+a13*y*y*y+a14*y*y*y*y;
    yn = a15+a16*x+a17*x*x+a18*x*x*x+a19*x*x*x*x+a20*x*x*x*y+a21*x*x*y+a22*x*x*y*y+
         a23*x*y+a24*x*y*y+a25*x*y*y*y+a26*y+a27*y*y+a28*y*y*y+a29*y*y*y*y;
    x=xn;
    y=yn;
    pointAry[0][i]=x*width/1.1;
    pointAry[1][i]=y*height/1.1;

  }

  translate(width+40,height/3);
  for(int i=0;i<pointCount;i++){
    stroke(0,10);
    point(pointAry[0][i],pointAry[1][i]);
  }
  
  noLoop();

}
