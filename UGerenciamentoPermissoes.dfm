object FormGerenciamentoPermissoes: TFormGerenciamentoPermissoes
  Left = 0
  Top = 0
  Caption = 'Gerenciamento de Permiss'#245'es'
  ClientHeight = 580
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTitulo: TPanel
    Left = 0
    Top = 0
    Width = 828
    Height = 81
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = 'Gerenciamento de Permiss'#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object PanelFundo: TPanel
    Left = 0
    Top = 81
    Width = 828
    Height = 499
    Align = alClient
    TabOrder = 1
    object PanelFunEspelho: TPanel
      Left = 8
      Top = 6
      Width = 393
      Height = 483
      Align = alCustom
      TabOrder = 0
      object SpeedButtonFunEspelho: TSpeedButton
        Left = 111
        Top = 75
        Width = 23
        Height = 22
        OnClick = SpeedButtonFunEspelhoClick
      end
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 137
        Height = 19
        Caption = 'Perfil de Espelho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabeledEditMatFunEspelho: TLabeledEdit
        Left = 24
        Top = 76
        Width = 81
        Height = 21
        EditLabel.Width = 43
        EditLabel.Height = 13
        EditLabel.Caption = 'Matr'#237'cula'
        TabOrder = 0
      end
      object LabeledEditNomeFuncionario: TLabeledEdit
        Left = 140
        Top = 76
        Width = 237
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        TabOrder = 1
      end
      object PanelPermissoes: TPanel
        Left = 24
        Top = 120
        Width = 353
        Height = 105
        BevelInner = bvLowered
        TabOrder = 2
        object CheckBoxFinanceiro: TCheckBox
          Left = 8
          Top = 9
          Width = 137
          Height = 17
          Caption = 'Permiss'#245'es Financeiro'
          TabOrder = 0
        end
        object CheckBoxBiblioteca: TCheckBox
          Left = 8
          Top = 32
          Width = 137
          Height = 17
          Caption = 'Permiss'#245'es Biblioteca'
          TabOrder = 1
        end
        object CheckBoxVestibular: TCheckBox
          Left = 8
          Top = 55
          Width = 137
          Height = 17
          Caption = 'Permiss'#245'es Vestibular'
          TabOrder = 2
        end
        object CheckBoxAtendimento: TCheckBox
          Left = 8
          Top = 78
          Width = 137
          Height = 17
          Caption = 'Permiss'#245'es Atendimento'
          TabOrder = 3
        end
        object CheckBoxControladoria: TCheckBox
          Left = 184
          Top = 9
          Width = 137
          Height = 17
          Caption = 'Permiss'#245'es Controladoria'
          TabOrder = 4
        end
        object CheckBoxContasAPagar: TCheckBox
          Left = 184
          Top = 32
          Width = 153
          Height = 17
          Caption = 'Permiss'#245'es Contas a Pagar'
          TabOrder = 5
        end
        object CheckBoxTesouraria: TCheckBox
          Left = 184
          Top = 55
          Width = 137
          Height = 17
          Caption = 'Permiss'#245'es Tesouraria'
          TabOrder = 6
        end
      end
    end
    object PanelFunClone: TPanel
      Left = 424
      Top = 6
      Width = 393
      Height = 483
      Align = alCustom
      TabOrder = 1
      object SpeedButtonFunClone: TSpeedButton
        Left = 111
        Top = 76
        Width = 23
        Height = 22
        OnClick = SpeedButtonFunCloneClick
      end
      object Label2: TLabel
        Left = 24
        Top = 24
        Width = 169
        Height = 19
        Caption = 'Perfil para clonagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabeledEditMatFunClone: TLabeledEdit
        Left = 24
        Top = 76
        Width = 81
        Height = 21
        EditLabel.Width = 43
        EditLabel.Height = 13
        EditLabel.Caption = 'Matr'#237'cula'
        TabOrder = 0
      end
      object LabeledEditNomeFunClone: TLabeledEdit
        Left = 140
        Top = 76
        Width = 237
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        TabOrder = 1
      end
      object ButtonClonagemPerfil: TButton
        Left = 24
        Top = 432
        Width = 89
        Height = 25
        Caption = 'Clonar'
        TabOrder = 2
        OnClick = ButtonClonagemPerfilClick
      end
    end
  end
end
