program LabWork2Dop;
uses
  System.SysUtils;
var  x,y,eps,h:real;
var  n:integer;

begin
 x:=0.6;
 eps:=0.0000001;
 begin
 writeln('|--------|--------|--------|--------|--------|--------|--------|');
 writeln('|********|        |        |        |        |        |        |');
 writeln('|********|    N=10|    N=11|    N=12|    N=13|    N=14|    N=15|');
 writeln('|********|        |        |        |        |        |        |');
 writeln('|--------|--------|--------|--------|--------|--------|--------|');
 end;
 while(x<=1.1+eps) do
 begin
   writeln('|        |        |        |        |        |        |        |');
   write('|X=',X:6:4,'|');
   y:=0;

   y:=y+10*exp(x);
   for n := 1 to 10 do
        begin

        y:=y+(cos(Sqrt(n*x)))/(exp(ln(n*n-1/3)/3));
        end;
   write('',Y:8:4,'|');
   for  n:= 11 to 15 do
   begin

      y:=y+(cos(Sqrt(n*x)))/(exp(ln(n*n-1/3)/3));
      y:=y+exp(x);
      write('',y:8:4,'|');

   end;
   writeln;
   writeln('|        |        |        |        |        |        |        |');
   writeln('|--------|--------|--------|--------|--------|--------|--------|');
  x:=x+0.25;
 end;
 readln;
end.
