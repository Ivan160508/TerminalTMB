object FormAddPorts: TFormAddPorts
  Left = 504
  Top = 196
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Add ports [1..2]'
  ClientHeight = 659
  ClientWidth = 926
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
  object grp1: TGroupBox
    Left = 4
    Top = 8
    Width = 915
    Height = 305
    Caption = 'PORT 1'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    OnClick = grp4Click
    object cbb1: TComboBox
      Left = 178
      Top = 16
      Width = 97
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
    object cbb2: TComboBox
      Left = 274
      Top = 16
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = '1200'
      OnKeyPress = cbb2KeyPress
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
      Left = 350
      Top = 16
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 2
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb4: TComboBox
      Left = 386
      Top = 16
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb5: TComboBox
      Left = 448
      Top = 16
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb6: TComboBox
      Left = 486
      Top = 16
      Width = 75
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'None'
      OnChange = cbb6Change
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object grp2: TGroupBox
      Left = 10
      Top = 60
      Width = 551
      Height = 39
      TabOrder = 6
      OnClick = grp4Click
      object lbl9: TLabel
        Left = 375
        Top = 16
        Width = 82
        Height = 13
        Caption = 'Color in main log:'
      end
      object reqTime1: TStaticText
        Left = 6
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
      object chk3: TCheckBox
        Left = 72
        Top = 14
        Width = 55
        Height = 19
        Caption = 'PORT+'
        TabOrder = 1
        OnClick = chk3Click
      end
      object chk1: TCheckBox
        Left = 132
        Top = 14
        Width = 51
        Height = 19
        Caption = 'TIME+'
        TabOrder = 2
        OnClick = chk1Click
      end
      object chk2: TCheckBox
        Left = 190
        Top = 14
        Width = 49
        Height = 19
        Caption = 'CNT+'
        TabOrder = 3
        OnClick = chk2Click
      end
      object cbb7: TComboBox
        Left = 290
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
        OnChange = cbb7Change
        Items.Strings = (
          'ASCII'
          'HEX'
          'DEC'
          'CUSTOM')
      end
      object req5: TStaticText
        Left = 462
        Top = 12
        Width = 80
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = req5Click
      end
      object ChDir0: TCheckBox
        Left = 242
        Top = 14
        Width = 45
        Height = 19
        Caption = 'DIR+'
        TabOrder = 6
        OnClick = ChDir0Click
      end
    end
    object grp3: TGroupBox
      Left = 10
      Top = 102
      Width = 289
      Height = 195
      Caption = 'Line separator in log'
      TabOrder = 7
      object grp11: TGroupBox
        Left = 6
        Top = 14
        Width = 277
        Height = 41
        Caption = 'For ASCII mode only'
        TabOrder = 0
        object chkChSep0D0A: TCheckBox
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
          OnClick = chkChSep0D0AClick
        end
        object chkChSep00: TCheckBox
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
          OnClick = chkChSep00Click
        end
        object chkChSep0A: TCheckBox
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
          OnClick = chkChSep0AClick
        end
        object chkChSep0D: TCheckBox
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
          OnClick = chkChSep0DClick
        end
      end
      object chkChSepTime: TCheckBox
        Left = 16
        Top = 62
        Width = 55
        Height = 19
        Hint = 'Packet separator is the specified time interval'
        Caption = 'Pause'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = chkChSepTimeClick
      end
      object edtEdtPauseRx: TEdit
        Left = 66
        Top = 62
        Width = 49
        Height = 19
        Ctl3D = False
        MaxLength = 7
        ParentCtl3D = False
        TabOrder = 2
        Text = '9999999'
        OnChange = edtEdtPauseRxChange
        OnKeyPress = edtEdtPauseRxKeyPress
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
      object chkChSepCnt: TCheckBox
        Left = 158
        Top = 62
        Width = 67
        Height = 19
        Hint = 'Data is split into packets of fixed length'
        Caption = 'Bytes rec'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = chkChSepCntClick
      end
      object edtEdtCntSep: TEdit
        Left = 222
        Top = 62
        Width = 33
        Height = 19
        Ctl3D = False
        MaxLength = 4
        ParentCtl3D = False
        TabOrder = 5
        Text = '9999'
        OnChange = edtEdtCntSepChange
        OnKeyPress = edtEdtPauseRxKeyPress
      end
      object ud2: TUpDown
        Left = 256
        Top = 62
        Width = 17
        Height = 19
        Max = 9999
        TabOrder = 6
        OnClick = ud2Click
      end
      object grp12: TGroupBox
        Left = 6
        Top = 84
        Width = 277
        Height = 65
        Caption = 'After sequence'
        TabOrder = 7
        object edt100: TEdit
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
          OnChange = edt100Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt101: TEdit
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
          OnChange = edt101Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt102: TEdit
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
          OnChange = edt102Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt103: TEdit
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
          OnChange = edt103Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object chk7: TCheckBox
          Left = 6
          Top = 18
          Width = 13
          Height = 17
          TabOrder = 4
          OnClick = chk7Click
        end
        object chk8: TCheckBox
          Left = 102
          Top = 18
          Width = 15
          Height = 17
          TabOrder = 5
          OnClick = chk8Click
        end
        object edt2: TEdit
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
          OnChange = edt2Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt99: TEdit
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
          OnChange = edt99Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt104: TEdit
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
          OnChange = edt104Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object chk9: TCheckBox
          Left = 178
          Top = 18
          Width = 15
          Height = 17
          TabOrder = 9
          OnClick = chk9Click
        end
        object edt105: TEdit
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
          OnChange = edt105Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt106: TEdit
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
          OnChange = edt106Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edtEdtSymAdd: TEdit
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
          OnChange = edtEdtSymAddChange
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object chkChSepSymbol: TCheckBox
          Left = 235
          Top = 18
          Width = 15
          Height = 17
          TabOrder = 13
          OnClick = chkChSepSymbolClick
        end
        object edtEdt98: TEdit
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
          OnChange = edtEdt98Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object chk10: TCheckBox
          Left = 235
          Top = 40
          Width = 15
          Height = 17
          TabOrder = 15
          OnClick = chk10Click
        end
        object chk11: TCheckBox
          Left = 6
          Top = 40
          Width = 13
          Height = 17
          TabOrder = 16
          OnClick = chk11Click
        end
        object edt107: TEdit
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
          OnChange = edt107Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt108: TEdit
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
          OnChange = edt108Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt109: TEdit
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
          OnChange = edt109Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt110: TEdit
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
          OnChange = edt110Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object chk12: TCheckBox
          Left = 102
          Top = 40
          Width = 15
          Height = 17
          TabOrder = 21
          OnClick = chk12Click
        end
        object edt111: TEdit
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
          OnChange = edt111Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt112: TEdit
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
          OnChange = edt112Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt113: TEdit
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
          OnChange = edt113Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object chk13: TCheckBox
          Left = 178
          Top = 40
          Width = 15
          Height = 17
          TabOrder = 25
          OnClick = chk13Click
        end
        object edt114: TEdit
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
          OnChange = edt114Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt115: TEdit
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
          OnChange = edt115Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
      end
      object grp5: TGroupBox
        Left = 6
        Top = 151
        Width = 277
        Height = 37
        TabOrder = 8
        object lbl1: TLabel
          Left = 6
          Top = 12
          Width = 170
          Height = 13
          Caption = 'Before byte(experimental setting) :'
        end
        object chkChCBBefByte2: TCheckBox
          Left = 178
          Top = 12
          Width = 17
          Height = 17
          Hint = 'Experimental option'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = chkChCBBefByte2Click
        end
        object edtEdtBefSym2: TEdit
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
          OnChange = edtEdtBefSym2Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object chkChCBBefByte1: TCheckBox
          Left = 236
          Top = 12
          Width = 17
          Height = 17
          Hint = 'Experimental option'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = chkChCBBefByte1Click
        end
        object edtEdtBefSym1: TEdit
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
          OnChange = edtEdtBefSym1Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
      end
    end
    object Bt2: TButton
      Left = 10
      Top = 16
      Width = 77
      Height = 21
      Caption = 'Connect'
      TabOrder = 8
      OnClick = Bt2Click
    end
    object Button3: TButton
      Left = 86
      Top = 16
      Width = 77
      Height = 21
      Caption = 'Scan'
      TabOrder = 9
      OnClick = Button3Click
    end
    object grp4: TGroupBox
      Left = 304
      Top = 102
      Width = 257
      Height = 195
      TabOrder = 10
      OnClick = grp4Click
      object lbl3: TLabel
        Left = 6
        Top = 138
        Width = 44
        Height = 13
        Alignment = taCenter
        Caption = 'Received'
      end
      object lbl4: TLabel
        Left = 88
        Top = 138
        Width = 34
        Height = 13
        Alignment = taCenter
        Caption = 'Outout'
      end
      object lbl5: TLabel
        Left = 170
        Top = 138
        Width = 20
        Height = 13
        Alignment = taCenter
        Caption = 'Lost'
      end
      object ChFastRead1: TCheckBox
        Left = 6
        Top = 12
        Width = 209
        Height = 17
        Caption = 'Fast port reading (maximum CPU load)'
        TabOrder = 0
        OnClick = ChFastRead1Click
      end
      object grp15: TGroupBox
        Left = 6
        Top = 34
        Width = 243
        Height = 79
        Caption = 'Data receiver'
        TabOrder = 1
        OnClick = grp4Click
        object ChSendMainLog0: TCheckBox
          Left = 6
          Top = 18
          Width = 63
          Height = 17
          Caption = 'Main log'
          TabOrder = 0
          OnClick = ChSendMainLog0Click
        end
        object ChSendParser0: TCheckBox
          Left = 6
          Top = 36
          Width = 101
          Height = 17
          Caption = 'Parsers '
          TabOrder = 1
          OnClick = ChSendParser0Click
        end
        object ChSendAddPort0: TCheckBox
          Left = 6
          Top = 54
          Width = 103
          Height = 17
          Caption = 'Additional port 2'
          TabOrder = 2
          OnClick = ChSendAddPort0Click
        end
        object CheckBox4: TCheckBox
          Left = 112
          Top = 36
          Width = 97
          Height = 17
          Caption = 'Text file'
          TabOrder = 3
          OnClick = CheckBox4Click
        end
        object CheckBox5: TCheckBox
          Left = 112
          Top = 54
          Width = 97
          Height = 17
          Caption = 'Bin file'
          TabOrder = 4
          OnClick = CheckBox5Click
        end
        object ChSecondWindow0: TCheckBox
          Left = 112
          Top = 18
          Width = 97
          Height = 17
          Caption = 'Second log'
          TabOrder = 5
          OnClick = ChSecondWindow0Click
        end
        object Button1: TButton
          Left = 174
          Top = 36
          Width = 63
          Height = 35
          Hint = 'Open a text log file in Notepad'
          Caption = 'View file'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = Button1Click
        end
      end
      object req1: TStaticText
        Left = 6
        Top = 154
        Width = 79
        Height = 17
        Hint = 'Number of bytes received by the port'
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = grp4Click
      end
      object req3: TStaticText
        Left = 88
        Top = 154
        Width = 79
        Height = 17
        Hint = 'Number of bytes output to the receiver'
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = grp4Click
      end
      object req4: TStaticText
        Left = 170
        Top = 154
        Width = 79
        Height = 17
        Hint = 'Number of bytes lost due to intermediate ring buffer overflow'
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = grp4Click
      end
      object ChClrBuf0: TCheckBox
        Left = 6
        Top = 174
        Width = 179
        Height = 17
        Caption = 'Clear buffer when port is closed'
        TabOrder = 5
        OnClick = ChClrBuf0Click
      end
      object Bt6: TButton
        Left = 180
        Top = 174
        Width = 69
        Height = 17
        Caption = 'Res. buffer'
        TabOrder = 6
        OnClick = Bt6Click
      end
      object Bt11: TButton
        Left = 6
        Top = 116
        Width = 243
        Height = 20
        Caption = 'Port 1 log'
        TabOrder = 7
        OnClick = Bt11Click
      end
    end
    object Edt24: TEdit
      Left = 10
      Top = 42
      Width = 341
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 48
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
      Text = 'Edt24'
      OnChange = Edt24Change
    end
    object Bt1: TButton
      Left = 384
      Top = 42
      Width = 89
      Height = 20
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = Bt1Click
    end
    object Bt3: TButton
      Left = 472
      Top = 42
      Width = 89
      Height = 20
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = Bt3Click
    end
    object lst1: TListBox
      Left = 10
      Top = 62
      Width = 362
      Height = 234
      Ctl3D = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
      Visible = False
      OnClick = lst1Click
      OnExit = lst1Exit
    end
    object Bt8: TButton
      Left = 352
      Top = 42
      Width = 20
      Height = 20
      Caption = 'Bt8'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = Bt8Click
    end
    object grp17: TGroupBox
      Left = 572
      Top = 12
      Width = 335
      Height = 285
      Caption = 'Events'
      TabOrder = 16
      object grp18: TGroupBox
        Left = 6
        Top = 16
        Width = 323
        Height = 125
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        object Edt26: TEdit
          Left = 6
          Top = 12
          Width = 311
          Height = 19
          Hint = 
            'Received string (examples: '#39'test'#39',  '#39'01 02 F3'#39', '#39'1 44 250'#39' witho' +
            'ut quotes)'
          Ctl3D = False
          MaxLength = 127
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = Edt26Change
          OnClick = Edt26Click
        end
        object ChChangeBR: TCheckBox
          Left = 6
          Top = 36
          Width = 87
          Height = 17
          Caption = 'Set baudrate'
          TabOrder = 1
          OnClick = ChChangeBRClick
        end
        object Edt27: TEdit
          Left = 108
          Top = 34
          Width = 75
          Height = 19
          Ctl3D = False
          MaxLength = 7
          ParentCtl3D = False
          TabOrder = 2
          OnChange = Edt27Change
          OnExit = Edt27Exit
          OnKeyPress = Edt27KeyPress
        end
        object ChClosePort: TCheckBox
          Left = 6
          Top = 58
          Width = 71
          Height = 17
          Caption = 'Close port'
          TabOrder = 3
          OnClick = ChClosePortClick
        end
        object ChExpandWindow: TCheckBox
          Left = 6
          Top = 80
          Width = 97
          Height = 17
          Caption = 'Expand window'
          TabOrder = 4
          OnClick = ChExpandWindowClick
        end
        object ChSetColor: TCheckBox
          Left = 6
          Top = 102
          Width = 97
          Height = 17
          Caption = 'Highlight in color'
          TabOrder = 5
          OnClick = ChSetColorClick
        end
        object req10: TStaticText
          Left = 108
          Top = 100
          Width = 75
          Height = 19
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clHighlight
          ParentColor = False
          TabOrder = 6
          OnClick = req10Click
        end
        object ctxt1: TStaticText
          Left = 184
          Top = 62
          Width = 131
          Height = 27
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'ctxt1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
      end
      object grp19: TGroupBox
        Left = 6
        Top = 152
        Width = 323
        Height = 125
        TabOrder = 1
        object Edt28: TEdit
          Left = 6
          Top = 12
          Width = 311
          Height = 19
          Hint = 
            'Received string (examples: '#39'test'#39',  '#39'01 02 F3'#39', '#39'1 44 250'#39' witho' +
            'ut quotes)'
          Ctl3D = False
          MaxLength = 127
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = Edt28Change
          OnClick = Edt26Click
        end
        object CheckBox8: TCheckBox
          Left = 6
          Top = 36
          Width = 87
          Height = 17
          Caption = 'Set baudrate'
          TabOrder = 1
          OnClick = CheckBox8Click
        end
        object Edt29: TEdit
          Left = 108
          Top = 34
          Width = 75
          Height = 19
          Ctl3D = False
          MaxLength = 7
          ParentCtl3D = False
          TabOrder = 2
          OnChange = Edt29Change
          OnExit = Edt29Exit
          OnKeyPress = Edt29KeyPress
        end
        object CheckBox9: TCheckBox
          Left = 6
          Top = 58
          Width = 71
          Height = 17
          Caption = 'Close port'
          TabOrder = 3
          OnClick = CheckBox9Click
        end
        object CheckBox10: TCheckBox
          Left = 6
          Top = 80
          Width = 97
          Height = 17
          Caption = 'Expand window'
          TabOrder = 4
          OnClick = CheckBox10Click
        end
        object CheckBox11: TCheckBox
          Left = 6
          Top = 102
          Width = 97
          Height = 17
          Caption = 'Highlight in color'
          TabOrder = 5
          OnClick = CheckBox11Click
        end
        object req11: TStaticText
          Left = 108
          Top = 100
          Width = 75
          Height = 19
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clHighlight
          ParentColor = False
          TabOrder = 6
          OnClick = req11Click
        end
        object ctxt2: TStaticText
          Left = 184
          Top = 62
          Width = 131
          Height = 27
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'ctxt1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
      end
    end
  end
  object grp6: TGroupBox
    Left = 4
    Top = 328
    Width = 915
    Height = 305
    Caption = 'PORT 2'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 1
    OnClick = grp4Click
    object cbb8: TComboBox
      Left = 178
      Top = 16
      Width = 97
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
    object cbb9: TComboBox
      Left = 274
      Top = 16
      Width = 77
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = '1200'
      OnKeyPress = cbb2KeyPress
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
    object cbb10: TComboBox
      Left = 350
      Top = 16
      Width = 37
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 2
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cbb11: TComboBox
      Left = 386
      Top = 16
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'NO'
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object cbb12: TComboBox
      Left = 448
      Top = 16
      Width = 39
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object cbb13: TComboBox
      Left = 486
      Top = 16
      Width = 75
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'None'
      OnChange = cbb13Change
      Items.Strings = (
        'None'
        'RTS/CTS')
    end
    object grp7: TGroupBox
      Left = 10
      Top = 60
      Width = 551
      Height = 39
      TabOrder = 6
      OnClick = grp4Click
      object lbl10: TLabel
        Left = 375
        Top = 16
        Width = 82
        Height = 13
        Caption = 'Color in main log:'
      end
      object cbb14: TComboBox
        Left = 290
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
        TabOrder = 0
        OnChange = cbb14Change
        Items.Strings = (
          'ASCII'
          'HEX'
          'DEC'
          'CUSTOM')
      end
      object reqTime2: TStaticText
        Left = 6
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
        TabOrder = 1
      end
      object CheckBox1: TCheckBox
        Left = 72
        Top = 14
        Width = 55
        Height = 19
        Caption = 'PORT+'
        TabOrder = 2
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 132
        Top = 14
        Width = 51
        Height = 19
        Caption = 'TIME+'
        TabOrder = 3
        OnClick = CheckBox2Click
      end
      object CheckBox3: TCheckBox
        Left = 190
        Top = 14
        Width = 49
        Height = 19
        Caption = 'CNT+'
        TabOrder = 4
        OnClick = CheckBox3Click
      end
      object req2: TStaticText
        Left = 462
        Top = 12
        Width = 80
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = req2Click
      end
      object ChDir1: TCheckBox
        Left = 242
        Top = 14
        Width = 47
        Height = 19
        Caption = 'DIR+'
        TabOrder = 6
        OnClick = ChDir1Click
      end
    end
    object Button6: TButton
      Left = 10
      Top = 16
      Width = 77
      Height = 21
      Caption = 'Connect'
      TabOrder = 7
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 86
      Top = 16
      Width = 77
      Height = 21
      Caption = 'Scan'
      TabOrder = 8
      OnClick = Button7Click
    end
    object grp8: TGroupBox
      Left = 10
      Top = 102
      Width = 289
      Height = 195
      Caption = 'Line separator in log'
      TabOrder = 9
      object grp9: TGroupBox
        Left = 6
        Top = 14
        Width = 277
        Height = 41
        Caption = 'For ASCII mode only'
        TabOrder = 0
        object chk14: TCheckBox
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
          OnClick = chk14Click
        end
        object chk15: TCheckBox
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
          OnClick = chk15Click
        end
        object chk16: TCheckBox
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
          OnClick = chk16Click
        end
        object chk17: TCheckBox
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
          OnClick = chk17Click
        end
      end
      object chk18: TCheckBox
        Left = 16
        Top = 62
        Width = 55
        Height = 19
        Hint = 'Packet separator is the specified time interval'
        Caption = 'Pause'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = chk18Click
      end
      object edt1: TEdit
        Left = 66
        Top = 62
        Width = 49
        Height = 19
        Ctl3D = False
        MaxLength = 7
        ParentCtl3D = False
        TabOrder = 2
        Text = '9999999'
        OnChange = edt1Change
        OnKeyPress = edtEdtPauseRxKeyPress
      end
      object ud3: TUpDown
        Left = 116
        Top = 62
        Width = 17
        Height = 19
        Min = -32000
        Max = 32000
        Position = -200
        TabOrder = 3
        OnClick = ud3Click
      end
      object chk19: TCheckBox
        Left = 158
        Top = 62
        Width = 67
        Height = 19
        Hint = 'Data is split into packets of fixed length'
        Caption = 'Bytes rec'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = chk19Click
      end
      object edt3: TEdit
        Left = 222
        Top = 62
        Width = 33
        Height = 19
        Ctl3D = False
        MaxLength = 4
        ParentCtl3D = False
        TabOrder = 5
        Text = '9999'
        OnChange = edt3Change
        OnKeyPress = edtEdtPauseRxKeyPress
      end
      object ud4: TUpDown
        Left = 256
        Top = 62
        Width = 17
        Height = 19
        Max = 9999
        TabOrder = 6
        OnClick = ud4Click
      end
      object grp13: TGroupBox
        Left = 6
        Top = 86
        Width = 277
        Height = 65
        Caption = 'After sequence'
        TabOrder = 7
        object edt4: TEdit
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
          OnChange = edt4Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt5: TEdit
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
          OnChange = edt5Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt6: TEdit
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
          OnChange = edt6Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt7: TEdit
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
          OnChange = edt7Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object chk20: TCheckBox
          Left = 6
          Top = 18
          Width = 13
          Height = 17
          TabOrder = 4
          OnClick = chk20Click
        end
        object chk21: TCheckBox
          Left = 102
          Top = 18
          Width = 15
          Height = 17
          TabOrder = 5
          OnClick = chk21Click
        end
        object edt8: TEdit
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
          OnChange = edt8Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt9: TEdit
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
          OnChange = edt9Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt10: TEdit
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
          OnChange = edt10Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object chk22: TCheckBox
          Left = 178
          Top = 18
          Width = 15
          Height = 17
          TabOrder = 9
          OnClick = chk22Click
        end
        object edt11: TEdit
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
          OnChange = edt11Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt12: TEdit
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
          OnChange = edt12Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt13: TEdit
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
          OnChange = edt13Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object chk23: TCheckBox
          Left = 235
          Top = 18
          Width = 15
          Height = 17
          TabOrder = 13
          OnClick = chk23Click
        end
        object edt14: TEdit
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
          OnChange = edt14Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object chk24: TCheckBox
          Left = 235
          Top = 40
          Width = 15
          Height = 17
          TabOrder = 15
          OnClick = chk24Click
        end
        object chk25: TCheckBox
          Left = 6
          Top = 40
          Width = 13
          Height = 17
          TabOrder = 16
          OnClick = chk25Click
        end
        object edt15: TEdit
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
          OnChange = edt15Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt16: TEdit
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
          OnChange = edt16Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt17: TEdit
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
          OnChange = edt17Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt18: TEdit
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
          OnChange = edt18Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object chk26: TCheckBox
          Left = 102
          Top = 40
          Width = 15
          Height = 17
          TabOrder = 21
          OnClick = chk26Click
        end
        object edt19: TEdit
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
          OnChange = edt19Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt20: TEdit
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
          OnChange = edt20Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt21: TEdit
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
          OnChange = edt21Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object chk27: TCheckBox
          Left = 178
          Top = 40
          Width = 15
          Height = 17
          TabOrder = 25
          OnClick = chk27Click
        end
        object edt22: TEdit
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
          OnChange = edt22Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
        object edt23: TEdit
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
          OnChange = edt23Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edt99KeyPress
        end
      end
      object grp10: TGroupBox
        Left = 6
        Top = 151
        Width = 277
        Height = 37
        TabOrder = 8
        object lbl2: TLabel
          Left = 6
          Top = 12
          Width = 170
          Height = 13
          Caption = 'Before byte(experimental setting) :'
        end
        object chkChCBBefByte21: TCheckBox
          Left = 178
          Top = 12
          Width = 17
          Height = 17
          Hint = 'Experimental option'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = chkChCBBefByte21Click
        end
        object edtEdtBefSym21: TEdit
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
          OnChange = edtEdtBefSym21Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtBefSym21KeyPress
        end
        object chkChCBBefByte11: TCheckBox
          Left = 236
          Top = 12
          Width = 17
          Height = 17
          Hint = 'Experimental option'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = chkChCBBefByte11Click
        end
        object edtEdtBefSym11: TEdit
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
          OnChange = edtEdtBefSym11Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = edtEdtBefSym11KeyPress
        end
      end
    end
    object grp14: TGroupBox
      Left = 304
      Top = 102
      Width = 257
      Height = 195
      TabOrder = 10
      OnClick = grp4Click
      object lbl6: TLabel
        Left = 6
        Top = 138
        Width = 44
        Height = 13
        Alignment = taCenter
        Caption = 'Received'
      end
      object lbl7: TLabel
        Left = 88
        Top = 138
        Width = 34
        Height = 13
        Alignment = taCenter
        Caption = 'Output'
      end
      object lbl8: TLabel
        Left = 170
        Top = 138
        Width = 20
        Height = 13
        Alignment = taCenter
        Caption = 'Lost'
      end
      object ChFastRead2: TCheckBox
        Left = 6
        Top = 12
        Width = 221
        Height = 17
        Caption = 'Fast port reading (maximum CPU load)'
        TabOrder = 0
        OnClick = ChFastRead2Click
      end
      object grp16: TGroupBox
        Left = 6
        Top = 34
        Width = 243
        Height = 79
        Caption = 'Data receiver'
        TabOrder = 1
        OnClick = grp4Click
        object ChSendMainLog1: TCheckBox
          Left = 6
          Top = 18
          Width = 63
          Height = 17
          Caption = 'Main log'
          TabOrder = 0
          OnClick = ChSendMainLog1Click
        end
        object ChSendParser1: TCheckBox
          Left = 6
          Top = 36
          Width = 101
          Height = 17
          Caption = 'Parsers'
          TabOrder = 1
          OnClick = ChSendParser1Click
        end
        object ChSendAddPort1: TCheckBox
          Left = 6
          Top = 54
          Width = 103
          Height = 17
          Caption = 'Additional port 1'
          TabOrder = 2
          OnClick = ChSendAddPort1Click
        end
        object CheckBox6: TCheckBox
          Left = 112
          Top = 36
          Width = 97
          Height = 17
          Caption = 'Text file'
          TabOrder = 3
          OnClick = CheckBox6Click
        end
        object CheckBox7: TCheckBox
          Left = 112
          Top = 54
          Width = 97
          Height = 17
          Caption = 'Bin file'
          TabOrder = 4
          OnClick = CheckBox7Click
        end
        object ChSecondWindow1: TCheckBox
          Left = 112
          Top = 18
          Width = 97
          Height = 17
          Caption = 'Second log'
          TabOrder = 5
          OnClick = ChSecondWindow1Click
        end
        object Button2: TButton
          Left = 174
          Top = 36
          Width = 63
          Height = 35
          Hint = 'Open a text log file in Notepad'
          Caption = 'View file'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = Button2Click
        end
      end
      object req6: TStaticText
        Left = 170
        Top = 154
        Width = 79
        Height = 17
        Hint = 'Number of bytes lost due to intermediate ring buffer overflow'
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = grp4Click
      end
      object req7: TStaticText
        Left = 88
        Top = 154
        Width = 79
        Height = 17
        Hint = 'Number of bytes output to the receiver'
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = grp4Click
      end
      object req8: TStaticText
        Left = 6
        Top = 154
        Width = 79
        Height = 17
        Hint = 'Number of bytes received by the port'
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = grp4Click
      end
      object ChClrBuf1: TCheckBox
        Left = 6
        Top = 174
        Width = 179
        Height = 17
        Caption = 'Clear buffer when port is closed'
        TabOrder = 5
        OnClick = ChClrBuf1Click
      end
      object Bt7: TButton
        Left = 180
        Top = 174
        Width = 69
        Height = 17
        Caption = 'Res. buffer'
        TabOrder = 6
        OnClick = Bt7Click
      end
      object Bt12: TButton
        Left = 6
        Top = 116
        Width = 243
        Height = 20
        Caption = 'Port 2 log'
        TabOrder = 7
        OnClick = Bt12Click
      end
    end
    object Edt25: TEdit
      Left = 10
      Top = 42
      Width = 341
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 48
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
      Text = 'Edt25'
      OnChange = Edt25Change
    end
    object Bt4: TButton
      Left = 384
      Top = 42
      Width = 89
      Height = 20
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = Bt4Click
    end
    object Bt5: TButton
      Left = 472
      Top = 42
      Width = 89
      Height = 20
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = Bt5Click
    end
    object lst2: TListBox
      Left = 10
      Top = 62
      Width = 362
      Height = 234
      Ctl3D = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
      Visible = False
      OnClick = lst2Click
      OnExit = lst2Exit
    end
    object Bt9: TButton
      Left = 352
      Top = 42
      Width = 20
      Height = 20
      Caption = 'Bt8'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = Bt9Click
    end
    object grp20: TGroupBox
      Left = 572
      Top = 12
      Width = 335
      Height = 285
      Caption = 'Events'
      TabOrder = 16
      object grp21: TGroupBox
        Left = 6
        Top = 16
        Width = 323
        Height = 125
        TabOrder = 0
        object Edt30: TEdit
          Left = 6
          Top = 12
          Width = 311
          Height = 19
          Hint = 
            'Received string (examples: '#39'test'#39',  '#39'01 02 F3'#39', '#39'1 44 250'#39' witho' +
            'ut quotes)'
          Ctl3D = False
          MaxLength = 127
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = Edt30Change
          OnClick = Edt26Click
        end
        object CheckBox12: TCheckBox
          Left = 6
          Top = 36
          Width = 87
          Height = 17
          Caption = 'Set baudrate'
          TabOrder = 1
          OnClick = CheckBox12Click
        end
        object Edt31: TEdit
          Left = 108
          Top = 34
          Width = 75
          Height = 19
          Ctl3D = False
          MaxLength = 7
          ParentCtl3D = False
          TabOrder = 2
          OnChange = Edt31Change
          OnExit = Edt31Exit
          OnKeyPress = Edt31KeyPress
        end
        object CheckBox13: TCheckBox
          Left = 6
          Top = 58
          Width = 71
          Height = 17
          Caption = 'Close port'
          TabOrder = 3
          OnClick = CheckBox13Click
        end
        object CheckBox14: TCheckBox
          Left = 6
          Top = 80
          Width = 97
          Height = 17
          Caption = 'Expand window'
          TabOrder = 4
          OnClick = CheckBox14Click
        end
        object CheckBox15: TCheckBox
          Left = 6
          Top = 102
          Width = 97
          Height = 17
          Caption = 'Highlight in color'
          TabOrder = 5
          OnClick = CheckBox15Click
        end
        object req12: TStaticText
          Left = 108
          Top = 100
          Width = 75
          Height = 19
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clHighlight
          ParentColor = False
          TabOrder = 6
          OnClick = req12Click
        end
        object ctxt3: TStaticText
          Left = 184
          Top = 62
          Width = 131
          Height = 27
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'ctxt1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
      end
      object grp22: TGroupBox
        Left = 6
        Top = 152
        Width = 323
        Height = 125
        TabOrder = 1
        object Edt32: TEdit
          Left = 6
          Top = 12
          Width = 311
          Height = 19
          Hint = 
            'Received string (examples: '#39'test'#39',  '#39'01 02 F3'#39', '#39'1 44 250'#39' witho' +
            'ut quotes)'
          Ctl3D = False
          MaxLength = 127
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = Edt32Change
          OnClick = Edt26Click
        end
        object CheckBox16: TCheckBox
          Left = 6
          Top = 36
          Width = 87
          Height = 17
          Caption = 'Set baudrate'
          TabOrder = 1
          OnClick = CheckBox16Click
        end
        object Edt33: TEdit
          Left = 108
          Top = 34
          Width = 75
          Height = 19
          Ctl3D = False
          MaxLength = 7
          ParentCtl3D = False
          TabOrder = 2
          OnChange = Edt33Change
          OnExit = Edt33Exit
          OnKeyPress = Edt33KeyPress
        end
        object CheckBox17: TCheckBox
          Left = 6
          Top = 58
          Width = 71
          Height = 17
          Caption = 'Close port'
          TabOrder = 3
          OnClick = CheckBox17Click
        end
        object CheckBox18: TCheckBox
          Left = 6
          Top = 80
          Width = 97
          Height = 17
          Caption = 'Expand window'
          TabOrder = 4
          OnClick = CheckBox18Click
        end
        object CheckBox19: TCheckBox
          Left = 6
          Top = 102
          Width = 97
          Height = 17
          Caption = 'Highlight in color'
          TabOrder = 5
          OnClick = CheckBox19Click
        end
        object req13: TStaticText
          Left = 108
          Top = 100
          Width = 75
          Height = 19
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clHighlight
          ParentColor = False
          TabOrder = 6
          OnClick = req13Click
        end
        object ctxt4: TStaticText
          Left = 184
          Top = 62
          Width = 131
          Height = 27
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'ctxt1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
      end
    end
  end
  object req9: TStaticText
    Left = 4
    Top = 319
    Width = 915
    Height = 5
    AutoSize = False
    Color = clBackground
    ParentColor = False
    TabOrder = 2
  end
  object Bt10: TButton
    Left = 4
    Top = 634
    Width = 915
    Height = 23
    Caption = 'Bt10'
    TabOrder = 3
    OnClick = Bt10Click
  end
  object tmrTmrReadData: TTimer
    Interval = 1
    OnTimer = tmrTmrReadDataTimer
    Left = 520
    Top = 92
  end
  object dlgColor1: TColorDialog
    Left = 798
    Top = 266
  end
  object dlgOpenSelFile: TOpenDialog
    Left = 842
    Top = 266
  end
end
