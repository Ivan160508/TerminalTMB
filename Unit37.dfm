object FormEvent: TFormEvent
  Left = 656
  Top = 517
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Event'
  ClientHeight = 71
  ClientWidth = 477
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
  object grp1: TGroupBox
    Left = 4
    Top = 2
    Width = 469
    Height = 65
    TabOrder = 0
    object ctxtreq1: TStaticText
      Left = 6
      Top = 10
      Width = 457
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'ctxtreq1'
      Color = clYellow
      ParentColor = False
      TabOrder = 0
    end
    object chk1: TCheckBox
      Left = 6
      Top = 36
      Width = 205
      Height = 21
      Caption = 'Do not notify about this event'
      TabOrder = 1
      OnClick = chk1Click
    end
    object Bt1: TButton
      Left = 256
      Top = 32
      Width = 103
      Height = 25
      Caption = 'Event setup'
      TabOrder = 2
      OnClick = Bt1Click
    end
    object Bt2: TButton
      Left = 362
      Top = 32
      Width = 101
      Height = 25
      Caption = 'OK'
      TabOrder = 3
      OnClick = Bt2Click
    end
  end
  object tmr1: TTimer
    Interval = 30000
    OnTimer = tmr1Timer
    Left = 224
    Top = 26
  end
end
