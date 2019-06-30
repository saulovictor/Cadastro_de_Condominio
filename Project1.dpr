program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {UEntrada},
  Vcl.Themes,
  Vcl.Styles,
  Unit2 in 'Unit2.pas' {UPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Silver');
  Application.CreateForm(TUEntrada, UEntrada);
  Application.CreateForm(TUPrincipal, UPrincipal);
  Application.Run;
end.
