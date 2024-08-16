unit UDmFuncionario;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDmFuncionario = class(TDataModule)
    qFuncionarios: TADOQuery;
    dsFuncionarios: TDataSource;
    qFuncionariosFun_id: TIntegerField;
    qFuncionariosFun_Nome: TStringField;
    qFuncionariosFun_Senha: TStringField;
    qFuncionariosDp_id: TIntegerField;
    qPesqFuncionario: TADOQuery;
    dsPesqFuncionario: TDataSource;
    qPesqFuncionarioFun_id: TIntegerField;
    qPesqFuncionarioFun_Nome: TStringField;
    qPesqFuncionarioFun_Senha: TStringField;
    qPesqFuncionarioDp_id: TIntegerField;
    qPesqFuncionarioDp_Nome: TStringField;
    dsFuncObj: TDataSource;
    qFuncObj: TADOQuery;
    dsPesqFuncObj: TDataSource;
    qPesqFuncObj: TADOQuery;
    qPesqFuncionarioFun_Matricula: TIntegerField;
    qPesqFuncionarioFun_Situacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmFuncionario: TDmFuncionario;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDBConexao;

{$R *.dfm}

end.
