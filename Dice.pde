int numroll;
Die bob;
void setup()
{
  size(500, 700);
  background(255, 255, 255);
  noLoop();
}

void draw()
{
  int count = 0;
  for (int j = 0; j <= 500; j+= 70) {
  for (int i = 0; i <= 500; i+= 70) {
    bob = new Die(20 + i,20 + j);
    bob.show();
    count += numroll;
  textAlign(CENTER);
  textSize(20);
  text("total count: " + count, 250, 600);
  

  }
  }
  
}
void mousePressed()
{
  redraw();
  
}
class Die //models one single dice cube
{
  int myX, myY;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
   roll();
  }
  void roll()
  {
    if (Math.random() < 1.0/6)
      numroll = 1; 
     else if (Math.random() < 2.0/6)
      numroll = 2;
     else if (Math.random() < 3.0/6)
      numroll = 3;
     else if (Math.random() < 4.0/6)
      numroll = 4;
     else if (Math.random() < 5.0/6)
      numroll = 5;
     else if (Math.random() < 6.0/6)
      numroll = 6;

  }
  void show()
  {

    stroke(60, 118, 70);
    strokeWeight(5);
    fill(252, 108, 133);
    rect(myX, myY, 50, 50, 7*PI/2);
    fill(0, 0, 0);
    strokeWeight(0);
    stroke(0, 0, 0);
    if (numroll == 1) {
      ellipse(myX + 25, myY + 25, 5, 5);
    }
    else if (numroll == 2) {
      ellipse(myX + 13, myY + 13, 5, 5);
      ellipse(myX + 37, myY + 37, 5, 5);
    }
    else if (numroll == 3) {
      ellipse(myX + 13, myY + 13, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
      ellipse(myX + 37, myY + 37, 5, 5);
    }
    else if (numroll == 4) {
      ellipse(myX + 13, myY + 13, 5, 5);
      ellipse(myX + 37, myY + 13, 5, 5);
      ellipse(myX + 13, myY + 37, 5, 5);
      ellipse(myX + 37, myY + 37, 5, 5);
    }
    else if (numroll == 5) {
      ellipse(myX + 13, myY + 13, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
      ellipse(myX + 37, myY + 37, 5, 5);
      ellipse(myX + 37, myY + 13, 5, 5);
      ellipse(myX + 13, myY + 37, 5, 5);
    }
    else {
      ellipse(myX + 13, myY + 13, 5, 5);
      ellipse(myX + 37, myY + 13, 5, 5);
      ellipse(myX + 13, myY + 25, 5, 5);
      ellipse(myX + 37, myY + 25, 5, 5);
      ellipse(myX + 13, myY + 37, 5, 5);
      ellipse(myX + 37, myY + 37, 5, 5);
    }
  noStroke();
  fill(255, 255, 255);
  rect(0, 500, 500, 300);
  
  fill(0, 0, 0);
 

  }
}
