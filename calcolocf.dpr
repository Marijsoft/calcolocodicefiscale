program calcolocf;

uses
  Vcl.Forms,
  cf in 'cf.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  codicefiscale in 'codicefiscale.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Luna');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
