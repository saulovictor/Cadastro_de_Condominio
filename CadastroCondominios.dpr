program CadastroCondominios;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {UEntrada},
  Vcl.Themes,
  Vcl.Styles,
  Unit2 in 'Unit2.pas' {UPrincipal},
  Unit3 in 'Unit3.pas' {Form3},
  Unit5 in 'Unit5.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TUEntrada, UEntrada);
  Application.CreateForm(TUPrincipal, UPrincipal);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
