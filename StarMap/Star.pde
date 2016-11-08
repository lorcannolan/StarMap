class Star
{
  int hab;
  String name;
  float distance;
  float xg;
  float yg;
  float zg;
  float size;
  
  Star()
  {
    hab = 0;
    name = "";
    distance = 0;
    xg = 0;
    yg = 0;
    zg = 0;
    size = 0;
  }
  
  Star(int hab, String name, float distance, float xg, float yg, float zg, float size)
  {
    this.hab = hab;
    this.distance = distance;
    this.xg = xg;
    this.yg = yg;
    this.zg = zg;
    this.size = size;
  }
}