unit UClonagemPermissoes;

interface

type
  TClonagemPermissoes = class(TObject)
  private
    { private declarations }
    FMatricula : Integer;
    FMatricula2 : Integer;
  protected
    { protected declarations }
  public
    { public declarations }
    Property Matricula : Integer read FMatricula write FMatricula;
    Property Matricula2 : Integer read FMatricula2 write FMatricula2;

    function ClonagemFinanceiro: Boolean;
    function ClonagemVestibular: Boolean;
    function ClonagemAtendimento: Boolean;
    function ClonagemBiblioteca: Boolean;
    function ClonagemControladoria: Boolean;
    function ClonagemContasAPagar: Boolean;
    function ClonagemTesouraria: Boolean;

  published
    { published declarations }
  end;

implementation

uses UDmFuncionario, SysUtils, Vcl.Dialogs;

{ TClonagemPermissoes }

function TClonagemPermissoes.ClonagemAtendimento: Boolean;
var
  sqlUpdate, sqlCampos, sqlWhere: string;
begin
  Result := True;

  try
    sqlCampos :=
      ' UPDATE Funcionarios ' +
      ' SET PermissoesAtendimento = ' +
      ' (Select PermissoesAtendimento from Funcionarios where Fun_Matricula = :Fun_Matricula)';

    sqlWhere := ' WHERE Fun_Matricula = :Fun_Matricula2 ';

    DmFuncionario.qFuncObj.Close;

    DmFuncionario.qFuncObj.SQL.Text :=
      'SELECT PermissoesFinanceiro FROM Funcionarios WHERE Fun_Matricula = :Fun_Matricula';
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;

    DmFuncionario.qFuncObj.Open;

    if not DmFuncionario.qFuncObj.Eof then
    begin
      if DmFuncionario.qFuncObj.FieldByName('PermissoesFinanceiro').IsNull then
      begin
        ShowMessage('O usu�rio n�o possui permiss�es para o Perfil Financeiro');
        Result := False;
      end
      else
      begin
        sqlUpdate := sqlCampos + sqlWhere;

        DmFuncionario.qFuncObj.Close;
        DmFuncionario.qFuncObj.SQL.Text := sqlUpdate;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula2').Value := Self.Matricula2;

        DmFuncionario.qFuncObj.ExecSQL;

        ShowMessage('Clonagem do Atendimento efetuada com sucesso');
      end;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TClonagemPermissoes.ClonagemBiblioteca: Boolean;
var
  sqlUpdate, sqlCampos, sqlWhere: string;
begin
  Result := True;

  try
    sqlCampos :=
      ' UPDATE Funcionarios ' +
      ' SET PermissoesBiblioteca = ' +
      ' (Select PermissoesBiblioteca from Funcionarios where Fun_Matricula = :Fun_Matricula)';

    sqlWhere := ' WHERE Fun_Matricula = :Fun_id2 ';

    DmFuncionario.qFuncObj.Close;

    DmFuncionario.qFuncObj.SQL.Text :=
      'SELECT PermissoesBiblioteca FROM Funcionarios WHERE Fun_Matricula = :Fun_Matricula';
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;

    DmFuncionario.qFuncObj.Open;

    if not DmFuncionario.qFuncObj.Eof then
    begin
      if DmFuncionario.qFuncObj.FieldByName('PermissoesBiblioteca').IsNull then
      begin
        ShowMessage('O usu�rio n�o possui permiss�es para o Perfil Biblioteca');
        Result := False;
      end
      else
      begin
        sqlUpdate := sqlCampos + sqlWhere;

        DmFuncionario.qFuncObj.Close;
        DmFuncionario.qFuncObj.SQL.Text := sqlUpdate;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_id2').Value := Self.Matricula2;

        DmFuncionario.qFuncObj.ExecSQL;

        ShowMessage('Clonagem do Biblioteca efetuada com sucesso');
      end;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TClonagemPermissoes.ClonagemContasAPagar: Boolean;
var
  sqlUpdate, sqlCampos, sqlWhere: string;
begin
  Result := True;

  try
    sqlCampos :=
      ' UPDATE Funcionarios ' +
      ' SET PermissoesContasAPagar = ' +
      ' (Select PermissoesContasAPagar from Funcionarios where Fun_Matricula = :Fun_Matricula)';

    sqlWhere := ' WHERE Fun_Matricula = :Fun_Matricula2 ';

    DmFuncionario.qFuncObj.Close;

    DmFuncionario.qFuncObj.SQL.Text :=
      'SELECT PermissoesContasAPagar FROM Funcionarios WHERE Fun_Matricula = :Fun_Matricula';
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;

    DmFuncionario.qFuncObj.Open;

    if not DmFuncionario.qFuncObj.Eof then
    begin
      if DmFuncionario.qFuncObj.FieldByName('PermissoesContasAPagar').IsNull then
      begin
        ShowMessage('O usu�rio n�o possui permiss�es para o Perfil Contas a Pagar');
        Result := False;
      end
      else
      begin
        sqlUpdate := sqlCampos + sqlWhere;

        DmFuncionario.qFuncObj.Close;
        DmFuncionario.qFuncObj.SQL.Text := sqlUpdate;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula2').Value := Self.Matricula2;

        DmFuncionario.qFuncObj.ExecSQL;

        ShowMessage('Clonagem do Contas a Pagar efetuada com sucesso');
      end;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TClonagemPermissoes.ClonagemControladoria: Boolean;
var
  sqlUpdate, sqlCampos, sqlWhere: string;
begin
  Result := True;

  try
    sqlCampos :=
      ' UPDATE Funcionarios ' +
      ' SET PermissoesControladoria = ' +
      ' (Select PermissoesControladoria from Funcionarios where Fun_Matricula = :Fun_Matricula)';

    sqlWhere := ' WHERE Fun_Matricula = :Fun_Matricula2 ';

    DmFuncionario.qFuncObj.Close;

    DmFuncionario.qFuncObj.SQL.Text :=
      'SELECT PermissoesControladoria FROM Funcionarios WHERE Fun_Matricula = :Fun_Matricula';
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;

    DmFuncionario.qFuncObj.Open;

    if not DmFuncionario.qFuncObj.Eof then
    begin
      if DmFuncionario.qFuncObj.FieldByName('PermissoesControladoria').IsNull then
      begin
        ShowMessage('O usu�rio n�o possui permiss�es para o Perfil Controladoria');
        Result := False;
      end
      else
      begin
        sqlUpdate := sqlCampos + sqlWhere;

        DmFuncionario.qFuncObj.Close;
        DmFuncionario.qFuncObj.SQL.Text := sqlUpdate;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula2').Value := Self.Matricula2;

        DmFuncionario.qFuncObj.ExecSQL;

        ShowMessage('Clonagem do Controladoria efetuada com sucesso');
      end;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TClonagemPermissoes.ClonagemFinanceiro: Boolean;
var
  sqlUpdate, sqlCampos, sqlWhere: string;
begin
  Result := True;

  try
    sqlCampos :=
      ' UPDATE Funcionarios ' +
      ' SET PermissoesFinanceiro = ' +
      ' (Select PermissoesFinanceiro from Funcionarios where Fun_Matricula = :Fun_Matricula)';

    sqlWhere := ' WHERE Fun_Matricula = :Fun_Matricula2 ';

    DmFuncionario.qFuncObj.Close;

    DmFuncionario.qFuncObj.SQL.Text :=
      'SELECT PermissoesFinanceiro FROM Funcionarios WHERE Fun_Matricula = :Fun_Matricula';
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;

    DmFuncionario.qFuncObj.Open;

    if not DmFuncionario.qFuncObj.Eof then
    begin
      if DmFuncionario.qFuncObj.FieldByName('PermissoesFinanceiro').IsNull then
      begin
        ShowMessage('O usu�rio n�o possui permiss�es para o Perfil Financeiro');
        Result := False;
      end
      else
      begin
        sqlUpdate := sqlCampos + sqlWhere;

        DmFuncionario.qFuncObj.Close;
        DmFuncionario.qFuncObj.SQL.Text := sqlUpdate;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula2').Value := Self.Matricula2;

        DmFuncionario.qFuncObj.ExecSQL;

        ShowMessage('Clonagem do Financeiro efetuada com sucesso');
      end;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TClonagemPermissoes.ClonagemTesouraria: Boolean;
var
  sqlUpdate, sqlCampos, sqlWhere: string;
begin
  Result := True;

  try
    sqlCampos :=
      ' UPDATE Funcionarios ' +
      ' SET PermissoesTesouraria = ' +
      ' (Select PermissoesTesouraria from Funcionarios where Fun_Matricula = :Fun_Matricula)';

    sqlWhere := ' WHERE Fun_Matricula = :Fun_Matricula2 ';

    DmFuncionario.qFuncObj.Close;

    DmFuncionario.qFuncObj.SQL.Text :=
      'SELECT PermissoesTesouraria FROM Funcionarios WHERE Fun_Matricula = :Fun_Matricula';
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;

    DmFuncionario.qFuncObj.Open;

    if not DmFuncionario.qFuncObj.Eof then
    begin
      if DmFuncionario.qFuncObj.FieldByName('PermissoesTesouraria').IsNull then
      begin
        ShowMessage('O usu�rio n�o possui permiss�es para o Perfil Tesouraria');
        Result := False;
      end
      else
      begin
        sqlUpdate := sqlCampos + sqlWhere;

        DmFuncionario.qFuncObj.Close;
        DmFuncionario.qFuncObj.SQL.Text := sqlUpdate;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula2').Value := Self.Matricula2;

        DmFuncionario.qFuncObj.ExecSQL;

        ShowMessage('Clonagem do Tesouraria efetuada com sucesso');
      end;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function TClonagemPermissoes.ClonagemVestibular: Boolean;
var
  sqlUpdate, sqlCampos, sqlWhere: string;
begin
  Result := True;

  try
    sqlCampos :=
      ' UPDATE Funcionarios ' +
      ' SET PermissoesVestibular = ' +
      ' (Select PermissoesVestibular from Funcionarios where Fun_Matricula = :Fun_Matricula)';

    sqlWhere := ' WHERE Fun_Matricula = :Fun_Matricula2 ';

    DmFuncionario.qFuncObj.Close;

    DmFuncionario.qFuncObj.SQL.Text :=
      'SELECT PermissoesVestibular FROM Funcionarios WHERE Fun_Matricula = :Fun_Matricula';
    DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;

    DmFuncionario.qFuncObj.Open;

    if not DmFuncionario.qFuncObj.Eof then
    begin
      if DmFuncionario.qFuncObj.FieldByName('PermissoesVestibular').IsNull then
      begin
        ShowMessage('O usu�rio n�o possui permiss�es para o Perfil Vestibular');
        Result := False;
      end
      else
      begin
        sqlUpdate := sqlCampos + sqlWhere;

        DmFuncionario.qFuncObj.Close;
        DmFuncionario.qFuncObj.SQL.Text := sqlUpdate;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;
        DmFuncionario.qFuncObj.Parameters.ParamByName('Fun_Matricula2').Value := Self.Matricula2;

        DmFuncionario.qFuncObj.ExecSQL;

        ShowMessage('Clonagem do Vestibular efetuada com sucesso');
      end;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

end.
