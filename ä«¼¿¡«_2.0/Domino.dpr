program Domino;

uses
  Forms,
  DominoUnit in 'DominoUnit.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
