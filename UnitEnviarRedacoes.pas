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
    rec_redacao: TRectangle;
    edt_redacao: TEdit;
    procedure img_voltar2Click(Sender: TObject);

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

uses UnitFolhaRedacao;



procedure TfrmEnviarRedacoes.img_voltar2Click(Sender: TObject);
begin
fmr_redacoes.show;
end;


end.
