unit UnitCadastroProfessor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Objects, FMX.Controls.Presentation, FMX.ListBox;

type
  Tfmr_cadastroProfessor = class(TForm)
    lbl_informe_salas_professor: TLabel;
    rec_emailP: TRectangle;
    edt_email_cadastrese_professor: TEdit;
    rec_nomeP: TRectangle;
    edt_nome_cadastrese_professor: TEdit;
    rec_senhaP: TRectangle;
    edt_senha_cadastrese_professor: TEdit;
    rec_voltarP: TRectangle;
    btn_cadastrese_voltar_professor: TButton;
    Panel1: TPanel;
    img_logo_cadastro: TImage;
    panel_cadastrese: TPanel;
    lblcadastreseP: TLabel;
    rec_concluirP: TRectangle;
    btn_concluirP: TButton;
    cbox_sala_cadastreseProfessor: TComboBox;
    chk_ciente_aluno_cadastrese: TCheckBox;
    procedure btn_concluirPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmr_cadastroProfessor: Tfmr_cadastroProfessor;

implementation

{$R *.fmx}

uses Unitdmbancodados;

procedure Tfmr_cadastroProfessor.btn_concluirPClick(Sender: TObject);
begin
dmbancodados.adqProfessor.Active:=true;
dmbancodados.adqProfessor.SQL.clear;
dmbancodados.adqProfessor.SQL.add ('INSERT INTO professor ( nome, email,senha,sala)');
dmbancodados.adqProfessor.SQL.add ('VALUES(:Pnome,:Pemail, :Psenha,:Psala)');
dmbancodados.adqProfessor.Parameters.ParamByName('Pnome').Value:=edt_nome_cadastrese_professor.Text;
dmbancodados.adqProfessor.Parameters.ParamByName('Pemail').Value:=edt_email_cadastrese_professor.text;
dmbancodados.adqProfessor.Parameters.ParamByName('Psenha').Value:=edt_senha_cadastrese_professor.text;
dmbancodados.adqProfessor.Parameters.ParamByName('Psala').Value:=cbox_sala_cadastreseprofessor.Items[cbox_sala_cadastreseprofessor.ItemIndex];
dmbancodados.adqProfessor.ExecSQL;
showmessage('Professor cadastrado com sucesso');


end;

end.
