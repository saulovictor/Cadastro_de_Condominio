unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.Buttons,
  Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB;

type
  TUPrincipal = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Cadastro1: TMenuItem;
    Sair1: TMenuItem;
    Moradores1: TMenuItem;
    Condominio1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton5: TSpeedButton;
    Label5: TLabel;
    procedure Moradores1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    //procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UPrincipal: TUPrincipal;

implementation

uses Unit3,Unit5;

{$R *.dfm}


procedure TUPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_F1  then
Form3.Show;
end;

procedure TUPrincipal.Moradores1Click(Sender: TObject);
begin
  Form3.Show;
end;

//procedure TUPrincipal.SpeedButton1Click(Sender: TObject);
//begin
//Form3.Show;
//end;

procedure TUPrincipal.Sair1Click(Sender: TObject);
begin
Close;
end;

procedure TUPrincipal.SpeedButton1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TUPrincipal.SpeedButton2Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TUPrincipal.SpeedButton5Click(Sender: TObject);
begin
Close;
end;

end.
