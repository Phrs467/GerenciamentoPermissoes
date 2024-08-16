object DmFuncionario: TDmFuncionario
  OldCreateOrder = False
  Height = 574
  Width = 805
  object qFuncionarios: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dbo.Funcionarios')
    Left = 232
    Top = 176
    object qFuncionariosFun_id: TIntegerField
      FieldName = 'Fun_id'
    end
    object qFuncionariosFun_Nome: TStringField
      FieldName = 'Fun_Nome'
      Size = 50
    end
    object qFuncionariosFun_Senha: TStringField
      FieldName = 'Fun_Senha'
      Size = 10
    end
    object qFuncionariosDp_id: TIntegerField
      FieldName = 'Dp_id'
    end
  end
  object dsFuncionarios: TDataSource
    DataSet = qFuncionarios
    Left = 112
    Top = 176
  end
  object qPesqFuncionario: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select '
      '  fun.Fun_id,'
      '  fun.Fun_Matricula, '
      '  fun.Fun_Nome, '
      '  fun.Fun_Senha,'
      '  fun.Fun_Situacao, '
      '  fun.Dp_id,'
      '  dep.Dp_Nome'
      'from Funcionarios fun'
      '  left outer join Departamentos dep  On dep.dp_id = fun.dp_id')
    Left = 480
    Top = 176
    object qPesqFuncionarioFun_id: TIntegerField
      FieldName = 'Fun_id'
    end
    object qPesqFuncionarioFun_Nome: TStringField
      FieldName = 'Fun_Nome'
      Size = 50
    end
    object qPesqFuncionarioFun_Senha: TStringField
      FieldName = 'Fun_Senha'
      Size = 10
    end
    object qPesqFuncionarioDp_id: TIntegerField
      FieldName = 'Dp_id'
    end
    object qPesqFuncionarioDp_Nome: TStringField
      FieldName = 'Dp_Nome'
      Size = 50
    end
    object qPesqFuncionarioFun_Matricula: TIntegerField
      FieldName = 'Fun_Matricula'
    end
    object qPesqFuncionarioFun_Situacao: TStringField
      FieldName = 'Fun_Situacao'
      Size = 1
    end
  end
  object dsPesqFuncionario: TDataSource
    DataSet = qPesqFuncionario
    Left = 376
    Top = 176
  end
  object dsFuncObj: TDataSource
    DataSet = qFuncObj
    Left = 128
    Top = 336
  end
  object qFuncObj: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    Parameters = <>
    Left = 240
    Top = 336
  end
  object dsPesqFuncObj: TDataSource
    DataSet = qPesqFuncObj
    Left = 384
    Top = 336
  end
  object qPesqFuncObj: TADOQuery
    Connection = DBConexao.ConexaoBDPEDRO
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 488
    Top = 336
  end
end
