object ActFileLog: TActFileLog
  Left = 554
  Top = 396
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'File recording method'
  ClientHeight = 73
  ClientWidth = 488
  Color = clYellow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 4
    Top = 36
    Width = 150
    Height = 25
    Caption = 'Overwrite'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 36
    Width = 150
    Height = 25
    Caption = 'Append'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 332
    Top = 36
    Width = 150
    Height = 25
    Caption = 'Change mind'
    TabOrder = 2
    OnClick = Button3Click
  end
  object FileName: TStaticText
    Left = 4
    Top = 4
    Width = 478
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'FileName'
    TabOrder = 3
  end
end
