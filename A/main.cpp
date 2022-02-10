
#include <Arduino.h>
#define A 2
#define B 3

int a,b,y1,y2,y3,y4; void setup() {
 pinMode(LED_BUILTIN,OUTPUT);
 pinMode(A,INPUT);
 pinMode(B,INPUT);
  // put your setup code here, to run once:
}


void loop() {
  a=digitalRead(A);
  b=digitalRead(B);
  y1=!(a||b);
  y2=(!a)&&(!b);
  y3=!(a&&b);
  y4=(!a)||(!b);

  if ((y1==y2) && (y3==y4))
        digitalWrite(LED_BUILTIN,HIGH);
  else
        digitalWrite(LED_BUILTIN,LOW);
  // put your main code here, to run repeatedly:
}