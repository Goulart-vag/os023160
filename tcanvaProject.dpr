program tcanvaProject;

uses
  Forms,
  U_PRINCIPAL in 'U_PRINCIPAL.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
