object FormLogName: TFormLogName
  Left = 960
  Top = 248
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'The prefix of the LOG file name'
  ClientHeight = 184
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 32
    Width = 93
    Height = 13
    Caption = 'Text file extension:'
  end
  object Label2: TLabel
    Left = 10
    Top = 52
    Width = 101
    Height = 13
    Caption = 'Binary file extension:'
  end
  object LogFileName: TEdit
    Left = 8
    Top = 6
    Width = 309
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    Text = 'LOG'
  end
  object sendAnsBT1: TButton
    Left = 8
    Top = 152
    Width = 120
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = sendAnsBT1Click
  end
  object Button1: TButton
    Left = 196
    Top = 152
    Width = 120
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button1Click
  end
  object ChText: TCheckBox
    Left = 8
    Top = 69
    Width = 223
    Height = 18
    Caption = 'Save as text file  (as in the main window)'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 3
    OnClick = ChTextClick
  end
  object ChBin: TCheckBox
    Left = 8
    Top = 124
    Width = 223
    Height = 18
    Caption = 'Save as binary file (as in the Port MAIN) '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = ChBinClick
  end
  object ChTxText: TCheckBox
    Left = 235
    Top = 69
    Width = 38
    Height = 18
    Caption = 'TX'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 5
    OnClick = ChTxTextClick
  end
  object ChTxBin: TCheckBox
    Left = 235
    Top = 124
    Width = 38
    Height = 18
    Caption = 'TX'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = ChTxBinClick
  end
  object ChRxText: TCheckBox
    Left = 277
    Top = 69
    Width = 38
    Height = 18
    Caption = 'RX'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 7
    OnClick = ChRxTextClick
  end
  object ChRxBin: TCheckBox
    Left = 277
    Top = 124
    Width = 38
    Height = 18
    Caption = 'RX'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = ChRxBinClick
  end
  object Edit1: TEdit
    Left = 122
    Top = 28
    Width = 195
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 9
    Text = '.txt'
  end
  object Edit2: TEdit
    Left = 122
    Top = 48
    Width = 195
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 10
    Text = '.bin'
  end
  object ChKeepPauses: TCheckBox
    Left = 235
    Top = 92
    Width = 81
    Height = 17
    Hint = 'To reproduce the log output with delays'
    Caption = 'Save Delay'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnClick = ChKeepPausesClick
  end
end
