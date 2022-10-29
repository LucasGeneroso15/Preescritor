unit UnitPerfilAluno;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls;

type
  TfrmPerfilAluno = class(TForm)
    img_logo_perfilaluno: TImage;
    edtNomeAluno: TEdit;
    edtEmailAluno: TEdit;
    edtSenhaAluno: TEdit;
    lblNomeSala: TLabel;
    lblNome: TLabel;
    lblEmail: TLabel;
    lblSenha: TLabel;
    lblUsuario: TLabel;
    PasswordEditButton1: TPasswordEditButton;
    procedure FormShow(Sender: TObject);
    procedure PasswordEditButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPerfilAluno: TfrmPerfilAluno;

implementation

{$R *.fmx}

uses Unitdmbancodados;

procedure TfrmPerfilAluno.FormShow(Sender: TObject);
begin

  lblNomeSala.Text := dmbancodados.adqAluno.FieldByName('sala').AsString;
  edtNomeAluno.Text := dmbancodados.adqAluno.FieldByName('nome').AsString;
  edtEmailAluno.Text := dmbancodados.adqAluno.FieldByName('email').AsString;
  edtSenhaAluno.Text := dmbancodados.adqAluno.FieldByName('senha').AsString;
end;

procedure TfrmPerfilAluno.PasswordEditButton1Click(Sender: TObject);
begin
edtSenhaAluno.Password := False;
end;

end.
