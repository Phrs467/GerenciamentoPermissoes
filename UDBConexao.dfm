object DBConexao: TDBConexao
  OldCreateOrder = False
  Height = 195
  Width = 287
  object ConexaoBDPEDRO: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=saoba123;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=BDPEDRO;Data Source=DESENV1'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 80
    Top = 32
  end
end
