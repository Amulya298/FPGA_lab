#include <avr/io.h>
#include <util/delay.h>

 
int main (void)
{

 DDRD   |= 0b00000000;
 DDRB   |= ((1 << DDB5));
 
 int i,a,b,output;
  while (1) {

     i = PIND;
            
     a= i & 0b00000100;
     b= i & 0b00001000;
   
   
      y1=!(a||b);
      y2=(!a)&&(!b);
      y3=!(a&&b);
      y4=(!a)||(!b);
     

if(y1==y2)
PORTB = ((0 <<  PB5)); 
else
PORTB = ((1 <<  PB5));

  }

  /* . */
  return 0;

}
