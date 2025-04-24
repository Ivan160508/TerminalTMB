object FormMacroEditing: TFormMacroEditing
  Left = 602
  Top = 497
  Width = 895
  Height = 161
  BorderIcons = [biSystemMenu]
  Caption = 'Macro editing'
  Color = clBtnFace
  Constraints.MaxHeight = 161
  Constraints.MaxWidth = 2000
  Constraints.MinHeight = 161
  Constraints.MinWidth = 450
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCanResize = FormCanResize
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 4
    Top = 2
    Width = 873
    Height = 115
    TabOrder = 0
    object lbl2: TLabel
      Left = 6
      Top = 44
      Width = 67
      Height = 16
      Caption = 'Command:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 6
      Top = 18
      Width = 40
      Height = 16
      Caption = 'Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Btbtn2: TButton
      Left = 784
      Top = 74
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = Btbtn2Click
    end
    object Btbtn1: TButton
      Left = 704
      Top = 74
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = Btbtn1Click
    end
    object Edtedt1: TEdit
      Left = 78
      Top = 14
      Width = 781
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 254
      ParentFont = False
      TabOrder = 2
      Text = 'Edtedt1'
      OnChange = Edtedt1Change
    end
    object Edtedt2: TEdit
      Left = 78
      Top = 40
      Width = 781
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      MaxLength = 254
      ParentFont = False
      TabOrder = 3
      Text = 'Edtedt2'
      OnChange = Edtedt2Change
    end
    object Bt1: TButton
      Left = 78
      Top = 74
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 4
      OnClick = Bt1Click
    end
    object Bt2: TButton
      Left = 158
      Top = 74
      Width = 75
      Height = 25
      Hint = 'Specify file to send to port'
      Caption = 'Send file...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Bt2Click
    end
  end
  object dlgOpen1: TOpenDialog
    Left = 338
    Top = 72
  end
end
