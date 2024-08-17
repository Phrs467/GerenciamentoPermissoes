unit UFuncionario;

interface

type
  TFuncionario = class(TObject)
  private
    { private declarations }
    FId : Integer;
    FMatricula : Integer;
    FNome : String;
    FDepId : Integer;
    FSenha: string;
    FSituacao : String;
  protected
    { protected declarations }
  public
    { public declarations }
    Property Id : Integer read FId write FId;
    Property Matricula : Integer read FMatricula write FMatricula;
    Property Nome : String read FNome write FNome;
    Property DepId : Integer read FDepId write FDepId;
    property Senha: String read FSenha write FSenha;
    Property Situacao : string read FSituacao write FSituacao;

    function pesquisarId: Boolean;

  published
    { published declarations }
  end;

implementation

uses UDmFuncionario, SysUtils;

{ TFuncionario }

function TFuncionario.pesquisarId: Boolean;
var
  sql : string;

begin
  Result := True;

   try

      sql :=
      ' select ' +
      '  fun.* ' +
      ' from Funcionarios fun ' ;

       sql := sql + ' where fun.Fun_Matricula = :Fun_Matricula ';

       DmFuncionario.qPesqFuncObj.Close;
       DmFuncionario.qPesqFuncObj.SQL.Text := sql;
       DmFuncionario.qPesqFuncObj.Parameters.ParamByName('Fun_Matricula').Value := Self.Matricula;
       DmFuncionario.qPesqFuncObj.Open;

       Result := not DmFuncionario.qPesqFuncObj.IsEmpty;

       if Result then
       begin
         Self.Matricula := DmFuncionario.qPesqFuncObj.FieldByName('Fun_Matricula').AsInteger;
         Self.Nome := DmFuncionario.qPesqFuncObj.FieldByName('Fun_Nome').AsString;
         Self.Senha := DmFuncionario.qPesqFuncObj.FieldByName('Fun_Senha').AsString;
         Self.Situacao := DmFuncionario.qPesqFuncObj.FieldByName('Fun_Situacao').AsString;
         self.DepId := DmFuncionario.qPesqFuncObj.FieldByName('Dp_id').AsInteger;
       end;

   except on E: Exception do
     begin
       Result := False;
       raise Exception.Create(E.Message);
     end;
   end;

end;

end.
