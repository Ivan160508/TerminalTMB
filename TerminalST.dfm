object Form1: TForm1
  Left = 392
  Top = 169
  Width = 969
  Height = 765
  Caption = 'TerminalTMB v2_10'
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 969
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesktopCenter
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  DesignSize = (
    953
    726)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 2
    Width = 943
    Height = 25
    TabOrder = 0
    OnMouseMove = Panel1MouseMove
    object BTConnect: TButton
      Left = 66
      Top = 0
      Width = 65
      Height = 25
      Hint = 'Connect/Disconnect'
      Caption = 'Connect'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BTConnectClick
      OnMouseMove = BTConnectMouseMove
    end
    object FiltrLog: TEdit
      Left = 328
      Top = 2
      Width = 79
      Height = 21
      Hint = 'Message filter'
      Ctl3D = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      MaxLength = 250
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnChange = FiltrLogChange
      OnClick = FiltrLogClick
      OnExit = FiltrLogExit
      OnMouseMove = FiltrLogMouseMove
    end
    object BtOptConn: TButton
      Left = 130
      Top = 0
      Width = 65
      Height = 25
      Caption = 'Port'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtOptConnClick
    end
    object StartLog: TButton
      Left = 607
      Top = 0
      Width = 101
      Height = 25
      Hint = 'Ctrl write log in file'
      Caption = 'Start Log'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = StartLogClick
    end
    object AddWindow: TButton
      Left = 707
      Top = 0
      Width = 101
      Height = 25
      Hint = 'Add windiw log'
      Caption = 'Second log'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = AddWindowClick
    end
    object BtAddFunctions: TButton
      Left = 807
      Top = 0
      Width = 101
      Height = 25
      Caption = 'Add menu...'
      TabOrder = 5
      OnClick = BtAddFunctionsClick
    end
    object BtInfo: TButton
      Left = 910
      Top = 0
      Width = 29
      Height = 25
      Hint = 'Info'
      Caption = 'Info'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BtInfoClick
    end
    object AScroll: TCheckBox
      Left = 500
      Top = 4
      Width = 74
      Height = 17
      Hint = 
        'Preventing duplicate incoming packets from being displayed in th' +
        'e log window'
      Caption = 'Skip Reps'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = AScrollClick
    end
    object sendAnsBTBTLog: TButton
      Left = 196
      Top = 0
      Width = 65
      Height = 25
      Hint = 'Clear Log'
      Caption = 'Clear log'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = sendAnsBTBTLogClick
    end
    object sendAnsBTStartStop: TButton
      Left = 575
      Top = 0
      Width = 29
      Height = 25
      Hint = 'Start/Stop logout'
      Caption = '||'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = sendAnsBTStartStopClick
    end
    object Bt1: TButton
      Left = 260
      Top = 0
      Width = 65
      Height = 25
      Hint = 'Copy the contents of the main log window to the clipboard'
      Caption = 'Copy log'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = Bt1Click
    end
    object cbbFilterLOg: TComboBox
      Left = 408
      Top = 2
      Width = 85
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 2
      ParentFont = False
      TabOrder = 11
      Text = 'No filter'
      OnChange = cbbFilterLOgChange
      Items.Strings = (
        'Capture'
        'Out in log'
        'No filter'
        'No out in log')
    end
    object Bt22: TButton
      Left = 0
      Top = 0
      Width = 65
      Height = 25
      Caption = 'Terminals'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = Bt22Click
    end
  end
  object MainPanel: TPanel
    Left = 6
    Top = 452
    Width = 937
    Height = 269
    Anchors = [akLeft, akBottom]
    TabOrder = 1
    OnClick = MainPanelClick
    OnMouseMove = MainPanelMouseMove
    DesignSize = (
      937
      269)
    object LPlus: TLabel
      Left = 654
      Top = 4
      Width = 13
      Height = 24
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object STLog: TStaticText
      Left = 96
      Top = 244
      Width = 551
      Height = 17
      Anchors = [akLeft, akBottom]
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Log file is not written'
      TabOrder = 0
    end
    object MainStrCmd: TEdit
      Left = 6
      Top = 4
      Width = 623
      Height = 21
      Hint = #1050#1086#1084#1072#1085#1076#1085#1072#1103' '#1089#1090#1088#1086#1082#1072
      Anchors = [akLeft, akBottom]
      Ctl3D = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnChange = MainStrCmdChange
      OnKeyPress = MainStrCmdKeyPress
      OnKeyUp = MainStrCmdKeyUp
      OnMouseMove = MainStrCmdMouseMove
    end
    object AddStrCmd: TEdit
      Left = 674
      Top = 4
      Width = 219
      Height = 21
      Hint = 
        'Example: $0D$0A, *[XOR_8 (1..n)]$0D$0A. The list of algorithms f' +
        'or the counting of the control sum is controlled by pressing the' +
        ' "Down arrow".'
      Anchors = [akBottom]
      Ctl3D = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '$0D'
      OnChange = AddStrCmdChange
      OnExit = AddStrCmdExit
      OnKeyPress = AddStrCmdKeyPress
      OnKeyUp = AddStrCmdKeyUp
      OnMouseMove = AddStrCmdMouseMove
    end
    object StaticText3: TStaticText
      Left = 674
      Top = 244
      Width = 177
      Height = 17
      Hint = 
        'T : Bytes sent, R : received, O : displayed in the log or file, ' +
        'OF: overflow(max owerflow) buf % '
      Anchors = [akBottom]
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'TX: 0, RX: 0'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = StaticText3Click
    end
    object STH1: TStaticText
      Left = 674
      Top = 50
      Width = 261
      Height = 17
      Alignment = taCenter
      Anchors = [akBottom]
      AutoSize = False
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object STH2: TStaticText
      Left = 674
      Top = 66
      Width = 261
      Height = 17
      Anchors = [akBottom]
      AutoSize = False
      Color = clCream
      ParentColor = False
      TabOrder = 5
    end
    object STH3: TStaticText
      Left = 674
      Top = 82
      Width = 261
      Height = 17
      Anchors = [akBottom]
      AutoSize = False
      Color = clCream
      ParentColor = False
      TabOrder = 6
    end
    object STH4: TStaticText
      Left = 674
      Top = 98
      Width = 261
      Height = 17
      Anchors = [akBottom]
      AutoSize = False
      Color = clCream
      ParentColor = False
      TabOrder = 7
    end
    object STH5: TStaticText
      Left = 674
      Top = 114
      Width = 261
      Height = 17
      Anchors = [akBottom]
      AutoSize = False
      Color = clCream
      ParentColor = False
      TabOrder = 8
    end
    object STH6: TStaticText
      Left = 674
      Top = 130
      Width = 261
      Height = 17
      Anchors = [akBottom]
      AutoSize = False
      Color = clCream
      ParentColor = False
      TabOrder = 9
    end
    object STH7: TStaticText
      Left = 674
      Top = 146
      Width = 261
      Height = 17
      Anchors = [akBottom]
      AutoSize = False
      Color = clCream
      ParentColor = False
      TabOrder = 10
    end
    object STH8: TStaticText
      Left = 674
      Top = 162
      Width = 261
      Height = 17
      Anchors = [akBottom]
      AutoSize = False
      Color = clCream
      ParentColor = False
      TabOrder = 11
    end
    object STH9: TStaticText
      Left = 674
      Top = 178
      Width = 261
      Height = 17
      Anchors = [akBottom]
      AutoSize = False
      Color = clCream
      ParentColor = False
      TabOrder = 12
    end
    object STH10: TStaticText
      Left = 674
      Top = 194
      Width = 261
      Height = 17
      Anchors = [akBottom]
      AutoSize = False
      Color = clCream
      ParentColor = False
      TabOrder = 13
    end
    object STH11: TStaticText
      Left = 674
      Top = 210
      Width = 261
      Height = 17
      Anchors = [akBottom]
      AutoSize = False
      Color = clCream
      ParentColor = False
      TabOrder = 14
    end
    object STH12: TStaticText
      Left = 674
      Top = 226
      Width = 261
      Height = 17
      Anchors = [akBottom]
      AutoSize = False
      Color = clCream
      ParentColor = False
      TabOrder = 15
    end
    object STListName: TStaticText
      Left = 6
      Top = 28
      Width = 507
      Height = 21
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'STListName'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 16
      OnDblClick = STListNameDblClick
    end
    object ListNameEDT: TEdit
      Left = 6
      Top = 28
      Width = 507
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 150
      ParentFont = False
      TabOrder = 17
      Text = 'ListNameEDT'
      Visible = False
      OnChange = ListNameEDTChange
      OnKeyPress = ListNameEDTKeyPress
    end
    object RBName: TRadioButton
      Left = 522
      Top = 28
      Width = 57
      Height = 21
      Caption = 'Name'
      Checked = True
      TabOrder = 18
      TabStop = True
      OnClick = RBNameClick
    end
    object RbData: TRadioButton
      Left = 580
      Top = 28
      Width = 73
      Height = 21
      Caption = 'Command'
      TabOrder = 19
      OnClick = RbDataClick
    end
    object StaticText1: TStaticText
      Left = 96
      Top = 244
      Width = 407
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 
        'Double click on the command will open the full macro editing win' +
        'dow'
      Color = clYellow
      ParentColor = False
      TabOrder = 20
      Visible = False
      OnClick = StaticText1Click
    end
    object BTResetCnt: TButton
      Left = 840
      Top = 244
      Width = 13
      Height = 17
      Caption = 'R'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      OnClick = BTResetCntClick
    end
    object PStats: TPanel
      Left = 674
      Top = 48
      Width = 263
      Height = 193
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 22
      Visible = False
      object LSend: TLabel
        Left = 8
        Top = 8
        Width = 31
        Height = 13
        Hint = #1063#1080#1089#1083#1086' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1085#1099#1093' '#1087#1072#1082#1077#1090#1086#1074' '#1089' '#1091#1095#1105#1090#1086#1084' '#1085#1072#1089#1090#1088#1086#1077#1082' '#1092#1080#1083#1100#1090#1088#1072
        Caption = 'LSend'
        ParentShowHint = False
        ShowHint = True
      end
      object LRead: TLabel
        Left = 8
        Top = 24
        Width = 32
        Height = 13
        Hint = #1063#1080#1089#1083#1086' '#1087#1088#1080#1085#1103#1090#1099#1093' '#1087#1072#1082#1077#1090#1086#1074' '#1089' '#1091#1095#1105#1090#1086#1084' '#1085#1072#1089#1090#1088#1086#1077#1082' '#1092#1080#1083#1100#1090#1088#1072
        Caption = 'LRead'
        ParentShowHint = False
        ShowHint = True
      end
      object MinTimeWait: TLabel
        Left = 96
        Top = 8
        Width = 62
        Height = 13
        Hint = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1074#1088#1077#1084#1103' '#1084#1077#1078#1076#1091' '#1087#1088#1080#1085#1103#1090#1099#1084#1080' '#1087#1072#1082#1077#1090#1072#1084#1080
        Caption = 'MinTimeWait'
        ParentShowHint = False
        ShowHint = True
      end
      object MaxTimeWait: TLabel
        Left = 96
        Top = 24
        Width = 65
        Height = 13
        Hint = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1074#1088#1077#1084#1103' '#1084#1077#1078#1076#1091' '#1087#1088#1080#1085#1103#1090#1099#1084#1080' '#1087#1072#1082#1077#1090#1072#1084#1080
        Caption = 'MaxTimeWait'
        ParentShowHint = False
        ShowHint = True
      end
      object SendFileLavel: TLabel
        Left = 8
        Top = 56
        Width = 62
        Height = 13
        Caption = 'SendFile 0 0 '
      end
      object CntCmpLvl: TLabel
        Left = 8
        Top = 40
        Width = 60
        Height = 13
        Hint = #1057#1095#1105#1090#1095#1080#1082' '#1085#1072#1081#1076#1077#1085#1085#1099#1093' '#1092#1088#1072#1075#1084#1077#1090#1086#1074' '#1080#1079' '#1086#1082#1085#1072' '#1092#1080#1083#1100#1090#1088#1072
        Caption = 'Match cnt: 0'
        ParentShowHint = False
        ShowHint = True
      end
      object lblLostData: TLabel
        Left = 8
        Top = 72
        Width = 56
        Height = 13
        Caption = 'Lost data: 0'
      end
      object BTClrStat: TButton
        Left = 248
        Top = 2
        Width = 13
        Height = 19
        Hint = #1054#1073#1085#1091#1083#1080#1090#1100' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1091
        Caption = 'R'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BTClrStatClick
      end
      object EventLog: TMemo
        Left = 8
        Top = 88
        Width = 251
        Height = 97
        Hint = 'The event log'
        Color = clMoneyGreen
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'FileNameMemo')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ScrollBars = ssVertical
        ShowHint = True
        TabOrder = 1
        OnClick = EventLogClick
      end
    end
    object ButtonReadFile: TButton
      Left = 674
      Top = 28
      Width = 89
      Height = 21
      Anchors = [akBottom]
      Caption = 'Cmd file...'
      TabOrder = 23
      OnClick = ButtonReadFileClick
      OnMouseMove = ButtonReadFileMouseMove
    end
    object OpenBinBT: TButton
      Left = 502
      Top = 244
      Width = 73
      Height = 17
      Hint = 'Open the binary log file for viewing'
      Caption = 'Open bin log'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 24
      OnClick = OpenBinBTClick
    end
    object OpenLogBT: TButton
      Left = 574
      Top = 244
      Width = 73
      Height = 17
      Hint = 'Open a text log file for viewing'
      Caption = 'Open text log'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 25
      OnClick = OpenLogBTClick
    end
    object TabEditCmd: TTabControl
      Left = 6
      Top = 50
      Width = 661
      Height = 193
      MultiLine = True
      TabOrder = 26
      TabPosition = tpRight
      Tabs.Strings = (
        'Macros '
        'Edit '
        'HKey'
        'Joyst')
      TabIndex = 0
      OnChange = TabEditCmdChange
      OnDrawTab = TabEditCmdDrawTab
      DesignSize = (
        661
        193)
      object Edit1: TEdit
        Left = 0
        Top = 0
        Width = 89
        Height = 25
        AutoSize = False
        Ctl3D = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = 'Edit1'
        Visible = False
      end
      object Edit9: TEdit
        Left = 88
        Top = 0
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 1
        Text = 'Edit9'
        Visible = False
      end
      object Edit17: TEdit
        Left = 176
        Top = 0
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 2
        Text = 'Edit17'
        Visible = False
      end
      object Edit2: TEdit
        Left = 0
        Top = 24
        Width = 89
        Height = 25
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 3
        Text = 'Edit2'
        Visible = False
      end
      object Edit10: TEdit
        Left = 88
        Top = 24
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 4
        Text = 'Edit10'
        Visible = False
      end
      object Edit18: TEdit
        Left = 176
        Top = 24
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 5
        Text = 'Edit18'
        Visible = False
      end
      object Edit3: TEdit
        Left = 0
        Top = 48
        Width = 89
        Height = 25
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 6
        Text = 'Edit3'
        Visible = False
      end
      object Edit11: TEdit
        Left = 88
        Top = 48
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 7
        Text = 'Edit11'
        Visible = False
      end
      object Edit19: TEdit
        Left = 176
        Top = 48
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 8
        Text = 'Edit19'
        Visible = False
      end
      object Edit4: TEdit
        Left = 0
        Top = 72
        Width = 89
        Height = 25
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 9
        Text = 'Edit4'
        Visible = False
      end
      object Edit12: TEdit
        Left = 88
        Top = 72
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 10
        Text = 'Edit12'
        Visible = False
      end
      object Edit20: TEdit
        Left = 176
        Top = 72
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 11
        Text = 'Edit20'
        Visible = False
      end
      object Edit5: TEdit
        Left = 0
        Top = 96
        Width = 89
        Height = 25
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 12
        Text = 'Edit5'
        Visible = False
      end
      object Edit13: TEdit
        Left = 88
        Top = 96
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 13
        Text = 'Edit13'
        Visible = False
      end
      object Edit21: TEdit
        Left = 176
        Top = 96
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 14
        Text = 'Edit21'
        Visible = False
      end
      object Edit6: TEdit
        Left = 0
        Top = 120
        Width = 89
        Height = 25
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 15
        Text = 'Edit6'
        Visible = False
      end
      object Edit14: TEdit
        Left = 88
        Top = 120
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 16
        Text = 'Edit14'
        Visible = False
      end
      object Edit22: TEdit
        Left = 176
        Top = 120
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 17
        Text = 'Edit22'
        Visible = False
      end
      object Edit7: TEdit
        Left = 0
        Top = 144
        Width = 89
        Height = 25
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 18
        Text = 'Edit7'
        Visible = False
      end
      object Edit15: TEdit
        Left = 88
        Top = 144
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 19
        Text = 'Edit15'
        Visible = False
      end
      object Edit23: TEdit
        Left = 176
        Top = 144
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 20
        Text = 'Edit23'
        Visible = False
      end
      object Edit8: TEdit
        Left = 0
        Top = 168
        Width = 89
        Height = 25
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 21
        Text = 'Edit8'
        Visible = False
      end
      object Edit16: TEdit
        Left = 88
        Top = 168
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 22
        Text = 'Edit16'
        Visible = False
      end
      object Edit24: TEdit
        Left = 176
        Top = 168
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 23
        Text = 'Edit24'
        Visible = False
      end
      object Edit25: TEdit
        Left = 264
        Top = 0
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 24
        Text = 'Edit25'
        Visible = False
      end
      object Edit33: TEdit
        Left = 352
        Top = 0
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 25
        Text = 'Edit33'
        Visible = False
      end
      object Edit41: TEdit
        Left = 440
        Top = 0
        Width = 201
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 26
        Text = 'Edit41'
        Visible = False
      end
      object Edit26: TEdit
        Left = 264
        Top = 24
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 27
        Text = 'Edit26'
        Visible = False
      end
      object Edit34: TEdit
        Left = 352
        Top = 24
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 28
        Text = 'Edit34'
        Visible = False
      end
      object Edit42: TEdit
        Left = 440
        Top = 24
        Width = 201
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 29
        Text = 'Edit42'
        Visible = False
      end
      object Edit27: TEdit
        Left = 264
        Top = 48
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 30
        Text = 'Edit27'
        Visible = False
      end
      object Edit35: TEdit
        Left = 352
        Top = 48
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 31
        Text = 'Edit35'
        Visible = False
      end
      object Edit43: TEdit
        Left = 440
        Top = 48
        Width = 201
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 32
        Text = 'Edit43'
        Visible = False
      end
      object Edit28: TEdit
        Left = 264
        Top = 72
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 33
        Text = 'Edit28'
        Visible = False
      end
      object Edit36: TEdit
        Left = 352
        Top = 72
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 34
        Text = 'Edit36'
        Visible = False
      end
      object Edit44: TEdit
        Left = 440
        Top = 72
        Width = 201
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 35
        Text = 'Edit44'
        Visible = False
      end
      object Edit29: TEdit
        Left = 264
        Top = 96
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 36
        Text = 'Edit29'
        Visible = False
      end
      object Edit37: TEdit
        Left = 352
        Top = 96
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 37
        Text = 'Edit37'
        Visible = False
      end
      object Edit45: TEdit
        Left = 440
        Top = 96
        Width = 201
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 38
        Text = 'Edit45'
        Visible = False
      end
      object Edit46: TEdit
        Left = 440
        Top = 120
        Width = 201
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 39
        Text = 'Edit46'
        Visible = False
      end
      object Edit38: TEdit
        Left = 352
        Top = 120
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 40
        Text = 'Edit38'
        Visible = False
      end
      object Edit30: TEdit
        Left = 264
        Top = 120
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 41
        Text = 'Edit30'
        Visible = False
      end
      object Edit31: TEdit
        Left = 264
        Top = 144
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 42
        Text = 'Edit31'
        Visible = False
      end
      object Edit39: TEdit
        Left = 352
        Top = 144
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 43
        Text = 'Edit39'
        Visible = False
      end
      object Edit47: TEdit
        Left = 440
        Top = 144
        Width = 201
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 44
        Text = 'Edit47'
        Visible = False
      end
      object Edit48: TEdit
        Left = 440
        Top = 168
        Width = 201
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 45
        Text = 'Edit48'
        Visible = False
      end
      object Edit40: TEdit
        Left = 352
        Top = 168
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 46
        Text = 'Edit40'
        Visible = False
      end
      object Edit32: TEdit
        Left = 264
        Top = 168
        Width = 89
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 47
        Text = 'Edit32'
        Visible = False
      end
      object Button1: TButton
        Left = 0
        Top = 0
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button1'
        TabOrder = 48
      end
      object Button2: TButton
        Left = 0
        Top = 24
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button2'
        TabOrder = 49
      end
      object Button3: TButton
        Left = 0
        Top = 48
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button3'
        TabOrder = 50
      end
      object Button4: TButton
        Left = 0
        Top = 72
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button4'
        TabOrder = 51
      end
      object Button5: TButton
        Left = 0
        Top = 96
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button5'
        TabOrder = 52
      end
      object Button6: TButton
        Left = 0
        Top = 120
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button6'
        TabOrder = 53
      end
      object Button7: TButton
        Left = 0
        Top = 144
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button7'
        TabOrder = 54
      end
      object Button8: TButton
        Left = 0
        Top = 168
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button8'
        TabOrder = 55
      end
      object Button9: TButton
        Left = 88
        Top = 0
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button9'
        TabOrder = 56
      end
      object Button10: TButton
        Left = 88
        Top = 24
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button10'
        TabOrder = 57
      end
      object Button11: TButton
        Left = 88
        Top = 48
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button11'
        TabOrder = 58
      end
      object Button12: TButton
        Left = 88
        Top = 72
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button12'
        TabOrder = 59
      end
      object Button13: TButton
        Left = 88
        Top = 96
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button13'
        TabOrder = 60
      end
      object Button14: TButton
        Left = 88
        Top = 120
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button14'
        TabOrder = 61
      end
      object Button15: TButton
        Left = 88
        Top = 144
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button15'
        TabOrder = 62
      end
      object Button16: TButton
        Left = 88
        Top = 168
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button16'
        TabOrder = 63
      end
      object Button17: TButton
        Left = 176
        Top = 0
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button17'
        TabOrder = 64
      end
      object Button25: TButton
        Left = 264
        Top = 0
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button25'
        TabOrder = 65
      end
      object Button33: TButton
        Left = 352
        Top = 0
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button33'
        TabOrder = 66
      end
      object Button41: TButton
        Left = 440
        Top = 0
        Width = 201
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button41'
        TabOrder = 67
      end
      object Button18: TButton
        Left = 176
        Top = 24
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button18'
        TabOrder = 68
      end
      object Button26: TButton
        Left = 264
        Top = 24
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button26'
        TabOrder = 69
      end
      object Button34: TButton
        Left = 352
        Top = 24
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button34'
        TabOrder = 70
      end
      object Button42: TButton
        Left = 440
        Top = 24
        Width = 201
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button42'
        TabOrder = 71
      end
      object Button19: TButton
        Left = 176
        Top = 48
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button19'
        TabOrder = 72
      end
      object Button27: TButton
        Left = 264
        Top = 48
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button27'
        TabOrder = 73
      end
      object Button35: TButton
        Left = 352
        Top = 48
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button35'
        TabOrder = 74
      end
      object Button43: TButton
        Left = 440
        Top = 48
        Width = 201
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button43'
        TabOrder = 75
      end
      object Button20: TButton
        Left = 176
        Top = 72
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button20'
        TabOrder = 76
      end
      object Button28: TButton
        Left = 264
        Top = 72
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button28'
        TabOrder = 77
      end
      object Button36: TButton
        Left = 352
        Top = 72
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button36'
        TabOrder = 78
      end
      object Button44: TButton
        Left = 440
        Top = 72
        Width = 201
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button44'
        TabOrder = 79
      end
      object Button21: TButton
        Left = 176
        Top = 96
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button21'
        TabOrder = 80
      end
      object Button29: TButton
        Left = 264
        Top = 96
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button29'
        TabOrder = 81
      end
      object Button37: TButton
        Left = 352
        Top = 96
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button37'
        TabOrder = 82
      end
      object Button45: TButton
        Left = 440
        Top = 96
        Width = 201
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button45'
        TabOrder = 83
      end
      object Button22: TButton
        Left = 176
        Top = 120
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button22'
        TabOrder = 84
      end
      object Button30: TButton
        Left = 264
        Top = 120
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button30'
        TabOrder = 85
      end
      object Button38: TButton
        Left = 352
        Top = 120
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button38'
        TabOrder = 86
      end
      object Button46: TButton
        Left = 440
        Top = 120
        Width = 201
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button46'
        TabOrder = 87
      end
      object Button23: TButton
        Left = 176
        Top = 144
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button23'
        TabOrder = 88
      end
      object Button31: TButton
        Left = 264
        Top = 144
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button31'
        TabOrder = 89
      end
      object Button39: TButton
        Left = 352
        Top = 144
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button39'
        TabOrder = 90
      end
      object Button47: TButton
        Left = 440
        Top = 144
        Width = 201
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button47'
        TabOrder = 91
      end
      object Button24: TButton
        Left = 176
        Top = 168
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button24'
        TabOrder = 92
      end
      object Button32: TButton
        Left = 264
        Top = 168
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button32'
        TabOrder = 93
      end
      object Button40: TButton
        Left = 352
        Top = 168
        Width = 89
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button40'
        TabOrder = 94
      end
      object Button48: TButton
        Left = 440
        Top = 168
        Width = 201
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Button48'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 95
      end
      object Edt1: TEdit
        Left = 2
        Top = 0
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 96
        Text = 'Edt1'
      end
      object Edt3: TEdit
        Left = 2
        Top = 24
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 97
        Text = 'Edt1'
      end
      object Edt4: TEdit
        Left = 2
        Top = 48
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 98
        Text = 'Edt1'
      end
      object Edt5: TEdit
        Left = 2
        Top = 72
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 99
        Text = 'Edt1'
      end
      object Edt6: TEdit
        Left = 2
        Top = 96
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 100
        Text = 'Edt1'
      end
      object Edt7: TEdit
        Left = 2
        Top = 120
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 101
        Text = 'Edt1'
      end
      object Edt8: TEdit
        Left = 2
        Top = 144
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 102
        Text = 'Edt1'
      end
      object Edt9: TEdit
        Left = 2
        Top = 168
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 103
        Text = 'Edt1'
      end
      object Edt10: TEdit
        Left = 90
        Top = 0
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 104
        Text = 'Edt1'
      end
      object Edt11: TEdit
        Left = 90
        Top = 24
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 105
        Text = 'Edt1'
      end
      object Edt12: TEdit
        Left = 90
        Top = 48
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 106
        Text = 'Edt1'
      end
      object Edt13: TEdit
        Left = 90
        Top = 72
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 107
        Text = 'Edt1'
      end
      object Edt14: TEdit
        Left = 90
        Top = 96
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 108
        Text = 'Edt1'
      end
      object Edt15: TEdit
        Left = 90
        Top = 120
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 109
        Text = 'Edt1'
      end
      object Edt16: TEdit
        Left = 90
        Top = 144
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 110
        Text = 'Edt1'
      end
      object Edt17: TEdit
        Left = 90
        Top = 168
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 111
        Text = 'Edt1'
      end
      object Edt18: TEdit
        Left = 178
        Top = 0
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 112
        Text = 'Edt1'
      end
      object Edt19: TEdit
        Left = 178
        Top = 24
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 113
        Text = 'Edt1'
      end
      object Edt20: TEdit
        Left = 178
        Top = 48
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 114
        Text = 'Edt1'
      end
      object Edt21: TEdit
        Left = 178
        Top = 72
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 115
        Text = 'Edt1'
      end
      object Edt22: TEdit
        Left = 178
        Top = 96
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 116
        Text = 'Edt1'
      end
      object Edt23: TEdit
        Left = 178
        Top = 120
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 117
        Text = 'Edt1'
      end
      object Edt24: TEdit
        Left = 178
        Top = 144
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 118
        Text = 'Edt1'
      end
      object Edt25: TEdit
        Left = 178
        Top = 168
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 119
        Text = 'Edt1'
      end
      object Edt26: TEdit
        Left = 266
        Top = 0
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 120
        Text = 'Edt1'
      end
      object Edt27: TEdit
        Left = 266
        Top = 24
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 121
        Text = 'Edt1'
      end
      object Edt28: TEdit
        Left = 266
        Top = 48
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 122
        Text = 'Edt1'
      end
      object Edt29: TEdit
        Left = 266
        Top = 72
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 123
        Text = 'Edt1'
      end
      object Edt30: TEdit
        Left = 266
        Top = 96
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 124
        Text = 'Edt1'
      end
      object Edt31: TEdit
        Left = 266
        Top = 120
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 125
        Text = 'Edt1'
      end
      object Edt32: TEdit
        Left = 266
        Top = 144
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 126
        Text = 'Edt1'
      end
      object Edt33: TEdit
        Left = 266
        Top = 168
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 127
        Text = 'Edt1'
      end
      object Edt34: TEdit
        Left = 354
        Top = 0
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 128
        Text = 'Edt1'
      end
      object Edt35: TEdit
        Left = 354
        Top = 24
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 129
        Text = 'Edt1'
      end
      object Edt36: TEdit
        Left = 354
        Top = 48
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 130
        Text = 'Edt1'
      end
      object Edt37: TEdit
        Left = 354
        Top = 72
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 131
        Text = 'Edt1'
      end
      object Edt38: TEdit
        Left = 354
        Top = 96
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 132
        Text = 'Edt1'
      end
      object Edt39: TEdit
        Left = 354
        Top = 120
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 133
        Text = 'Edt1'
      end
      object Edt40: TEdit
        Left = 354
        Top = 144
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 134
        Text = 'Edt1'
      end
      object Edt41: TEdit
        Left = 354
        Top = 168
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 135
        Text = 'Edt1'
      end
      object Edt42: TEdit
        Left = 442
        Top = 0
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 136
        Text = 'Edt1'
      end
      object Edt43: TEdit
        Left = 442
        Top = 24
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 137
        Text = 'Edt1'
      end
      object Edt44: TEdit
        Left = 442
        Top = 48
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 138
        Text = 'Edt1'
      end
      object Edt45: TEdit
        Left = 442
        Top = 72
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 139
        Text = 'Edt1'
      end
      object Edt46: TEdit
        Left = 442
        Top = 96
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 140
        Text = 'Edt1'
      end
      object Edt47: TEdit
        Left = 442
        Top = 120
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 141
        Text = 'Edt1'
      end
      object Edt48: TEdit
        Left = 442
        Top = 144
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 142
        Text = 'Edt1'
      end
      object Edt49: TEdit
        Left = 442
        Top = 168
        Width = 23
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 143
        Text = 'Edt1'
      end
      object Edt50: TEdit
        Left = 2
        Top = 0
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 144
        Text = 'Edt50'
      end
      object Edt51: TEdit
        Left = 2
        Top = 24
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 145
        Text = 'Edt50'
      end
      object Edt52: TEdit
        Left = 2
        Top = 48
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 146
        Text = 'Edt50'
      end
      object Edt53: TEdit
        Left = 2
        Top = 72
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 147
        Text = 'Edt50'
      end
      object Edt54: TEdit
        Left = 2
        Top = 96
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 148
        Text = 'Edt50'
      end
      object Edt55: TEdit
        Left = 2
        Top = 120
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 149
        Text = 'Edt50'
      end
      object Edt56: TEdit
        Left = 2
        Top = 144
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 150
        Text = 'Edt50'
      end
      object Edt57: TEdit
        Left = 2
        Top = 168
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 151
        Text = 'Edt50'
      end
      object Edt58: TEdit
        Left = 88
        Top = 0
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 152
        Text = 'Edt50'
      end
      object Edt59: TEdit
        Left = 88
        Top = 24
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 153
        Text = 'Edt50'
      end
      object Edt60: TEdit
        Left = 88
        Top = 48
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 154
        Text = 'Edt50'
      end
      object Edt61: TEdit
        Left = 88
        Top = 72
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 155
        Text = 'Edt50'
      end
      object Edt62: TEdit
        Left = 88
        Top = 96
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 156
        Text = 'Edt50'
      end
      object Edt63: TEdit
        Left = 88
        Top = 120
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 157
        Text = 'Edt50'
      end
      object Edt64: TEdit
        Left = 88
        Top = 144
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 158
        Text = 'Edt50'
      end
      object Edt65: TEdit
        Left = 88
        Top = 168
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 159
        Text = 'Edt50'
      end
      object Edt66: TEdit
        Left = 176
        Top = 0
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 160
        Text = 'Edt50'
      end
      object Edt67: TEdit
        Left = 176
        Top = 24
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 161
        Text = 'Edt50'
      end
      object Edt68: TEdit
        Left = 176
        Top = 48
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 162
        Text = 'Edt50'
      end
      object Edt69: TEdit
        Left = 176
        Top = 72
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 163
        Text = 'Edt50'
      end
      object Edt70: TEdit
        Left = 176
        Top = 96
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 164
        Text = 'Edt50'
      end
      object Edt71: TEdit
        Left = 176
        Top = 120
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 165
        Text = 'Edt50'
      end
      object Edt72: TEdit
        Left = 176
        Top = 144
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 166
        Text = 'Edt50'
      end
      object Edt73: TEdit
        Left = 176
        Top = 168
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 167
        Text = 'Edt50'
      end
      object Edt74: TEdit
        Left = 264
        Top = 0
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 168
        Text = 'Edt50'
      end
      object Edt75: TEdit
        Left = 264
        Top = 24
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 169
        Text = 'Edt50'
      end
      object Edt76: TEdit
        Left = 264
        Top = 48
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 170
        Text = 'Edt50'
      end
      object Edt77: TEdit
        Left = 264
        Top = 72
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 171
        Text = 'Edt50'
      end
      object Edt78: TEdit
        Left = 264
        Top = 96
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 172
        Text = 'Edt50'
      end
      object Edt79: TEdit
        Left = 264
        Top = 120
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 173
        Text = 'Edt50'
      end
      object Edt80: TEdit
        Left = 264
        Top = 144
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 174
        Text = 'Edt50'
      end
      object Edt81: TEdit
        Left = 264
        Top = 168
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 175
        Text = 'Edt50'
      end
      object Edt82: TEdit
        Left = 352
        Top = 0
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 176
        Text = 'Edt50'
      end
      object Edt83: TEdit
        Left = 352
        Top = 24
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 177
        Text = 'Edt50'
      end
      object Edt84: TEdit
        Left = 352
        Top = 48
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 178
        Text = 'Edt50'
      end
      object Edt85: TEdit
        Left = 352
        Top = 72
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 179
        Text = 'Edt50'
      end
      object Edt86: TEdit
        Left = 352
        Top = 96
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 180
        Text = 'Edt50'
      end
      object Edt87: TEdit
        Left = 352
        Top = 120
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 181
        Text = 'Edt50'
      end
      object Edt88: TEdit
        Left = 352
        Top = 144
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 182
        Text = 'Edt50'
      end
      object Edt89: TEdit
        Left = 352
        Top = 168
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 183
        Text = 'Edt50'
      end
      object Edt90: TEdit
        Left = 440
        Top = 0
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 184
        Text = 'Edt50'
      end
      object Edt91: TEdit
        Left = 440
        Top = 24
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 185
        Text = 'Edt50'
      end
      object Edt92: TEdit
        Left = 440
        Top = 48
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 186
        Text = 'Edt50'
      end
      object Edt93: TEdit
        Left = 440
        Top = 72
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 187
        Text = 'Edt50'
      end
      object Edt94: TEdit
        Left = 440
        Top = 96
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 188
        Text = 'Edt50'
      end
      object Edt95: TEdit
        Left = 440
        Top = 120
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 189
        Text = 'Edt50'
      end
      object Edt96: TEdit
        Left = 440
        Top = 144
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 190
        Text = 'Edt50'
      end
      object Edt97: TEdit
        Left = 440
        Top = 168
        Width = 71
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 191
        Text = 'Edt50'
      end
    end
    object OldCmdList: TListBox
      Left = 8
      Top = 50
      Width = 639
      Height = 193
      Ctl3D = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ItemHeight = 13
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 27
      Visible = False
      OnClick = OldCmdListClick
    end
    object Button50: TButton
      Left = 630
      Top = 4
      Width = 17
      Height = 21
      Caption = 'Button50'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 28
      OnClick = Button50Click
    end
    object Button51: TButton
      Left = 894
      Top = 4
      Width = 17
      Height = 21
      Caption = 'Button50'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 29
      OnClick = Button51Click
    end
    object SendStart: TButton
      Left = 762
      Top = 28
      Width = 87
      Height = 21
      Caption = 'Cmd from file'
      TabOrder = 30
      Visible = False
      OnClick = SendStartClick
      OnMouseMove = SendStartMouseMove
    end
    object SendFilePause: TButton
      Left = 762
      Top = 28
      Width = 87
      Height = 21
      Caption = 'Pause send file'
      TabOrder = 31
      OnClick = SendFilePauseClick
    end
    object Button49: TButton
      Left = 848
      Top = 28
      Width = 89
      Height = 21
      Hint = 
        'The program may freeze while reading the file before sending it ' +
        'to the port'
      Caption = 'Send File...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 32
      OnClick = Button49Click
    end
    object lstFastOldCmd: TListBox
      Left = 6
      Top = 26
      Width = 641
      Height = 217
      Ctl3D = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ItemHeight = 15
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 33
      Visible = False
      OnDblClick = lstFastOldCmdDblClick
      OnExit = lstFastOldCmdExit
      OnKeyPress = lstFastOldCmdKeyPress
      OnKeyUp = lstFastOldCmdKeyUp
    end
    object BtHSBt: TButton
      Left = 854
      Top = 244
      Width = 13
      Height = 17
      Hint = 'Show statistic or help '
      Caption = 'S'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 34
      OnClick = BtHSBtClick
    end
    object BtSend: TButton
      Left = 912
      Top = 4
      Width = 23
      Height = 21
      Anchors = [akBottom]
      Caption = '->'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 35
      OnClick = BtSendClick
      OnKeyPress = BtSendKeyPress
      OnMouseMove = BtSendMouseMove
    end
    object BtAddPortsSend: TButton
      Left = 868
      Top = 244
      Width = 69
      Height = 17
      Caption = 'Add ports'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 36
      OnClick = BtAddPortsSendClick
    end
    object pnlSendInAdd: TPanel
      Left = 674
      Top = 48
      Width = 263
      Height = 195
      TabOrder = 37
      Visible = False
      object grp9: TGroupBox
        Left = 6
        Top = 4
        Width = 251
        Height = 185
        Caption = 'Sending to an additional port'
        TabOrder = 0
        object Bt4: TButton
          Left = 8
          Top = 20
          Width = 116
          Height = 25
          Caption = 'A_1'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object Bt5: TButton
          Left = 126
          Top = 20
          Width = 116
          Height = 25
          Caption = 'A_2'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object Bt6: TButton
          Left = 8
          Top = 46
          Width = 58
          Height = 25
          Caption = 'B_1'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object Bt7: TButton
          Left = 66
          Top = 46
          Width = 58
          Height = 25
          Caption = 'B_2'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object Bt8: TButton
          Left = 126
          Top = 46
          Width = 58
          Height = 25
          Caption = 'B_3'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object Bt9: TButton
          Left = 184
          Top = 46
          Width = 58
          Height = 25
          Caption = 'B_4'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object Bt10: TButton
          Left = 8
          Top = 72
          Width = 58
          Height = 25
          Caption = 'B_5'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object Bt11: TButton
          Left = 66
          Top = 72
          Width = 58
          Height = 25
          Caption = 'B_6'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object Bt12: TButton
          Left = 126
          Top = 72
          Width = 58
          Height = 25
          Caption = 'B_7'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object Bt13: TButton
          Left = 184
          Top = 72
          Width = 58
          Height = 25
          Caption = 'B_8'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object Bt14: TButton
          Left = 8
          Top = 98
          Width = 58
          Height = 25
          Caption = 'B_9'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
        end
        object Bt15: TButton
          Left = 66
          Top = 98
          Width = 58
          Height = 25
          Caption = 'B_10'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
        object Bt16: TButton
          Left = 126
          Top = 98
          Width = 58
          Height = 25
          Caption = 'B_11'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object Bt17: TButton
          Left = 184
          Top = 98
          Width = 58
          Height = 25
          Caption = 'B_12'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
        end
        object Bt18: TButton
          Left = 8
          Top = 124
          Width = 58
          Height = 25
          Caption = 'B_13'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
        end
        object Bt19: TButton
          Left = 66
          Top = 124
          Width = 58
          Height = 25
          Caption = 'B_14'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
        end
        object Bt20: TButton
          Left = 126
          Top = 124
          Width = 58
          Height = 25
          Caption = 'B_15'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
        end
        object Bt21: TButton
          Left = 184
          Top = 124
          Width = 58
          Height = 25
          Caption = 'B_16'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
        end
        object Bt3: TButton
          Left = 8
          Top = 152
          Width = 234
          Height = 25
          Caption = 'Send packet to all open ports'
          TabOrder = 18
          OnClick = Bt3Click
        end
      end
    end
    object LBTail: TListBox
      Left = 674
      Top = 26
      Width = 263
      Height = 217
      Ctl3D = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ItemHeight = 15
      Items.Strings = (
        '[SUM_8(0..n)]'
        '[SUM_8(1..n)]'
        '[SUM_8(2..n)]'
        '[XOR_8 (0..n)]'
        '[XOR_8 (1..n)]'
        '[XOR_8 (2..n)]'
        '[FF - SUM_8(0..n)]'
        '[FF - SUM_8(1..n)]'
        '[FF - SUM_8(2..n)]')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 38
      Visible = False
      OnDblClick = LBTailDblClick
      OnExit = LBTailExit
      OnKeyPress = LBTailKeyPress
    end
    object ctxt2: TStaticText
      Left = 6
      Top = 244
      Width = 89
      Height = 17
      Hint = 'Terminal operating time after launch (day:hours:minutes)'
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0000:00:00'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 39
    end
  end
  object SecondWindow: TMemo
    Left = 6
    Top = 28
    Width = 937
    Height = 399
    Hint = 'Dual click toggles Window Mode'
    Anchors = [akLeft, akTop, akBottom]
    Color = clInfoBk
    Ctl3D = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      'SecondWindow')
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ScrollBars = ssVertical
    ShowHint = True
    TabOrder = 2
    Visible = False
    OnClick = SecondWindowClick
    OnDblClick = SecondWindowDblClick
    OnMouseMove = SecondWindowMouseMove
  end
  object LogPanel: TPanel
    Left = 5
    Top = 428
    Width = 937
    Height = 23
    Anchors = [akLeft, akBottom]
    TabOrder = 3
    OnMouseMove = LogPanelMouseMove
    object OutMode: TPanel
      Left = 2
      Top = 1
      Width = 255
      Height = 22
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnClick = OutModeClick
      object VisTime: TCheckBox
        Left = 108
        Top = 3
        Width = 55
        Height = 15
        Caption = 'TIME+ '
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnClick = VisTimeClick
      end
      object CntBytesBox: TCheckBox
        Left = 162
        Top = 3
        Width = 51
        Height = 15
        Caption = 'CNT+ '
        TabOrder = 1
        OnClick = CntBytesBoxClick
      end
      object TextTime: TStaticText
        Left = 0
        Top = 3
        Width = 49
        Height = 15
        AutoSize = False
        BorderStyle = sbsSunken
        TabOrder = 2
      end
      object ChVisPort: TCheckBox
        Left = 50
        Top = 2
        Width = 55
        Height = 17
        Caption = 'PORT+'
        TabOrder = 3
        OnClick = ChVisPortClick
      end
      object ChDir: TCheckBox
        Left = 212
        Top = 2
        Width = 37
        Height = 17
        Caption = 'DIR'
        TabOrder = 4
        OnClick = ChDirClick
      end
    end
    object InputMode: TPanel
      Left = 352
      Top = 1
      Width = 405
      Height = 22
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnClick = InputModeClick
      object Label1: TLabel
        Left = 1
        Top = 3
        Width = 30
        Height = 13
        Caption = 'Mode:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbl1: TLabel
        Left = 190
        Top = 2
        Width = 13
        Height = 13
        Caption = 'ms'
      end
      object PeriodTX: TEdit
        Left = 150
        Top = 0
        Width = 37
        Height = 19
        Ctl3D = False
        MaxLength = 5
        ParentCtl3D = False
        TabOrder = 0
        Text = '1000'
        OnChange = PeriodTXChange
        OnKeyPress = PeriodTXKeyPress
      end
      object SendAsReconn: TCheckBox
        Left = 208
        Top = 3
        Width = 101
        Height = 15
        Caption = 'Send on connect'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnMouseMove = SendAsReconnMouseMove
      end
      object CiklSend: TCheckBox
        Left = 312
        Top = 3
        Width = 89
        Height = 15
        Caption = 'Cyclic sending'
        TabOrder = 2
        Visible = False
        OnMouseMove = CiklSendMouseMove
      end
      object CBModeSend: TComboBox
        Left = 34
        Top = 0
        Width = 115
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 3
        Text = 'Manual'
        OnChange = CBModeSendChange
        Items.Strings = (
          'Manual'
          'When choosing'
          'After answering'
          'Periodic'
          'Byte by byte')
      end
    end
    object pnl1: TPanel
      Left = 758
      Top = 1
      Width = 109
      Height = 22
      TabOrder = 2
      object lbl7: TLabel
        Left = 2
        Top = 3
        Width = 29
        Height = 13
        Caption = 'Read:'
      end
      object cbbReadMode: TComboBox
        Left = 32
        Top = 0
        Width = 75
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'ASCII'
        OnChange = cbbReadModeChange
        Items.Strings = (
          'ASCII'
          'HEX'
          'DEC'
          'CUSTOM')
      end
    end
    object pnlSend: TPanel
      Left = 260
      Top = 1
      Width = 91
      Height = 22
      TabOrder = 3
      object lbl6: TLabel
        Left = 0
        Top = 3
        Width = 28
        Height = 13
        Caption = 'Send:'
      end
      object cbbSendMode: TComboBox
        Left = 30
        Top = 0
        Width = 59
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        OnChange = cbbSendModeChange
        Items.Strings = (
          'ASCII'
          'HEX'
          'DEC')
      end
    end
    object ChHK: TCheckBox
      Left = 872
      Top = 4
      Width = 61
      Height = 15
      Hint = 'Use hotkeys to send macros'
      Caption = 'Hotkeys'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = ChHKClick
      OnMouseMove = ChHKMouseMove
    end
  end
  object SecondWindowAdd: TMemo
    Left = 470
    Top = 28
    Width = 473
    Height = 399
    Anchors = [akLeft, akTop, akBottom]
    Color = clInfoBk
    Ctl3D = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      'SecondWindowAdd')
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 4
    Visible = False
    OnChange = SecondWindowAddChange
    OnClick = SecondWindowAddClick
  end
  object CMainWindow: TRichEdit
    Left = 5
    Top = 28
    Width = 937
    Height = 399
    Anchors = [akLeft, akTop, akBottom]
    Ctl3D = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      'Close the program window to cancel automatic position changes'
      
        #1047#1072#1082#1088#1086#1081#1090#1077' '#1086#1082#1085#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' '#1076#1083#1103' '#1086#1090#1084#1077#1085#1099' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1087#1086#1083 +
        #1086#1078#1077#1085#1080#1103
      '')
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 5
    OnKeyPress = CMainWindowKeyPress
    OnMouseDown = CMainWindowMouseDown
    OnMouseMove = CMainWindowMouseMove
  end
  object ConnOpt: TPanel
    Left = 6
    Top = 26
    Width = 409
    Height = 113
    TabOrder = 6
    Visible = False
    object ComPort: TComboBox
      Left = 2
      Top = 4
      Width = 97
      Height = 21
      Hint = 'Port'
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = ComPortChange
    end
    object BaudRate: TComboBox
      Left = 100
      Top = 4
      Width = 77
      Height = 21
      Hint = 'BaudRate'
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '1200'
      OnClick = BaudRateClick
      OnKeyPress = BaudRateKeyPress
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
    object ComBits: TComboBox
      Left = 178
      Top = 4
      Width = 37
      Height = 21
      Hint = 'Bits'
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 3
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object ComStopBits: TComboBox
      Left = 282
      Top = 4
      Width = 45
      Height = 21
      Hint = 'StopBit'
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = '1'
      Items.Strings = (
        '1'
        '1,5'
        '2')
    end
    object AutoConnect: TCheckBox
      Left = 2
      Top = 28
      Width = 319
      Height = 17
      Hint = 'AutoConnect'
      Caption = 'Auto connect when the port is restored (relevant for USB-COM)'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 4
      OnClick = AutoConnectClick
      OnMouseMove = AutoConnectMouseMove
    end
    object ParityBox: TComboBox
      Left = 216
      Top = 4
      Width = 65
      Height = 21
      Hint = 'Parity check '
      Style = csDropDownList
      ItemHeight = 13
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnChange = ParityBoxChange
      Items.Strings = (
        'NO'
        'ODD'
        'EVEN'
        'MARK'
        'SPACE')
    end
    object ChAconnPort: TCheckBox
      Left = 2
      Top = 44
      Width = 315
      Height = 17
      Caption = 'Auto connect to the last port when starting the program'
      TabOrder = 6
      OnClick = ChAconnPortClick
    end
    object grp6: TGroupBox
      Left = 2
      Top = 62
      Width = 403
      Height = 45
      Caption = 'Actions on bytes'
      TabOrder = 7
      object ChInv: TCheckBox
        Left = 8
        Top = 18
        Width = 125
        Height = 17
        Caption = 'Inverting every bit'
        TabOrder = 0
        OnClick = ChInvClick
      end
      object Chchk2: TCheckBox
        Left = 130
        Top = 18
        Width = 119
        Height = 17
        Caption = 'Reverse every byte'
        TabOrder = 1
        OnClick = Chchk2Click
      end
    end
    object cbbHandsHaking: TComboBox
      Left = 328
      Top = 4
      Width = 77
      Height = 21
      Hint = 'HandsHaking'
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Text = 'None'
      OnChange = cbbHandsHakingChange
      Items.Strings = (
        'None'
        'RTC/CTS')
    end
  end
  object CMainWindowAdd: TRichEdit
    Left = 468
    Top = 28
    Width = 473
    Height = 399
    Anchors = [akLeft, akTop, akBottom]
    Ctl3D = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      'CMainWindowAdd')
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 7
    Visible = False
    OnMouseDown = CMainWindowAddMouseDown
  end
  object pnlAddWin: TPanel
    Left = 710
    Top = 84
    Width = 201
    Height = 207
    TabOrder = 8
    Visible = False
    object BtAddClose: TButton
      Left = 20
      Top = 96
      Width = 161
      Height = 17
      Caption = 'Close menu'
      TabOrder = 0
      OnClick = BtAddCloseClick
    end
    object grp1: TGroupBox
      Left = 8
      Top = 4
      Width = 187
      Height = 193
      Caption = 'Data output to second log'
      TabOrder = 1
      object lbl3: TLabel
        Left = 24
        Top = 20
        Width = 121
        Height = 13
        Caption = 'Main Port Output Settings'
      end
      object ChAddRX: TCheckBox
        Left = 51
        Top = 40
        Width = 42
        Height = 16
        Caption = 'RxD'
        TabOrder = 0
        OnClick = ChAddRXClick
      end
      object ChAddTX: TCheckBox
        Left = 9
        Top = 40
        Width = 40
        Height = 16
        Caption = 'TxD'
        TabOrder = 1
        OnClick = ChAddTXClick
      end
      object CheckBox1: TCheckBox
        Left = 93
        Top = 40
        Width = 91
        Height = 16
        Hint = 
          'Display all data without taking into account the logan filter se' +
          'ttings'
        Caption = 'Ignore log filter'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = CheckBox1Click
      end
      object BtAddClear: TButton
        Left = 8
        Top = 136
        Width = 173
        Height = 25
        Caption = 'Clear this log'
        TabOrder = 3
        OnClick = BtAddClearClick
      end
      object CheckBox2: TCheckBox
        Left = 9
        Top = 62
        Width = 82
        Height = 16
        Hint = '[H] - HEX, [A] - ASCII, [D] - DEC, [C] - CUSTOM'
        Caption = 'Show mode'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = CheckBox2Click
      end
      object grp5: TGroupBox
        Left = 8
        Top = 78
        Width = 173
        Height = 55
        Caption = 'OutMode'
        TabOrder = 5
        object chkAddDec: TCheckBox
          Left = 8
          Top = 35
          Width = 47
          Height = 16
          Caption = 'DEC'
          TabOrder = 0
          OnClick = chkAddDecClick
        end
        object ChAddHEX: TCheckBox
          Left = 8
          Top = 17
          Width = 47
          Height = 16
          Caption = 'HEX'
          TabOrder = 1
          OnClick = ChAddHEXClick
        end
        object ChAddCustom: TCheckBox
          Left = 86
          Top = 35
          Width = 67
          Height = 16
          Caption = 'CUSTOM'
          TabOrder = 2
          OnClick = ChAddCustomClick
        end
        object ChAddASCII: TCheckBox
          Left = 86
          Top = 17
          Width = 51
          Height = 16
          Caption = 'ASCII'
          TabOrder = 3
          OnClick = ChAddASCIIClick
        end
      end
      object Bt2: TButton
        Left = 8
        Top = 160
        Width = 173
        Height = 25
        Caption = 'Copy this log'
        TabOrder = 6
        OnClick = Bt2Click
      end
    end
  end
  object pnlSep: TPanel
    Left = 20
    Top = 142
    Width = 895
    Height = 285
    TabOrder = 9
    Visible = False
    object grpLineSeparator: TGroupBox
      Left = 9
      Top = 52
      Width = 285
      Height = 189
      Hint = 'Data will be unloaded forcibly when the buffer is 50% full (4MB)'
      Caption = 'Line separator in log'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      Visible = False
      object lbl5: TLabel
        Left = 134
        Top = 60
        Width = 13
        Height = 13
        Caption = 'ms'
      end
      object ChSepTime: TCheckBox
        Left = 14
        Top = 58
        Width = 55
        Height = 19
        Hint = 'Packet separator is the specified time interval'
        Caption = 'Pause'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = ChSepTimeClick
      end
      object grp3: TGroupBox
        Left = 4
        Top = 14
        Width = 277
        Height = 41
        Caption = 'For ASCII mode only'
        TabOrder = 1
        object ChSep0D0A: TCheckBox
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
          OnClick = ChSep0D0AClick
        end
        object ChSep00: TCheckBox
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
          OnClick = ChSep00Click
        end
        object ChSep0A: TCheckBox
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
          OnClick = ChSep0AClick
        end
        object ChSep0D: TCheckBox
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
          OnClick = ChSep0DClick
        end
      end
      object EdtPauseRx: TEdit
        Left = 64
        Top = 58
        Width = 49
        Height = 19
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '9999999'
        OnChange = EdtPauseRxChange
        OnExit = EdtPauseRxExit
        OnKeyPress = EdtPauseRxKeyPress
      end
      object ud1: TUpDown
        Left = 114
        Top = 58
        Width = 17
        Height = 19
        Min = -32000
        Max = 32000
        Position = -200
        TabOrder = 3
        OnClick = ud1Click
      end
      object ChSepCnt: TCheckBox
        Left = 156
        Top = 58
        Width = 67
        Height = 19
        Hint = 'Data is split into packets of fixed length'
        Caption = 'Bytes rec'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = ChSepCntClick
      end
      object EdtCntSep: TEdit
        Left = 220
        Top = 58
        Width = 33
        Height = 19
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '9999'
        OnChange = EdtCntSepChange
        OnKeyPress = EdtCntSepKeyPress
      end
      object ud2: TUpDown
        Left = 254
        Top = 58
        Width = 17
        Height = 19
        Max = 9999
        TabOrder = 6
        OnClick = ud2Click
      end
      object grp7: TGroupBox
        Left = 4
        Top = 80
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
          OnKeyPress = edt100KeyPress
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
          OnKeyPress = edt101KeyPress
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
          OnKeyPress = edt102KeyPress
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
          OnKeyPress = edt103KeyPress
        end
        object chk1: TCheckBox
          Left = 6
          Top = 18
          Width = 13
          Height = 17
          TabOrder = 4
          OnClick = chk1Click
        end
        object chk2: TCheckBox
          Left = 102
          Top = 18
          Width = 15
          Height = 17
          TabOrder = 5
          OnClick = chk2Click
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
          OnChange = Edt2Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = Edt2KeyPress
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
          OnChange = Edt99Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = Edt99KeyPress
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
          OnKeyPress = edt104KeyPress
        end
        object CheckBox4: TCheckBox
          Left = 178
          Top = 18
          Width = 15
          Height = 17
          TabOrder = 9
          OnClick = CheckBox4Click
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
          OnKeyPress = edt105KeyPress
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
          OnKeyPress = edt106KeyPress
        end
        object EdtSymAdd: TEdit
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
          OnChange = EdtSymAddChange
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = EdtSymAddKeyPress
        end
        object ChSepSymbol: TCheckBox
          Left = 235
          Top = 18
          Width = 15
          Height = 17
          TabOrder = 13
          OnClick = ChSepSymbolClick
        end
        object Edt98: TEdit
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
          OnChange = Edt98Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = Edt98KeyPress
        end
        object CheckBox3: TCheckBox
          Left = 235
          Top = 40
          Width = 15
          Height = 17
          TabOrder = 15
          OnClick = CheckBox3Click
        end
        object chk3: TCheckBox
          Left = 6
          Top = 40
          Width = 13
          Height = 17
          TabOrder = 16
          OnClick = chk3Click
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
          OnKeyPress = edt100KeyPress
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
          OnKeyPress = edt101KeyPress
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
          OnKeyPress = edt102KeyPress
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
          OnKeyPress = edt103KeyPress
        end
        object chk4: TCheckBox
          Left = 102
          Top = 40
          Width = 15
          Height = 17
          TabOrder = 21
          OnClick = chk4Click
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
          OnKeyPress = Edt2KeyPress
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
          OnKeyPress = Edt99KeyPress
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
          OnKeyPress = edt104KeyPress
        end
        object chk5: TCheckBox
          Left = 178
          Top = 40
          Width = 15
          Height = 17
          TabOrder = 25
          OnClick = chk5Click
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
          OnKeyPress = edt105KeyPress
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
          OnKeyPress = edt106KeyPress
        end
      end
      object grp8: TGroupBox
        Left = 4
        Top = 147
        Width = 277
        Height = 37
        TabOrder = 8
        object Label2: TLabel
          Left = 6
          Top = 12
          Width = 159
          Height = 13
          Caption = 'Before byte(experimental setting) :'
        end
        object ChCBBefByte2: TCheckBox
          Left = 178
          Top = 12
          Width = 17
          Height = 17
          Hint = 'Experimental option'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = ChCBBefByte2Click
        end
        object EdtBefSym2: TEdit
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
          OnChange = EdtBefSym2Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = EdtBefSym2KeyPress
        end
        object ChCBBefByte1: TCheckBox
          Left = 236
          Top = 12
          Width = 17
          Height = 17
          Hint = 'Experimental option'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = ChCBBefByte1Click
        end
        object EdtBefSym1: TEdit
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
          OnChange = EdtBefSym1Change
          OnEnter = edtSepEnter
          OnExit = edtSepExit
          OnKeyPress = EdtBefSym1KeyPress
        end
      end
    end
    object grp2: TGroupBox
      Left = 292
      Top = 70
      Width = 285
      Height = 150
      Caption = 'Autocleaning the log'
      TabOrder = 1
      object lbl2: TLabel
        Left = 10
        Top = 22
        Width = 79
        Height = 13
        Hint = 
          'The log window is cleared when filled with a specified number of' +
          ' characters'
        Caption = 'Bytes exceeded:'
        ParentShowHint = False
        ShowHint = True
      end
      object lbl10: TLabel
        Left = 10
        Top = 72
        Width = 257
        Height = 13
        Caption = 'When received on line HEX or ASCII of the sequence:'
      end
      object EdtCntClr: TEdit
        Left = 96
        Top = 20
        Width = 69
        Height = 19
        Ctl3D = False
        MaxLength = 7
        ParentCtl3D = False
        TabOrder = 0
        Text = 'EdtCntClr'
        OnChange = EdtCntClrChange
        OnExit = EdtCntClrExit
        OnKeyPress = EdtCntClrKeyPress
      end
      object ChWhSendClr: TCheckBox
        Left = 10
        Top = 48
        Width = 223
        Height = 17
        Hint = 'The log is cleared before sending the next packet to the port'
        Caption = 'Before sending the next package'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = ChWhSendClrClick
      end
      object EdtAutoClrStrHex: TEdit
        Left = 42
        Top = 90
        Width = 233
        Height = 19
        Hint = 'Example: "12 DE 78 F0"'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'EdtAutoClrStrHex'
        OnChange = EdtAutoClrStrHexChange
        OnKeyPress = EdtAutoClrStrHexKeyPress
      end
      object ChClrLogStrHex: TCheckBox
        Left = 10
        Top = 90
        Width = 31
        Height = 19
        Caption = 'H:'
        TabOrder = 3
        OnClick = ChClrLogStrHexClick
      end
      object ChClrLogStrAscii: TCheckBox
        Left = 10
        Top = 110
        Width = 29
        Height = 19
        Caption = 'A:'
        TabOrder = 4
        OnClick = ChClrLogStrAsciiClick
      end
      object EdtAutoClrStrAscii: TEdit
        Left = 42
        Top = 110
        Width = 233
        Height = 19
        Hint = 'Example: "Msg for clear"'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Text = 'EdtAutoClrStrAscii'
        OnChange = EdtAutoClrStrAsciiChange
      end
      object ctxt1: TStaticText
        Left = 168
        Top = 20
        Width = 107
        Height = 19
        Hint = 'Current value of the character counter in the main log window'
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'ctxt1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
    end
    object Fifo: TGroupBox
      Left = 628
      Top = 134
      Width = 285
      Height = 101
      Caption = 'FIFO'
      TabOrder = 2
      object ResRingBuf: TButton
        Left = 8
        Top = 14
        Width = 121
        Height = 19
        Caption = 'Reset FIFO buffer'
        TabOrder = 0
        OnClick = ResRingBufClick
      end
      object ResetFIFO: TCheckBox
        Left = 8
        Top = 64
        Width = 147
        Height = 21
        Hint = 
          'To stop unloading unloaded data after the port is closed (Data w' +
          'ill be lost) '
        Caption = 'Reset when port is closed '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = ResetFIFOClick
      end
      object chk6: TCheckBox
        Left = 8
        Top = 40
        Width = 167
        Height = 17
        Caption = 'Auto reset FIFO (1..1.5 sec.)'
        TabOrder = 2
        OnClick = chk6Click
      end
    end
    object GroupBox1: TGroupBox
      Left = 568
      Top = 70
      Width = 285
      Height = 180
      Caption = 'Event alert'
      TabOrder = 3
      object ChExpOnly: TCheckBox
        Left = 10
        Top = 152
        Width = 263
        Height = 17
        Caption = 'Automatically maximize program window '
        TabOrder = 0
        OnClick = ChExpOnlyClick
      end
      object grp4: TGroupBox
        Left = 10
        Top = 14
        Width = 265
        Height = 129
        TabOrder = 1
        object lbl9: TLabel
          Left = 240
          Top = 16
          Width = 13
          Height = 13
          Caption = 'ms'
        end
        object lbl8: TLabel
          Left = 140
          Top = 38
          Width = 113
          Height = 13
          Caption = 'more bytes are received'
        end
        object EdtNoData: TEdit
          Left = 182
          Top = 14
          Width = 57
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Text = 'EdtNoData'
          OnChange = EdtNoDataChange
          OnKeyPress = EdtNoDataKeyPress
        end
        object ChCBNoData: TCheckBox
          Left = 10
          Top = 14
          Width = 171
          Height = 19
          Caption = 'When there is no incoming data'
          TabOrder = 1
          OnClick = ChCBNoDataClick
        end
        object ChAexpStr: TCheckBox
          Left = 10
          Top = 82
          Width = 239
          Height = 17
          Caption = 'When there is a line in the incoming packet:'
          TabOrder = 2
          OnClick = ChAexpStrClick
        end
        object EdtAExpStr: TEdit
          Left = 10
          Top = 102
          Width = 245
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          Text = 'EdtAExpStr'
          OnChange = EdtAExpStrChange
        end
        object ChCntExpBytes: TCheckBox
          Left = 10
          Top = 36
          Width = 53
          Height = 19
          Caption = 'When '
          TabOrder = 4
          OnClick = ChCntExpBytesClick
        end
        object EdtCntExpBytes: TEdit
          Left = 60
          Top = 36
          Width = 79
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          Text = 'EdtCntExpBytes'
          OnChange = EdtCntExpBytesChange
          OnKeyPress = EdtCntExpBytesKeyPress
        end
        object ChFileSendEv: TCheckBox
          Left = 10
          Top = 60
          Width = 163
          Height = 17
          Caption = 'When the data file was sent'
          TabOrder = 6
          OnClick = ChFileSendEvClick
        end
      end
    end
    object BtLineSep: TButton
      Left = 0
      Top = 0
      Width = 101
      Height = 25
      Caption = 'Line separator'
      TabOrder = 4
      OnClick = BtLineSepClick
    end
    object BtAutoClear: TButton
      Left = 100
      Top = 0
      Width = 101
      Height = 25
      Caption = 'Autocleaning'
      TabOrder = 5
      OnClick = BtAutoClearClick
    end
    object BtFIFO: TButton
      Left = 0
      Top = 24
      Width = 101
      Height = 25
      Caption = 'Buffer FIFO'
      TabOrder = 6
      OnClick = BtFIFOClick
    end
    object BtAutoExpand: TButton
      Left = 200
      Top = 0
      Width = 101
      Height = 25
      Caption = 'Event alert'
      TabOrder = 7
      OnClick = BtAutoExpandClick
    end
    object BtEventLive: TButton
      Left = 100
      Top = 24
      Width = 101
      Height = 25
      Caption = 'Event log'
      TabOrder = 8
      OnClick = BtEventLiveClick
    end
    object btnLOG: TButton
      Left = 200
      Top = 24
      Width = 101
      Height = 25
      Caption = 'Add. settings'
      TabOrder = 9
      OnClick = btnLOGClick
    end
    object grpEventLog: TGroupBox
      Left = 316
      Top = 228
      Width = 285
      Height = 55
      Caption = 'Event log'
      TabOrder = 10
      Visible = False
      object ChEventWriteInLog: TCheckBox
        Left = 12
        Top = 22
        Width = 79
        Height = 17
        Caption = 'Write in file'
        TabOrder = 0
        OnClick = ChEventWriteInLogClick
      end
      object BtOpenLogEvents: TButton
        Left = 180
        Top = 18
        Width = 93
        Height = 25
        Caption = 'Open log'
        TabOrder = 1
        OnClick = BtOpenLogEventsClick
      end
    end
    object grpLog: TGroupBox
      Left = 364
      Top = 28
      Width = 309
      Height = 207
      Caption = 'Settings'
      TabOrder = 11
      object grp10: TGroupBox
        Left = 4
        Top = 14
        Width = 277
        Height = 59
        Caption = 'Log'
        TabOrder = 0
        object chkAddDate: TCheckBox
          Left = 6
          Top = 18
          Width = 167
          Height = 17
          Caption = 'Add date when displaying time'
          TabOrder = 0
          OnClick = chkAddDateClick
        end
        object chkOutNonPrintASCII: TCheckBox
          Left = 6
          Top = 36
          Width = 267
          Height = 17
          Caption = 'Do not output non-printing characters in ASCII mode'
          TabOrder = 1
          OnClick = chkOutNonPrintASCIIClick
        end
      end
      object grp11: TGroupBox
        Left = 4
        Top = 76
        Width = 277
        Height = 43
        Caption = 'Form location'
        TabOrder = 1
        object chk7: TCheckBox
          Left = 6
          Top = 16
          Width = 245
          Height = 17
          Caption = 'Remember the position of the form upon exit'
          TabOrder = 0
          OnClick = chk7Click
        end
      end
    end
  end
  object BTFont: TButton
    Left = 612
    Top = 28
    Width = 101
    Height = 25
    Hint = 'Font and background color settings for log output windows'
    Caption = 'Log window sett.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    Visible = False
    OnClick = BTFontClick
  end
  object BTPalitra: TButton
    Left = 712
    Top = 28
    Width = 101
    Height = 25
    Hint = 'Selecting shape colors'
    Caption = 'Forms Color'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    Visible = False
    OnClick = BTPalitraClick
  end
  object MonDialog: TButton
    Left = 812
    Top = 28
    Width = 101
    Height = 25
    Hint = 'Mode "Monitor-Dialog"'
    Caption = 'Monitor mode'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    Visible = False
    OnClick = MonDialogClick
  end
  object BtAnsList: TButton
    Left = 612
    Top = 52
    Width = 101
    Height = 25
    Hint = 'Window for emulating responses in response to requests '
    Caption = 'Answer emulator'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    Visible = False
    OnClick = BtAnsListClick
  end
  object BtListCmd: TButton
    Left = 712
    Top = 52
    Width = 101
    Height = 25
    Hint = 'Additional command list'
    Caption = 'Cmd list mode '
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
    Visible = False
    OnClick = BtListCmdClick
  end
  object FSmodeBt: TButton
    Left = 812
    Top = 52
    Width = 101
    Height = 25
    Hint = 'Fast sending data to the port from the keyboard '
    Caption = 'Fast send mode'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
    Visible = False
    OnClick = FSmodeBtClick
  end
  object SettBt: TButton
    Left = 612
    Top = 76
    Width = 101
    Height = 25
    Hint = 'Other settings'
    Caption = 'Directories'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
    Visible = False
    OnClick = SettBtClick
  end
  object CSLbt: TButton
    Left = 712
    Top = 76
    Width = 101
    Height = 25
    Hint = 'List of sent commands '
    Caption = 'Sent commands'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
    Visible = False
    OnClick = CSLbtClick
  end
  object BrutForceBT: TButton
    Left = 812
    Top = 76
    Width = 101
    Height = 25
    Hint = 'Packet combo mode'
    Caption = 'Packet generator'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
    Visible = False
    OnClick = BrutForceBTClick
  end
  object btnBtShowStat: TButton
    Left = 612
    Top = 100
    Width = 101
    Height = 25
    Hint = 'Displaying counters of received and sent bytes'
    Caption = 'Byte counters'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 19
    Visible = False
    OnClick = btnBtShowStatClick
  end
  object BtAddPorts: TButton
    Left = 712
    Top = 100
    Width = 101
    Height = 25
    Hint = 'Configuring additional ports for receiving data only'
    Caption = 'Add ports [1..2]'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 20
    Visible = False
    OnClick = BtAddPortsClick
  end
  object btnPacketStats: TButton
    Left = 612
    Top = 124
    Width = 101
    Height = 25
    Hint = 'Counter of packets containing given substrings'
    Caption = 'Packet filtering'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 21
    Visible = False
    OnClick = btnPacketStatsClick
  end
  object BtMultiPort: TButton
    Left = 712
    Top = 124
    Width = 101
    Height = 25
    Hint = 'Configuring additional ports '
    Caption = 'Add ports [1..16]'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
    Visible = False
    OnClick = BtMultiPortClick
  end
  object BtParser: TButton
    Left = 812
    Top = 100
    Width = 101
    Height = 25
    Hint = 'Parser settings for HEX mode'
    Caption = 'Parser HEX'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 23
    Visible = False
    OnClick = BtParserClick
  end
  object btnParserASCII: TButton
    Left = 812
    Top = 124
    Width = 101
    Height = 25
    Hint = 'Parser settings for ASCII mode'
    Caption = 'Parser TEXT'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 24
    Visible = False
    OnClick = btnParserASCIIClick
  end
  object BtTableCustom: TButton
    Left = 612
    Top = 148
    Width = 101
    Height = 25
    Hint = 'Presentation of read data in a custom form'
    Caption = 'CUSTOM Decod.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 25
    Visible = False
    OnClick = BtTableCustomClick
  end
  object BtAddMacros: TButton
    Left = 712
    Top = 148
    Width = 101
    Height = 25
    Hint = 'Additional macros'
    Caption = 'Add. macros'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 26
    Visible = False
    OnClick = BtAddMacrosClick
  end
  object BtBTASCIITABLE: TButton
    Left = 812
    Top = 148
    Width = 101
    Height = 25
    Hint = 'Show table ASCII'
    Caption = 'ASCII-Table'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 27
    Visible = False
    OnClick = BtBTASCIITABLEClick
  end
  object Bt23: TButton
    Left = 612
    Top = 172
    Width = 101
    Height = 25
    Enabled = False
    TabOrder = 28
    Visible = False
  end
  object BtUtilites: TButton
    Left = 712
    Top = 172
    Width = 101
    Height = 25
    Caption = 'Utilites'
    TabOrder = 29
    Visible = False
    OnClick = BtUtilitesClick
  end
  object btnBt24: TButton
    Left = 812
    Top = 172
    Width = 101
    Height = 25
    Enabled = False
    TabOrder = 30
    Visible = False
  end
  object SelTerm: TPanel
    Left = 6
    Top = 28
    Width = 573
    Height = 81
    TabOrder = 31
    Visible = False
    DesignSize = (
      573
      81)
    object CBLists: TComboBox
      Left = 6
      Top = 6
      Width = 561
      Height = 31
      Style = csOwnerDrawFixed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 25
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnClick = CBListsClick
      OnDblClick = CBListsDblClick
    end
    object ListDec: TButton
      Left = 434
      Top = 42
      Width = 66
      Height = 32
      Hint = 'Previous listing '
      Anchors = []
      Caption = '<<<'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = ListDecClick
      OnMouseMove = ListDecMouseMove
    end
    object ListInc: TButton
      Left = 499
      Top = 42
      Width = 66
      Height = 32
      Hint = 'Next listing'
      Anchors = []
      Caption = '>>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = ListIncClick
      OnMouseMove = ListIncMouseMove
    end
    object grp12: TGroupBox
      Left = 6
      Top = 38
      Width = 423
      Height = 37
      TabOrder = 3
      DesignSize = (
        423
        37)
      object rb1: TRadioButton
        Left = 8
        Top = 12
        Width = 115
        Height = 17
        Caption = 'Allow these actions:'
        TabOrder = 0
        OnClick = rb1Click
      end
      object DelList: TButton
        Left = 126
        Top = 10
        Width = 97
        Height = 21
        Hint = 'Reset this set of terminal settings and clear the macro list'
        Anchors = [akBottom]
        Caption = 'Reset settings'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = DelListClick
        OnMouseMove = DelListMouseMove
      end
      object BtCopyList: TButton
        Left = 222
        Top = 10
        Width = 97
        Height = 21
        Hint = 'Copy this set of terminal settings and macro list'
        Caption = 'Copy settings'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BtCopyListClick
      end
      object BtPasteList: TButton
        Left = 318
        Top = 10
        Width = 97
        Height = 21
        Hint = 'Paste this set of terminal settings and macro list'
        Caption = 'Paste settings'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BtPasteListClick
      end
    end
  end
  object CheckConnect: TTimer
    OnTimer = CheckConnectTimer
    Left = 736
    Top = 320
  end
  object RxTimer: TTimer
    Interval = 1
    OnTimer = RxTimerTimer
    Left = 160
    Top = 338
  end
  object TimerPeriod: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerPeriodTimer
    Left = 572
    Top = 214
  end
  object CustomFunctions: TTimer
    Interval = 100
    OnTimer = CustomFunctionsTimer
    Left = 418
    Top = 260
  end
  object FontMemo: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 494
    Top = 326
  end
  object SendFileDialog: TOpenDialog
    Left = 14
    Top = 336
  end
  object TimerSendFile: TTimer
    Interval = 1
    OnTimer = TimerSendFileTimer
    Left = 80
    Top = 334
  end
  object OpenFileCmdDialog: TOpenDialog
    Left = 480
    Top = 212
  end
  object OpenLogFileDialog: TOpenDialog
    Filter = 'Log text|*.txt|All files|*.*'
    Left = 548
    Top = 324
  end
  object ClrColorTimer: TTimer
    Enabled = False
    OnTimer = ClrColorTimerTimer
    Left = 604
    Top = 322
  end
  object OpenBinFileDialog: TOpenDialog
    Filter = 'Log bin|*.bin|All files|*.*'
    Left = 608
    Top = 238
  end
  object SetEnHideTimer: TTimer
    Interval = 50
    OnTimer = SetEnHideTimerTimer
    Left = 678
    Top = 322
  end
  object FonColor: TColorDialog
    Options = [cdFullOpen, cdPreventFullOpen, cdShowHelp, cdSolidColor, cdAnyColor]
    Left = 520
    Top = 207
  end
  object tmrReadFileForSend: TTimer
    Enabled = False
    Interval = 1
    Left = 250
    Top = 338
  end
  object tmrAutoConnect: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrAutoConnectTimer
    Left = 326
    Top = 284
  end
  object tmrCheckHK: TTimer
    Enabled = False
    Interval = 50
    OnTimer = tmrCheckHKTimer
    Left = 762
    Top = 358
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = tmr1Timer
    Left = 812
    Top = 358
  end
  object tmr2: TTimer
    Left = 452
    Top = 170
  end
  object tmrCheckJ: TTimer
    Interval = 10
    OnTimer = tmrCheckJTimer
    Left = 386
    Top = 350
  end
  object tmrAutoResetFIFO: TTimer
    Enabled = False
    OnTimer = tmrAutoResetFIFOTimer
    Left = 324
    Top = 224
  end
  object tmr3: TTimer
    Interval = 5000
    OnTimer = tmr3Timer
    Left = 854
    Top = 330
  end
  object tmr4: TTimer
    Interval = 6000
    OnTimer = tmr4Timer
    Left = 912
    Top = 338
  end
  object tmr5: TTimer
    OnTimer = tmr5Timer
    Left = 90
    Top = 489
  end
  object tmrOpenList: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrOpenListTimer
    Left = 226
    Top = 546
  end
  object tmrSendList: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrSendListTimer
    Left = 228
    Top = 583
  end
  object tmrMinutes: TTimer
    Interval = 30000
    OnTimer = tmrMinutesTimer
    Left = 526
    Top = 262
  end
  object tmrDelay: TTimer
    OnTimer = tmrDelayTimer
    Left = 324
    Top = 560
  end
end
