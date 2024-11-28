program LabWorkNum4;

{$APPTYPE CONSOLE}

{$R *.res}

//procedure  notEven();
//begin
//
//end;
uses
  System.SysUtils;

  const L=1000;
  Type TMAS=array[1..L] of Char;
  Var MAS1:TMAS;
  var input:char;
  var i,N,currentPos,ans:integer;
  var check:boolean;
begin
  ans:=0;
  i:=1;
  while input<> #$D do
  begin
  read(input);
  MAS1[i]:=input;
  i:=i+1;
  end;
  N:=i-2;



  currentPos:=trunc(N/2);

  I:=currentPos;
  while I<=N do
  begin
    check:=true;
    while check do
    begin
      currentPos:=currentPos+1;
      if currentPos=N then
      begin
      ans:=i;
      check:=false;
      end;
      writeln( mas1[currentPos],' ',mas1[I-(currentPos-I)]);
      if mas1[currentPos]<>mas1[I-(currentPos-I)] then
      begin
        check:=false;
      end;
    end;
    if (currentPos=N) then
    begin
       ans:=i;
    end;
    I:=CurrentPos;
  end;
  if ans=0 then
  begin
    ans:=I;
  end;
  //ans:=N-(N-ans)-(N-ans)-1;




  Writeln(ans);

  N:=i;
  for I := 1 to N do
  begin
    write(MAS1[i]);
  end;
  readln(input);
end.
