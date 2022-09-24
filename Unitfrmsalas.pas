unit Unitfrmsalas;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Rtti, FMX.Grid.Style,
  FMX.ScrollBox, FMX.Grid, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.Layouts, FMX.ListBox;

type
  Tfrmsalas = class(TForm)
    Label1: TLabel;
    edtnomesala: TEdit;
    btnAdicionar: TButton;
    btnAlterar: TButton;
    btnSalvar: TButton;
    btnExcluir: TButton;
    btnCancelar: TButton;
    edtid: TEdit;
    lbsalas: TListBox;
    PanelCenter: TPanel;
    PanelTop: TPanel;
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsalas: Tfrmsalas;

implementation

{$R *.fmx}

uses Unitdmbancodados;

procedure Tfrmsalas.btnAdicionarClick(Sender: TObject);
begin
edtnomesala.SetFocus;



end;

procedure Tfrmsalas.btnSalvarClick(Sender: TObject);
begin
dmbancodados.adqsalas.Close;
dmbancodados.adqsalas.SQL.Clear;
dmbancodados.adqsalas.SQL.Add('INSERT INTO salas(descricao) VALUES (:Pdescricao)');
dmbancodados.adqsalas.Parameters.ParamByName('Pdescricao').Value:=edtnomesala.Text;
dmbancodados.adqsalas.ExecSQL;
showmessage('Registro Salvo');
end;

procedure Tfrmsalas.FormShow(Sender: TObject);
begin
dmbancodados.adqsalas.Close;
dmbancodados.adqsalas.SQL.Clear;
dmbancodados.adqsalas.SQL.Add('select * from salas');
dmbancodados.adqsalas.Open;

dmbancodados.adqsalas.First;
var
I:integer;

if dmbancodados.adqsalas.RecordCount=0 then
showmessage('Tabela não possui registros');

lbsalas.Items.Add('Código'+'     '+'Nome da Sala');

for I := 0 to dmbancodados.adqsalas.RecordCount do
begin
lbsalas.Items.Add(dmbancodados.adqsalas.FieldByName('id').AsString+'          '+dmbancodados.adqsalas.FieldByName('descricao').AsString);
dmbancodados.adqsalas.next;
end;

end;

end.
