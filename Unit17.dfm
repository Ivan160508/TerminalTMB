object FastSend: TFastSend
  Left = 920
  Top = 313
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'FastSend'
  ClientHeight = 367
  ClientWidth = 715
  Color = clBtnFace
  Constraints.MinHeight = 100
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 4
    Top = 4
    Width = 701
    Height = 329
    Ctl3D = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Memo1')
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnKeyPress = Memo1KeyPress
  end
  object BtClear: TButton
    Left = 358
    Top = 336
    Width = 349
    Height = 25
    Caption = 'Clear'
    TabOrder = 1
    OnClick = BtClearClick
  end
  object OpenPortBt: TButton
    Left = 6
    Top = 336
    Width = 349
    Height = 25
    Caption = 'Open port'
    TabOrder = 2
    OnClick = OpenPortBtClick
  end
  object Timer1: TTimer
    Interval = 60000
    OnTimer = Timer1Timer
    Left = 340
    Top = 148
  end
end
