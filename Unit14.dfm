object OpenLogFile: TOpenLogFile
  Left = 882
  Top = 475
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Open LOG file?'
  ClientHeight = 97
  ClientWidth = 267
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
  object Button1: TButton
    Left = 8
    Top = 9
    Width = 250
    Height = 25
    Caption = 'Text log'
    TabOrder = 0
    OnClick = Button1Click
  end
  object sendAnsBT1: TButton
    Left = 8
    Top = 65
    Width = 250
    Height = 25
    Caption = 'No'
    TabOrder = 1
    OnClick = sendAnsBT1Click
  end
  object BinLogOpenBT: TButton
    Left = 8
    Top = 37
    Width = 250
    Height = 25
    Caption = 'Bin Log'
    TabOrder = 2
    OnClick = BinLogOpenBTClick
  end
end
