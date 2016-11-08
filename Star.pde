class Star
{
  int Hab;
  String StarName;
  float distance;
  float Xg;
  float Yg;
  float Zg;
  float StarSize;
  
  //Default constructors
  Star()
  {
    StarName = "";
  }
  
  //Paramatised Constructor
  Star(int Hab, String StarName, 
  float distance, float Xg, float Yg, 
  float Zg, float StarSize)
  {
    this.Hab = Hab; // this is used to refer to the fields
    this.StarName = StarName; // it disambiguates the use of the variable names
    this.distance = distance;
    this.Xg = Xg;
    this.Yg = Yg;
    this.Zg = Zg;
    this.StarSize = StarSize;
  }
  
  // Converts the object to a string
  // so it can be printed
  String toString()
  {
    return Hab + "\t" + StarName + "\t" + distance + "\t"
    + Xg + "\t" + Yg + "\t" + Zg + "\t" + StarSize;
  }
  
}