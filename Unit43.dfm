object FormLogPort: TFormLogPort
  Left = 639
  Top = 202
  Width = 173
  Height = 253
  Caption = 'FormLogPort'
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
  object mmo1: TMemo
    Left = 2
    Top = 2
    Width = 149
    Height = 181
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    Lines.Strings = (
      'mmo1')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object BtCopy: TButton
    Left = 4
    Top = 186
    Width = 75
    Height = 25
    Caption = 'Copy'
    TabOrder = 1
    OnClick = BtCopyClick
  end
  object BtClear: TButton
    Left = 78
    Top = 186
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 2
    OnClick = BtClearClick
  end
end
