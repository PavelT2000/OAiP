program LabWork3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var x,xx,y1,y2,eps,sum,e,h,sumElem:real;
var count,k,pow:integer;
begin
x:=-0.6;
h:=0.05;

e:=h/10000;
writeln('_________________________________________________________________');
writeln('|   x   |  f1(x) |   e=10^(-2)   |   e=10^(-3)   |   e=10^(-4)   |');
writeln('|_______|________|_______________|_______________|_______________|');
writeln('|       |        |   x   |   N   |   x     | N   |   x     | N   |');
writeln('|_______|________|_______|_______|_________|_____|_________|_____|');
for count := 1 to 20 do
  begin
  xx:=x*x;
  //������� ������ �������
  if (x>-1) and (x<1) then
  begin
    y1:=x/2+1/8*(xx-1)*ln((1+x)/(1-x))-1/4*(xx+1)*arctan(x);
    write('|',x:7:3,'|',y1:8:5,'|');
  end
  else
  begin
    y1:=x/2+1/8*(xx-1)*ln((1+x)/(1-x))-1/4*(xx+1)*arctan(x);
    write('|',x:7:3,      '|��� ��. |');
  end;
  sum:=0;
  //������� ������ ������� ��� eps=0.01
  eps:=0.01;
  k:=0;
  sumElem:=x;
   //���������� � �������
   for pow := 2 to 4*k+5 do
   begin
      sumElem:=SumElem*x;
   end;
   sumElem:=sumElem/((4*k+3)*(4*k+5));
   //

  while(abs(sumElem)>=eps) do
  begin
     sum:=sum+sumElem;
     k:=k+1;
     sumElem:=x;
     //���������� � �������
     for pow := 1 to 4*k+5 do
     begin
        sumElem:=SumElem*x;
     end;

     sumElem:=sumElem/((4*k+3)*(4*k+5));
     //
  end;
  y2:=sum;
  write(y2:7:5,'|');
  write( k:7,'|');
  //


  //������� ������ ������� ��� eps=0.001
  eps:=0.001;

  sumElem:=x;
   //���������� � �������
   for pow := 2 to 4*k+5 do
   begin
      sumElem:=SumElem*x;
   end;
   sumElem:=sumElem/((4*k+3)*(4*k+5));
   //

  while(abs(sumElem)>=eps) do
  begin
     sum:=sum+sumElem;
     k:=k+1;
     sumElem:=x;
     //���������� � �������
     for pow := 1 to 4*k+5 do
     begin
        sumElem:=SumElem*x;
     end;

     sumElem:=sumElem/((4*k+3)*(4*k+5));
     //
  end;
  y2:=sum;
  write(y2:9:6,'|');
  write( k:5,'|');
  //
  //������� ������ ������� ��� eps=0.0001
  eps:=0.0001;

  sumElem:=x;
   //���������� � �������
   for pow := 2 to 4*k+5 do
   begin
      sumElem:=SumElem*x;
   end;
   sumElem:=sumElem/((4*k+3)*(4*k+5));
   //

  while(abs(sumElem)>=eps) do
  begin
     sum:=sum+sumElem;
     k:=k+1;
     sumElem:=x;
     //���������� � �������
     for pow := 1 to 4*k+5 do
     begin
        sumElem:=SumElem*x;
     end;

     sumElem:=sumElem/((4*k+3)*(4*k+5));
     //
  end;
  y2:=sum;
  write(y2:9:6,'|');
  writeln( k:5,'|');
  //








       x:=x+h;
  end;
  writeln('|_______|________|_______|_______|_________|_____|_________|_____|');








readln;
end.
