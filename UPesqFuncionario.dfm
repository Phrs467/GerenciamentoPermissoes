object FormPesqFunc: TFormPesqFunc
  Left = 0
  Top = 0
  Caption = 'Pesquisa de funcion'#225'rio'
  ClientHeight = 548
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 95
    Width = 801
    Height = 442
    TabOrder = 0
    object DBGridPesqFuncionario: TDBGrid
      Left = 1
      Top = 1
      Width = 799
      Height = 440
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DmFuncionario.dsPesqFuncionario
      DrawingStyle = gdsClassic
      FixedColor = 7165253
      GradientEndColor = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7165253
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridPesqFuncionarioDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'Fun_id'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fun_Nome'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 189
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fun_Situacao'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Situa'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Nome'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nome do departamento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object PanelPesqFuncionario: TPanel
    Left = 0
    Top = 0
    Width = 820
    Height = 89
    Align = alTop
    TabOrder = 1
    object LblPesqNomeFunc: TLabel
      Left = 207
      Top = 16
      Width = 83
      Height = 13
      Caption = 'Digite seu nome: '
    end
    object RgPesqFuncionario: TRadioGroup
      Left = 14
      Top = 9
      Width = 185
      Height = 49
      Caption = 'Pesquisar por:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nome'
        'ID')
      TabOrder = 0
      OnClick = RgPesqFuncionarioClick
    end
    object EdtPesqFuncionario: TEdit
      Left = 207
      Top = 34
      Width = 202
      Height = 21
      TabOrder = 1
    end
    object BtPesqFuncionario: TButton
      Left = 415
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = BtPesqFuncionarioClick
    end
    object BtSelecionar: TButton
      Left = 496
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 3
      OnClick = BtSelecionarClick
    end
    object CheckBoxAtivo: TCheckBox
      Left = 593
      Top = 15
      Width = 97
      Height = 17
      Caption = 'Ativo'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
end
