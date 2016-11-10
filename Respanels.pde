import spout.*;
  
  //SPOUT
Spout spout;
String sendername;
String[] controlName;
int[] controlType;
float[] controlValue;
String[] controlText;
String UserText = "";

  float ancho;
  float hue,sat,bri,trans;
  float Bhue,Bsat,Bbri,Btrans;
  float speed;
  float Bancho;
  float pos;
  float rot;
  float cant=20;
  boolean BGrefresh;
  
panel [] Mypanels = new panel[500];

panel Mypanel;
void setup(){
  
  iniciarspout();
  size(1200,600,P3D);
  rectMode(CENTER);
  colorMode(HSB);
  
  Mypanel = new panel();
  
  for (int i=0; i<Mypanels.length; i++){
   
      Mypanels[i] = new panel();
  }
}


void draw(){
    ActualizarControlesResolume();
  if (BGrefresh){
    background(0); 
    }
  float lala = map(mouseX,0,width,0,180);
  println(lala);
  
  Mypanel.setVars(ancho,speed,hue,sat,bri,trans,Bhue,Bsat,Bbri,Btrans,rot);
  Mypanel.display();
  Mypanel.move();
  
  spout.sendTexture();
}


void stop()
{
  // always close Minim audio classes when you are done with them
  spout.closeSpoutControls();
  super.stop();
}