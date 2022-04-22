
module assignt5(
input  wire a,
input  wire b,
output wire redled,
output wire greenled,
output wire blueled
);

reg y1,y2,y3,y4;
always @(*)
begin
y1=!(a|b);
y2= (!a)&(!b);
y3=!(a&b);
y4=(!a)|(!b);
  if(y1==1)
begin
redled=1;
end
else
begin
redled=0;
end
  if(y3==1)
begin
greenled=1;
end
else
begin
greenled=0;
end
  if((y1==y2)&(y3==y4))
begin
blueled=1;
end
else
begin
blueled=0;
end
end
endmodule

