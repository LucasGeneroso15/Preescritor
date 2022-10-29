unit UnitPerfilProf;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Edit, FMX.Controls.Presentation;

type
  TfrmPerfilProf = class(TForm)
    edtEmailProf: TEdit;
    edtNomeProf: TEdit;
    edtSenhaProf: TEdit;
    PasswordEditButton1: TPasswordEditButton;
    img_logo_perfilprof: TImage;
    lblEmailProf: TLabel;
    lblNomeProf: TLabel;
    lblNomeSalaProf: TLabel;
    lblSenhaProf: TLabel;
    lblUsuarioProf: TLabel;
    procedure FormShow(Sender: TObject);
    procedure PasswordEditButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPerfilProf: TfrmPerfilProf;

implementation

{$R *.fmx}

uses Unitdmbancodados;

procedure TfrmPerfilProf.FormShow(Sender: TObject);
begin
  lblNomeSalaProf.Text := dmbancodados.adqProfessor.FieldByName('sala').AsString;
  edtNomeProf.Text := dmbancodados.adqProfessor.FieldByName('nome').AsString;
  edtEmailProf.Text := dmbancodados.adqProfessor.FieldByName('email').AsString;
  edtSenhaProf.Text := dmbancodados.adqProfessor.FieldByName('senha').AsString;
end;

procedure TfrmPerfilProf.PasswordEditButton1Click(Sender: TObject);
begin
  edtSenhaProf.Password := False;
end;

end.
