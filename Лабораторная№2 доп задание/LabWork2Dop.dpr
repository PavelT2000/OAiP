program LabWork2Dop;
uses
  System.SysUtils;
var  x,y,eps:real;
var  n,k:integer;

begin
 x:=0.6;
 eps:=0.0000001;
 y:=0;
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
   for  n:= 10 to 15 do
   begin
      y:=y+n*exp(x);
      for k := 1 to n do
      begin
          Y:=y+(cos(Sqrt(k*x)))/(exp(ln(k*k-1/3)/3));
      end;
      write('',Y:8:4,'|');
      Y:=0;
   end;
   writeln;
   writeln('|        |        |        |        |        |        |        |');
   writeln('|--------|--------|--------|--------|--------|--------|--------|');
  x:=x+0.25;
 end;
 readln;
end.
