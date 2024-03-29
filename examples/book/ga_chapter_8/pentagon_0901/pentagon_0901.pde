FractalRoot pentagon;
int _maxlevels = 5;

void setup(){
  size(500,500);
  smooth();
  background(255);
  pentagon = new FractalRoot();
  pentagon.drawShape();
}

class PointObj{
  float x,y;
  PointObj(float ex, float why){
    x = ex; y = why;
  }
}

class FractalRoot{
  PointObj[] pointArr = new PointObj[5];
  Branch rootBranch;
  
  FractalRoot(){
    float centX = width/2;
    float centY = height/2;
    int count = 0;
    for (int i = 0; i<360; i+=72){
      float x = centX+(200*cos(radians(i)));
      float y = centY+(200*sin(radians(i)));
      pointArr[count] = new PointObj(x,y);
      count++;
    }
    rootBranch = new Branch(0,0,pointArr);
  }
  
  void drawShape(){
    rootBranch.drawMe();
  }
}

class Branch{
  int level, num;
  PointObj[] outerPoints = {};
  
  Branch(int lev, int n, PointObj[] points){
    level = lev;
    num = n;
    outerPoints = points;
  }
  
  void drawMe(){
    strokeWeight(5-level);
    // draw outer shape
    for (int i=0; i<outerPoints.length; i++){
      int nexti = i+1;
      if (nexti == outerPoints.length){nexti = 0;}
      line(outerPoints[i].x, outerPoints[i].y,outerPoints[nexti].x ,outerPoints[nexti].y);
    }
  }
}
