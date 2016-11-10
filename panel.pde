class panel{
  
  float ancho;
  float hue=255,sat=255,bri=255,trans=255;
  float Bhue= 150,Bsat = 255,Bbri = 255,Btrans = 255;
  float speed;
  float Bancho=10;
  float pos=width/2;
  float rot=0;
  
  panel(){}
  panel(float _ancho, float _speed,
        float _hue,float _sat, float _bri, float _trans,
        float _bhue,float _bsat, float _bbri, float _btrans,float _rot){
         
          ancho = _ancho;
          speed = _speed;
          hue = _hue;
          sat = _sat;
          bri = _bri;
          trans = _trans;
          Bhue = _bhue;
          Bsat = _bsat;
          Bbri = _bbri;
          Btrans = _btrans; 
          rot = _rot;
        }

  panel(float _ancho, float _speed,float _Bancho){
     ancho = _ancho;
     speed = _speed;
     Bancho = _Bancho;
    fill(hue,sat,bri,trans);
       strokeWeight(Bancho);
       stroke(Bhue,Bsat,Bbri,Btrans);
  }
  panel(float _ancho, float _speed,float _Bancho,float _rot){
     ancho = _ancho;
     speed = _speed;
     Bancho = _Bancho;
     rot = _rot;
    
  }

    void display(){
       
       pushMatrix();
       translate(pos,height/2);
       rotate(radians(rot));
       
       move();
       rect(0, 0, ancho, width*2);
       popMatrix();  
      
  }
  
  void display(float _rot){
       fill(hue,sat,bri,trans);
       strokeWeight(Bancho);
       stroke(Bhue,Bsat,Bbri,Btrans); 
       rot = _rot;
       pushMatrix();
       
       translate(pos,height/2);
     
       rotate(radians(_rot));
       
       //move();
       fill(hue,sat,bri,trans);
       strokeWeight(Bancho);
       stroke(Bhue,Bsat,Bbri,Btrans);
       rect(0, 0, ancho, width*2);
       popMatrix();  
      
  }
  
  void setVars(float _ancho, float _speed,
        float _hue,float _sat, float _bri, float _trans,
        float _bhue,float _bsat, float _bbri, float _btrans,float _rot){
  
          ancho = _ancho;
          speed = _speed;
          hue = _hue;
          sat = _sat;
          bri = _bri;
          trans = _trans;
          Bhue = _bhue;
          Bsat = _bsat;
          Bbri = _bbri;
          Btrans = _btrans; 
          rot = _rot;
          fill(hue,sat,bri,trans);
         strokeWeight(Bancho);
         stroke(Bhue,Bsat,Bbri,Btrans);
    
  }
  
    
    
    
    void move(){
 
      pos += speed;
      println(cos(rot));
      if (pos <= 0  && speed<0){
        pos = width ;
      }
      if (pos >= width && speed>0){     
        pos = 0;
      }
      
    }
}