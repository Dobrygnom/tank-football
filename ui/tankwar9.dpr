program tankwar9;

uses
  Forms,
  tool9 in 'tool9.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
