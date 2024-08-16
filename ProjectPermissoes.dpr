program ProjectPermissoes;

uses
  Vcl.Forms,
  UDBConexao in 'UDBConexao.pas' {DBConexao: TDataModule},
  UDmFuncionario in 'UDmFuncionario.pas' {DmFuncionario: TDataModule},
  UGerenciamentoPermissoes in 'UGerenciamentoPermissoes.pas' {FormGerenciamentoPermissoes},
  UPesqFuncionario in 'UPesqFuncionario.pas' {FormPesqFunc},
  UFuncionario in 'UFuncionario.pas',
  UClonagemPermissoes in 'UClonagemPermissoes.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormGerenciamentoPermissoes, FormGerenciamentoPermissoes);
  Application.CreateForm(TDBConexao, DBConexao);
  Application.CreateForm(TDmFuncionario, DmFuncionario);
  Application.CreateForm(TFormGerenciamentoPermissoes, FormGerenciamentoPermissoes);
  Application.CreateForm(TFormPesqFunc, FormPesqFunc);
  Application.Run;
end.
