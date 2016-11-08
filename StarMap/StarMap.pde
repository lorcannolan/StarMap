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

void draw()
{
  
}