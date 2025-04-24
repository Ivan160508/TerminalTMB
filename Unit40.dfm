object frmParserLog: TfrmParserLog
  Left = 1049
  Top = 206
  Width = 571
  Height = 365
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'ParserHEX Log'
  Color = clBtnFace
  Constraints.MinHeight = 180
  Constraints.MinWidth = 290
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CWinLog: TRichEdit
    Left = 2
    Top = 2
    Width = 549
    Height = 275
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      'CWinLog')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button2: TButton
    Left = 284
    Top = 302
    Width = 89
    Height = 21
    Caption = 'Start LOG'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 284
    Top = 280
    Width = 89
    Height = 21
    Caption = 'Background color'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Bt2: TButton
    Left = 372
    Top = 280
    Width = 89
    Height = 21
    Caption = 'Copy to clipboard'
    TabOrder = 3
    OnClick = Bt2Click
  end
  object Bt1: TButton
    Left = 462
    Top = 280
    Width = 89
    Height = 43
    Caption = 'Clear'
    TabOrder = 4
    OnClick = Bt1Click
  end
  object Button3: TButton
    Left = 372
    Top = 302
    Width = 89
    Height = 21
    Caption = 'View log'
    TabOrder = 5
    OnClick = Button3Click
  end
  object ColorDialog1: TColorDialog
    Left = 86
    Top = 112
  end
  object dlgOpen1: TOpenDialog
    Left = 182
    Top = 114
  end
end
