unit Unitlogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox, FMX.Edit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrmlogin = class(TForm)
    lyt_panel_login: TLayout;
    panel_login: TPanel;
    panel_cadastro_login: TPanel;
    lbl_login: TLabel;
    lbl_usuario_login: TLabel;
    edt_nome_login: TEdit;
    edt_email_login: TEdit;
    edt_senha_login: TEdit;
    rdb_aluno_login: TRadioButton;
    rdb_professor_login: TRadioButton;
    lbl_sala_login: TLabel;
    cbox_sala_login: TComboBox;
    lbl_nenhuma_conta: TLabel;
    btn_entrar_login: TButton;
    lbl_nc_acessar: TLabel;
    btn_acesse_aqui: TButton;
    StyleBook1: TStyleBook;
    rec_btn_entrar: TRectangle;
    rec_nome: TRectangle;
    rec_email: TRectangle;
    rec_senha: TRectangle;
    btn_cadastreseA: TButton;
    img_logo_cadastro: TImage;
    RadioButton1: TRadioButton;
    btn_cadastreseP: TButton;
    rec_cdstAluno: TRectangle;
    rec_cdstProfessor: TRectangle;
    rec_aceseseAq: TRectangle;
    procedure btn_cadastreseAClick(Sender: TObject);
    procedure btn_entrar_loginClick(Sender: TObject);

    procedure edt_nome_loginChange(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure btn_cadastresePClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogin: Tfrmlogin;

implementation

{$R *.fmx}

uses Unit2Cadastro, UnitPrincipal, UnitPrincipalProf, Unitfrmadmin, UnitCadastroProfessor,
  Unitdmbancodados;

procedure Tfrmlogin.btn_cadastreseAClick(Sender: TObject);
begin
frmcadastrese.show;
frmlogin.Visible := False;
end;

procedure Tfrmlogin.btn_entrar_loginClick(Sender: TObject);

begin
var sucesso : Boolean;
    sucesso := false;
if rdb_aluno_login.IsChecked then
begin
    dmbancodados.adqAluno.Active:=true;
    dmbancodados.adqAluno.SQL.clear;
    dmbancodados.adqAluno.SQL.add ('SELECT * from aluno where nome = :Pnome and email = :Pemail and senha = :Psenha and sala = :Psala');
    dmbancodados.adqAluno.Parameters.ParamByName('Pnome').Value:=edt_nome_login.Text;
    dmbancodados.adqAluno.Parameters.ParamByName('Pemail').Value:=edt_email_login.text;
    dmbancodados.adqAluno.Parameters.ParamByName('Psenha').Value:=edt_senha_login.text;
    dmbancodados.adqAluno.Parameters.ParamByName('Psala').Value:= cbox_sala_login.items[cbox_sala_login.ItemIndex];
    dmbancodados.adqAluno.Open;
    dmbancodados.adqAluno.First;
    if dmbancodados.adqAluno.FieldByName('email').AsString = '' then
    begin
          dmbancodados.adqAluno.Close;
          showmessage ('Aluno não encontrado')
    end

    else
          sucesso:= true;

end
else
begin
    dmbancodados.adqProfessor.Active:=true;
    dmbancodados.adqProfessor.SQL.clear;
    dmbancodados.adqProfessor.SQL.add ('SELECT * from professor where nome = :Pnome and email = :Pemail and senha = :Psenha and sala = :Psala');
    dmbancodados.adqProfessor.Parameters.ParamByName('Pnome').Value:=edt_nome_login.Text;
    dmbancodados.adqProfessor.Parameters.ParamByName('Pemail').Value:=edt_email_login.text;
    dmbancodados.adqProfessor.Parameters.ParamByName('Psenha').Value:=edt_senha_login.text;
    dmbancodados.adqProfessor.Parameters.ParamByName('Psala').Value:= cbox_sala_login.items[cbox_sala_login.ItemIndex];
    dmbancodados.adqProfessor.Open;
    dmbancodados.adqProfessor.First;
    if dmbancodados.adqProfessor.FieldByName('email').AsString = '' then
    begin
      showmessage ('Professor não encontrado') ;
      dmbancodados.adqProfessor.Close
    end
    else
        sucesso:= true;

end;
if sucesso then
begin
  if rdb_aluno_login.IsChecked then  FrmPrincipal.show
  else FrmPrincipalProf.show ;
  frmlogin.Visible := false;
end;
end;

procedure Tfrmlogin.btn_cadastresePClick(Sender: TObject);
begin
fmr_cadastroProfessor.show;
end;

procedure Tfrmlogin.edt_nome_loginChange(Sender: TObject);
begin
      if edt_nome_login.Text = ' '  then  btn_entrar_login.Enabled := false
      else btn_entrar_login.Enabled := true;
end;




procedure Tfrmlogin.RadioButton1Click(Sender: TObject);
begin
frmadmin.show;

end;

end.
