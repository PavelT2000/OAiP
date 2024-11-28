program LabWork2;
uses System.SysUtils;
function Recursion(deep:integer; x: real; intState:real):real;
begin
Result:=intState+(deep*(x-1-deep))/Recursion(deep-1, x ,intState*2);
if (deep=1) then
begin
   Result:=intState+(1*(x-2))/4096;
end;
end;
begin

readln;
end.
