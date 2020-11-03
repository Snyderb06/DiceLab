Die first;
Die second;
Die third;
int sum;
void setup()
{
  sum=0;
  first= new Die(50,100);
  second= new Die(150,100);
  third= new Die(250,100);
  size(350,400);
  background(0);
    
}
void draw()
{
  background(0);
 fill(255);
 textSize(15);
 text("Try To Get The Score Within 495 to 505",width/2- textWidth("Try To Get The Score Within 495 to 505")/2,50);
first.show();
second.show();
third.show();
rect(width/2-25,320,50,25,100);
fill(0);
text("Roll",width/2-textWidth("ROLL")/2,335);
fill(255);
sum= first.getScore()+second.getScore()+third.getScore();
text(sum,width/2-textWidth(""+sum)/2,300);
if(sum>495 && sum<505){
  textSize(30);
  text("Winner",width/2-textWidth("Winner")/2,250);

}

}
void mousePressed()
{
  if(sum>495){
    setup();
  }
  if(mouseX>width/2-25 && mouseX<width/2+25&& mouseY>320 &&mouseY<345){
first.roll();
second.roll();
third.roll(); 
  }
}
