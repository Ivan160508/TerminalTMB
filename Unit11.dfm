object DataSendLog: TDataSendLog
  Left = 223
  Top = 205
  Width = 599
  Height = 373
  Caption = 'List of sent commands '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object WindowLog: TMemo
    Left = 4
    Top = 4
    Width = 573
    Height = 297
    Ctl3D = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    Lines.Strings = (
      'WindowLog')
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    OnChange = WindowLogChange
  end
  object ClrButton: TButton
    Left = 504
    Top = 304
    Width = 73
    Height = 25
    Caption = 'Clear'
    TabOrder = 1
    OnClick = ClrButtonClick
  end
  object ChMode: TCheckBox
    Left = 4
    Top = 308
    Width = 109
    Height = 17
    Caption = 'Show send mode'
    TabOrder = 2
    OnClick = ChModeClick
  end
  object pbFlow: TProgressBar
    Left = 116
    Top = 308
    Width = 385
    Height = 17
    Hint = 'Filling before automatic cleaning'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
end
