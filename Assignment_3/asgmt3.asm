.include "m328Pdef.inc"

Start:
        ldi r17, 0b11110011 ; identifying input pins 2,3
        out DDRD,r17                ; declaring pins as input
        ldi r17, 0b11111111 ;
        out PORTD,r17                ;   
        in r17,PINB
        
        ldi r20,0b00000010
        rcall loopr
        
        ldi r21,0b00000001
        and r21,r17 ;a
        lsr r17
        ldi r22,0b00000001
        and r22,r17 ;b
        lsr r17
    

        ldi r25,0b00000001
        ldi r26,0b00000001

        and r25,r21     ;a
        and r26,r22     ;b
        or r26,r25            ;a+b
        ldi r25,0b00000001
        eor r25,r26     ;(a+b)'(25)y1
        ldi r26,0b00000001
        eor r26,r21     ;a'
        ldi r23,0b00000001
        eor r23,r22     ;b'
        and r23,r26     ;a'b'(23)y2
        ldi r26,0b00000001
        ldi r24,0b00000001
        and r24,r21    ;a
        and r24,r22    ;ab
        eor r24,r26    ;(ab)'(24)y3
        ldi r26,0b00000001
        eor r26,r21     ;a'
        eor r27,r22     ;b'
        or r26,r27      ;a'+b'(26)y4

        eor r25,r23     ;if(y1==y2) r25=0
        eor r26,r24     ;if(y3==y4) r26=0
    
        eor r25,r26     ;if(y1==y2)&&(y3==y4) r25=0
        

        ldi r20,0b00000010
	rcall loopl

        ldi r16, 0b0010000 ;identifying output pins 2,3,4,5
        out DDRD,r16                ;declaring pins as output
        out PORTD,r25                ;

        rjmp Start

loopr:        lsr r17
        dec r20
        brne loopr
        ret

loopl:        lsl r25
        dec r20
        brne loopl
        ret
