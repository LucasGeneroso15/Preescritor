unit Unit2Cadastro;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.TabControl, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.ListBox, FMX.Edit;

type
  Tfrmcadastrese = class(TForm)
    lytlogo: TLayout;
    img_logo_cadastro: TImage;
    lyt_tabcontrol: TLayout;
    panel_cadastrese: TPanel;
    lblcadastreseA: TLabel;
    panel_tbc_cadastrese: TPanel;
    edt_nome_cadastrese_aluno: TEdit;
    edt_email_cadastrese_aluno: TEdit;
    edt_senha_cadastrese_aluno: TEdit;
    cbox_sala_cadastrese: TComboBox;
    lbl_informe_sala_aluno: TLabel;
    chk_ciente_aluno_cadastrese: TCheckBox;
    btn_cadastrese_concluir_aluno: TButton;
    StyleBook1: TStyleBook;
    rec_nome: TRectangle;
    rect_email: TRectangle;
    rect_senha: TRectangle;
    rect_btn_voltar: TRectangle;
    btn_cadastrese_voltar_aluno: TButton;
    rec_btn_concluir: TRectangle;
    procedure btn_cadastrese_concluir_professorClick(Sender: TObject);
    procedure btn_cadastrese_concluir_alunoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cadastrese_voltar_professorClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadastrese: Tfrmcadastrese;

implementation

{$R *.fmx}
{$R *.iPhone47in.fmx IOS}
{$R *.XLgXhdpiTb.fmx ANDROID}

uses Unitlogin, Unitdmbancodados;

procedure Tfrmcadastrese.btn_cadastrese_concluir_alunoClick(Sender: TObject);
begin
dmbancodados.adqAluno.Active:=true;
dmbancodados.adqAluno.SQL.clear;
dmbancodados.adqAluno.SQL.add ('INSERT INTO aluno ( nome, email,senha,sala)');
dmbancodados.adqAluno.SQL.add ('VALUES(:Pnome,:Pemail, :Psenha,:Psala)');
dmbancodados.adqAluno.Parameters.ParamByName('Pnome').Value:=edt_nome_cadastrese_aluno.Text;
dmbancodados.adqAluno.Parameters.ParamByName('Pemail').Value:=edt_email_cadastrese_aluno.text;
dmbancodados.adqAluno.Parameters.ParamByName('Psenha').Value:=edt_senha_cadastrese_aluno.text;
dmbancodados.adqAluno.Parameters.ParamByName('Psala').Value:=cbox_sala_cadastrese.Items[cbox_sala_cadastrese.ItemIndex];
dmbancodados.adqAluno.ExecSQL;
dmbancodados.adqAluno.Close;
showmessage('Aluno cadastrado com sucesso');
{
dmbancodados.adqusuario.SQL.clear;
dmbancodados.adqusuario.SQL.add ('select * from usuario ( nome, email, telefone, senha, id)  VALUES (:Pnome,:Psenha, :Pemail)');
dmbancodados.adqusuario.Parameters.ParamByName('Pnome').Value:=edt_nome_cadastrese_aluno.Text;
dmbancodados.adqusuario.Parameters.ParamByName('Pemail').Value:=edt_email_cadastrese_aluno.text;
dmbancodados.adqusuario.Parameters.ParamByName('Psenha').Value:=edt_senha_cadastrese_aluno.text;
dmbancodados.conexao.open;
if dmbancodados.adqusuario.recordcount=0 then
showmessage('Usuário Não Cadastrado')
else
showmessage('Usuário cadastrado com sucesso.');
 }
frmcadastrese.Close;

end;

procedure Tfrmcadastrese.btn_cadastrese_concluir_professorClick(
  Sender: TObject);
begin
frmcadastrese.close;
end;


procedure Tfrmcadastrese.btn_cadastrese_voltar_professorClick(Sender: TObject);
begin
frmcadastrese.Close;
end;

procedure Tfrmcadastrese.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmlogin.Visible := True;
end;

end.
