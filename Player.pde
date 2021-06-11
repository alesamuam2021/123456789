class Player extends Robot {

  
  
   public Player(){
        movement=new PImage[4][9];
    spriteSheet=loadImage("theprofessor1.png");
    for (int i=0; i<9; i++) {
      movement[0][i]=spriteSheet.get(16+64*i, 8, 32, 56);
      movement[1][i]=spriteSheet.get(16+64*i, 72, 32, 56);
      movement[2][i]=spriteSheet.get(16+64*i, 136, 32, 56);
      movement[3][i]=spriteSheet.get(16+64*i, 200, 32, 56);
    }
    
    
    
    
  }
  

  
  
  
  public void robot() {
    inMotion=false;
    currentDireccion=1;
    currentFrame=0;
    this.x=300;
    this.y=300;
    //setupSprite();
    
  }
  
  
  
 
  void drawRobot() {
    if(inMotion)
    image(movement[currentDireccion][1+int(currentFrame)], x, y);
    else
    image(movement[currentDireccion][0], x, y);
  }
  
  
  
  void updateRobot(int xDelta, int yDelta) {
      final int UP=0;
  final int LEFT=1;
  final int DOWN=2;
  final int RIGHT=3;
  

    currentFrame=(currentFrame+0.5)%8;
    inMotion=true;
    if(xDelta==0&&yDelta==0)
      inMotion=false;
      else if(xDelta==-1) currentDireccion=LEFT;
      else if(xDelta==1) currentDireccion=RIGHT;
      else if(yDelta==-1) currentDireccion=UP;
      else if(yDelta==1) currentDireccion=DOWN;
      
    x=x+xDelta;
    y=y+yDelta;
  }

void move(){
  int xDelta=0;
  int yDelta=0;
  if(keys['w'])yDelta--;
  if(keys['s'])yDelta++;
  if(keys['a'])xDelta--;
  if(keys['d'])xDelta++;
  
  jugador.updateRobot(xDelta,yDelta);
}
  
  
 
}
  
