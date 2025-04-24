object FormSetSendData: TFormSetSendData
  Left = 962
  Top = 474
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'FormSetSendData'
  ClientHeight = 144
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 4
    Top = 4
    Width = 327
    Height = 105
    TabOrder = 0
    object chk1: TCheckBox
      Left = 10
      Top = 12
      Width = 70
      Height = 17
      Caption = 'PortB_1'
      TabOrder = 0
    end
    object chk2: TCheckBox
      Left = 10
      Top = 32
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 1
    end
    object chk3: TCheckBox
      Left = 10
      Top = 54
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 2
    end
    object chk4: TCheckBox
      Left = 10
      Top = 76
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 3
    end
    object chk5: TCheckBox
      Left = 90
      Top = 12
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 4
    end
    object chk6: TCheckBox
      Left = 90
      Top = 32
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 5
    end
    object chk7: TCheckBox
      Left = 90
      Top = 54
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 6
    end
    object chk8: TCheckBox
      Left = 90
      Top = 76
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 7
    end
    object chk9: TCheckBox
      Left = 170
      Top = 12
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 8
    end
    object chk10: TCheckBox
      Left = 170
      Top = 32
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 9
    end
    object chk11: TCheckBox
      Left = 170
      Top = 54
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 10
    end
    object chk12: TCheckBox
      Left = 170
      Top = 76
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 11
    end
    object chk13: TCheckBox
      Left = 250
      Top = 12
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 12
    end
    object chk14: TCheckBox
      Left = 250
      Top = 32
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 13
    end
    object chk15: TCheckBox
      Left = 250
      Top = 54
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 14
    end
    object chk16: TCheckBox
      Left = 250
      Top = 76
      Width = 70
      Height = 17
      Caption = 'chk1'
      TabOrder = 15
    end
  end
  object Bt1: TButton
    Left = 270
    Top = 114
    Width = 61
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Bt1Click
  end
  object Bt2: TButton
    Left = 204
    Top = 114
    Width = 61
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Bt2Click
  end
  object Bt3: TButton
    Left = 4
    Top = 114
    Width = 197
    Height = 25
    Caption = 'Reset data forwarding for all ports'
    TabOrder = 3
    OnClick = Bt3Click
  end
end
