//Lorcan Nolan - c15513717

Table table;
ArrayList<Star> data = new ArrayList<Star>();
void setup()
{
  size(800, 800);
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
}

void loadData()
{
  for (TableRow row : table.rows())
  {
    Star star = new Star(row.getInt(2)
    , row.getString(3)
    , row.getFloat(12)
    , row.getFloat(13)
    , row.getFloat(14)
    , row.getFloat(15)
    , row.getFloat(16)
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

void draw()
{
  
}