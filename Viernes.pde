Player jugador;
boolean[] keys;
PImage fondoNivel1;


void setup(){
  size(1200,900);
  jugador=new Player();
  keys=new boolean[128];
  //x=300;
  //y=300;
  fondoNivel1=loadImage("resources/images/fondo2.jpg");  
}
void draw(){
  fondoNivel1.resize(1200,900);
  
  background(fondoNivel1);
  jugador.move();  
  jugador.drawRobot();
  
}

void keyPressed(){
  keys[key]=true;
}
void keyReleased(){
  keys[key]=false;
}
