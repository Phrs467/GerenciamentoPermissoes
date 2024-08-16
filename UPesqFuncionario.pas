unit UPesqFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormPesqFunc = class(TForm)
    PanelPesqFuncionario: TPanel;
    RgPesqFuncionario: TRadioGroup;
    EdtPesqFuncionario: TEdit;
    LblPesqNomeFunc: TLabel;
    BtPesqFuncionario: TButton;
    DBGridPesqFuncionario: TDBGrid;
    BtSelecionar: TButton;
    CheckBoxAtivo: TCheckBox;
    Panel1: TPanel;
    procedure RgPesqFuncionarioClick(Sender: TObject);
    procedure BtPesqFuncionarioClick(Sender: TObject);
    procedure BtSelecionarClick(Sender: TObject);
    procedure DBGridPesqFuncionarioDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    FrmNomeFuncionario  : string;
    FrmIdFuncionario    : Integer;
  end;

type
  TDBGridFuncionario = class(TDBGrid);

var
  FormPesqFunc: TFormPesqFunc;

implementation

uses
  UDmFuncionario;

{$R *.dfm}



procedure TFormPesqFunc.BtPesqFuncionarioClick(Sender: TObject);
var
  sql : string;
begin
  sql :=
  ' select                      '+
  '  fun.Fun_id,                '+
  '  fun.Fun_Matricula,         '+
  '  fun.Fun_Nome,              '+
  '  fun.Fun_Senha,             '+
  '  fun.Fun_Situacao,          '+
  '  fun.Dp_id,                 '+
  '  dep.Dp_Nome                '+
  '  from Funcionarios fun      '+
  '  left outer join Departamentos dep  On dep.dp_id = fun.dp_id ';

  if CheckBoxAtivo.Checked = true then
  begin
    sql := sql + 'where fun.Fun_Situacao = ''A''';
  end
  else
    sql := sql + 'where fun.Fun_Situacao = ''I''';

  if RgPesqFuncionario.ItemIndex = 0 then
  begin
    if EdtPesqFuncionario.Text = '' then
    begin
      DmFuncionario.qPesqFuncionario.Close;
      DmFuncionario.qPesqFuncionario.SQL.Text := sql;
      DmFuncionario.qPesqFuncionario.Open;
    end
    else
    begin
      sql := sql + ' where fun.Fun_Nome like ''%' + EdtPesqFuncionario.Text + '%''';

      DmFuncionario.qPesqFuncionario.Close;
      DmFuncionario.qPesqFuncionario.SQL.Text := sql;
      DmFuncionario.qPesqFuncionario.Open;
    end;
  end;

  if RgPesqFuncionario.ItemIndex = 1 then
  begin
    if EdtPesqFuncionario.Text = '' then
    begin
      DmFuncionario.qPesqFuncionario.Close;
      DmFuncionario.qPesqFuncionario.SQL.Text := sql;
      DmFuncionario.qPesqFuncionario.Open;
    end
    else
    begin
      sql := sql + ' where fun.fun_id = :fun_id ';

      DmFuncionario.qPesqFuncionario.Close;
      DmFuncionario.qPesqFuncionario.SQL.Text := sql;
      DmFuncionario.qPesqFuncionario.Parameters.ParamByName('fun_id').Value := EdtPesqFuncionario.Text;
      DmFuncionario.qPesqFuncionario.Open;
    end;
  end;

  TDBGridFuncionario(DBGridPesqFuncionario).DefaultRowHeight := 30;
  TDBGridFuncionario(DBGridPesqFuncionario).ClientHeight := (30 *   TDBGridFuncionario(DBGridPesqFuncionario).RowCount) +30;
end;

procedure TFormPesqFunc.BtSelecionarClick(Sender: TObject);
begin
  FrmIdFuncionario := 0;
  FrmNomeFuncionario := '';
  if not DmFuncionario.qPesqFuncionario.IsEmpty then
  begin
     FrmIdFuncionario := DmFuncionario.qPesqFuncionarioFun_id.AsInteger;
     FrmNomeFuncionario := DmFuncionario.qPesqFuncionarioFun_Nome.AsString;
  end;
  Self.Close;
end;

procedure TFormPesqFunc.DBGridPesqFuncionarioDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd(DBGridPesqFuncionario.DataSource.DataSet.RecNo) then
    DBGridPesqFuncionario.Canvas.Brush.Color := $00E9E9E9
  else
    DBGridPesqFuncionario.Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    DBGridPesqFuncionario.Canvas.Brush.Color := clBlue;
    DBGridPesqFuncionario.Canvas.Font.Color := clWhite;
    DBGridPesqFuncionario.Canvas.Font.Style := [fsBold];
  end;

  DBGridPesqFuncionario.Canvas.FillRect(Rect);
  DBGridPesqFuncionario.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  DBGridPesqFuncionario.Canvas.TextRect(Rect, Rect.Left + 8, Rect.Top + 8, Column.Field.DisplayText);
end;

procedure TFormPesqFunc.RgPesqFuncionarioClick(Sender: TObject);
begin
    begin
    if RgPesqFuncionario.ItemIndex = 0 then
      begin
        LblPesqNomeFunc.Caption := 'Digite seu nome';
      end;

    if RgPesqFuncionario.ItemIndex = 1 then
      begin
        LblPesqNomeFunc.Caption := 'Digite seu ID';
      end;
  end;
end;

end.
