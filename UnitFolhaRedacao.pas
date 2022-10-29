unit UnitFolhaRedacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.Menus,
  System.ImageList, FMX.ImgList, FMX.Printer, FMX.WebBrowser, IdIntercept,
  IdBaseComponent, IdLogBase, IdLogFile, winapi.ShellAPI;

type
  TfrmFolhaRedacao = class(TForm)
    Memo1: TMemo;
    MenuBar1: TMenuBar;
    arquivo: TMenuItem;
    novo: TMenuItem;
    abrir: TMenuItem;
    sair: TMenuItem;
    editar: TMenuItem;
    copiar: TMenuItem;
    colar: TMenuItem;
    recortar: TMenuItem;
    ajuda: TMenuItem;
    sobre: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    salvar: TMenuItem;
    PrintDialog1: TPrintDialog;
    imprimir: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    ImageList1: TImageList;
    icones: TMenuItem;
    enviar: TMenuItem;
    procedure abrirClick(Sender: TObject);
    procedure salvarClick(Sender: TObject);
    procedure copiarClick(Sender: TObject);
    procedure recortarClick(Sender: TObject);
    procedure colarClick(Sender: TObject);
    procedure imprimirClick(Sender: TObject);
    procedure novoClick(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure iconesClick(Sender: TObject);
    procedure sobreClick(Sender: TObject);
    procedure enviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFolhaRedacao: TfrmFolhaRedacao;

implementation

{$R *.fmx}

uses UnitSobre, Unitdmbancodados;


procedure TfrmFolhaRedacao.abrirClick(Sender: TObject);
begin
    opendialog1.Execute;
    memo1.Lines.LoadFromFile(opendialog1.FileName);
    memo1.SetFocus;
    label1.Text := 'Arquivo Aberto';
end;


procedure TfrmFolhaRedacao.colarClick(Sender: TObject);
begin
      memo1.PasteFromClipboard;
end;

procedure TfrmFolhaRedacao.copiarClick(Sender: TObject);
begin
      memo1.CopyToClipboard;
end;


procedure TfrmFolhaRedacao.enviarClick(Sender: TObject);
begin
        dmbancodados.adqRedacao.Active:=true;
        dmbancodados.adqRedacao.SQL.clear;
        dmbancodados.adqRedacao.SQL.add ('INSERT INTO redacao ( tema, texto,status,id_aluno)');
        dmbancodados.adqRedacao.SQL.add ('VALUES(:Ptema,:Ptexto, :Pstatus,:Pid_aluno)');
        dmbancodados.adqRedacao.Parameters.ParamByName('Ptema').Value:= 'Invisibilidade e registro civil garantia de acesso à cidadania no Brasil';
        dmbancodados.adqRedacao.Parameters.ParamByName('Ptexto').Value:= memo1.text;
        dmbancodados.adqRedacao.Parameters.ParamByName('Pstatus').Value:= '1' ;
        dmbancodados.adqRedacao.Parameters.ParamByName('Pid_aluno').Value:= dmbancodados.adqAluno.FieldByName('id').AsString;
        dmbancodados.adqRedacao.ExecSQL;
    showmessage('Enviado para o professor com sucesso');
end;

procedure TfrmFolhaRedacao.imprimirClick(Sender: TObject);
begin
     PrintDialog1.Execute;
end;


procedure TfrmFolhaRedacao.iconesClick(Sender: TObject);
begin
    ShellExecute(0, 'OPEN', PChar('https://icons8.com'), '', '', 1);
end;

procedure TfrmFolhaRedacao.novoClick(Sender: TObject);
begin
      memo1.lines.Clear;
      label1.Text := '';
end;

procedure TfrmFolhaRedacao.recortarClick(Sender: TObject);
begin
      memo1.CutToClipboard;
end;

procedure TfrmFolhaRedacao.sairClick(Sender: TObject);
begin
        frmFolhaRedacao.Close;
end;

procedure TfrmFolhaRedacao.salvarClick(Sender: TObject);

    var
    nome_arquivo:string;
    i: integer;
  begin
  SaveDialog1.Execute;
  nome_arquivo:= SaveDialog1.FileName;
  i:= pos('.', nome_arquivo);
    if i=0 then
         memo1.Lines.SaveToFile (nome_arquivo+'.txt')
    else
          memo1.Lines.SaveToFile(nome_arquivo);

    label1.Text := 'Arquivo Salvo';
  end;

procedure TfrmFolhaRedacao.sobreClick(Sender: TObject);
begin
      frmSobre.ShowModal;
end;


end.
