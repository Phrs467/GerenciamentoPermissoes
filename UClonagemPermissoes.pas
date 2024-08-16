unit UClonagemPermissoes;

interface

type
  TClonagemPermissoes = class(TObject)
  private
    { private declarations }
    FId : Integer;
    FId2 : Integer;
    FPermissoes : String;
  protected
    { protected declarations }
  public
    { public declarations }
    Property Id : Integer read FId write FId;
    Property Id2 : Integer read FId2 write FId2;
    Property Permissoes : String read FPermissoes write FPermissoes;

    function ClonagemFinanceiro: Boolean;
    function ClonagemVestibular: Boolean;
    function ClonagemAtendimento: Boolean;
    function ClonagemBiblioteca: Boolean;

  published
    { published declarations }
  end;

implementation

uses UDmFuncionario, SysUtils, Vcl.Dialogs;

{ TClonagemPermissoes }

//function TClonagemPermissoes.ClonagemAtendimento: Boolean;
//var
//  sqlUpdate,
//  sqlCampos,
//  sqlWhere : string;
//begin
//  Result := True;
//
//  try
//
//    sqlCampos :=
//              ' UPDATE Funcionarios '+
//              '   Set  PermissoesAtendimento =   '+
//              '(Select PermissoesAtendimento from Funcionarios where Fun_Id = :Fun_id)';
//
//    sqlWhere :=
//              '  WHERE Fun_id = :Fun_id2 ';
//    if not DmFuncionario.qFuncObj.Eof then
//    begin
//      // Verifica se PermissoesFinanceiro é NULL
//      if DmFuncionario.qFuncObj.FieldByName('PermissoesFinanceiro').IsNull then
//      begin
//        // Exibe mensagem de aviso
//        ShowMessage('O usuário não possui permissões para o Perfil selecionado');
//      end
//      else
//      begin
//        sqlUpdate := sqlCampos + sqlWhere;
//
//        DmFuncionario.qFuncObj.SQL.Text := sqlUpdate;
//        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_id').Value := Self.Id;
//        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_id2').Value := Self.Id2;
//      end;
//    end;
//    DmFuncionario.qFuncObj.Close;
//
//    DmFuncionario.qFuncObj.ExecSQL;
//
//  except on E: Exception do
//    begin
//      Result := False;
//      raise Exception.Create(E.Message);
//    end;
//  end;
//end;
function TClonagemPermissoes.ClonagemAtendimento: Boolean;
var
  sqlUpdate, sqlCampos, sqlWhere: string;
begin
  Result := True; // Assume sucesso inicialmente

  try
    sqlCampos :=
      ' UPDATE Funcionarios ' +
      ' SET PermissoesAtendimento = ' +
      ' (Select PermissoesAtendimento from Funcionarios where Fun_Id = :Fun_id)';

    sqlWhere := ' WHERE Fun_id = :Fun_id2 ';

    // Certifique-se de que a consulta esteja fechada antes de definir o SQL
    DmFuncionario.qFuncObj.Close;

    // Monta a consulta para verificar se o PermissoesFinanceiro é NULL
    DmFuncionario.qFuncObj.SQL.Text :=
      'SELECT PermissoesFinanceiro FROM Funcionarios WHERE Fun_Id = :Fun_id';
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_id').Value := Self.Id;

    // Abre a consulta
    DmFuncionario.qFuncObj.Open;

    if not DmFuncionario.qFuncObj.Eof then
    begin
      // Verifica se PermissoesFinanceiro é NULL
      if DmFuncionario.qFuncObj.FieldByName('PermissoesFinanceiro').IsNull then
      begin
        // Exibe mensagem de aviso
        ShowMessage('O usuário não possui permissões para o Perfil selecionado');
        Result := False; // Indica falha na clonagem
      end
      else
      begin
        // Monta a consulta de atualização
        sqlUpdate := sqlCampos + sqlWhere;

        // Fecha a consulta anterior antes de definir um novo SQL
        DmFuncionario.qFuncObj.Close;
        DmFuncionario.qFuncObj.SQL.Text := sqlUpdate;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_id').Value := Self.Id;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_id2').Value := Self.Id2;

        // Executa a consulta de atualização
        DmFuncionario.qFuncObj.ExecSQL;

        ShowMessage('Clonagem do Atendimento efetuada com sucesso');
      end;
    end;
  except
    on E: Exception do
    begin
      Result := False; // Indica falha em caso de exceção
      raise Exception.Create(E.Message);
    end;
  end;
end;



function TClonagemPermissoes.ClonagemBiblioteca: Boolean;
var
  sqlUpdate,
  sqlCampos,
  sqlWhere : string;
begin
  Result := True;

  try
    sqlCampos :=
      ' UPDATE Funcionarios '+
      '   Set  PermissoesBiblioteca =   '+
      '(Select PermissoesBiblioteca from Funcionarios where Fun_Id = :Fun_id)';

    sqlWhere :=
      '  WHERE Fun_id = :Fun_id2 ';

    sqlUpdate := sqlCampos + sqlWhere;

    DmFuncionario.qFuncObj.Close;
    DmFuncionario.qFuncObj.SQL.Text := sqlUpdate;
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_id').Value := Self.Id;
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_id2').Value := Self.Id2;

    DmFuncionario.qFuncObj.ExecSQL;

  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TClonagemPermissoes.ClonagemFinanceiro: Boolean;
var
  sqlUpdate,
  sqlCampos,
  sqlWhere : string;
begin
  Result := True;

  try
    sqlCampos :=
      ' UPDATE Funcionarios '+
      '   Set  PermissoesFinanceiro =   '+
      '(Select PermissoesFinanceiro from Funcionarios where Fun_Id = :Fun_id)';

    sqlWhere :=
      '  WHERE Fun_id = :Fun_id2 ';

    sqlUpdate := sqlCampos + sqlWhere;

    DmFuncionario.qFuncObj.Close;
    DmFuncionario.qFuncObj.SQL.Text := sqlUpdate;
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_id').Value := Self.Id;
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_id2').Value := Self.Id2;

    DmFuncionario.qFuncObj.ExecSQL;

  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;
function TClonagemPermissoes.ClonagemVestibular: Boolean;
var
  sqlUpdate,
  sqlCampos,
  sqlWhere : string;
begin
  Result := True;

  try
    sqlCampos :=
      ' UPDATE Funcionarios '+
      '   Set  PermissoesVestibular =   '+
      '(Select PermissoesVestibular from Funcionarios where Fun_Id = :Fun_id)';

    sqlWhere :=
      '  WHERE Fun_id = :Fun_id2 ';

    sqlUpdate := sqlCampos + sqlWhere;

    DmFuncionario.qFuncObj.Close;
    DmFuncionario.qFuncObj.SQL.Text := sqlUpdate;
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_id').Value := Self.Id;
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_id2').Value := Self.Id2;

    DmFuncionario.qFuncObj.ExecSQL;

  except on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

end.
