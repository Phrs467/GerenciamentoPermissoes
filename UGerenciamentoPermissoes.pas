unit UGerenciamentoPermissoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,UClonagemPermissoes, UFuncionario,UPesqFuncionario;

type
  TFormGerenciamentoPermissoes = class(TForm)
    PanelTitulo: TPanel;
    PanelFunEspelho: TPanel;
    LabeledEditMatFunEspelho: TLabeledEdit;
    SpeedButtonFunEspelho: TSpeedButton;
    LabeledEditNomeFuncionario: TLabeledEdit;
    Label1: TLabel;
    PanelFundo: TPanel;
    PanelFunClone: TPanel;
    SpeedButtonFunClone: TSpeedButton;
    Label2: TLabel;
    LabeledEditMatFunClone: TLabeledEdit;
    LabeledEditNomeFunClone: TLabeledEdit;
    ButtonClonagemPerfil: TButton;
    CheckBoxFinanceiro: TCheckBox;
    PanelPermissoes: TPanel;
    CheckBoxBiblioteca: TCheckBox;
    CheckBoxVestibular: TCheckBox;
    CheckBoxAtendimento: TCheckBox;
    CheckBoxControladoria: TCheckBox;
    CheckBoxContasAPagar: TCheckBox;
    CheckBoxTesouraria: TCheckBox;
    procedure SpeedButtonFunEspelhoClick(Sender: TObject);
    procedure SpeedButtonFunCloneClick(Sender: TObject);
    procedure ButtonClonagemPerfilClick(Sender: TObject);
  private
    { Private declarations }
    Funcionario : TFuncionario;
    ClonagemPermissoes : TClonagemPermissoes;

    procedure PesquisarFuncionario;
  public
    { Public declarations }
  end;

var
  FormGerenciamentoPermissoes: TFormGerenciamentoPermissoes;

implementation

{$R *.dfm}

procedure TFormGerenciamentoPermissoes.ButtonClonagemPerfilClick(
  Sender: TObject);
var
  PerfilEspelho, PerfilClone : Integer;
begin
  PerfilEspelho := StrToInt(LabeledEditMatFunEspelho.Text);
  PerfilClone := StrToInt(LabeledEditMatFunClone.Text);

  ClonagemPermissoes := TClonagemPermissoes.Create;

  if LabeledEditMatFunEspelho.Text <> '' then
  begin
    ClonagemPermissoes.Matricula := PerfilEspelho;
  end;

  if LabeledEditMatFunClone.Text <> '' then
  begin
    ClonagemPermissoes.Matricula2 := PerfilClone;
  end;

  if CheckBoxFinanceiro.Checked = true then
  begin
    ClonagemPermissoes.ClonagemFinanceiro;
  end;

  if CheckBoxBiblioteca.Checked = true then
  begin
    ClonagemPermissoes.ClonagemBiblioteca;
  end;

  if CheckBoxAtendimento.Checked = true then
  begin
    ClonagemPermissoes.ClonagemAtendimento;
  end;

  if CheckBoxVestibular.Checked = true then
  begin
    ClonagemPermissoes.ClonagemVestibular;
  end;

  if CheckBoxControladoria.Checked = true then
  begin
    ClonagemPermissoes.ClonagemControladoria;
  end;

  if CheckBoxContasAPagar.Checked = true then
  begin
    ClonagemPermissoes.ClonagemContasAPagar;
  end;

  if CheckBoxTesouraria.Checked = true then
  begin
    ClonagemPermissoes.ClonagemTesouraria;
  end;

  ClonagemPermissoes.Free;
end;

procedure TFormGerenciamentoPermissoes.PesquisarFuncionario;
begin
  if LabeledEditMatFunEspelho.Text <> '' then
  begin

    Funcionario := TFuncionario.Create;
    Funcionario.Matricula := StrToInt(LabeledEditMatFunEspelho.Text);

    if Funcionario.pesquisarId then
    begin
      LabeledEditMatFunEspelho.Text := IntToStr(Funcionario.Matricula);
      LabeledEditNomeFuncionario.Text := Funcionario.Nome;
    end
    else
    begin
      ShowMessage('Funcion�rio n�o localizado!');
    end;

    Funcionario.Free;
  end;

  if LabeledEditMatFunClone.Text <> '' then
  begin
    Funcionario := TFuncionario.Create;
    Funcionario.Matricula := StrToInt(LabeledEditMatFunClone.Text);

    if Funcionario.pesquisarId then
    begin
      LabeledEditMatFunClone.Text := IntToStr(Funcionario.Matricula);
      LabeledEditNomeFunClone.Text := Funcionario.Nome;
    end
    else
    begin
      ShowMessage('Funcion�rio n�o localizado!');
    end;

    Funcionario.Free;
  end;
end;

procedure TFormGerenciamentoPermissoes.SpeedButtonFunEspelhoClick(Sender: TObject);
begin
 FormPesqFunc.ShowModal;
  if FormPesqFunc.FrmMatriculaFuncionario > 0 then
  begin
    LabeledEditMatFunEspelho.Text := IntToStr(FormPesqFunc.FrmMatriculaFuncionario);
    PesquisarFuncionario;
  end;
end;

procedure TFormGerenciamentoPermissoes.SpeedButtonFunCloneClick(Sender: TObject);
begin
 FormPesqFunc.ShowModal;
  if FormPesqFunc.FrmMatriculaFuncionario > 0 then
  begin
    LabeledEditMatFunClone.Text := IntToStr(FormPesqFunc.FrmMatriculaFuncionario);
    PesquisarFuncionario;
  end;
end;

end.
