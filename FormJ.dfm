object FormJoyst: TFormJoyst
  Left = 897
  Top = 266
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Joystick'
  ClientHeight = 125
  ClientWidth = 235
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 12
    Top = 52
    Width = 28
    Height = 13
    Caption = 'Key1:'
  end
  object lbl2: TLabel
    Left = 12
    Top = 70
    Width = 28
    Height = 13
    Caption = 'Key2:'
  end
  object reqSTKey1: TStaticText
    Left = 50
    Top = 50
    Width = 56
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'reqSTKey1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object reqSTKey2: TStaticText
    Left = 50
    Top = 68
    Width = 56
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'reqSTKey2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 107
    Height = 37
    TabOrder = 2
    object rb1: TRadioButton
      Left = 4
      Top = 2
      Width = 69
      Height = 17
      Caption = 'Joystick1'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rb1Click
    end
    object rb2: TRadioButton
      Left = 4
      Top = 18
      Width = 71
      Height = 17
      Caption = 'Joystick2'
      TabOrder = 1
      OnClick = rb2Click
    end
  end
  object pnl2: TPanel
    Left = 120
    Top = 8
    Width = 107
    Height = 37
    TabOrder = 3
    object rb3: TRadioButton
      Left = 4
      Top = 2
      Width = 97
      Height = 17
      Caption = 'Single Action'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rb3Click
    end
    object rb4: TRadioButton
      Left = 4
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Multiple Action'
      TabOrder = 1
      OnClick = rb4Click
    end
  end
  object Bt1: TButton
    Left = 120
    Top = 50
    Width = 107
    Height = 35
    Caption = 'Update key'
    TabOrder = 4
    OnClick = Bt1Click
  end
  object Bt2: TButton
    Left = 120
    Top = 90
    Width = 107
    Height = 25
    Caption = 'Activate and exit'
    TabOrder = 5
    OnClick = Bt2Click
  end
  object Bt3: TButton
    Left = 8
    Top = 90
    Width = 107
    Height = 25
    Caption = 'Inactivate and exit'
    TabOrder = 6
    OnClick = Bt3Click
  end
  object tmrJRead: TTimer
    Enabled = False
    Interval = 50
    OnTimer = tmrJReadTimer
    Left = 80
    Top = 12
  end
end
