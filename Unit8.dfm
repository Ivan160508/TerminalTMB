object Form8: TForm8
  Left = 698
  Top = 89
  Width = 799
  Height = 131
  BorderIcons = [biSystemMenu]
  Caption = 'Command Edit'
  Color = clBtnFace
  Constraints.MaxHeight = 131
  Constraints.MinHeight = 131
  Constraints.MinWidth = 200
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnCanResize = FormCanResize
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Command: TLabel
    Left = 12
    Top = 15
    Width = 24
    Height = 13
    Caption = 'Cmd:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 12
    Top = 39
    Width = 25
    Height = 13
    Caption = 'Help:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Cmd: TEdit
    Left = 52
    Top = 12
    Width = 669
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    Text = 'Cmd'
    OnChange = CmdChange
    OnKeyPress = CmdKeyPress
  end
  object Help: TEdit
    Left = 52
    Top = 36
    Width = 669
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'Help'
    OnChange = HelpChange
    OnKeyPress = HelpKeyPress
  end
  object btn1: TButton
    Left = 12
    Top = 60
    Width = 763
    Height = 25
    Caption = 'Save and exit'
    TabOrder = 2
    OnClick = btn1Click
  end
  object BtSendFile: TButton
    Left = 728
    Top = 12
    Width = 47
    Height = 43
    Caption = 'Send file...'
    TabOrder = 3
    WordWrap = True
    OnClick = BtSendFileClick
  end
  object dlgOpenDOpenFile: TOpenDialog
    Left = 196
    Top = 20
  end
end
