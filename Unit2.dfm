object FormEditHelpCmd: TFormEditHelpCmd
  Left = 674
  Top = 244
  Width = 500
  Height = 515
  BorderIcons = [biSystemMenu]
  Caption = 'Macros Editer'
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 380
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCanResize = FormCanResize
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 4
    Width = 28
    Height = 13
    Caption = 'Name'
  end
  object Label2: TLabel
    Left = 10
    Top = 48
    Width = 66
    Height = 13
    Caption = 'Command line'
  end
  object Label3: TLabel
    Left = 10
    Top = 182
    Width = 103
    Height = 13
    Caption = 'Command Description'
  end
  object CmdName: TEdit
    Left = 10
    Top = 20
    Width = 465
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
    OnKeyPress = CmdNameKeyPress
  end
  object CmdData: TEdit
    Left = 10
    Top = 64
    Width = 465
    Height = 21
    Ctl3D = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Style = []
    MaxLength = 250
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    Text = 'CmdData'
    OnChange = CmdDataChange
    OnKeyPress = CmdDataKeyPress
  end
  object mmo1: TMemo
    Left = 10
    Top = 198
    Width = 465
    Height = 249
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      'mmo1')
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnChange = mmo1Change
  end
  object req1: TStaticText
    Left = 10
    Top = 451
    Width = 465
    Height = 18
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    TabOrder = 3
  end
  object Bt1: TButton
    Left = 372
    Top = 86
    Width = 103
    Height = 19
    Hint = 'Specify file to send to port'
    Caption = 'Send file...'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Bt1Click
  end
  object grp1: TGroupBox
    Left = 8
    Top = 110
    Width = 465
    Height = 67
    Caption = 'Representing a packet in HEX or String'
    TabOrder = 5
    object lbl1: TLabel
      Left = 8
      Top = 43
      Width = 54
      Height = 13
      Caption = 'Converting:'
    end
    object edt1: TEdit
      Left = 6
      Top = 14
      Width = 453
      Height = 21
      Ctl3D = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      MaxLength = 250
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = CmdDataChange
      OnKeyPress = CmdDataKeyPress
    end
    object rb1: TRadioButton
      Left = 70
      Top = 42
      Width = 93
      Height = 17
      Caption = 'String -> HEX'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rb1Click
    end
    object rb2: TRadioButton
      Left = 168
      Top = 42
      Width = 93
      Height = 17
      Caption = 'HEX -> String'
      TabOrder = 2
      OnClick = rb2Click
    end
    object btn1: TButton
      Left = 264
      Top = 40
      Width = 195
      Height = 19
      Caption = #1057'opy to clipboard'
      TabOrder = 3
      OnClick = btn1Click
    end
  end
  object dlgOpen1: TOpenDialog
    Left = 110
    Top = 32
  end
end
