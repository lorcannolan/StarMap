//Lorcan Nolan - c15513717

Table table;
ArrayList<Star> data = new ArrayList<Star>();
void setup()
{
  size(800, 800, P2D);
  table = loadTable("HabHYG15ly.csv", "header");
  
  println(table.getRowCount() + "total rows in table");
  
  loadData();
  printStars();
  
  rows = 11;
  cols = 11;
  
  gridWidth = width - border_x * 2;
  gridHeight = height - border_y * 2;
  
  drawRows();
  drawCols();
  drawStar();
}

void loadData()
{
  for (TableRow row : table.rows())
  {
    Star star = new Star(row.getInt("Hab?")
    , row.getString("Display Name")
    , row.getFloat("Distance")
    , row.getFloat("Xg")
    , row.getFloat("Yg")
    , row.getFloat("Zg")
    , row.getFloat("AbsMag")
    );
    data.add(star);
  }
}

void printStars()
{
  for(Star star: data)
  {
    println(star);
  }
}

float border_x;
float border_y;

int rows;
int cols;

float gridWidth;
float gridHeight;

void drawRows()
{
  border_x = 50;
  border_y = 50;
  background(0);
  stroke(139, 0, 105);
  for (int i = 0 ; i <= rows ; i++)
  {
    line(border_x, border_y, width - border_x, border_y);
    border_y = border_y + (gridHeight / rows);
  }
}

void drawCols()
{
  border_x = 50;
  border_y = 50;
  stroke(139, 0, 105);
  for (int i = 0 ; i <= cols ; i++)
  {
    line(border_x, border_y, border_x, height - border_y);
    border_x = border_x + (gridWidth / cols);
  }
}

void drawStar()
{
  float starSize = 0;
  float x = 0;
  float y = 0;
  float x_map = 0, y_map = 0;
  for (int i = 0; i < data.size(); i++)
  {
    border_x = 50;
    border_y = 50;
    starSize = data.get(i).size;
    x = data.get(i).xg;
    y = data.get(i).yg;
    x_map = map(x, -5, 5, border_x, width - border_x);
    y_map = map(y, -5, 5, border_y, height - border_y);
    noFill();
    stroke(255, 0, 0);
    ellipse(x_map, y_map, starSize, starSize);
    
  }
}

void draw()
{
  
}