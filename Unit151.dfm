object FormWarnMG: TFormWarnMG
  Left = 835
  Top = 305
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'All options must be enabled'
  ClientHeight = 199
  ClientWidth = 255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 4
    Top = 4
    Width = 247
    Height = 189
    TabOrder = 0
    object lbl1: TLabel
      Left = 10
      Top = 10
      Width = 227
      Height = 13
      Alignment = taCenter
      Caption = 'For normal operation of the multigraph, '
    end
    object lbl2: TLabel
      Left = 10
      Top = 26
      Width = 227
      Height = 13
      Alignment = taCenter
      Caption = 'all these options must be enabled.'
    end
    object chk1: TCheckBox
      Left = 10
      Top = 66
      Width = 161
      Height = 17
      Caption = 'Enable this list of parsers'
      TabOrder = 0
      OnClick = chk1Click
    end
    object rb1: TRadioButton
      Left = 10
      Top = 86
      Width = 229
      Height = 17
      Caption = 'Use graphic buffers for this list of parsers'
      TabOrder = 1
      OnClick = rb1Click
    end
    object chk2: TCheckBox
      Left = 10
      Top = 106
      Width = 209
      Height = 17
      Caption = 'Enable time synchronization of charts'
      TabOrder = 2
      OnClick = chk2Click
    end
    object chk3: TCheckBox
      Left = 10
      Top = 126
      Width = 97
      Height = 17
      Caption = 'Enable buffering of new data'
      TabOrder = 3
      OnClick = chk3Click
    end
    object btn1: TButton
      Left = 162
      Top = 154
      Width = 75
      Height = 25
      Caption = #1054#1050
      TabOrder = 4
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 10
      Top = 154
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 5
      OnClick = btn2Click
    end
  end
end
