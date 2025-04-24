object Settings: TSettings
  Left = 716
  Top = 202
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Settings'
  ClientHeight = 115
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000AAA00000000AAAAAAAAAAAAAAAAAA000AA
    AA0000000AAAAAAAAAAAAAAAAAA000AAAAA000000AAAAAAAAAAAAAAAAAA000AA
    AAAA00000AAAAAAAAAAAAAAAAAA0000AAAAAA000000000000000000000000000
    AAAAAA000000000000000000000000000AAAAAA0000000000000000000000000
    00AAAAAA000000000000000000000000000AAAAAA00000000000000000000000
    0000AAAAAA000000000000000000000000000AAAAAA000000000000000000000
    000000AAAAAA000000000000000000000000000AAAAA00000000000000000000
    000000AAAAAA0000000000000000000000000AAAAAA000000000000000000000
    0000AAAAAA0000000000000000000000000AAAAAA00000000000000000000000
    00AAAAAA0000000000000000000000000AAAAAA0000000000000000000000000
    AAAAAA0000000000000000000000000AAAAAA0000000000000000000000000AA
    AAAA00000000000000000000000000AAAAA000000000000000000000000000AA
    AA0000000000000000000000000000AAA0000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  DesignSize = (
    654
    115)
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 15
    Width = 58
    Height = 13
    Caption = 'Log files dir:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 39
    Width = 88
    Height = 13
    Caption = 'Command files dir:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 8
    Top = 63
    Width = 64
    Height = 13
    Caption = 'Data files dir:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object EdtDirLog: TEdit
    Left = 102
    Top = 12
    Width = 463
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    Text = 'EdtDirLog'
    OnChange = EdtDirLogChange
    OnClick = EdtDirLogClick
  end
  object EditDirCmd: TEdit
    Left = 102
    Top = 36
    Width = 463
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'EditDirCmd'
    OnChange = EditDirCmdChange
    OnClick = EditDirCmdClick
  end
  object EditDirSendFile: TEdit
    Left = 102
    Top = 60
    Width = 463
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    Text = 'EditDirSendFile'
    OnChange = EditDirSendFileChange
    OnClick = EditDirSendFileClick
  end
  object BTDirLog: TButton
    Left = 568
    Top = 10
    Width = 77
    Height = 21
    Caption = '...'
    TabOrder = 3
    OnClick = BTDirLogClick
  end
  object BTDirCmd: TButton
    Left = 568
    Top = 34
    Width = 77
    Height = 21
    Caption = '...'
    TabOrder = 4
    OnClick = BTDirCmdClick
  end
  object BTDirSendFile: TButton
    Left = 568
    Top = 58
    Width = 77
    Height = 21
    Anchors = []
    Caption = '...'
    TabOrder = 5
    OnClick = BTDirSendFileClick
  end
  object sendAnsBT1: TButton
    Left = 4
    Top = 84
    Width = 641
    Height = 25
    Caption = 'Save and Exit'
    TabOrder = 6
    OnClick = sendAnsBT1Click
  end
end
