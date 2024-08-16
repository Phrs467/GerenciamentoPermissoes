unit UGerenciamentoPermissoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,UClonagemPermissoes, UFuncionario,UPesqFuncionario;

type
  TFormGerenciamentoPermissoes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    LabeledEditIdFunEspelho: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    LabeledEditNomeFuncionario: TLabeledEdit;
    Label1: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    LabeledEditIdFunClone: TLabeledEdit;
    LabeledEditNomeFunClone: TLabeledEdit;
    ButtonClonagemPerfil: TButton;
    CheckBoxFinanceiro: TCheckBox;
    Panel5: TPanel;
    CheckBoxBiblioteca: TCheckBox;
    CheckBoxVestibular: TCheckBox;
    CheckBoxAtendimento: TCheckBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
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
  PerfilEspelho := StrToInt(LabeledEditIdFunEspelho.Text);
  PerfilClone := StrToInt(LabeledEditIdFunClone.Text);

  ClonagemPermissoes := TClonagemPermissoes.Create;

  if LabeledEditIdFunEspelho.Text <> '' then
  begin
    ClonagemPermissoes.Id := PerfilEspelho;
  end;

  if LabeledEditIdFunClone.Text <> '' then
  begin
    ClonagemPermissoes.Id2 := PerfilClone;
  end;

  if CheckBoxFinanceiro.Checked = true then
  begin
    ClonagemPermissoes.ClonagemFinanceiro;
    ShowMessage('Clonagem do Financeiro efetuada com sucesso');
  end;

  if CheckBoxBiblioteca.Checked = true then
  begin
    ClonagemPermissoes.ClonagemBiblioteca;
    ShowMessage('Clonagem do Biblioteca efetuada com sucesso');
  end;

  if CheckBoxAtendimento.Checked = true then
  begin
    ClonagemPermissoes.ClonagemAtendimento;

  end;

  if CheckBoxVestibular.Checked = true then
  begin
    ClonagemPermissoes.ClonagemVestibular;
    ShowMessage('Clonagem do Vestibular efetuada com sucesso');
  end;

  ClonagemPermissoes.Free;
end;

procedure TFormGerenciamentoPermissoes.PesquisarFuncionario;
begin
  if LabeledEditIdFunEspelho.Text <> '' then
  begin

    Funcionario := TFuncionario.Create;
    Funcionario.Id := StrToInt(LabeledEditIdFunEspelho.Text);

    if Funcionario.pesquisarId then
    begin
      LabeledEditIdFunEspelho.Text := IntToStr(Funcionario.Id);
      LabeledEditNomeFuncionario.Text := Funcionario.Nome;
    end
    else
    begin
      ShowMessage('Funcion�rio n�o localizado!');
    end;

    Funcionario.Free;
  end;

  if LabeledEditIdFunClone.Text <> '' then
  begin

    Funcionario := TFuncionario.Create;
    Funcionario.Id := StrToInt(LabeledEditIdFunClone.Text);

    if Funcionario.pesquisarId then
    begin
      LabeledEditIdFunClone.Text := IntToStr(Funcionario.Id);
      LabeledEditNomeFunClone.Text := Funcionario.Nome;
    end
    else
    begin
      ShowMessage('Funcion�rio n�o localizado!');
    end;

    Funcionario.Free;

  end;

end;

procedure TFormGerenciamentoPermissoes.SpeedButton1Click(Sender: TObject);
begin
 FormPesqFunc.ShowModal;
  if FormPesqFunc.FrmIdFuncionario > 0 then
  begin
    LabeledEditIdFunEspelho.Text := IntToStr(FormPesqFunc.FrmIdFuncionario);
    PesquisarFuncionario;
  end;
end;

procedure TFormGerenciamentoPermissoes.SpeedButton2Click(Sender: TObject);
begin
 FormPesqFunc.ShowModal;
  if FormPesqFunc.FrmIdFuncionario > 0 then
  begin
    LabeledEditIdFunClone.Text := IntToStr(FormPesqFunc.FrmIdFuncionario);
    PesquisarFuncionario;
  end;
end;

end.
