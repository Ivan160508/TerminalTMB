object FormFont: TFormFont
  Left = 904
  Top = 313
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Log window settings'
  ClientHeight = 416
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = 4
    Width = 375
    Height = 131
    Caption = 'Font size'
    TabOrder = 0
    object trckbr1: TTrackBar
      Left = 8
      Top = 22
      Width = 351
      Height = 45
      Max = 50
      Min = 8
      Position = 8
      TabOrder = 0
      OnChange = trckbr1Change
    end
    object ctxt1: TStaticText
      Left = 126
      Top = 80
      Width = 57
      Height = 29
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'ctxt1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object chk1: TCheckBox
      Left = 196
      Top = 80
      Width = 57
      Height = 29
      Caption = 'Bold'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = chk1Click
    end
  end
  object grp1: TGroupBox
    Left = 4
    Top = 140
    Width = 185
    Height = 73
    Caption = 'Font color SEND'
    TabOrder = 1
    object ctxt2: TStaticText
      Left = 6
      Top = 16
      Width = 169
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 0
    end
    object Button1: TButton
      Left = 6
      Top = 38
      Width = 169
      Height = 21
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object grp2: TGroupBox
    Left = 194
    Top = 140
    Width = 185
    Height = 73
    Caption = 'Font color READ'
    TabOrder = 2
    object ctxt3: TStaticText
      Left = 8
      Top = 16
      Width = 169
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 0
    end
    object Button2: TButton
      Left = 8
      Top = 38
      Width = 169
      Height = 21
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Button3: TButton
    Left = 4
    Top = 386
    Width = 375
    Height = 25
    Caption = 'Save && Exit'
    TabOrder = 3
    OnClick = Button3Click
  end
  object grp3: TGroupBox
    Left = 4
    Top = 216
    Width = 375
    Height = 167
    Caption = 'Background color'
    TabOrder = 4
    object Label1: TLabel
      Left = 238
      Top = 83
      Width = 105
      Height = 13
      Caption = 'Time no input data, s:'
    end
    object ctxt4: TStaticText
      Left = 6
      Top = 16
      Width = 361
      Height = 29
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 0
    end
    object Button4: TButton
      Left = 6
      Top = 52
      Width = 361
      Height = 21
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button4Click
    end
    object chk2: TCheckBox
      Left = 6
      Top = 82
      Width = 231
      Height = 17
      Caption = 'Indication NO DATA COMING TO THE PORT'
      TabOrder = 2
      OnClick = chk2Click
    end
    object StaticText1: TStaticText
      Left = 6
      Top = 102
      Width = 361
      Height = 29
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 3
    end
    object Button5: TButton
      Left = 6
      Top = 138
      Width = 361
      Height = 21
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button5Click
    end
    object edt1: TEdit
      Left = 344
      Top = 80
      Width = 23
      Height = 19
      Ctl3D = False
      MaxLength = 3
      ParentCtl3D = False
      TabOrder = 5
      OnChange = edt1Change
      OnExit = edt1Exit
      OnKeyPress = edt1KeyPress
    end
  end
  object dlgC: TColorDialog
    Left = 34
    Top = 70
  end
end
