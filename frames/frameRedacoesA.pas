unit frameRedacoesA;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation;

type
  TframeRedacoes_A = class(TFrame)
    lbl_ano: TLabel;
    lbl_titulo_redacao: TLabel;
    img_redacaoEnem: TImage;
    lbl_titulord: TLabel;
    procedure FrameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses UnitEnviarRedacoes, UnitFolhaRedacao;


procedure TframeRedacoes_A.FrameClick(Sender: TObject);
begin
frmFolhaRedacao.show;
end;

end.
