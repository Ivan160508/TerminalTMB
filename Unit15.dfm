object Form15: TForm15
  Left = 1111
  Top = 487
  Width = 312
  Height = 100
  BorderIcons = []
  Caption = 'Clear list command'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 26
    Top = 11
    Width = 247
    Height = 13
    Caption = 'Are you sure? Deleted macros cannot be recovered!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 22
    Top = 28
    Width = 80
    Height = 25
    Caption = 'Yes'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 194
    Top = 28
    Width = 80
    Height = 25
    Caption = 'No'
    TabOrder = 1
    OnClick = Button2Click
  end
end
