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
  object Panel1: TPanel
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
  object Panel3: TPanel
    Left = 0
    Top = 81
    Width = 828
    Height = 499
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 8
      Top = 6
      Width = 393
      Height = 483
      Align = alCustom
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 79
        Top = 75
        Width = 23
        Height = 22
        OnClick = SpeedButton1Click
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
      object LabeledEditIdFunEspelho: TLabeledEdit
        Left = 24
        Top = 76
        Width = 49
        Height = 21
        EditLabel.Width = 11
        EditLabel.Height = 13
        EditLabel.Caption = 'ID'
        TabOrder = 0
      end
      object LabeledEditNomeFuncionario: TLabeledEdit
        Left = 108
        Top = 76
        Width = 197
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        TabOrder = 1
      end
      object Panel5: TPanel
        Left = 24
        Top = 120
        Width = 281
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
      end
    end
    object Panel4: TPanel
      Left = 424
      Top = 6
      Width = 393
      Height = 483
      Align = alCustom
      TabOrder = 1
      object SpeedButton2: TSpeedButton
        Left = 79
        Top = 75
        Width = 23
        Height = 22
        OnClick = SpeedButton2Click
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
      object LabeledEditIdFunClone: TLabeledEdit
        Left = 24
        Top = 76
        Width = 49
        Height = 21
        EditLabel.Width = 11
        EditLabel.Height = 13
        EditLabel.Caption = 'ID'
        TabOrder = 0
      end
      object LabeledEditNomeFunClone: TLabeledEdit
        Left = 108
        Top = 76
        Width = 197
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
