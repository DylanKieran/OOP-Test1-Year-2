/*
Dylan Kieran
C15321906
*/

Table table;
ArrayList<Star> stars = new ArrayList<Star>();

void setup()
{
  //Could not fit 800,800 on screen
  size(600,600);
  background(0);
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
  drawGrid();
}


void drawGrid()
{
  stroke(#AD00B7);
  int startVerticalLine = 0; //where the first vertical line is
  int startHorizontalLine = 0;
  int gridSpacing = 50; // how much the vertical lines are spaced
  
  //draw vertical lines for grid
  while(startVerticalLine < width){
    line(startVerticalLine, 0, startVerticalLine, height);
    startVerticalLine = startVerticalLine + gridSpacing;
  }
  
  //draw horizontal lines for grid
  while(startHorizontalLine < height){
    line(0, startHorizontalLine, width, startHorizontalLine);
    startHorizontalLine = startHorizontalLine + gridSpacing;
  }
}