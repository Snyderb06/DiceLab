class Die //models one single dice cube
{
 private int x;
  private int y;
  int rollNum;
  int score=0;
    Die(){
      
    }
    Die(int x, int y) //constructor
    {
        this.x=x;
        this.y=y;
    }
    public int roll()
    {
       rollNum= (int)random(6)+1;
       score+=rollNum;
       return rollNum;
    }
    void show()
    {
      
        fill(255);
        rect(x,y,50,50,5);
        fill(50);
        if(rollNum==1){
          ellipse(x+25,y+25,10,10);
        }
         else if(rollNum==2){
          ellipse(x+15,y+15,10,10);
          ellipse(x+35,y+35,10,10);
         
        }
        else if(rollNum==3){
          ellipse(x+15,y+15,10,10);
          ellipse(x+35,y+35,10,10);
          ellipse(x+25,y+25,10,10);
        }
        else if(rollNum==4){
          ellipse(x+15,y+15,10,10);
          ellipse(x+35,y+35,10,10);
          ellipse(x+15,y+35,10,10);
          ellipse(x+35,y+15,10,10);
        }
         else if(rollNum==5){
          ellipse(x+15,y+15,10,10);
          ellipse(x+35,y+35,10,10);
          ellipse(x+15,y+35,10,10);
          ellipse(x+35,y+15,10,10);
          ellipse(x+25,y+25,10,10);
        }
        else if(rollNum==6){
          ellipse(x+15,y+10,10,10);
          ellipse(x+35,y+40,10,10);
          ellipse(x+15,y+40,10,10);
          ellipse(x+35,y+10,10,10);
          ellipse(x+15,y+25,10,10);
          ellipse(x+35,y+25,10,10);
        }
        fill(255);
       
    }
    public int getScore(){
      return score;
    }
}
