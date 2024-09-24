program Dopzadanie1;
uses System.SysUtils;
var N:integer;
function GetNOD(a:integer): Integer;
  begin
  var ind:integer;
  ind:=2;
  var check:boolean;
  check:=True;
while check and (ind<=a) do
    begin
      if (a mod ind=0) and (N mod ind=0) then
         begin
            Result:=ind;
            check:=false;
         end;
      ind:=ind+1;
    end;
    if (check) and (N mod a<>0) then
    Result:=1;
  end;
begin
write('Введите N:');
Readln(N);
Write('Натуральные числа меньшие N и взаимно простые с N:');
var  b,i:integer;
for i := 2 to N do
begin
  var res:integer;
  res:=GetNOD(i);
  if res=1 then
  begin
    write(i.ToString()+' ');
  end;
end;
readln;
end.

