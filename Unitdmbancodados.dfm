object dmbancodados: Tdmbancodados
  OldCreateOrder = False
  Height = 423
  Width = 998
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=prees' +
      'critor'
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object adqAluno: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aluno')
    Left = 56
    Top = 96
    object adqAlunonome: TStringField
      FieldName = 'nome'
      Size = 40
    end
    object adqAlunoemail: TStringField
      FieldName = 'email'
      Size = 40
    end
    object adqAlunosenha: TStringField
      FieldName = 'senha'
      Size = 10
    end
    object adqAlunoid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adqAlunosala: TStringField
      FieldName = 'sala'
      Size = 8190
    end
  end
  object dsAluno: TDataSource
    DataSet = adqAluno
    Left = 56
    Top = 144
  end
  object adqsalas: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from salas')
    Left = 232
    Top = 40
    object adqsalasid_sala: TAutoIncField
      FieldName = 'id_sala'
      ReadOnly = True
    end
    object adqsalasdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object dssalas: TDataSource
    DataSet = adqsalas
    Left = 232
    Top = 112
  end
  object adqProfessor: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=prees' +
      'critor'
    CursorType = ctStatic
    DataSource = dsProfessor
    Parameters = <>
    SQL.Strings = (
      'select * from professor'
      '')
    Left = 56
    Top = 208
    object adqProfessornome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object adqProfessoremail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object adqProfessorsenha: TStringField
      FieldName = 'senha'
      Size = 50
    end
    object adqProfessorsala: TStringField
      FieldName = 'sala'
      Size = 100
    end
    object adqProfessorid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object dsProfessor: TDataSource
    Left = 56
    Top = 272
  end
  object adqRedacao: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from redacao')
    Left = 232
    Top = 208
    object adqRedacaoid_redacao: TAutoIncField
      FieldName = 'id_redacao'
      ReadOnly = True
    end
    object adqRedacaotema: TStringField
      FieldName = 'tema'
      Size = 8190
    end
    object adqRedacaotexto: TStringField
      FieldName = 'texto'
      Size = 8190
    end
    object adqRedacaonota: TIntegerField
      FieldName = 'nota'
    end
    object adqRedacaoobservacao_professor: TStringField
      FieldName = 'observacao_professor'
      Size = 8190
    end
    object adqRedacaostatus: TStringField
      FieldName = 'status'
      Size = 255
    end
    object adqRedacaoid_aluno: TIntegerField
      FieldName = 'id_aluno'
    end
  end
  object dsRedacao: TDataSource
    DataSet = adqRedacao
    Left = 232
    Top = 272
  end
end
