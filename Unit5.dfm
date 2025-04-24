object FormEditCmd: TFormEditCmd
  Left = 451
  Top = 223
  Width = 233
  Height = 150
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1082#1086#1084#1072#1085#1076#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 4
    Top = 12
    Width = 30
    Height = 16
    Caption = #1048#1084#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 4
    Top = 40
    Width = 65
    Height = 16
    Caption = #1050#1086#1084#1072#1085#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CmdName: TEdit
    Left = 72
    Top = 8
    Width = 121
    Height = 19
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 50
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    Text = 'CmdName'
    OnChange = CmdNameChange
  end
  object CmdData: TEdit
    Left = 72
    Top = 36
    Width = 121
    Height = 19
    Ctl3D = False
    MaxLength = 250
    ParentCtl3D = False
    TabOrder = 1
    Text = 'CmdData'
    OnChange = CmdDataChange
  end
  object Button1: TButton
    Left = 4
    Top = 60
    Width = 189
    Height = 29
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1088#1072#1074#1082#1080
    TabOrder = 2
    OnClick = Button1Click
  end
end
