object FormUtilites: TFormUtilites
  Left = 582
  Top = 273
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Utilites'
  ClientHeight = 664
  ClientWidth = 926
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object tbc1: TTabControl
    Left = 4
    Top = 2
    Width = 921
    Height = 661
    TabOrder = 0
    Tabs.Strings = (
      'Number generator'
      'File comparison')
    TabIndex = 0
    OnChange = tbc1Change
    object pnlRND: TPanel
      Left = 2
      Top = 22
      Width = 915
      Height = 635
      TabOrder = 0
      object lbl6: TLabel
        Left = 14
        Top = 116
        Width = 24
        Height = 16
        Caption = 'Col:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 14
        Top = 94
        Width = 26
        Height = 16
        Caption = 'Tail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 12
        Top = 72
        Width = 29
        Height = 16
        Caption = 'Sub:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 12
        Top = 50
        Width = 27
        Height = 16
        Caption = 'Cnt:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 8
        Top = 30
        Width = 31
        Height = 16
        Caption = 'Max:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl1: TLabel
        Left = 8
        Top = 8
        Width = 27
        Height = 16
        Caption = 'Min:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object mmoResult: TMemo
        Left = 172
        Top = 6
        Width = 737
        Height = 625
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object Edt1: TEdit
        Left = 44
        Top = 6
        Width = 121
        Height = 21
        Hint = 'Minimum value'
        MaxLength = 10
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '0'
        OnChange = Edt1Change
        OnKeyPress = Edt1KeyPress
      end
      object Edt2: TEdit
        Left = 44
        Top = 28
        Width = 121
        Height = 21
        Hint = 'Maximum value + 1'
        MaxLength = 10
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = '100'
        OnChange = Edt1Change
        OnKeyPress = Edt2KeyPress
      end
      object Edt3: TEdit
        Left = 44
        Top = 50
        Width = 121
        Height = 21
        Hint = 'Number of values'
        MaxLength = 4
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Text = '1'
        OnChange = Edt1Change
        OnKeyPress = Edt3KeyPress
      end
      object Edt4: TEdit
        Left = 44
        Top = 72
        Width = 121
        Height = 21
        Hint = 'Number subtracted from each value'
        MaxLength = 10
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Text = '0'
        OnChange = Edt1Change
        OnKeyPress = Edt4KeyPress
      end
      object Edt5: TEdit
        Left = 44
        Top = 94
        Width = 121
        Height = 21
        Hint = 'Divider between numbers'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object Edt6: TEdit
        Left = 44
        Top = 116
        Width = 121
        Height = 21
        Hint = 'Number of columns of numbers'
        MaxLength = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Text = '1'
        OnChange = Edt1Change
        OnKeyPress = Edt6KeyPress
      end
      object BtnStart: TButton
        Left = 4
        Top = 142
        Width = 163
        Height = 53
        Caption = 'Random numbers'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = BtnStartClick
      end
      object btn1: TButton
        Left = 4
        Top = 200
        Width = 163
        Height = 53
        Caption = 'Sequential numbers'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = btn1Click
      end
      object btn2: TButton
        Left = 4
        Top = 258
        Width = 163
        Height = 53
        Caption = 'Sinusoid numbers'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = btn2Click
      end
      object Button1: TButton
        Left = 4
        Top = 314
        Width = 163
        Height = 53
        Caption = 'Triangular numbers'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = Button1Click
      end
    end
    object pnlHexCmp: TPanel
      Left = 2
      Top = 22
      Width = 915
      Height = 635
      TabOrder = 1
      object BtFile1Open: TButton
        Left = 2
        Top = 2
        Width = 909
        Height = 25
        Caption = 'First file...'
        TabOrder = 0
        OnClick = BtFile1OpenClick
      end
      object BtFile2Open: TButton
        Left = 2
        Top = 26
        Width = 909
        Height = 25
        Caption = 'Second file...'
        TabOrder = 1
        OnClick = BtFile2OpenClick
      end
      object strngrdCmpTable: TStringGrid
        Left = 2
        Top = 52
        Width = 909
        Height = 529
        Color = clBtnFace
        ColCount = 34
        Ctl3D = False
        DefaultColWidth = 24
        RowCount = 1000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnDrawCell = strngrdCmpTableDrawCell
      end
      object BtCompare: TButton
        Left = 0
        Top = 584
        Width = 911
        Height = 25
        Caption = 'Compare'
        Enabled = False
        TabOrder = 3
        OnClick = BtCompareClick
      end
      object BtPrew: TButton
        Left = 0
        Top = 608
        Width = 455
        Height = 25
        Caption = '<<<'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = BtPrewClick
      end
      object BtNextDiff: TButton
        Left = 454
        Top = 608
        Width = 455
        Height = 25
        Caption = '>>>'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = BtNextDiffClick
      end
    end
  end
  object dlgOpenFileOpen: TOpenDialog
    Left = 240
    Top = 332
  end
end
