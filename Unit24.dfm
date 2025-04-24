object FormParser: TFormParser
  Left = 527
  Top = 199
  Hint = 'Year'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parser HEX'
  ClientHeight = 704
  ClientWidth = 948
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
    Left = 6
    Top = 3
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
    Left = 6
    Top = 21
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
    Left = 6
    Top = 39
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
  object grp1: TGroupBox
    Left = 6
    Top = 172
    Width = 935
    Height = 473
    TabOrder = 0
    object req1: TStaticText
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
    object Bt1: TButton
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
    object req2: TStaticText
      Left = 290
      Top = 12
      Width = 100
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
    object req3: TStaticText
      Left = 391
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
    object Bt2: TButton
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
    object req4: TStaticText
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
    object req5: TStaticText
      Left = 290
      Top = 36
      Width = 100
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
    object req6: TStaticText
      Left = 391
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
    object Bt3: TButton
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
    object req7: TStaticText
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
    object req8: TStaticText
      Left = 290
      Top = 60
      Width = 100
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
    object req9: TStaticText
      Left = 391
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
    object Bt4: TButton
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
    object req10: TStaticText
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
    object req11: TStaticText
      Left = 290
      Top = 84
      Width = 100
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
    object req12: TStaticText
      Left = 391
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
    object Bt5: TButton
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
    object req13: TStaticText
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
    object req14: TStaticText
      Left = 290
      Top = 108
      Width = 100
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
    object req15: TStaticText
      Left = 391
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
    object Bt6: TButton
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
    object req16: TStaticText
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
    object req17: TStaticText
      Left = 290
      Top = 132
      Width = 100
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
    object req18: TStaticText
      Left = 391
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
    object Bt7: TButton
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
    object req19: TStaticText
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
    object req20: TStaticText
      Left = 290
      Top = 156
      Width = 100
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
    object req21: TStaticText
      Left = 391
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
    object Bt8: TButton
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
    object req22: TStaticText
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
    object req23: TStaticText
      Left = 290
      Top = 180
      Width = 100
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
    object req24: TStaticText
      Left = 391
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
    object Bt9: TButton
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
    object req25: TStaticText
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
    object req26: TStaticText
      Left = 290
      Top = 204
      Width = 100
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
    object req27: TStaticText
      Left = 391
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
    object Bt10: TButton
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
    object req28: TStaticText
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
    object req29: TStaticText
      Left = 290
      Top = 228
      Width = 100
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
    object req30: TStaticText
      Left = 391
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
    object Bt11: TButton
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
    object req31: TStaticText
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
    object req32: TStaticText
      Left = 290
      Top = 252
      Width = 100
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
    object req33: TStaticText
      Left = 391
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
    object Bt12: TButton
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
    object req34: TStaticText
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
    object req35: TStaticText
      Left = 290
      Top = 276
      Width = 100
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
    object req36: TStaticText
      Left = 391
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
    object Bt13: TButton
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
    object req37: TStaticText
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
    object req38: TStaticText
      Left = 290
      Top = 300
      Width = 100
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
    object req39: TStaticText
      Left = 391
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
    object Bt14: TButton
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
    object req40: TStaticText
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
    object req41: TStaticText
      Left = 290
      Top = 324
      Width = 100
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
    object req42: TStaticText
      Left = 391
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
    object Bt15: TButton
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
    object req43: TStaticText
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
    object req44: TStaticText
      Left = 290
      Top = 348
      Width = 100
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
    object req45: TStaticText
      Left = 391
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
    object Bt16: TButton
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
    object req46: TStaticText
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
    object req47: TStaticText
      Left = 290
      Top = 372
      Width = 100
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
    object req48: TStaticText
      Left = 391
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
    object txt2: TStaticText
      Left = 588
      Top = 12
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 64
    end
    object txt3: TStaticText
      Left = 588
      Top = 36
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 65
    end
    object txt4: TStaticText
      Left = 588
      Top = 60
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 66
    end
    object txt5: TStaticText
      Left = 588
      Top = 84
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 67
    end
    object txt6: TStaticText
      Left = 588
      Top = 108
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 68
    end
    object txt7: TStaticText
      Left = 588
      Top = 132
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 69
    end
    object txt8: TStaticText
      Left = 588
      Top = 156
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 70
    end
    object txt9: TStaticText
      Left = 588
      Top = 180
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 71
    end
    object txt10: TStaticText
      Left = 588
      Top = 204
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 72
    end
    object txt11: TStaticText
      Left = 588
      Top = 228
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 73
    end
    object txt12: TStaticText
      Left = 588
      Top = 252
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 74
    end
    object txt13: TStaticText
      Left = 588
      Top = 276
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 75
    end
    object txt14: TStaticText
      Left = 588
      Top = 300
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 76
    end
    object txt15: TStaticText
      Left = 588
      Top = 324
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 77
    end
    object txt16: TStaticText
      Left = 588
      Top = 348
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 78
    end
    object txt17: TStaticText
      Left = 588
      Top = 372
      Width = 75
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'HEX'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 79
    end
    object btn3: TButton
      Left = 666
      Top = 12
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 80
    end
    object btn4: TButton
      Left = 666
      Top = 36
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 81
    end
    object btn5: TButton
      Left = 666
      Top = 60
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 82
    end
    object btn6: TButton
      Left = 666
      Top = 84
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 83
    end
    object btn7: TButton
      Left = 666
      Top = 108
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 84
    end
    object btn8: TButton
      Left = 666
      Top = 132
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 85
    end
    object btn9: TButton
      Left = 666
      Top = 156
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 86
    end
    object btn10: TButton
      Left = 666
      Top = 180
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 87
    end
    object btn11: TButton
      Left = 666
      Top = 204
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 88
    end
    object btn12: TButton
      Left = 666
      Top = 228
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 89
    end
    object btn13: TButton
      Left = 666
      Top = 252
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 90
    end
    object btn14: TButton
      Left = 666
      Top = 276
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 91
    end
    object btn15: TButton
      Left = 666
      Top = 300
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 92
    end
    object btn16: TButton
      Left = 666
      Top = 324
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 93
    end
    object btn17: TButton
      Left = 666
      Top = 348
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 94
    end
    object btn18: TButton
      Left = 666
      Top = 372
      Width = 37
      Height = 25
      Caption = 'Copy'
      TabOrder = 95
    end
    object btn19: TButton
      Left = 702
      Top = 12
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 96
    end
    object btn20: TButton
      Left = 702
      Top = 36
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 97
    end
    object btn21: TButton
      Left = 702
      Top = 60
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 98
    end
    object btn22: TButton
      Left = 702
      Top = 84
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 99
    end
    object btn23: TButton
      Left = 702
      Top = 108
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 100
    end
    object btn24: TButton
      Left = 702
      Top = 132
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 101
    end
    object btn25: TButton
      Left = 702
      Top = 156
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 102
    end
    object btn26: TButton
      Left = 702
      Top = 180
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 103
    end
    object btn27: TButton
      Left = 702
      Top = 204
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 104
    end
    object btn28: TButton
      Left = 702
      Top = 228
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 105
    end
    object btn29: TButton
      Left = 702
      Top = 252
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 106
    end
    object btn30: TButton
      Left = 702
      Top = 276
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 107
    end
    object btn31: TButton
      Left = 702
      Top = 300
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 108
    end
    object btn32: TButton
      Left = 702
      Top = 324
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 109
    end
    object btn33: TButton
      Left = 702
      Top = 348
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 110
    end
    object btn34: TButton
      Left = 702
      Top = 372
      Width = 37
      Height = 25
      Caption = 'Paste'
      TabOrder = 111
    end
    object Bt22: TButton
      Left = 738
      Top = 12
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 112
    end
    object Bt23: TButton
      Left = 738
      Top = 36
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 113
    end
    object Bt24: TButton
      Left = 738
      Top = 60
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 114
    end
    object Bt25: TButton
      Left = 738
      Top = 84
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 115
    end
    object Bt26: TButton
      Left = 738
      Top = 108
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 116
    end
    object Bt27: TButton
      Left = 738
      Top = 132
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 117
    end
    object Bt28: TButton
      Left = 738
      Top = 156
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 118
    end
    object Bt29: TButton
      Left = 738
      Top = 180
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 119
    end
    object Bt30: TButton
      Left = 738
      Top = 204
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 120
    end
    object Bt31: TButton
      Left = 738
      Top = 228
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 121
    end
    object Bt32: TButton
      Left = 738
      Top = 252
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 122
    end
    object Bt33: TButton
      Left = 738
      Top = 276
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 123
    end
    object Bt34: TButton
      Left = 738
      Top = 300
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 124
    end
    object Bt35: TButton
      Left = 738
      Top = 324
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 125
    end
    object Bt36: TButton
      Left = 738
      Top = 348
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 126
    end
    object Bt37: TButton
      Left = 738
      Top = 372
      Width = 37
      Height = 25
      Caption = 'Del'
      TabOrder = 127
    end
    object rb1: TRadioButton
      Left = 858
      Top = 18
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 128
    end
    object rb2: TRadioButton
      Left = 858
      Top = 42
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 129
    end
    object rb3: TRadioButton
      Left = 858
      Top = 66
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 130
    end
    object rb4: TRadioButton
      Left = 858
      Top = 90
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 131
    end
    object rb5: TRadioButton
      Left = 858
      Top = 114
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 132
    end
    object rb6: TRadioButton
      Left = 858
      Top = 138
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 133
    end
    object rb7: TRadioButton
      Left = 858
      Top = 162
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 134
    end
    object rb8: TRadioButton
      Left = 858
      Top = 186
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 135
    end
    object rb9: TRadioButton
      Left = 858
      Top = 210
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 136
    end
    object rb10: TRadioButton
      Left = 858
      Top = 234
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 137
    end
    object rb11: TRadioButton
      Left = 858
      Top = 258
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 138
    end
    object rb12: TRadioButton
      Left = 858
      Top = 282
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 139
    end
    object rb13: TRadioButton
      Left = 858
      Top = 306
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 140
    end
    object rb14: TRadioButton
      Left = 858
      Top = 330
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 141
    end
    object rb15: TRadioButton
      Left = 858
      Top = 354
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 142
    end
    object rb16: TRadioButton
      Left = 858
      Top = 378
      Width = 18
      Height = 17
      Hint = 'Allow plotter buffer flushing'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 143
    end
    object Bt38: TButton
      Left = 780
      Top = 12
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 144
    end
    object Bt39: TButton
      Left = 780
      Top = 36
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 145
    end
    object Bt40: TButton
      Left = 780
      Top = 60
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 146
    end
    object Bt41: TButton
      Left = 780
      Top = 84
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 147
    end
    object Bt42: TButton
      Left = 780
      Top = 108
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 148
    end
    object Bt43: TButton
      Left = 780
      Top = 132
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 149
    end
    object Bt44: TButton
      Left = 780
      Top = 156
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 150
    end
    object Bt45: TButton
      Left = 780
      Top = 180
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 151
    end
    object Bt46: TButton
      Left = 780
      Top = 204
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 152
    end
    object Bt47: TButton
      Left = 780
      Top = 228
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 153
    end
    object Bt48: TButton
      Left = 780
      Top = 252
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 154
    end
    object Bt49: TButton
      Left = 780
      Top = 276
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 155
    end
    object Bt50: TButton
      Left = 780
      Top = 300
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 156
    end
    object Bt51: TButton
      Left = 780
      Top = 324
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 157
    end
    object Bt52: TButton
      Left = 780
      Top = 348
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 158
    end
    object Bt53: TButton
      Left = 780
      Top = 372
      Width = 37
      Height = 25
      Caption = 'Graph'
      TabOrder = 159
    end
    object Bt54: TButton
      Left = 876
      Top = 12
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 160
    end
    object Bt55: TButton
      Left = 876
      Top = 36
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 161
    end
    object Bt56: TButton
      Left = 876
      Top = 60
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 162
    end
    object Bt57: TButton
      Left = 876
      Top = 84
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 163
    end
    object Bt58: TButton
      Left = 876
      Top = 108
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 164
    end
    object Bt59: TButton
      Left = 876
      Top = 132
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 165
    end
    object Bt60: TButton
      Left = 876
      Top = 156
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 166
    end
    object Bt61: TButton
      Left = 876
      Top = 180
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 167
    end
    object Bt62: TButton
      Left = 876
      Top = 204
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 168
    end
    object Bt63: TButton
      Left = 876
      Top = 228
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 169
    end
    object Bt64: TButton
      Left = 876
      Top = 252
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 170
    end
    object Bt65: TButton
      Left = 876
      Top = 276
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 171
    end
    object Bt66: TButton
      Left = 876
      Top = 300
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 172
    end
    object Bt67: TButton
      Left = 876
      Top = 324
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 173
    end
    object Bt68: TButton
      Left = 876
      Top = 348
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 174
    end
    object Bt69: TButton
      Left = 876
      Top = 372
      Width = 51
      Height = 25
      Hint = 'Clear plotter buffer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 175
    end
    object grp2: TGroupBox
      Left = 8
      Top = 424
      Width = 919
      Height = 43
      TabOrder = 176
      object lbl1: TLabel
        Left = 590
        Top = 14
        Width = 16
        Height = 23
        Caption = '='
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 70
        Top = 8
        Width = 11
        Height = 29
        Caption = '('
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 490
        Top = 8
        Width = 11
        Height = 29
        Caption = ')'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 500
        Top = 11
        Width = 16
        Height = 29
        Caption = 'X'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbb2: TComboBox
        Left = 268
        Top = 14
        Width = 37
        Height = 24
        Style = csDropDownList
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 16
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = '+'
        Items.Strings = (
          '+'
          '-'
          '/'
          '*')
      end
      object cbb1: TComboBox
        Left = 80
        Top = 14
        Width = 187
        Height = 24
        Style = csDropDownList
        Ctl3D = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 16
        ItemIndex = 0
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '---'
        Items.Strings = (
          '---')
      end
      object cbb3: TComboBox
        Left = 306
        Top = 14
        Width = 187
        Height = 24
        Style = csDropDownList
        Ctl3D = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 16
        ItemIndex = 0
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '---'
        Items.Strings = (
          '---')
      end
      object ctxt1: TStaticText
        Left = 606
        Top = 14
        Width = 185
        Height = 23
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        Color = clWindow
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 3
      end
      object Button2: TButton
        Left = 794
        Top = 14
        Width = 37
        Height = 23
        Caption = 'Graph'
        Enabled = False
        TabOrder = 4
        OnClick = Button2Click
      end
      object chk2: TCheckBox
        Left = 6
        Top = 16
        Width = 17
        Height = 17
        Hint = 'Use Math Transformation'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = chk2Click
      end
      object cbb4: TComboBox
        Left = 518
        Top = 14
        Width = 73
        Height = 24
        Style = csDropDownList
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 16
        ParentFont = False
        TabOrder = 6
        Items.Strings = (
          '10e9'
          '10e8'
          '10e7'
          '10e6'
          '10e5'
          '10e4'
          '1000'
          '100'
          '10'
          '1'
          '0.1'
          '0.01'
          '0.001'
          '10e-4'
          '10e-5'
          '10e-6'
          '10e-7'
          '10e-8'
          '10e-9')
      end
      object Button20: TButton
        Left = 830
        Top = 14
        Width = 37
        Height = 23
        Caption = 'Chart'
        Enabled = False
        TabOrder = 7
        OnClick = Button20Click
      end
      object Button3: TButton
        Left = 868
        Top = 14
        Width = 43
        Height = 23
        Caption = 'Buf Clr'
        Enabled = False
        TabOrder = 8
        OnClick = Button3Click
      end
      object Bt74: TButton
        Left = 26
        Top = 14
        Width = 43
        Height = 23
        Hint = 'Recalculating data after changing the configuration of actions'
        Caption = 'Recalc'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = Bt74Click
      end
    end
    object Button4: TButton
      Left = 816
      Top = 12
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 177
    end
    object Button5: TButton
      Left = 816
      Top = 36
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 178
    end
    object Button7: TButton
      Left = 816
      Top = 60
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 179
    end
    object Button6: TButton
      Left = 816
      Top = 84
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 180
    end
    object Button8: TButton
      Left = 816
      Top = 108
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 181
    end
    object Button9: TButton
      Left = 816
      Top = 132
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 182
    end
    object Button10: TButton
      Left = 816
      Top = 156
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 183
    end
    object Button11: TButton
      Left = 816
      Top = 180
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 184
    end
    object Button12: TButton
      Left = 816
      Top = 204
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 185
    end
    object Button13: TButton
      Left = 816
      Top = 228
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 186
    end
    object Button14: TButton
      Left = 816
      Top = 252
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 187
    end
    object Button15: TButton
      Left = 816
      Top = 276
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 188
    end
    object Button16: TButton
      Left = 816
      Top = 300
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 189
    end
    object Button17: TButton
      Left = 816
      Top = 324
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 190
    end
    object Button18: TButton
      Left = 816
      Top = 348
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 191
    end
    object Button19: TButton
      Left = 816
      Top = 372
      Width = 37
      Height = 25
      Caption = 'Chart'
      TabOrder = 192
    end
    object grp8: TGroupBox
      Left = 8
      Top = 398
      Width = 919
      Height = 29
      TabOrder = 193
      object lbl9: TLabel
        Left = 6
        Top = 10
        Width = 52
        Height = 13
        Caption = 'Time start:'
      end
      object lbl10: TLabel
        Left = 248
        Top = 10
        Width = 50
        Height = 13
        Caption = 'Time stop:'
      end
      object btn37: TButton
        Left = 592
        Top = 7
        Width = 61
        Height = 19
        Caption = 'Min'
        TabOrder = 0
        OnClick = btn37Click
      end
      object btn38: TButton
        Left = 652
        Top = 7
        Width = 61
        Height = 19
        Caption = 'Average'
        TabOrder = 1
        OnClick = btn38Click
      end
      object btn39: TButton
        Left = 712
        Top = 7
        Width = 61
        Height = 19
        Caption = 'Max'
        TabOrder = 2
        OnClick = btn39Click
      end
      object btn40: TButton
        Left = 772
        Top = 7
        Width = 61
        Height = 19
        Caption = 'Max-Min'
        TabOrder = 3
        OnClick = btn40Click
      end
      object Bt75: TButton
        Left = 62
        Top = 7
        Width = 27
        Height = 19
        Caption = 'Now'
        TabOrder = 4
        OnClick = Bt75Click
      end
      object Bt76: TButton
        Left = 470
        Top = 7
        Width = 99
        Height = 19
        Caption = 'The whole buffer'
        TabOrder = 5
        OnClick = Bt76Click
      end
      object edt3: TEdit
        Left = 90
        Top = 7
        Width = 31
        Height = 19
        Hint = 'Year'
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 4
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Text = '2025'
        OnChange = edt3Change
        OnExit = UpdTimeStartExitt
      end
      object edt4: TEdit
        Left = 122
        Top = 7
        Width = 19
        Height = 19
        Hint = 'Month'
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Text = '10'
        OnChange = edt4Change
        OnExit = UpdTimeStartExitt
        OnKeyPress = EdtKeyPress
      end
      object edt5: TEdit
        Left = 142
        Top = 7
        Width = 19
        Height = 19
        Hint = 'Day'
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        Text = '10'
        OnChange = edt5Change
        OnExit = UpdTimeStartExitt
        OnKeyPress = EdtKeyPress
      end
      object edt6: TEdit
        Left = 168
        Top = 7
        Width = 19
        Height = 19
        Hint = 'Hour'
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        Text = '10'
        OnChange = edt6Change
        OnExit = UpdTimeStartExitt
        OnKeyPress = EdtKeyPress
      end
      object edt7: TEdit
        Left = 188
        Top = 7
        Width = 19
        Height = 19
        Hint = 'Minute'
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        Text = '10'
        OnChange = edt7Change
        OnExit = UpdTimeStartExitt
        OnKeyPress = EdtKeyPress
      end
      object edt8: TEdit
        Left = 208
        Top = 7
        Width = 19
        Height = 19
        Hint = 'Second'
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        Text = '10'
        OnChange = edt8Change
        OnExit = UpdTimeStartExitt
        OnKeyPress = EdtKeyPress
      end
      object btn41: TButton
        Left = 302
        Top = 7
        Width = 27
        Height = 19
        Caption = 'Now'
        TabOrder = 12
        OnClick = btn41Click
      end
      object edt10: TEdit
        Left = 330
        Top = 7
        Width = 31
        Height = 19
        Hint = 'Year'
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 4
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        Text = '2025'
        OnChange = edt10Change
        OnExit = UpdTimeStopExitt
        OnKeyPress = EdtKeyPress
      end
      object edt11: TEdit
        Left = 362
        Top = 7
        Width = 19
        Height = 19
        Hint = 'Month'
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        Text = '10'
        OnChange = edt11Change
        OnExit = UpdTimeStopExitt
        OnKeyPress = EdtKeyPress
      end
      object edt12: TEdit
        Left = 382
        Top = 7
        Width = 19
        Height = 19
        Hint = 'Day'
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        Text = '10'
        OnChange = edt12Change
        OnExit = UpdTimeStopExitt
        OnKeyPress = EdtKeyPress
      end
      object edt13: TEdit
        Left = 408
        Top = 7
        Width = 19
        Height = 19
        Hint = 'Hour'
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        Text = '10'
        OnChange = edt13Change
        OnExit = UpdTimeStopExitt
        OnKeyPress = EdtKeyPress
      end
      object edt14: TEdit
        Left = 428
        Top = 7
        Width = 19
        Height = 19
        Hint = 'Minute'
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        Text = '10'
        OnChange = edt14Change
        OnExit = UpdTimeStopExitt
        OnKeyPress = EdtKeyPress
      end
      object edt15: TEdit
        Left = 448
        Top = 7
        Width = 19
        Height = 19
        Hint = 'Second'
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        Text = '10'
        OnChange = edt15Change
        OnExit = UpdTimeStopExitt
        OnKeyPress = EdtKeyPress
      end
      object btn42: TButton
        Left = 852
        Top = 7
        Width = 61
        Height = 19
        Caption = 'Current'
        Enabled = False
        TabOrder = 19
        OnClick = btn42Click
      end
    end
  end
  object mmoInput: TMemo
    Left = 114
    Top = 2
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
    TabOrder = 1
  end
  object Edt1: TEdit
    Left = 40
    Top = 146
    Width = 885
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
    TabOrder = 2
    Text = 'Edt1'
    OnChange = Edt1Change
    OnKeyUp = Edt1KeyUp
  end
  object Bt19: TButton
    Left = 926
    Top = 146
    Width = 17
    Height = 24
    Caption = 'List'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Bt19Click
  end
  object lst1: TListBox
    Left = 6
    Top = 170
    Width = 937
    Height = 391
    Ctl3D = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ItemHeight = 18
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnDblClick = lst1DblClick
    OnExit = lst1Exit
    OnKeyPress = lst1KeyPress
  end
  object req49: TStaticText
    Left = 640
    Top = 644
    Width = 183
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Input packet :  0'
    TabOrder = 5
  end
  object req50: TStaticText
    Left = 6
    Top = 644
    Width = 449
    Height = 17
    AutoSize = False
    BorderStyle = sbsSunken
    TabOrder = 6
  end
  object req51: TStaticText
    Left = 6
    Top = 662
    Width = 817
    Height = 17
    AutoSize = False
    BorderStyle = sbsSunken
    TabOrder = 7
    OnClick = req51Click
  end
  object btn1: TButton
    Left = 824
    Top = 662
    Width = 118
    Height = 18
    Caption = 'Reset Min and Max'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = btn1Click
  end
  object reqtxt1: TStaticText
    Left = 824
    Top = 644
    Width = 117
    Height = 17
    Hint = 'Filling the data buffer for plotting'
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    ParentShowHint = False
    ShowHint = False
    TabOrder = 9
  end
  object ctxt2: TStaticText
    Left = 456
    Top = 644
    Width = 183
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Lines in the log:  0'
    TabOrder = 10
  end
  object ctxt3: TStaticText
    Left = 38
    Top = 3
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
    TabOrder = 11
  end
  object ctxt4: TStaticText
    Left = 38
    Top = 21
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
    TabOrder = 12
  end
  object ctxt5: TStaticText
    Left = 38
    Top = 39
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
    TabOrder = 13
  end
  object Edt2: TEdit
    Left = 6
    Top = 146
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
    TabOrder = 14
    Text = 'Edt2'
  end
  object ctxt7: TStaticText
    Left = 6
    Top = 680
    Width = 53
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Count:'
    TabOrder = 15
  end
  object ctxt8: TStaticText
    Left = 60
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
  end
  object ctxt9: TStaticText
    Left = 108
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
  end
  object ctxt10: TStaticText
    Left = 156
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
  end
  object ctxt11: TStaticText
    Left = 204
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 19
  end
  object ctxt12: TStaticText
    Left = 252
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 20
  end
  object ctxt13: TStaticText
    Left = 300
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 21
  end
  object ctxt14: TStaticText
    Left = 348
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
  end
  object ctxt15: TStaticText
    Left = 396
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 23
  end
  object ctxt16: TStaticText
    Left = 444
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 24
  end
  object ctxt17: TStaticText
    Left = 490
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 25
  end
  object ctxt18: TStaticText
    Left = 538
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 26
  end
  object ctxt19: TStaticText
    Left = 586
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 27
  end
  object ctxt20: TStaticText
    Left = 634
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 28
  end
  object ctxt21: TStaticText
    Left = 682
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 29
  end
  object ctxt22: TStaticText
    Left = 728
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 30
  end
  object ctxt23: TStaticText
    Left = 776
    Top = 680
    Width = 48
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt7'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 31
  end
  object btn35: TButton
    Left = 824
    Top = 680
    Width = 118
    Height = 18
    Caption = 'Reset counts'
    TabOrder = 32
    OnClick = btn35Click
  end
  object grp7: TGroupBox
    Left = 6
    Top = 114
    Width = 937
    Height = 31
    TabOrder = 33
    object chk7: TCheckBox
      Left = 8
      Top = 8
      Width = 95
      Height = 19
      Caption = 'Enable this list'
      TabOrder = 0
      OnClick = chk7Click
    end
    object btn55: TButton
      Left = 108
      Top = 8
      Width = 101
      Height = 19
      Hint = 'Enable/disable use of all parser lists'
      Caption = 'Disable other lists'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btn55Click
    end
    object chk8: TCheckBox
      Left = 492
      Top = 8
      Width = 137
      Height = 19
      Caption = 'Sync. of graphs by time'
      TabOrder = 2
      OnClick = chk8Click
    end
    object btn36: TButton
      Left = 214
      Top = 8
      Width = 139
      Height = 19
      Caption = #1057'heck buffers'
      Enabled = False
      TabOrder = 3
      OnClick = btn36Click
    end
    object rb17: TRadioButton
      Left = 706
      Top = 8
      Width = 15
      Height = 19
      TabOrder = 4
      OnClick = rb17Click
    end
    object Bt21: TButton
      Left = 726
      Top = 8
      Width = 69
      Height = 19
      Caption = 'CLEAR List'
      Enabled = False
      TabOrder = 5
      OnClick = Bt21Click
    end
    object Bt70: TButton
      Left = 794
      Top = 8
      Width = 69
      Height = 19
      Caption = 'COPY List'
      TabOrder = 6
      OnClick = Bt70Click
    end
    object Bt71: TButton
      Left = 862
      Top = 8
      Width = 69
      Height = 19
      Caption = 'PASTE List'
      Enabled = False
      TabOrder = 7
      OnClick = Bt71Click
    end
    object Button1: TButton
      Left = 354
      Top = 8
      Width = 129
      Height = 19
      Caption = 'MultiGraph'
      TabOrder = 8
      OnClick = Button1Click
    end
  end
  object grp4: TGroupBox
    Left = 6
    Top = 86
    Width = 353
    Height = 31
    TabOrder = 34
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
    object BtLOG: TButton
      Left = 8
      Top = 8
      Width = 101
      Height = 19
      Caption = 'Start LOG in file'
      TabOrder = 1
      OnClick = BtLOGClick
    end
    object Bt20: TButton
      Left = 108
      Top = 8
      Width = 101
      Height = 19
      Caption = '||'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Bt20Click
    end
  end
  object grp5: TGroupBox
    Left = 6
    Top = 58
    Width = 353
    Height = 31
    TabOrder = 35
    object Bt17: TButton
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
      OnClick = Bt17Click
    end
    object CheckBox1: TCheckBox
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
      OnClick = CheckBox1Click
    end
    object Bt18: TButton
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
      OnClick = Bt18Click
    end
  end
  object grp3: TGroupBox
    Left = 360
    Top = 86
    Width = 583
    Height = 31
    TabOrder = 36
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
    object Button21: TButton
      Left = 372
      Top = 8
      Width = 69
      Height = 19
      Hint = 'Form for displaying a log of the results of the parser'#39's work'
      Caption = 'Parser log'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button21Click
    end
    object Bt72: TButton
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
      OnClick = Bt72Click
    end
    object Bt73: TButton
      Left = 508
      Top = 8
      Width = 69
      Height = 19
      Hint = 'Cancel logging of all parser results'
      Caption = 'Reset ALL'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Bt73Click
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
  object grp6: TGroupBox
    Left = 360
    Top = 58
    Width = 583
    Height = 31
    TabOrder = 37
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
      OnClick = btnLoadClick
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
      OnClick = btnSaveClick
    end
    object chk1: TCheckBox
      Left = 212
      Top = 8
      Width = 159
      Height = 19
      Caption = 'Write plotter data to buffers'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = chk1Click
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
      OnClick = btn2Click
    end
  end
  object dlgOpenLogOpen: TOpenDialog
    Left = 296
    Top = 330
  end
  object dlgSaveFile: TOpenDialog
    Title = 'Save plotter data'
    Left = 546
    Top = 274
  end
  object dlgOpenFileData: TOpenDialog
    Filter = 'File plotter data|*.tmb'
    Title = 'Download plotter data'
    Left = 462
    Top = 308
  end
  object ColorDialog: TColorDialog
    Left = 378
    Top = 226
  end
end
