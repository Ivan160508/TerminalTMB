object FormParserASCII: TFormParserASCII
  Left = 499
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parser TEXT'
  ClientHeight = 629
  ClientWidth = 945
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl5: TLabel
    Left = 4
    Top = 1
    Width = 27
    Height = 13
    Caption = 'Port:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 4
    Top = 19
    Width = 31
    Height = 13
    Caption = 'Time:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 4
    Top = 37
    Width = 26
    Height = 13
    Caption = 'Size:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ctxt3: TStaticText
    Left = 36
    Top = 1
    Width = 75
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '---'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object ctxt4: TStaticText
    Left = 36
    Top = 19
    Width = 75
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '---'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object ctxt5: TStaticText
    Left = 36
    Top = 37
    Width = 75
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '---'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object mmoInput: TMemo
    Left = 112
    Top = 0
    Width = 830
    Height = 55
    Ctl3D = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object grp1: TGroupBox
    Left = 6
    Top = 142
    Width = 935
    Height = 425
    TabOrder = 4
    object ctxtreq1: TStaticText
      Left = 28
      Top = 12
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object btnBt1: TButton
      Left = 8
      Top = 12
      Width = 19
      Height = 25
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ctxtreq2: TStaticText
      Left = 290
      Top = 12
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ctxtreq3: TStaticText
      Left = 469
      Top = 12
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
    end
    object btnBt2: TButton
      Left = 8
      Top = 36
      Width = 19
      Height = 25
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object ctxtreq4: TStaticText
      Left = 28
      Top = 36
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object ctxtreq5: TStaticText
      Left = 290
      Top = 36
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object ctxtreq6: TStaticText
      Left = 469
      Top = 36
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 7
    end
    object btnBt3: TButton
      Left = 8
      Top = 60
      Width = 19
      Height = 25
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object ctxtreq7: TStaticText
      Left = 28
      Top = 60
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object ctxtreq8: TStaticText
      Left = 290
      Top = 60
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object ctxtreq9: TStaticText
      Left = 469
      Top = 60
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 11
    end
    object btnBt4: TButton
      Left = 8
      Top = 84
      Width = 19
      Height = 25
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object ctxtreq10: TStaticText
      Left = 28
      Top = 84
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object ctxtreq11: TStaticText
      Left = 290
      Top = 84
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object ctxtreq12: TStaticText
      Left = 469
      Top = 84
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 15
    end
    object btnBt5: TButton
      Left = 8
      Top = 108
      Width = 19
      Height = 25
      Caption = '5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object ctxtreq13: TStaticText
      Left = 28
      Top = 108
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object ctxtreq14: TStaticText
      Left = 290
      Top = 108
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object ctxtreq15: TStaticText
      Left = 469
      Top = 108
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 19
    end
    object btnBt6: TButton
      Left = 8
      Top = 132
      Width = 19
      Height = 25
      Caption = '6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
    object ctxtreq16: TStaticText
      Left = 28
      Top = 132
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
    object ctxtreq17: TStaticText
      Left = 290
      Top = 132
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
    end
    object ctxtreq18: TStaticText
      Left = 469
      Top = 132
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 23
    end
    object btnBt7: TButton
      Left = 8
      Top = 156
      Width = 19
      Height = 25
      Caption = '7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
    end
    object ctxtreq19: TStaticText
      Left = 28
      Top = 156
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
    end
    object ctxtreq20: TStaticText
      Left = 290
      Top = 156
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
    end
    object ctxtreq21: TStaticText
      Left = 469
      Top = 156
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 27
    end
    object btnBt8: TButton
      Left = 8
      Top = 180
      Width = 19
      Height = 25
      Caption = '8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 28
    end
    object ctxtreq22: TStaticText
      Left = 28
      Top = 180
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 29
    end
    object ctxtreq23: TStaticText
      Left = 290
      Top = 180
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 30
    end
    object ctxtreq24: TStaticText
      Left = 469
      Top = 180
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 31
    end
    object btnBt9: TButton
      Left = 8
      Top = 204
      Width = 19
      Height = 25
      Caption = '9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 32
    end
    object ctxtreq25: TStaticText
      Left = 28
      Top = 204
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 33
    end
    object ctxtreq26: TStaticText
      Left = 290
      Top = 204
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 34
    end
    object ctxtreq27: TStaticText
      Left = 469
      Top = 204
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 35
    end
    object btnBt10: TButton
      Left = 8
      Top = 228
      Width = 19
      Height = 25
      Caption = '10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 36
    end
    object ctxtreq28: TStaticText
      Left = 28
      Top = 228
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 37
    end
    object ctxtreq29: TStaticText
      Left = 290
      Top = 228
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 38
    end
    object ctxtreq30: TStaticText
      Left = 469
      Top = 228
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 39
    end
    object btnBt11: TButton
      Left = 8
      Top = 252
      Width = 19
      Height = 25
      Caption = '11'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 40
    end
    object ctxtreq31: TStaticText
      Left = 28
      Top = 252
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 41
    end
    object ctxtreq32: TStaticText
      Left = 290
      Top = 252
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 42
    end
    object ctxtreq33: TStaticText
      Left = 469
      Top = 252
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 43
    end
    object btnBt12: TButton
      Left = 8
      Top = 276
      Width = 19
      Height = 25
      Caption = '12'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 44
    end
    object ctxtreq34: TStaticText
      Left = 28
      Top = 276
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 45
    end
    object ctxtreq35: TStaticText
      Left = 290
      Top = 276
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 46
    end
    object ctxtreq36: TStaticText
      Left = 469
      Top = 276
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 47
    end
    object btnBt13: TButton
      Left = 8
      Top = 300
      Width = 19
      Height = 25
      Caption = '13'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 48
    end
    object ctxtreq37: TStaticText
      Left = 28
      Top = 300
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 49
    end
    object ctxtreq38: TStaticText
      Left = 290
      Top = 300
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 50
    end
    object ctxtreq39: TStaticText
      Left = 469
      Top = 300
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 51
    end
    object btnBt14: TButton
      Left = 8
      Top = 324
      Width = 19
      Height = 25
      Caption = '14'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 52
    end
    object ctxtreq40: TStaticText
      Left = 28
      Top = 324
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 53
    end
    object ctxtreq41: TStaticText
      Left = 290
      Top = 324
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 54
    end
    object ctxtreq42: TStaticText
      Left = 469
      Top = 324
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 55
    end
    object btnBt15: TButton
      Left = 8
      Top = 348
      Width = 19
      Height = 25
      Caption = '15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 56
    end
    object ctxtreq43: TStaticText
      Left = 28
      Top = 348
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 57
    end
    object ctxtreq44: TStaticText
      Left = 290
      Top = 348
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 58
    end
    object ctxtreq45: TStaticText
      Left = 469
      Top = 348
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 59
    end
    object btnBt16: TButton
      Left = 8
      Top = 372
      Width = 19
      Height = 25
      Caption = '16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 60
    end
    object ctxtreq46: TStaticText
      Left = 28
      Top = 372
      Width = 261
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 61
    end
    object ctxtreq47: TStaticText
      Left = 290
      Top = 372
      Width = 178
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1042#1088#1077#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 62
    end
    object ctxtreq48: TStaticText
      Left = 469
      Top = 372
      Width = 196
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 63
    end
    object btn3: TButton
      Left = 666
      Top = 12
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 64
    end
    object btn4: TButton
      Left = 666
      Top = 36
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 65
    end
    object btn5: TButton
      Left = 666
      Top = 60
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 66
    end
    object btn6: TButton
      Left = 666
      Top = 84
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 67
    end
    object btn7: TButton
      Left = 666
      Top = 108
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 68
    end
    object btn8: TButton
      Left = 666
      Top = 132
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 69
    end
    object btn9: TButton
      Left = 666
      Top = 156
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 70
    end
    object btn10: TButton
      Left = 666
      Top = 180
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 71
    end
    object btn11: TButton
      Left = 666
      Top = 204
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 72
    end
    object btn12: TButton
      Left = 666
      Top = 228
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 73
    end
    object btn13: TButton
      Left = 666
      Top = 252
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 74
    end
    object btn14: TButton
      Left = 666
      Top = 276
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 75
    end
    object btn15: TButton
      Left = 666
      Top = 300
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 76
    end
    object btn16: TButton
      Left = 666
      Top = 324
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 77
    end
    object btn17: TButton
      Left = 666
      Top = 348
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 78
    end
    object btn18: TButton
      Left = 666
      Top = 372
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 79
    end
    object btn19: TButton
      Left = 702
      Top = 12
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 80
    end
    object btn20: TButton
      Left = 702
      Top = 36
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 81
    end
    object btn21: TButton
      Left = 702
      Top = 60
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 82
    end
    object btn22: TButton
      Left = 702
      Top = 84
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 83
    end
    object btn23: TButton
      Left = 702
      Top = 108
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 84
    end
    object btn24: TButton
      Left = 702
      Top = 132
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 85
    end
    object btn25: TButton
      Left = 702
      Top = 156
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 86
    end
    object btn26: TButton
      Left = 702
      Top = 180
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 87
    end
    object btn27: TButton
      Left = 702
      Top = 204
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 88
    end
    object btn28: TButton
      Left = 702
      Top = 228
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 89
    end
    object btn29: TButton
      Left = 702
      Top = 252
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 90
    end
    object btn30: TButton
      Left = 702
      Top = 276
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 91
    end
    object btn31: TButton
      Left = 702
      Top = 300
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 92
    end
    object btn32: TButton
      Left = 702
      Top = 324
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 93
    end
    object btn33: TButton
      Left = 702
      Top = 348
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 94
    end
    object btn34: TButton
      Left = 702
      Top = 372
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 95
    end
    object btnBt22: TButton
      Left = 738
      Top = 12
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 96
    end
    object btnBt23: TButton
      Left = 738
      Top = 36
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 97
    end
    object btnBt24: TButton
      Left = 738
      Top = 60
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 98
    end
    object btnBt25: TButton
      Left = 738
      Top = 84
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 99
    end
    object btnBt26: TButton
      Left = 738
      Top = 108
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 100
    end
    object btnBt27: TButton
      Left = 738
      Top = 132
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 101
    end
    object btnBt28: TButton
      Left = 738
      Top = 156
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 102
    end
    object btnBt29: TButton
      Left = 738
      Top = 180
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 103
    end
    object btnBt30: TButton
      Left = 738
      Top = 204
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 104
    end
    object btnBt31: TButton
      Left = 738
      Top = 228
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 105
    end
    object btnBt32: TButton
      Left = 738
      Top = 252
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 106
    end
    object btnBt33: TButton
      Left = 738
      Top = 276
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 107
    end
    object btnBt34: TButton
      Left = 738
      Top = 300
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 108
    end
    object btnBt35: TButton
      Left = 738
      Top = 324
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 109
    end
    object btnBt36: TButton
      Left = 738
      Top = 348
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 110
    end
    object btnBt37: TButton
      Left = 738
      Top = 372
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 111
    end
    object rb1: TRadioButton
      Left = 858
      Top = 18
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 112
    end
    object rb2: TRadioButton
      Left = 858
      Top = 42
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 113
    end
    object rb3: TRadioButton
      Left = 858
      Top = 66
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 114
    end
    object rb4: TRadioButton
      Left = 858
      Top = 90
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 115
    end
    object rb5: TRadioButton
      Left = 858
      Top = 114
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 116
    end
    object rb6: TRadioButton
      Left = 858
      Top = 138
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 117
    end
    object rb7: TRadioButton
      Left = 858
      Top = 162
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 118
    end
    object rb8: TRadioButton
      Left = 858
      Top = 186
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 119
    end
    object rb9: TRadioButton
      Left = 858
      Top = 210
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 120
    end
    object rb10: TRadioButton
      Left = 858
      Top = 234
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 121
    end
    object rb11: TRadioButton
      Left = 858
      Top = 258
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 122
    end
    object rb12: TRadioButton
      Left = 858
      Top = 282
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 123
    end
    object rb13: TRadioButton
      Left = 858
      Top = 306
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 124
    end
    object rb14: TRadioButton
      Left = 858
      Top = 330
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 125
    end
    object rb15: TRadioButton
      Left = 858
      Top = 354
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 126
    end
    object rb16: TRadioButton
      Left = 858
      Top = 378
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 127
    end
    object btnBt38: TButton
      Left = 780
      Top = 12
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 128
    end
    object btnBt39: TButton
      Left = 780
      Top = 36
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 129
    end
    object btnBt40: TButton
      Left = 780
      Top = 60
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 130
    end
    object btnBt41: TButton
      Left = 780
      Top = 84
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 131
    end
    object btnBt42: TButton
      Left = 780
      Top = 108
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 132
    end
    object btnBt43: TButton
      Left = 780
      Top = 132
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 133
    end
    object btnBt44: TButton
      Left = 780
      Top = 156
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 134
    end
    object btnBt45: TButton
      Left = 780
      Top = 180
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 135
    end
    object btnBt46: TButton
      Left = 780
      Top = 204
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 136
    end
    object btnBt47: TButton
      Left = 780
      Top = 228
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 137
    end
    object btnBt48: TButton
      Left = 780
      Top = 252
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 138
    end
    object btnBt49: TButton
      Left = 780
      Top = 276
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 139
    end
    object btnBt50: TButton
      Left = 780
      Top = 300
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 140
    end
    object btnBt51: TButton
      Left = 780
      Top = 324
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 141
    end
    object btnBt52: TButton
      Left = 780
      Top = 348
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 142
    end
    object btnBt53: TButton
      Left = 780
      Top = 372
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 143
    end
    object btnBt54: TButton
      Left = 876
      Top = 12
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 144
    end
    object btnBt55: TButton
      Left = 876
      Top = 36
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 145
    end
    object btnBt56: TButton
      Left = 876
      Top = 60
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 146
    end
    object btnBt57: TButton
      Left = 876
      Top = 84
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 147
    end
    object btnBt58: TButton
      Left = 876
      Top = 108
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 148
    end
    object btnBt59: TButton
      Left = 876
      Top = 132
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 149
    end
    object btnBt60: TButton
      Left = 876
      Top = 156
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 150
    end
    object btnBt61: TButton
      Left = 876
      Top = 180
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 151
    end
    object btnBt62: TButton
      Left = 876
      Top = 204
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 152
    end
    object btnBt63: TButton
      Left = 876
      Top = 228
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 153
    end
    object btnBt64: TButton
      Left = 876
      Top = 252
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 154
    end
    object btnBt65: TButton
      Left = 876
      Top = 276
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 155
    end
    object btnBt66: TButton
      Left = 876
      Top = 300
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 156
    end
    object btnBt67: TButton
      Left = 876
      Top = 324
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 157
    end
    object btnBt68: TButton
      Left = 876
      Top = 348
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 158
    end
    object btnBt69: TButton
      Left = 876
      Top = 372
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 159
    end
    object pnl1: TPanel
      Left = 8
      Top = 398
      Width = 19
      Height = 21
      TabOrder = 160
      object rb17: TRadioButton
        Left = 2
        Top = 4
        Width = 15
        Height = 15
        TabOrder = 0
        OnClick = rb17Click
      end
    end
    object btnBt71: TButton
      Left = 203
      Top = 398
      Width = 87
      Height = 21
      Caption = 'PASTE List'
      Enabled = False
      TabOrder = 161
      OnClick = btnBt71Click
    end
    object btnBt70: TButton
      Left = 115
      Top = 398
      Width = 87
      Height = 21
      Caption = 'COPY List'
      TabOrder = 162
      OnClick = btnBt70Click
    end
    object btnBt21: TButton
      Left = 27
      Top = 398
      Width = 87
      Height = 21
      Caption = 'CLEAR List'
      Enabled = False
      TabOrder = 163
      OnClick = btnBt21Click
    end
    object btn37: TButton
      Left = 816
      Top = 12
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 164
    end
    object btn38: TButton
      Left = 816
      Top = 36
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 165
    end
    object btn39: TButton
      Left = 816
      Top = 60
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 166
    end
    object btn40: TButton
      Left = 816
      Top = 84
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 167
    end
    object btn41: TButton
      Left = 816
      Top = 108
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 168
    end
    object btn42: TButton
      Left = 816
      Top = 132
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 169
    end
    object btn43: TButton
      Left = 816
      Top = 156
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 170
    end
    object btn44: TButton
      Left = 816
      Top = 180
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 171
    end
    object btn45: TButton
      Left = 816
      Top = 204
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 172
    end
    object btn46: TButton
      Left = 816
      Top = 228
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 173
    end
    object btn47: TButton
      Left = 816
      Top = 252
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 174
    end
    object btn48: TButton
      Left = 816
      Top = 276
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 175
    end
    object btn49: TButton
      Left = 816
      Top = 300
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 176
    end
    object btn50: TButton
      Left = 816
      Top = 324
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 177
    end
    object btn51: TButton
      Left = 816
      Top = 348
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 178
    end
    object btn52: TButton
      Left = 816
      Top = 372
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 179
    end
    object btn53: TButton
      Left = 666
      Top = 398
      Width = 261
      Height = 21
      Caption = 'MultiGraph'
      Enabled = False
      TabOrder = 180
    end
    object btn35: TButton
      Left = 470
      Top = 398
      Width = 195
      Height = 21
      Caption = 'Reset Min-Max for this List'
      TabOrder = 181
      OnClick = btn35Click
    end
    object chk2: TCheckBox
      Left = 292
      Top = 398
      Width = 109
      Height = 21
      Caption = 'Work with this list'
      TabOrder = 182
      OnClick = chk2Click
    end
    object btn55: TButton
      Left = 402
      Top = 398
      Width = 67
      Height = 21
      Hint = 'Enable/disable use of all parser lists'
      Caption = 'Res ALL'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 183
      OnClick = btn55Click
    end
  end
  object edtEdt2: TEdit
    Left = 4
    Top = 118
    Width = 35
    Height = 24
    Ctl3D = False
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    MaxLength = 3
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    Text = 'edtEdt2'
  end
  object edtEdt1: TEdit
    Left = 38
    Top = 118
    Width = 884
    Height = 24
    Ctl3D = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    MaxLength = 63
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    Text = 'edtEdt1'
    OnChange = edtEdt1Change
    OnKeyUp = edtEdt1KeyUp
  end
  object btnBt19: TButton
    Left = 922
    Top = 118
    Width = 18
    Height = 24
    Caption = 'List'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btnBt19Click
  end
  object grp5: TGroupBox
    Left = 4
    Top = 56
    Width = 353
    Height = 31
    TabOrder = 8
    object btnBt17: TButton
      Left = 8
      Top = 8
      Width = 101
      Height = 19
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnBt17Click
    end
    object chk7: TCheckBox
      Left = 214
      Top = 8
      Width = 133
      Height = 19
      Caption = 'Sync. with terminal list'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = chk7Click
    end
    object btnBt18: TButton
      Left = 108
      Top = 8
      Width = 101
      Height = 19
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnBt18Click
    end
  end
  object grp6: TGroupBox
    Left = 358
    Top = 56
    Width = 583
    Height = 31
    TabOrder = 9
    object btnLoad: TButton
      Left = 372
      Top = 8
      Width = 69
      Height = 19
      Hint = 'Load parser list settings and plotter data'
      Caption = 'Load buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object btnSave: TButton
      Left = 440
      Top = 8
      Width = 69
      Height = 19
      Hint = 'Save parser list settings and plotter data'
      Caption = 'Save buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object chk1: TCheckBox
      Left = 212
      Top = 8
      Width = 159
      Height = 19
      Caption = 'Write plotter data to buffers'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 2
    end
    object rb18: TRadioButton
      Left = 3
      Top = 8
      Width = 190
      Height = 19
      Caption = 'Use graphics buffers for this parser'
      Color = clYellow
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = rb18Click
    end
    object btn2: TButton
      Left = 508
      Top = 8
      Width = 69
      Height = 19
      Hint = 'Clearing plotter buffers'
      Caption = 'Clear buffer'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnClearBufClick
    end
  end
  object grp4: TGroupBox
    Left = 4
    Top = 86
    Width = 353
    Height = 31
    TabOrder = 10
    object chk3: TCheckBox
      Left = 214
      Top = 8
      Width = 135
      Height = 19
      Hint = 
        'Write to the log file only if the parameter is within the limits' +
        ' specified in the parser settings'
      Caption = 'Log only events to a file'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = chk3Click
    end
    object btnBtLOG: TButton
      Left = 8
      Top = 8
      Width = 101
      Height = 19
      Caption = 'Start LOG in file'
      TabOrder = 1
      OnClick = btnBtLOGClick
    end
    object btnBt20: TButton
      Left = 108
      Top = 8
      Width = 101
      Height = 19
      Caption = '||'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnBt20Click
    end
  end
  object grp3: TGroupBox
    Left = 358
    Top = 86
    Width = 583
    Height = 31
    TabOrder = 11
    object lbl8: TLabel
      Left = 6
      Top = 10
      Width = 83
      Height = 13
      Caption = 'Output data log: '
    end
    object ctxt6: TStaticText
      Left = 272
      Top = 8
      Width = 95
      Height = 19
      Hint = 'Log text color'
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'COLOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ctxt6Click
    end
    object chk5: TCheckBox
      Left = 138
      Top = 8
      Width = 73
      Height = 19
      Caption = 'Secondary'
      TabOrder = 1
      OnClick = chk5Click
    end
    object chk4: TCheckBox
      Left = 90
      Top = 8
      Width = 45
      Height = 19
      Caption = 'Main'
      TabOrder = 2
      OnClick = chk4Click
    end
    object btn54: TButton
      Left = 372
      Top = 8
      Width = 69
      Height = 19
      Hint = 'Form for displaying a log of the results of the parser'#39's work'
      Caption = 'Parser log'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btn54Click
    end
    object btnBt72: TButton
      Left = 440
      Top = 8
      Width = 69
      Height = 19
      Hint = 'Pause/continue logging all results of the parser'
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnBt72Click
    end
    object btnBt73: TButton
      Left = 508
      Top = 8
      Width = 69
      Height = 19
      Hint = 'Cancel logging of all parser results'
      Caption = 'Reset ALL'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnBt73Click
    end
    object chk6: TCheckBox
      Left = 212
      Top = 8
      Width = 57
      Height = 19
      Caption = 'Parser'
      TabOrder = 6
      OnClick = chk6Click
    end
  end
  object ctxt1: TStaticText
    Left = 551
    Top = 568
    Width = 340
    Height = 17
    AutoSize = False
    BorderStyle = sbsSunken
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 12
  end
  object btn1: TButton
    Left = 894
    Top = 569
    Width = 46
    Height = 17
    Caption = 'Reset'
    Enabled = False
    TabOrder = 13
    OnClick = btn1Click
  end
  object ctxt2: TStaticText
    Left = 211
    Top = 568
    Width = 340
    Height = 17
    AutoSize = False
    BorderStyle = sbsSunken
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 14
  end
  object ctxt7: TStaticText
    Left = 6
    Top = 568
    Width = 205
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object lst1: TListBox
    Left = 4
    Top = 142
    Width = 936
    Height = 423
    Ctl3D = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ItemHeight = 18
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 16
    Visible = False
    OnDblClick = lst1DblClick
    OnExit = lst1Exit
    OnKeyPress = lst1KeyPress
  end
  object ctxt24: TStaticText
    Left = 6
    Top = 587
    Width = 57
    Height = 17
    Hint = 'Counters of recognized parameters'
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Count:'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
  end
  object ctxt8: TStaticText
    Left = 64
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
  end
  object ctxt9: TStaticText
    Left = 116
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 19
  end
  object ctxt10: TStaticText
    Left = 168
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 20
  end
  object ctxt11: TStaticText
    Left = 220
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 21
  end
  object ctxt12: TStaticText
    Left = 272
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
  end
  object ctxt13: TStaticText
    Left = 324
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 23
  end
  object ctxt14: TStaticText
    Left = 376
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 24
  end
  object ctxt15: TStaticText
    Left = 428
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 25
  end
  object ctxt16: TStaticText
    Left = 480
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 26
  end
  object ctxt17: TStaticText
    Left = 530
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 27
  end
  object ctxt18: TStaticText
    Left = 582
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 28
  end
  object ctxt19: TStaticText
    Left = 634
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 29
  end
  object ctxt20: TStaticText
    Left = 686
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 30
  end
  object ctxt21: TStaticText
    Left = 738
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 31
  end
  object ctxt22: TStaticText
    Left = 788
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 32
  end
  object ctxt23: TStaticText
    Left = 840
    Top = 587
    Width = 52
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 33
  end
  object btn36: TButton
    Left = 894
    Top = 588
    Width = 46
    Height = 17
    Caption = 'Reset'
    TabOrder = 34
    OnClick = btn36Click
  end
  object req1: TStaticText
    Left = 6
    Top = 606
    Width = 835
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 35
  end
  object req2: TStaticText
    Left = 840
    Top = 606
    Width = 99
    Height = 17
    Hint = 'Number of records in the file'
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 36
  end
  object dlgColor1: TColorDialog
    Left = 590
    Top = 210
  end
  object dlgOpenLogOpen: TOpenDialog
    Left = 246
    Top = 228
  end
end
