unit UnitEnviarRedacoes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.DateTimeCtrls, FMX.Edit;

type
  TfrmEnviarRedacoes = class(TForm)
    lyt_top: TLayout;
    img_voltar2: TImage;
    lbl_titulo: TLabel;
    lyt_center: TLayout;
    lyt_bottom: TLayout;
    rec_anexarArquivo: TRectangle;
    btn_anexarArquivo: TButton;
    rec_anexarImagem: TRectangle;
    btn_anexarImagem: TButton;
    rec_limpar: TRectangle;
    btn_limpar: TButton;
    rec_center: TRectangle;
    memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Edit3: TEdit;
    Rectangle1: TRectangle;
    Label2: TLabel;
    Line1: TLine;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    procedure img_voltar2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEnviarRedacoes: TfrmEnviarRedacoes;
  fmr_redacoes : TfrmEnviarRedacoes;
  Linha: integer;
implementation

{$R *.fmx}

procedure TfrmEnviarRedacoes.Button1Click(Sender: TObject);
var
Lista : TStringList;
begin
if OpenDialog1.Execute then
begin

try
Lista := TStringList.Create;
Lista.LoadFromFile(OpenDialog1.filename);
memo1.Lines := Lista;

finally
FreeAndNil(Lista);//DESTROI O OBJETO EM MEMORIA.
end;
end;
end;

procedure TfrmEnviarRedacoes.img_voltar2Click(Sender: TObject);
begin
fmr_redacoes.show;
end;


end.
