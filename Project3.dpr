program Project3;

uses
  Vcl.Forms,
  MainUnit in 'C:\Ó÷¸áà\EngineDelphi\MainUnit.pas' {Form1},
  Unit2 in 'C:\Ó÷¸áà\EngineDelphi\Unit2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
