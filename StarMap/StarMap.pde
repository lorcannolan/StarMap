//Lorcan Nolan - c15513717

Table table;
void setup()
{
  size(800, 800);
  table = loadTable("HabHYG15ly.csv", "header");
  
  println(table.getRowCount() + "total rows in table");
}

void draw()
{
  
}