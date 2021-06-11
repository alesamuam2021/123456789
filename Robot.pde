abstract class Robot{
  
  protected PImage robot;
protected     int xDelta=0;
 protected  int yDelta=0;
  protected float x;
 protected float y;
 protected PImage spriteSheet;  
 protected PImage [][]movement;
 protected boolean inMotion;
  protected int currentDireccion;
 protected float currentFrame;
  
 protected  final int UP=0;
protected   final int LEFT=1;
 protected  final int DOWN=2;
 protected  final int RIGHT=3;
  
  
  
public abstract void robot();

  
public abstract void  move();
  public abstract void  drawRobot() ;
public abstract void   updateRobot(int xDelta, int yDelta);

  
  
  
  

  
  
  
}
