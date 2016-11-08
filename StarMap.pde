/*
Dylan Kieran
C15321906
*/

Table table;
ArrayList<Star> stars = new ArrayList<Star>();

void setup()
{
  size(800,800);
  table = loadTable("HabHYG15ly.csv", "header");
  
  println(table.getRowCount() + "total rows in table");
  
  loadData();
  printStars();
}

void loadData()
{
  for (TableRow row : table.rows())
    {
      Star StarData = new Star(row.getInt(2)
      , row.getString(3)
      , row.getFloat(12)
      , row.getFloat(13)
      , row.getFloat(14)
      , row.getFloat(15)
      , row.getFloat(16)
      );
      stars.add(StarData);
    }
}

void printStars()
{
  for(Star StarData: stars)
  {
    println(StarData);
  }
}

void draw()
{
  
}