object FormMultiPort: TFormMultiPort
  Left = 231
  Top = 187
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Add ports [1..16]'
  ClientHeight = 721
  ClientWidth = 946
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
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
  object grp1: TGroupBox
    Left = 2
    Top = 2
    Width = 939
    Height = 365
    TabOrder = 0
    object lbl1: TLabel
      Left = 508
      Top = 12
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl2: TLabel
      Left = 508
      Top = 32
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl3: TLabel
      Left = 508
      Top = 52
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl4: TLabel
      Left = 508
      Top = 72
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl5: TLabel
      Left = 508
      Top = 92
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl6: TLabel
      Left = 508
      Top = 112
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl7: TLabel
      Left = 508
      Top = 132
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl8: TLabel
      Left = 508
      Top = 152
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl9: TLabel
      Left = 508
      Top = 172
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl10: TLabel
      Left = 508
      Top = 192
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl11: TLabel
      Left = 508
      Top = 212
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl12: TLabel
      Left = 508
      Top = 232
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl13: TLabel
      Left = 508
      Top = 252
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl14: TLabel
      Left = 508
      Top = 272
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl15: TLabel
      Left = 508
      Top = 292
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object lbl16: TLabel
      Left = 508
      Top = 312
      Width = 28
      Height = 13
      Caption = 'Send:'
    end
    object Bt2: TButton
      Tag = 1
      Left = 74
      Top = 10
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 0
    end
    object cbb1: TComboBox
      Tag = 1
      Left = 148
      Top = 10
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
    end
    object cbb2: TComboBox
      Tag = 1
      Left = 228
      Top = 10
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      MaxLength = 7
      TabOrder = 2
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb3: TComboBox
      Tag = 1
      Left = 304
      Top = 10
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 3
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb4: TComboBox
      Tag = 1
      Left = 340
      Top = 10
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb5: TComboBox
      Tag = 1
      Left = 402
      Top = 10
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb6: TComboBox
      Tag = 1
      Left = 440
      Top = 10
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object Button1: TButton
      Tag = 1
      Left = 904
      Top = 10
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 7
    end
    object CheckBox1: TCheckBox
      Tag = 1
      Left = 544
      Top = 10
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 8
    end
    object CheckBox2: TCheckBox
      Tag = 1
      Left = 606
      Top = 10
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 9
    end
    object CheckBox3: TCheckBox
      Tag = 1
      Left = 682
      Top = 10
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 10
    end
    object CheckBox4: TCheckBox
      Tag = 1
      Left = 758
      Top = 10
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 11
    end
    object CheckBox5: TCheckBox
      Tag = 1
      Left = 824
      Top = 10
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object Bt4: TButton
      Tag = 2
      Left = 74
      Top = 30
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 13
    end
    object cbb7: TComboBox
      Tag = 2
      Left = 148
      Top = 30
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 14
    end
    object cbb8: TComboBox
      Tag = 2
      Left = 228
      Top = 30
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 15
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb9: TComboBox
      Tag = 2
      Left = 304
      Top = 30
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 16
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb10: TComboBox
      Tag = 2
      Left = 340
      Top = 30
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 17
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb11: TComboBox
      Tag = 2
      Left = 402
      Top = 30
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 18
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb12: TComboBox
      Tag = 2
      Left = 440
      Top = 30
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 19
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox6: TCheckBox
      Tag = 2
      Left = 544
      Top = 30
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 20
    end
    object CheckBox7: TCheckBox
      Tag = 2
      Left = 606
      Top = 30
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 21
    end
    object CheckBox8: TCheckBox
      Tag = 2
      Left = 682
      Top = 30
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 22
    end
    object CheckBox9: TCheckBox
      Tag = 2
      Left = 758
      Top = 30
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 23
    end
    object CheckBox10: TCheckBox
      Tag = 2
      Left = 824
      Top = 30
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 24
    end
    object Bt5: TButton
      Tag = 2
      Left = 904
      Top = 30
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 25
    end
    object Bt7: TButton
      Tag = 3
      Left = 74
      Top = 50
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 26
    end
    object cbb13: TComboBox
      Tag = 3
      Left = 148
      Top = 50
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 27
    end
    object cbb14: TComboBox
      Tag = 3
      Left = 228
      Top = 50
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 28
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb15: TComboBox
      Tag = 3
      Left = 304
      Top = 50
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 29
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb16: TComboBox
      Tag = 3
      Left = 340
      Top = 50
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 30
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb17: TComboBox
      Tag = 3
      Left = 402
      Top = 50
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 31
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb18: TComboBox
      Tag = 3
      Left = 440
      Top = 50
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 32
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox11: TCheckBox
      Tag = 3
      Left = 544
      Top = 50
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 33
    end
    object CheckBox12: TCheckBox
      Tag = 3
      Left = 606
      Top = 50
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 34
    end
    object CheckBox13: TCheckBox
      Tag = 3
      Left = 682
      Top = 50
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 35
    end
    object CheckBox14: TCheckBox
      Tag = 3
      Left = 758
      Top = 50
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 36
    end
    object CheckBox15: TCheckBox
      Tag = 3
      Left = 824
      Top = 50
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 37
    end
    object Bt8: TButton
      Tag = 3
      Left = 904
      Top = 50
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 38
    end
    object Bt10: TButton
      Tag = 4
      Left = 74
      Top = 70
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 39
    end
    object cbb19: TComboBox
      Tag = 4
      Left = 148
      Top = 70
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 40
    end
    object cbb20: TComboBox
      Tag = 4
      Left = 228
      Top = 70
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 41
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb21: TComboBox
      Tag = 4
      Left = 304
      Top = 70
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 42
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb22: TComboBox
      Tag = 4
      Left = 340
      Top = 70
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 43
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb23: TComboBox
      Tag = 4
      Left = 402
      Top = 70
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 44
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb24: TComboBox
      Tag = 4
      Left = 440
      Top = 70
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 45
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox16: TCheckBox
      Tag = 4
      Left = 544
      Top = 70
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 46
    end
    object CheckBox17: TCheckBox
      Tag = 4
      Left = 606
      Top = 70
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 47
    end
    object CheckBox18: TCheckBox
      Tag = 4
      Left = 682
      Top = 70
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 48
    end
    object CheckBox19: TCheckBox
      Tag = 4
      Left = 758
      Top = 70
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 49
    end
    object CheckBox20: TCheckBox
      Tag = 4
      Left = 824
      Top = 70
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 50
    end
    object Bt11: TButton
      Tag = 4
      Left = 904
      Top = 70
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 51
    end
    object Bt13: TButton
      Tag = 5
      Left = 74
      Top = 90
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 52
    end
    object cbb25: TComboBox
      Tag = 5
      Left = 148
      Top = 90
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 53
    end
    object cbb26: TComboBox
      Tag = 5
      Left = 228
      Top = 90
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 54
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb27: TComboBox
      Tag = 5
      Left = 304
      Top = 90
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 55
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb28: TComboBox
      Tag = 5
      Left = 340
      Top = 90
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 56
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb29: TComboBox
      Tag = 5
      Left = 402
      Top = 90
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 57
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb30: TComboBox
      Tag = 5
      Left = 440
      Top = 90
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 58
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox21: TCheckBox
      Tag = 5
      Left = 544
      Top = 90
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 59
    end
    object CheckBox22: TCheckBox
      Tag = 5
      Left = 606
      Top = 90
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 60
    end
    object CheckBox23: TCheckBox
      Tag = 5
      Left = 682
      Top = 90
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 61
    end
    object CheckBox24: TCheckBox
      Tag = 5
      Left = 758
      Top = 90
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 62
    end
    object CheckBox25: TCheckBox
      Tag = 5
      Left = 824
      Top = 90
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 63
    end
    object Bt14: TButton
      Tag = 5
      Left = 904
      Top = 90
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 64
    end
    object Bt16: TButton
      Tag = 6
      Left = 74
      Top = 110
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 65
    end
    object cbb31: TComboBox
      Tag = 6
      Left = 148
      Top = 110
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 66
    end
    object cbb32: TComboBox
      Tag = 6
      Left = 228
      Top = 110
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 67
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb33: TComboBox
      Tag = 6
      Left = 304
      Top = 110
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 68
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb34: TComboBox
      Tag = 6
      Left = 340
      Top = 110
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 69
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb35: TComboBox
      Tag = 6
      Left = 402
      Top = 110
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 70
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb36: TComboBox
      Tag = 6
      Left = 440
      Top = 110
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 71
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox26: TCheckBox
      Tag = 6
      Left = 544
      Top = 110
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 72
    end
    object CheckBox27: TCheckBox
      Tag = 6
      Left = 606
      Top = 110
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 73
    end
    object CheckBox28: TCheckBox
      Tag = 6
      Left = 682
      Top = 110
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 74
    end
    object CheckBox29: TCheckBox
      Tag = 6
      Left = 758
      Top = 110
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 75
    end
    object CheckBox30: TCheckBox
      Tag = 6
      Left = 824
      Top = 110
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 76
    end
    object Bt17: TButton
      Tag = 6
      Left = 904
      Top = 110
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 77
    end
    object Bt19: TButton
      Tag = 7
      Left = 74
      Top = 130
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 78
    end
    object cbb37: TComboBox
      Tag = 7
      Left = 148
      Top = 130
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 79
    end
    object cbb38: TComboBox
      Tag = 7
      Left = 228
      Top = 130
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 80
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb39: TComboBox
      Tag = 7
      Left = 304
      Top = 130
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 81
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb40: TComboBox
      Tag = 7
      Left = 340
      Top = 130
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 82
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb41: TComboBox
      Tag = 7
      Left = 402
      Top = 130
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 83
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb42: TComboBox
      Tag = 7
      Left = 440
      Top = 130
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 84
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox31: TCheckBox
      Tag = 7
      Left = 544
      Top = 130
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 85
    end
    object CheckBox32: TCheckBox
      Tag = 7
      Left = 606
      Top = 130
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 86
    end
    object CheckBox33: TCheckBox
      Tag = 7
      Left = 682
      Top = 130
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 87
    end
    object CheckBox34: TCheckBox
      Tag = 7
      Left = 758
      Top = 130
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 88
    end
    object CheckBox35: TCheckBox
      Tag = 7
      Left = 824
      Top = 130
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 89
    end
    object Bt20: TButton
      Tag = 7
      Left = 904
      Top = 130
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 90
    end
    object Bt22: TButton
      Tag = 8
      Left = 74
      Top = 150
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 91
    end
    object cbb43: TComboBox
      Tag = 8
      Left = 148
      Top = 150
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 92
    end
    object cbb44: TComboBox
      Tag = 8
      Left = 228
      Top = 150
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 93
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb45: TComboBox
      Tag = 8
      Left = 304
      Top = 150
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 94
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb46: TComboBox
      Tag = 8
      Left = 340
      Top = 150
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 95
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb47: TComboBox
      Tag = 8
      Left = 402
      Top = 150
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 96
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb48: TComboBox
      Tag = 8
      Left = 440
      Top = 150
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 97
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox36: TCheckBox
      Tag = 8
      Left = 544
      Top = 150
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 98
    end
    object CheckBox37: TCheckBox
      Tag = 8
      Left = 606
      Top = 150
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 99
    end
    object CheckBox38: TCheckBox
      Tag = 8
      Left = 682
      Top = 150
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 100
    end
    object CheckBox39: TCheckBox
      Tag = 8
      Left = 758
      Top = 150
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 101
    end
    object CheckBox40: TCheckBox
      Tag = 8
      Left = 824
      Top = 150
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 102
    end
    object Bt23: TButton
      Tag = 8
      Left = 904
      Top = 150
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 103
    end
    object Bt25: TButton
      Tag = 9
      Left = 74
      Top = 170
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 104
    end
    object cbb49: TComboBox
      Tag = 9
      Left = 148
      Top = 170
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 105
    end
    object cbb50: TComboBox
      Tag = 9
      Left = 228
      Top = 170
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 106
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb51: TComboBox
      Tag = 9
      Left = 304
      Top = 170
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 107
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb52: TComboBox
      Tag = 9
      Left = 340
      Top = 170
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 108
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb53: TComboBox
      Tag = 9
      Left = 402
      Top = 170
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 109
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb54: TComboBox
      Tag = 9
      Left = 440
      Top = 170
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 110
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox41: TCheckBox
      Tag = 9
      Left = 544
      Top = 170
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 111
    end
    object CheckBox42: TCheckBox
      Tag = 9
      Left = 606
      Top = 170
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 112
    end
    object CheckBox43: TCheckBox
      Tag = 9
      Left = 682
      Top = 170
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 113
    end
    object CheckBox44: TCheckBox
      Tag = 9
      Left = 758
      Top = 170
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 114
    end
    object CheckBox45: TCheckBox
      Tag = 9
      Left = 824
      Top = 170
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 115
    end
    object Bt26: TButton
      Tag = 9
      Left = 904
      Top = 170
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 116
    end
    object Bt28: TButton
      Tag = 10
      Left = 74
      Top = 190
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 117
    end
    object cbb55: TComboBox
      Tag = 10
      Left = 148
      Top = 190
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 118
    end
    object cbb56: TComboBox
      Tag = 10
      Left = 228
      Top = 190
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 119
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb57: TComboBox
      Tag = 10
      Left = 304
      Top = 190
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 120
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb58: TComboBox
      Tag = 10
      Left = 340
      Top = 190
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 121
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb59: TComboBox
      Tag = 10
      Left = 402
      Top = 190
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 122
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb60: TComboBox
      Tag = 10
      Left = 440
      Top = 190
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 123
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox46: TCheckBox
      Tag = 10
      Left = 544
      Top = 190
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 124
    end
    object CheckBox47: TCheckBox
      Tag = 10
      Left = 606
      Top = 190
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 125
    end
    object CheckBox48: TCheckBox
      Tag = 10
      Left = 682
      Top = 190
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 126
    end
    object CheckBox49: TCheckBox
      Tag = 10
      Left = 758
      Top = 190
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 127
    end
    object CheckBox50: TCheckBox
      Tag = 10
      Left = 824
      Top = 190
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 128
    end
    object Bt29: TButton
      Tag = 10
      Left = 904
      Top = 190
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 129
    end
    object Bt31: TButton
      Tag = 11
      Left = 74
      Top = 210
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 130
    end
    object cbb61: TComboBox
      Tag = 11
      Left = 148
      Top = 210
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 131
    end
    object cbb62: TComboBox
      Tag = 11
      Left = 228
      Top = 210
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 132
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb63: TComboBox
      Tag = 11
      Left = 304
      Top = 210
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 133
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb64: TComboBox
      Tag = 11
      Left = 340
      Top = 210
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 134
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb65: TComboBox
      Tag = 11
      Left = 402
      Top = 210
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 135
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb66: TComboBox
      Tag = 11
      Left = 440
      Top = 210
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 136
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox51: TCheckBox
      Tag = 11
      Left = 544
      Top = 210
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 137
    end
    object CheckBox52: TCheckBox
      Tag = 11
      Left = 606
      Top = 210
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 138
    end
    object CheckBox53: TCheckBox
      Tag = 11
      Left = 682
      Top = 210
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 139
    end
    object CheckBox54: TCheckBox
      Tag = 11
      Left = 758
      Top = 210
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 140
    end
    object CheckBox55: TCheckBox
      Tag = 11
      Left = 824
      Top = 210
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 141
    end
    object Bt32: TButton
      Tag = 11
      Left = 904
      Top = 210
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 142
    end
    object Bt34: TButton
      Tag = 12
      Left = 74
      Top = 230
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 143
    end
    object cbb67: TComboBox
      Tag = 12
      Left = 148
      Top = 230
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 144
    end
    object cbb68: TComboBox
      Tag = 12
      Left = 228
      Top = 230
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 145
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb69: TComboBox
      Tag = 12
      Left = 304
      Top = 230
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 146
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb70: TComboBox
      Tag = 12
      Left = 340
      Top = 230
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 147
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb71: TComboBox
      Tag = 12
      Left = 402
      Top = 230
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 148
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb72: TComboBox
      Tag = 12
      Left = 440
      Top = 230
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 149
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox56: TCheckBox
      Tag = 12
      Left = 544
      Top = 230
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 150
    end
    object CheckBox57: TCheckBox
      Tag = 12
      Left = 606
      Top = 230
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 151
    end
    object CheckBox58: TCheckBox
      Tag = 12
      Left = 682
      Top = 230
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 152
    end
    object CheckBox59: TCheckBox
      Tag = 12
      Left = 758
      Top = 230
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 153
    end
    object CheckBox60: TCheckBox
      Tag = 12
      Left = 824
      Top = 230
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 154
    end
    object Bt35: TButton
      Tag = 12
      Left = 904
      Top = 230
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 155
    end
    object Bt37: TButton
      Tag = 13
      Left = 74
      Top = 250
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 156
    end
    object cbb73: TComboBox
      Tag = 13
      Left = 148
      Top = 250
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 157
    end
    object cbb74: TComboBox
      Tag = 13
      Left = 228
      Top = 250
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 158
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb75: TComboBox
      Tag = 13
      Left = 304
      Top = 250
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 159
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb76: TComboBox
      Tag = 13
      Left = 340
      Top = 250
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 160
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb77: TComboBox
      Tag = 13
      Left = 402
      Top = 250
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 161
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb78: TComboBox
      Tag = 13
      Left = 440
      Top = 250
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 162
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox61: TCheckBox
      Tag = 13
      Left = 544
      Top = 250
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 163
    end
    object CheckBox62: TCheckBox
      Tag = 13
      Left = 606
      Top = 250
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 164
    end
    object CheckBox63: TCheckBox
      Tag = 13
      Left = 682
      Top = 250
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 165
    end
    object CheckBox64: TCheckBox
      Tag = 13
      Left = 758
      Top = 250
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 166
    end
    object CheckBox65: TCheckBox
      Tag = 13
      Left = 824
      Top = 250
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 167
    end
    object Bt38: TButton
      Tag = 13
      Left = 904
      Top = 250
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 168
    end
    object Bt40: TButton
      Tag = 14
      Left = 74
      Top = 270
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 169
    end
    object cbb79: TComboBox
      Tag = 14
      Left = 148
      Top = 270
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 170
    end
    object cbb80: TComboBox
      Tag = 14
      Left = 228
      Top = 270
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 171
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb81: TComboBox
      Tag = 14
      Left = 304
      Top = 270
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 172
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb82: TComboBox
      Tag = 14
      Left = 340
      Top = 270
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 173
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb83: TComboBox
      Tag = 14
      Left = 402
      Top = 270
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 174
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb84: TComboBox
      Tag = 14
      Left = 440
      Top = 270
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 175
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox66: TCheckBox
      Tag = 14
      Left = 544
      Top = 270
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 176
    end
    object CheckBox67: TCheckBox
      Tag = 14
      Left = 606
      Top = 270
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 177
    end
    object CheckBox68: TCheckBox
      Tag = 14
      Left = 682
      Top = 270
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 178
    end
    object CheckBox69: TCheckBox
      Tag = 14
      Left = 758
      Top = 270
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 179
    end
    object CheckBox70: TCheckBox
      Tag = 14
      Left = 824
      Top = 270
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 180
    end
    object Bt41: TButton
      Tag = 14
      Left = 904
      Top = 270
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 181
    end
    object Bt43: TButton
      Tag = 15
      Left = 74
      Top = 290
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 182
    end
    object cbb85: TComboBox
      Tag = 15
      Left = 148
      Top = 290
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 183
    end
    object cbb86: TComboBox
      Tag = 15
      Left = 228
      Top = 290
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 184
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb87: TComboBox
      Tag = 15
      Left = 304
      Top = 290
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 185
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb88: TComboBox
      Tag = 15
      Left = 340
      Top = 290
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 186
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb89: TComboBox
      Tag = 15
      Left = 402
      Top = 290
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 187
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb90: TComboBox
      Tag = 15
      Left = 440
      Top = 290
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 188
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox71: TCheckBox
      Tag = 15
      Left = 544
      Top = 290
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 189
    end
    object CheckBox72: TCheckBox
      Tag = 15
      Left = 606
      Top = 290
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 190
    end
    object CheckBox73: TCheckBox
      Tag = 15
      Left = 682
      Top = 290
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 191
    end
    object CheckBox74: TCheckBox
      Tag = 15
      Left = 758
      Top = 290
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 192
    end
    object CheckBox75: TCheckBox
      Tag = 15
      Left = 824
      Top = 290
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 193
    end
    object Bt44: TButton
      Tag = 15
      Left = 904
      Top = 290
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 194
    end
    object Bt46: TButton
      Tag = 16
      Left = 74
      Top = 310
      Width = 72
      Height = 21
      Caption = 'Connect'
      TabOrder = 195
    end
    object cbb91: TComboBox
      Tag = 16
      Left = 148
      Top = 310
      Width = 80
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 196
    end
    object cbb92: TComboBox
      Tag = 16
      Left = 228
      Top = 310
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 197
      Text = '1200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '230400'
        '460800'
        '921600'
        '1843200')
    end
    object cbb93: TComboBox
      Tag = 16
      Left = 304
      Top = 310
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 198
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb94: TComboBox
      Tag = 16
      Left = 340
      Top = 310
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 199
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb95: TComboBox
      Tag = 16
      Left = 402
      Top = 310
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 200
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb96: TComboBox
      Tag = 16
      Left = 440
      Top = 310
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 201
      Text = 'None'
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object CheckBox76: TCheckBox
      Tag = 16
      Left = 544
      Top = 310
      Width = 65
      Height = 21
      Caption = 'MainLog'
      TabOrder = 202
    end
    object CheckBox77: TCheckBox
      Tag = 16
      Left = 606
      Top = 310
      Width = 77
      Height = 21
      Caption = 'SecondLog'
      TabOrder = 203
    end
    object CheckBox78: TCheckBox
      Tag = 16
      Left = 682
      Top = 310
      Width = 73
      Height = 21
      Caption = 'Parsers'
      TabOrder = 204
    end
    object CheckBox79: TCheckBox
      Tag = 16
      Left = 758
      Top = 310
      Width = 63
      Height = 21
      Caption = 'TextFile'
      TabOrder = 205
    end
    object CheckBox80: TCheckBox
      Tag = 16
      Left = 824
      Top = 310
      Width = 57
      Height = 21
      Hint = 'Write only received data to file'
      Caption = 'BinFile'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 206
    end
    object Bt47: TButton
      Tag = 16
      Left = 904
      Top = 310
      Width = 30
      Height = 21
      Caption = 'Log'
      TabOrder = 207
    end
    object Bt48: TButton
      Left = 74
      Top = 332
      Width = 72
      Height = 27
      Caption = 'Disconnect all'
      TabOrder = 208
      OnClick = Bt48Click
    end
    object Bt49: TButton
      Left = 148
      Top = 332
      Width = 80
      Height = 27
      Caption = 'Scan ports'
      TabOrder = 209
      OnClick = Bt49Click
    end
    object req_1: TStaticText
      Tag = 1
      Left = 882
      Top = 12
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 210
    end
    object req_2: TStaticText
      Tag = 2
      Left = 882
      Top = 32
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 211
    end
    object req_3: TStaticText
      Tag = 3
      Left = 882
      Top = 52
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 212
    end
    object req_4: TStaticText
      Tag = 4
      Left = 882
      Top = 72
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 213
    end
    object req_5: TStaticText
      Tag = 5
      Left = 882
      Top = 92
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 214
    end
    object req_6: TStaticText
      Tag = 6
      Left = 882
      Top = 112
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 215
    end
    object req_12: TStaticText
      Tag = 12
      Left = 882
      Top = 232
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 216
    end
    object req_11: TStaticText
      Tag = 11
      Left = 882
      Top = 212
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 217
    end
    object req_10: TStaticText
      Tag = 10
      Left = 882
      Top = 192
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 218
    end
    object req_9: TStaticText
      Tag = 9
      Left = 882
      Top = 172
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 219
    end
    object req_8: TStaticText
      Tag = 8
      Left = 882
      Top = 152
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 220
    end
    object req_7: TStaticText
      Tag = 7
      Left = 882
      Top = 132
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 221
    end
    object req_16: TStaticText
      Tag = 16
      Left = 882
      Top = 312
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 222
    end
    object req_15: TStaticText
      Tag = 15
      Left = 882
      Top = 292
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 223
    end
    object req_14: TStaticText
      Tag = 14
      Left = 882
      Top = 272
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 224
    end
    object req_13: TStaticText
      Tag = 13
      Left = 882
      Top = 252
      Width = 21
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 225
    end
    object rb1: TRadioButton
      Left = 8
      Top = 12
      Width = 60
      Height = 17
      Caption = '>'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 226
      TabStop = True
    end
    object rb2: TRadioButton
      Left = 8
      Top = 32
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 227
    end
    object rb3: TRadioButton
      Left = 8
      Top = 52
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 228
    end
    object rb4: TRadioButton
      Left = 8
      Top = 72
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 229
    end
    object rb5: TRadioButton
      Left = 8
      Top = 92
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 230
    end
    object rb6: TRadioButton
      Left = 8
      Top = 112
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 231
    end
    object rb7: TRadioButton
      Left = 8
      Top = 132
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 232
    end
    object rb8: TRadioButton
      Left = 8
      Top = 152
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 233
    end
    object rb9: TRadioButton
      Left = 8
      Top = 172
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 234
    end
    object rb10: TRadioButton
      Left = 8
      Top = 192
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 235
    end
    object rb11: TRadioButton
      Left = 8
      Top = 212
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 236
    end
    object rb12: TRadioButton
      Left = 8
      Top = 232
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 237
    end
    object rb13: TRadioButton
      Left = 8
      Top = 252
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 238
    end
    object rb14: TRadioButton
      Left = 8
      Top = 272
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 239
    end
    object rb15: TRadioButton
      Left = 8
      Top = 292
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 240
    end
    object rb16: TRadioButton
      Left = 8
      Top = 312
      Width = 60
      Height = 17
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 241
    end
    object Bt3: TButton
      Left = 758
      Top = 332
      Width = 63
      Height = 27
      Hint = 'Clearing all log files'
      Caption = 'Rewr.ALL'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 242
      OnClick = Bt3Click
    end
    object Bt6: TButton
      Left = 820
      Top = 332
      Width = 63
      Height = 27
      Caption = 'Rewr.ALL'
      TabOrder = 243
      OnClick = Bt6Click
    end
    object Bt1: TButton
      Left = 882
      Top = 332
      Width = 52
      Height = 27
      Caption = 'Logs'
      TabOrder = 244
      OnClick = Bt1Click
    end
    object CheckBox81: TCheckBox
      Left = 544
      Top = 336
      Width = 33
      Height = 17
      Caption = 'All '
      TabOrder = 245
      OnClick = CheckBox81Click
    end
    object CheckBox82: TCheckBox
      Left = 606
      Top = 336
      Width = 33
      Height = 17
      Caption = 'All '
      TabOrder = 246
      OnClick = CheckBox82Click
    end
    object CheckBox83: TCheckBox
      Left = 682
      Top = 336
      Width = 33
      Height = 17
      Caption = 'All '
      TabOrder = 247
      OnClick = CheckBox83Click
    end
  end
  object grp2: TGroupBox
    Left = 2
    Top = 368
    Width = 939
    Height = 313
    TabOrder = 1
    object grp3: TGroupBox
      Left = 6
      Top = 6
      Width = 661
      Height = 39
      TabOrder = 0
      object reqTime1: TStaticText
        Left = 92
        Top = 12
        Width = 63
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '00:00:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Chchk3: TCheckBox
        Left = 218
        Top = 14
        Width = 55
        Height = 19
        Caption = 'PORT+'
        TabOrder = 1
        OnClick = Chchk3Click
      end
      object Chchk1: TCheckBox
        Left = 278
        Top = 14
        Width = 51
        Height = 19
        Caption = 'TIME+'
        TabOrder = 2
        OnClick = Chchk1Click
      end
      object Chchk2: TCheckBox
        Left = 336
        Top = 14
        Width = 49
        Height = 19
        Caption = 'CNT+'
        TabOrder = 3
        OnClick = Chchk2Click
      end
      object cbb97: TComboBox
        Left = 436
        Top = 12
        Width = 73
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 4
        OnChange = cbb97Change
        Items.Strings = (
          'ASCII'
          'HEX'
          'DEC'
          'CUSTOM')
      end
      object req5: TStaticText
        Left = 512
        Top = 12
        Width = 75
        Height = 21
        Hint = 'Color in log'
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = req5Click
      end
      object ChDir0: TCheckBox
        Left = 388
        Top = 14
        Width = 45
        Height = 19
        Caption = 'DIR+'
        TabOrder = 6
        OnClick = ChDir0Click
      end
      object Edt1: TEdit
        Left = 158
        Top = 12
        Width = 55
        Height = 21
        Hint = 'Port alias to display in the log'
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 6
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Text = 'COM256'
        OnChange = Edt1Change
      end
      object ctxt1: TStaticText
        Left = 4
        Top = 12
        Width = 85
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Port 16'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object btn1: TButton
        Left = 590
        Top = 10
        Width = 63
        Height = 25
        Hint = 'Redirecting received data to other ports'
        Caption = 'ReSend'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = btn1Click
      end
    end
    object grp4: TGroupBox
      Left = 6
      Top = 44
      Width = 289
      Height = 195
      Caption = 'Line separator in log'
      TabOrder = 1
      object grp11: TGroupBox
        Left = 6
        Top = 14
        Width = 277
        Height = 41
        Caption = 'For ASCII mode only'
        TabOrder = 0
        object ChChSep0D0A: TCheckBox
          Left = 190
          Top = 15
          Width = 71
          Height = 17
          Hint = '"\r\n" [0x0D 0x0A]'
          Caption = '$0D+$0A'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = ChChSep0D0AClick
        end
        object ChChSep00: TCheckBox
          Left = 130
          Top = 15
          Width = 50
          Height = 17
          Hint = '"\0" [0x00]'
          Caption = '$00'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = ChChSep00Click
        end
        object ChChSep0A: TCheckBox
          Left = 70
          Top = 15
          Width = 50
          Height = 17
          Hint = '"\n" [0x0A]'
          Caption = '$0A'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = ChChSep0AClick
        end
        object ChChSep0D: TCheckBox
          Left = 10
          Top = 15
          Width = 50
          Height = 17
          Hint = '"\r" [0x0D] only'
          Caption = '$0D'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = ChChSep0DClick
        end
      end
      object ChChSepTime: TCheckBox
        Left = 16
        Top = 62
        Width = 55
        Height = 19
        Hint = 'Packet separator is the specified time interval'
        Caption = 'Pause'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = ChChSepTimeClick
      end
      object EdtEdtPauseRx1: TEdit
        Left = 66
        Top = 62
        Width = 49
        Height = 19
        Ctl3D = False
        MaxLength = 7
        ParentCtl3D = False
        TabOrder = 2
        Text = '9999999'
        OnChange = EdtEdtPauseRx1Change
        OnKeyPress = EdtEdtPauseRx1KeyPress
      end
      object ud1: TUpDown
        Left = 116
        Top = 62
        Width = 17
        Height = 19
        Min = -32000
        Max = 32000
        Position = -200
        TabOrder = 3
        OnClick = ud1Click
      end
      object ChChSepCnt: TCheckBox
        Left = 158
        Top = 62
        Width = 67
        Height = 19
        Hint = 'Data is split into packets of fixed length'
        Caption = 'Bytes rec'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = ChChSepCntClick
      end
      object EdtEdtCntSep1: TEdit
        Left = 222
        Top = 62
        Width = 33
        Height = 19
        Ctl3D = False
        MaxLength = 4
        ParentCtl3D = False
        TabOrder = 5
        Text = '9999'
        OnChange = EdtEdtCntSep1Change
        OnKeyPress = EdtEdtCntSep1KeyPress
      end
      object grp12: TGroupBox
        Left = 6
        Top = 84
        Width = 277
        Height = 65
        Caption = 'After sequence'
        TabOrder = 6
        object edtEdtedt1_4_1: TEdit
          Left = 20
          Top = 16
          Width = 20
          Height = 19
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
          TabOrder = 0
          OnChange = edtEdtedt1_4_1Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt1_4_1KeyPress
        end
        object edtEdtedt1_4_2: TEdit
          Left = 40
          Top = 16
          Width = 20
          Height = 19
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
          TabOrder = 1
          OnChange = edtEdtedt1_4_2Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt1_4_2KeyPress
        end
        object edtEdtedt1_4_3: TEdit
          Left = 60
          Top = 16
          Width = 20
          Height = 19
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
          TabOrder = 2
          OnChange = edtEdtedt1_4_3Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt1_4_3KeyPress
        end
        object edtEdtedt1_4_4: TEdit
          Left = 80
          Top = 16
          Width = 20
          Height = 19
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
          TabOrder = 3
          OnChange = edtEdtedt1_4_4Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt1_4_4KeyPress
        end
        object Chchk7: TCheckBox
          Left = 6
          Top = 18
          Width = 13
          Height = 17
          TabOrder = 4
          OnClick = Chchk7Click
        end
        object Chchk8: TCheckBox
          Left = 102
          Top = 18
          Width = 15
          Height = 17
          TabOrder = 5
          OnClick = Chchk8Click
        end
        object edtEdtedt1_3_1: TEdit
          Left = 116
          Top = 16
          Width = 20
          Height = 19
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
          TabOrder = 6
          OnChange = edtEdtedt1_3_1Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt1_3_1KeyPress
        end
        object edtEdtedt1_3_2: TEdit
          Left = 136
          Top = 16
          Width = 20
          Height = 19
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
          OnChange = edtEdtedt1_3_2Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt1_3_2KeyPress
        end
        object edtEdtedt1_3_3: TEdit
          Left = 156
          Top = 16
          Width = 20
          Height = 19
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
          OnChange = edtEdtedt1_3_3Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
        end
        object Chchk9: TCheckBox
          Left = 178
          Top = 18
          Width = 15
          Height = 17
          TabOrder = 9
          OnClick = Chchk9Click
        end
        object edtEdtedt1_2_1: TEdit
          Left = 192
          Top = 16
          Width = 20
          Height = 19
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
          OnChange = edtEdtedt1_2_1Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt1_2_1KeyPress
        end
        object edtEdtedt1_2_2: TEdit
          Left = 212
          Top = 16
          Width = 20
          Height = 19
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
          OnChange = edtEdtedt1_2_2Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt1_2_2KeyPress
        end
        object edtEdtedt1_1_1: TEdit
          Left = 250
          Top = 16
          Width = 20
          Height = 19
          Hint = 'Character code in hexadecimal'
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
          TabOrder = 12
          OnChange = edtEdtedt1_1_1Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt1_1_1KeyPress
        end
        object ChChSepSymbol: TCheckBox
          Left = 235
          Top = 18
          Width = 15
          Height = 17
          TabOrder = 13
          OnClick = ChChSepSymbolClick
        end
        object edtEdtedt2_1_1: TEdit
          Left = 250
          Top = 38
          Width = 20
          Height = 19
          Hint = 'Character code in hexadecimal'
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
          OnChange = edtEdtedt2_1_1Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt2_1_1KeyPress
        end
        object Chchk10: TCheckBox
          Left = 235
          Top = 40
          Width = 15
          Height = 17
          TabOrder = 15
          OnClick = Chchk10Click
        end
        object Chchk11: TCheckBox
          Left = 6
          Top = 40
          Width = 13
          Height = 17
          TabOrder = 16
          OnClick = Chchk11Click
        end
        object edtEdtedt2_4_1: TEdit
          Left = 20
          Top = 38
          Width = 20
          Height = 19
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
          OnChange = edtEdtedt2_4_1Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt2_4_1KeyPress
        end
        object edtEdtedt2_4_2: TEdit
          Left = 40
          Top = 38
          Width = 20
          Height = 19
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
          OnChange = edtEdtedt2_4_2Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt2_4_2KeyPress
        end
        object edtEdtedt2_4_3: TEdit
          Left = 60
          Top = 38
          Width = 20
          Height = 19
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
          TabOrder = 19
          OnChange = edtEdtedt2_4_3Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt2_4_3KeyPress
        end
        object edtEdtedt2_4_4: TEdit
          Left = 80
          Top = 38
          Width = 20
          Height = 19
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
          TabOrder = 20
          OnChange = edtEdtedt2_4_4Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt2_4_4KeyPress
        end
        object Chchk12: TCheckBox
          Left = 102
          Top = 40
          Width = 15
          Height = 17
          TabOrder = 21
          OnClick = Chchk12Click
        end
        object edtEdtedt2_3_1: TEdit
          Left = 116
          Top = 38
          Width = 20
          Height = 19
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
          TabOrder = 22
          OnChange = edtEdtedt2_3_1Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt2_3_1KeyPress
        end
        object edtEdtedt2_3_2: TEdit
          Left = 136
          Top = 38
          Width = 20
          Height = 19
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
          TabOrder = 23
          OnChange = edtEdtedt2_3_2Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt2_3_2KeyPress
        end
        object edtEdtedt2_3_3: TEdit
          Left = 156
          Top = 38
          Width = 20
          Height = 19
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
          TabOrder = 24
          OnChange = edtEdtedt2_3_3Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt2_3_3KeyPress
        end
        object Chchk13: TCheckBox
          Left = 178
          Top = 40
          Width = 15
          Height = 17
          TabOrder = 25
          OnClick = Chchk13Click
        end
        object edtEdtedt2_2_1: TEdit
          Left = 192
          Top = 38
          Width = 20
          Height = 19
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
          TabOrder = 26
          OnChange = edtEdtedt2_2_1Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt2_2_1KeyPress
        end
        object edtEdtedt2_2_2: TEdit
          Left = 212
          Top = 38
          Width = 20
          Height = 19
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
          TabOrder = 27
          OnChange = edtEdtedt2_2_2Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtedt2_2_2KeyPress
        end
      end
      object grp5: TGroupBox
        Left = 6
        Top = 151
        Width = 277
        Height = 37
        TabOrder = 7
        object lbl18: TLabel
          Left = 6
          Top = 12
          Width = 170
          Height = 13
          Caption = 'Before byte(experimental setting) :'
        end
        object ChChCBBefByte2: TCheckBox
          Left = 178
          Top = 12
          Width = 17
          Height = 17
          Hint = 'Experimental option'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = ChChCBBefByte2Click
        end
        object EdtEdtBefSym21: TEdit
          Left = 193
          Top = 10
          Width = 20
          Height = 19
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
          TabOrder = 1
          Text = '00'
          OnChange = EdtEdtBefSym21Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = EdtEdtBefSym21KeyPress
        end
        object ChChCBBefByte1: TCheckBox
          Left = 236
          Top = 12
          Width = 17
          Height = 17
          Hint = 'Experimental option'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = ChChCBBefByte1Click
        end
        object EdtEdtBefSym11: TEdit
          Left = 251
          Top = 10
          Width = 20
          Height = 19
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
          TabOrder = 3
          Text = '00'
          OnChange = EdtEdtBefSym11Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = EdtEdtBefSym11KeyPress
        end
      end
      object ud2: TUpDown
        Left = 256
        Top = 62
        Width = 17
        Height = 19
        Min = -32000
        Max = 32000
        Position = -200
        TabOrder = 8
        OnClick = ud2Click
      end
    end
    object grp6: TGroupBox
      Left = 6
      Top = 238
      Width = 289
      Height = 69
      TabOrder = 2
      object lbl19: TLabel
        Left = 6
        Top = 10
        Width = 44
        Height = 13
        Alignment = taCenter
        Caption = 'Received'
      end
      object lbl20: TLabel
        Left = 100
        Top = 10
        Width = 34
        Height = 13
        Alignment = taCenter
        Caption = 'Outout'
      end
      object lbl21: TLabel
        Left = 194
        Top = 10
        Width = 20
        Height = 13
        Alignment = taCenter
        Caption = 'Lost'
      end
      object Bt50: TButton
        Left = 194
        Top = 46
        Width = 89
        Height = 17
        Caption = 'Reset buffer'
        TabOrder = 0
        OnClick = Bt50Click
      end
      object req1: TStaticText
        Left = 6
        Top = 26
        Width = 89
        Height = 17
        Hint = 'Number of bytes received by the port'
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object req3: TStaticText
        Left = 100
        Top = 26
        Width = 89
        Height = 17
        Hint = 'Number of bytes output to the receiver'
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object req4: TStaticText
        Left = 194
        Top = 26
        Width = 89
        Height = 17
        Hint = 'Number of bytes lost due to intermediate ring buffer overflow'
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object ChClrBuf0: TCheckBox
        Left = 6
        Top = 46
        Width = 179
        Height = 17
        Caption = 'Clear buffer when port is closed'
        TabOrder = 4
        OnClick = ChClrBuf0Click
      end
    end
    object grp7: TGroupBox
      Left = 672
      Top = 6
      Width = 261
      Height = 39
      TabOrder = 3
      object Bt51: TButton
        Left = 6
        Top = 10
        Width = 83
        Height = 25
        Caption = 'Copy settings'
        TabOrder = 0
        OnClick = Bt51Click
      end
      object Bt52: TButton
        Left = 88
        Top = 10
        Width = 83
        Height = 25
        Caption = 'Paste settings'
        Enabled = False
        TabOrder = 1
        OnClick = Bt52Click
      end
      object Button2: TButton
        Left = 172
        Top = 10
        Width = 83
        Height = 25
        Caption = 'Set for ALL'
        Enabled = False
        TabOrder = 2
        OnClick = Button2Click
      end
    end
    object grp8: TGroupBox
      Left = 300
      Top = 44
      Width = 633
      Height = 263
      TabOrder = 4
      object Bt53: TButton
        Left = 478
        Top = 234
        Width = 75
        Height = 25
        Caption = 'Clear'
        TabOrder = 0
        OnClick = Bt53Click
      end
      object Bt54: TButton
        Left = 552
        Top = 234
        Width = 75
        Height = 25
        Caption = 'Copy'
        TabOrder = 1
        OnClick = Bt54Click
      end
      object req2: TStaticText
        Left = 8
        Top = 236
        Width = 103
        Height = 19
        Hint = 'BackGround Color'
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = req2Click
      end
      object CWinOut: TRichEdit
        Left = 6
        Top = 12
        Width = 621
        Height = 213
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 3
      end
    end
  end
  object req6: TStaticText
    Left = 46
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 2
  end
  object req7: TStaticText
    Left = 102
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 3
  end
  object req8: TStaticText
    Left = 158
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 4
  end
  object req9: TStaticText
    Left = 214
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 5
  end
  object req10: TStaticText
    Left = 270
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 6
  end
  object req11: TStaticText
    Left = 326
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 7
  end
  object req12: TStaticText
    Left = 382
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 8
  end
  object req13: TStaticText
    Left = 438
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 9
  end
  object req14: TStaticText
    Left = 494
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 10
  end
  object req15: TStaticText
    Left = 550
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 11
  end
  object req16: TStaticText
    Left = 606
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 12
  end
  object req17: TStaticText
    Left = 662
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 13
  end
  object req18: TStaticText
    Left = 718
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 14
  end
  object req19: TStaticText
    Left = 774
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 15
  end
  object req20: TStaticText
    Left = 830
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 16
  end
  object req21: TStaticText
    Left = 886
    Top = 682
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 17
  end
  object req22: TStaticText
    Left = 2
    Top = 682
    Width = 43
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Err.TXT'
    TabOrder = 18
  end
  object req23: TStaticText
    Left = 2
    Top = 700
    Width = 43
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Err.BIN'
    TabOrder = 19
  end
  object req24: TStaticText
    Left = 46
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 20
  end
  object req25: TStaticText
    Left = 102
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 21
  end
  object req26: TStaticText
    Left = 158
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 22
  end
  object req27: TStaticText
    Left = 214
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 23
  end
  object req28: TStaticText
    Left = 270
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 24
  end
  object req29: TStaticText
    Left = 326
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 25
  end
  object req30: TStaticText
    Left = 382
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 26
  end
  object req31: TStaticText
    Left = 438
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 27
  end
  object req32: TStaticText
    Left = 494
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 28
  end
  object req33: TStaticText
    Left = 550
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 29
  end
  object req34: TStaticText
    Left = 606
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 30
  end
  object req35: TStaticText
    Left = 662
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 31
  end
  object req36: TStaticText
    Left = 718
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 32
  end
  object req37: TStaticText
    Left = 774
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 33
  end
  object req38: TStaticText
    Left = 830
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 34
  end
  object req39: TStaticText
    Left = 886
    Top = 700
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '1'
    TabOrder = 35
  end
  object tmrRead: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrReadTimer
    Left = 424
    Top = 336
  end
  object ColorDialog1: TColorDialog
    Left = 382
    Top = 334
  end
  object dlgOpenSelFile: TOpenDialog
    Left = 346
    Top = 334
  end
end
