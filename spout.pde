void iniciarspout(){
  spout = new Spout(this);
  
  sendername = "Respanels";
  //spout.initSender(sendername, width, height);
  spout.createSender(sendername, width, height);
 
  controlName = new String[20];
  controlType = new int[20];
  controlValue = new float[20];
  controlText = new String[20];
  
  //pepe.initSender(sendername, width, height);
   spout.openSpoutControls(sendername);
  
}

void ActualizarControlesResolume(){
  int nControls = spout.checkSpoutControls(controlName, controlType, controlValue, controlText);
  //print("nControls = " + nControls + "n");
  if (nControls > 0) {
    for (int i = 0; i < nControls; i++) {
       //print("(" + i + ") : [" + controlName[i] + "] : Type [" + controlType[i] + "] : Value [" + controlValue[i] + "] : Text [" + controlText[i] + "]" + "n");
  
      if (controlName[i].equals("Ancho")) {
          ancho = controlValue[i];
      }
      if (controlName[i].equals("Hue")) {
          hue = controlValue[i];
      }
      if (controlName[i].equals("Saturation")) {
          sat = controlValue[i];
      }
      if (controlName[i].equals("Brightness")) {
          bri = controlValue[i];
      }
      if (controlName[i].equals("Opacity")) {
          trans = controlValue[i];
      }
      if (controlName[i].equals("BHue")) {
          Bhue = controlValue[i];
      }
      if (controlName[i].equals("BSaturation")) {
          Bsat = controlValue[i];
      }
      if (controlName[i].equals("BBrightness")) {
          Bbri = controlValue[i];
      }
      if (controlName[i].equals("BOpacity")) {
          Btrans = controlValue[i];
      }
      if (controlName[i].equals("Speed")) {
          speed = controlValue[i];
      }
      if (controlName[i].equals("Bsize")) {
          Bancho = controlValue[i];
      }
      if (controlName[i].equals("Rotation")) {
          rot = controlValue[i];
      }
      if(controlName[i].equals("BGrefresh")){
          BGrefresh = (boolean)(controlValue[i] == 1);         
      }  
    }
  } 
  
  
}