unit Unitdmbancodados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdmbancodados = class(TDataModule)
    conexao: TADOConnection;
    adqAluno: TADOQuery;
    dsAluno: TDataSource;
    adqsalas: TADOQuery;
    dssalas: TDataSource;
    adqProfessor: TADOQuery;
    dsProfessor: TDataSource;
    adqAlunonome: TStringField;
    adqAlunoemail: TStringField;
    adqAlunosenha: TStringField;
    adqAlunoid: TAutoIncField;
    adqAlunosala: TStringField;
    adqsalasid_sala: TAutoIncField;
    adqsalasdescricao: TStringField;
    adqProfessornome: TStringField;
    adqProfessoremail: TStringField;
    adqProfessorsenha: TStringField;
    adqProfessorsala: TStringField;
    adqProfessorid: TAutoIncField;
    adqRedacao: TADOQuery;
    adqRedacaoid_redacao: TAutoIncField;
    adqRedacaotema: TStringField;
    adqRedacaotexto: TStringField;
    adqRedacaonota: TIntegerField;
    adqRedacaoobservacao_professor: TStringField;
    adqRedacaostatus: TStringField;
    dsRedacao: TDataSource;
    adqRedacaoid_aluno: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmbancodados: Tdmbancodados;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
