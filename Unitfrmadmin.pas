unit Unitfrmadmin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Menus,
  FMX.Objects;

type
  Tfrmadmin = class(TForm)
    MainMenu: TMainMenu;
    MenuItem1Aluno: TMenuItem;
    MenuItemCdAluno: TMenuItem;
    MenuItem2Professor: TMenuItem;
    MenuItemCdProfessor: TMenuItem;
    MenuItem3Sala: TMenuItem;
    MenuItemCdSala: TMenuItem;
    img_logo_cadastro: TImage;
    MenuItem4Redacao: TMenuItem;
    MenuItemCdRedacao: TMenuItem;
    procedure MenuItemCdSalaClick(Sender: TObject);
    procedure MenuItemCdRedacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmadmin: Tfrmadmin;

implementation

{$R *.fmx}

uses Unitfrmsalas, UnitCadastroRedacoes;

procedure Tfrmadmin.MenuItemCdRedacaoClick(Sender: TObject);
begin
frmCadastroRedacao.showmodal;
end;

procedure Tfrmadmin.MenuItemCdSalaClick(Sender: TObject);
begin
frmsalas.showmodal;
end;

end.
