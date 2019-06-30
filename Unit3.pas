unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DBXOdbc, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Vcl.ExtCtrls, Vcl.Buttons,
  Data.Win.ADODB;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Nome: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Endereço: TLabel;
    DBEdit4: TDBEdit;
    Bairro: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    CEP: TLabel;
    DBEdit7: TDBEdit;
    UF: TLabel;
    Telefone: TLabel;
    DBEdit9: TDBEdit;
    Label4: TLabel;
    DBEdit10: TDBEdit;
    CPF: TLabel;
    DBEdit11: TDBEdit;
    Nascimento: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBGrid1: TDBGrid;
    Conn: TADOConnection;
    tb_morador: TADOTable;
    DataSource1: TDataSource;
    tb_moradoridmorador: TAutoIncField;
    tb_moradornome: TStringField;
    tb_moradorrg: TStringField;
    tb_moradorendereco: TStringField;
    tb_moradorbairro: TStringField;
    tb_moradorcidade: TStringField;
    tb_moradorcep: TStringField;
    tb_moradoruf: TStringField;
    tb_moradortelefone: TStringField;
    tb_moradorcelular: TStringField;
    tb_moradorcpf: TStringField;
    tb_moradornascimento: TStringField;
    tb_moradoremail: TStringField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel1: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBComboBox2: TDBComboBox;
    GroupBox1: TGroupBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2;












procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
Form3.tb_morador.Append;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
Form3.tb_morador.Post;
ShowMessage('Dados salvo com Sucesso!');
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
Form3.tb_morador.Prior;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
Form3.tb_morador.Next;
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
Form3.tb_morador.Edit;
end;

procedure TForm3.SpeedButton6Click(Sender: TObject);
begin
Form3.tb_morador.Cancel;
end;

procedure TForm3.SpeedButton7Click(Sender: TObject);
begin
Form3.tb_morador.Delete;
If Application.MessageBox('Deseja realmente excluir este registro ?','Atenção',mb_YesNo) = IdNo Then
    Exit;
showmessage('Dados Excluido com Sucesso!');
end;

end.
