object FormParserASCIILog: TFormParserASCIILog
  Left = 1055
  Top = 599
  Width = 570
  Height = 365
  Caption = 'ParserASCII Log'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
  object btn1: TButton
    Left = 284
    Top = 280
    Width = 89
    Height = 21
    Caption = 'Background color'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 284
    Top = 302
    Width = 89
    Height = 21
    Caption = 'Start LOG'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 372
    Top = 302
    Width = 89
    Height = 21
    Caption = 'View log'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btnBt2: TButton
    Left = 372
    Top = 280
    Width = 89
    Height = 21
    Caption = 'Copy to clipboard'
    TabOrder = 4
    OnClick = btnBt2Click
  end
  object btnBt1: TButton
    Left = 462
    Top = 280
    Width = 89
    Height = 43
    Caption = 'Clear'
    TabOrder = 5
    OnClick = btnBt1Click
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
