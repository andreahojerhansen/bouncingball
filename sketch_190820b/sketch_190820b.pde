//bold start
int xBallP = 50, yBallP = 50;

//bold ryk i pixels 
int xSpeed = 3, ySpeed = 1; 

//minus på størelsen af firkant
float xMinus = 0.5;

// plus på position af firkant
float xPlus = 0.25;

// væg grænse for bold
float WallMove1 = 50;
float WallMove2 = 50;
float WallMove3 = 400;
float WallMove4 = 400;

void setup(){
  size(500,500);
}

void draw(){
  background(255,100,100);
  
   //firkan mindskning
  WallMove3 = WallMove3 - xMinus;
  WallMove4 = WallMove4 - xMinus;
    
   //firkant ryk fra start
   WallMove1 = WallMove1 + xPlus;
   WallMove2 = WallMove2 + xPlus;
 
   // firkant
  fill(255,200,1);
  rect(WallMove1,WallMove2,WallMove3,WallMove4);
 
  // bevægelse af bold
  xBallP = xBallP + xSpeed;
  yBallP = yBallP + ySpeed;
  
  //cirkel
  fill(455,50,50);
  ellipse(xBallP,yBallP,40,40);
  
  //bold stoppes ved væg Venstre - Højre
  if(xBallP - 20 < WallMove1) {
    xSpeed = -1 * xSpeed;
    xBallP += 5;
  }
  if(xBallP + 20 > (WallMove3 + WallMove1)) {
    xSpeed = -1 * xSpeed;
    xBallP -= 5;
  }
  
  //bold stoppes ved væg Top - Bund
  if(yBallP - 20 < WallMove2) {
    ySpeed = -1 * ySpeed;
    yBallP += 5;
  }
  if(yBallP + 20 > (WallMove4 + WallMove2)) {
    ySpeed = -1 * ySpeed;
    yBallP -= 5;
  }
}
