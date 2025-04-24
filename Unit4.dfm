object Info: TInfo
  Left = 857
  Top = 155
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Info'
  ClientHeight = 193
  ClientWidth = 565
  Color = clLime
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
  object Button1: TButton
    Left = 8
    Top = 28
    Width = 37
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object grp1: TGroupBox
    Left = 2
    Top = 2
    Width = 561
    Height = 187
    Color = clLime
    ParentColor = False
    TabOrder = 1
    object req2: TStaticText
      Left = 4
      Top = 8
      Width = 553
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Terminal for working with COM port'
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object req3: TStaticText
      Left = 4
      Top = 28
      Width = 553
      Height = 33
      Alignment = taCenter
      AutoSize = False
      Caption = 'TerminalTMB v3.87'
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object req11: TStaticText
      Left = 4
      Top = 60
      Width = 553
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Terminal for working with COM port'
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object mmo1: TMemo
      Left = 6
      Top = 82
      Width = 549
      Height = 89
      Alignment = taCenter
      Color = clLime
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        'FREE program. Distributed as is. '
        'The author does not bear any responsibility '
        'for possible direct or indirect damage as a '
        'result of using this program.')
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
end
