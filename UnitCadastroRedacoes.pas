unit UnitCadastroRedacoes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox;

type
  TFrmCadastroRedacao = class(TForm)
    PanelCenter: TPanel;
    PanelTop: TPanel;
    LblCadastroRedacao: TLabel;
    editTema: TEdit;
    editInstituicao: TEdit;
    editData: TEdit;
    btnAdicionarRD: TButton;
    btnAlterarRD: TButton;
    btnExcluirRD: TButton;
    btnCancelarRD: TButton;
    btnSalvarRD: TButton;
    LbRedacao: TListBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroRedacao: TFrmCadastroRedacao;

implementation

{$R *.fmx}

end.
