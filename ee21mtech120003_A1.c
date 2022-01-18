//Question: 2017 Q.6(a) State DeMorgan's Laws of Boolean Algebra and verify them using truth table

#include<stdio.h>

int main()
{
  int A=0,B=1,Y1,Y2,Y3,Y4;

  for(int i=0;i<=3;i++)
  {
    A=(A+i)%2;
    B=(B+i+1)%2 ;
    Y1=!(A+B);
    Y2=(!A)&&(!B);
    Y3=!(A&&B);
    Y4=(!A)||(!B);
    printf("\nA=%d\t B=%d\t Y1=%d\t Y2=%d\t Y3=%d\t Y4=%d\n",A,B,Y1,Y2,Y3,Y4);
    if ((Y1==Y2)&&(Y3==Y4))
    {
        printf("Law 1 and Law 2 verified\n");
    }

  }


}

