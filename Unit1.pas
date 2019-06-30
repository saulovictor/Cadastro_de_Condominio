unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TUEntrada = class(TForm)
    Image1: TImage;
    Barra: TProgressBar;
    Timer1: TTimer;
    LabelBarra: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UEntrada: TUEntrada;

implementation

uses Unit2;

{$R *.dfm}

procedure TUEntrada.Timer1Timer(Sender: TObject);
begin
Barra.Position:= Barra.position + 1;
LabelBarra.Caption:= inttostr(Barra.Position) +'%';

if Barra.Position = 100 then

begin
UEntrada.Destroy;
UPrincipal.Show;
end;

end;
end.
