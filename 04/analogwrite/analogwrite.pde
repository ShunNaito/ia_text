import processing.serial.*;
import cc.arduino.*;

Arduino arduino;
int ledPin = 9;
int i = 0;

void setup(){
  size(512,512);
  arduino = new Arduino(this, Arduino.list()[5], 57600);
  arduino.pinMode(ledPin, Arduino.OUTPUT);
}

void draw(){
  for(int i=0; i<255; i=i+10){
    arduino.analogWrite(ledPin,i);
    delay(50);
    println(i);   
  }
  
  for(int i=255; i>0; i=i-10){
    arduino.analogWrite(ledPin,i);
    delay(50);
    println(i);   
  }
  
}
