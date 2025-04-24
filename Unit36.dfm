object frmBarChart: TfrmBarChart
  Left = 484
  Top = 248
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmBarChart'
  ClientHeight = 612
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 320
    Top = 2
    Width = 455
    Height = 19
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 168
    Top = 2
    Width = 149
    Height = 19
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnl1: TPanel
    Left = 2
    Top = 27
    Width = 776
    Height = 500
    TabOrder = 0
    object img1: TImage
      Left = 1
      Top = 1
      Width = 774
      Height = 498
      Align = alClient
      OnMouseMove = img1MouseMove
    end
  end
  object ctxt1: TStaticText
    Left = 2
    Top = 528
    Width = 160
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt1'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    OnMouseMove = ctxt1MouseMove
  end
  object ctxt2: TStaticText
    Left = 616
    Top = 528
    Width = 160
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'ctxt2'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    OnMouseMove = ctxt1MouseMove
  end
  object CheckBox1: TCheckBox
    Left = 4
    Top = 2
    Width = 161
    Height = 19
    Caption = 'Automatic height calculation'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = CheckBox1Click
    OnMouseMove = ctxt1MouseMove
  end
  object req2: TStaticText
    Left = 472
    Top = 590
    Width = 305
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0'
    TabOrder = 4
  end
  object edt1: TEdit
    Left = 308
    Top = 528
    Width = 163
    Height = 19
    Ctl3D = False
    MaxLength = 16
    ParentCtl3D = False
    TabOrder = 5
    Text = '90'
    OnChange = edt1Change
  end
  object ctxt3: TStaticText
    Left = 2
    Top = 590
    Width = 307
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Step = 1'
    TabOrder = 6
  end
  object Button1: TButton
    Left = 310
    Top = 552
    Width = 161
    Height = 19
    Caption = 'Set to last'
    TabOrder = 7
    OnClick = Button1Click
  end
  object grp1: TGroupBox
    Left = 2
    Top = 548
    Width = 305
    Height = 39
    TabOrder = 8
    object trckbr1: TTrackBar
      Left = 4
      Top = 10
      Width = 297
      Height = 25
      Hint = 'Step = 1'
      Max = 25
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ThumbLength = 15
      OnChange = trckbr1Change
    end
  end
  object Bt1: TButton
    Left = 310
    Top = 570
    Width = 161
    Height = 19
    Hint = 'Resetting histogram counters'
    Caption = 'Reset bar chart'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = Bt1Click
    OnMouseMove = ctxt1MouseMove
  end
  object grp2: TGroupBox
    Left = 472
    Top = 548
    Width = 305
    Height = 39
    TabOrder = 10
    object ud1: TUpDown
      Left = 4
      Top = 9
      Width = 297
      Height = 26
      Hint = 'Shift'
      Min = -30000
      Max = 30000
      Orientation = udHorizontal
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ud1Click
      OnMouseMove = ctxt1MouseMove
    end
  end
  object ctxt4: TStaticText
    Left = 310
    Top = 590
    Width = 161
    Height = 17
    Hint = 'Proportion of values in the window'
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
  end
  object trckbr2: TTrackBar
    Left = 784
    Top = 28
    Width = 28
    Height = 499
    Hint = 'Vertical zoom 1:1'
    Ctl3D = False
    Max = 10000
    Min = 1
    Orientation = trVertical
    ParentCtl3D = False
    ParentShowHint = False
    PageSize = 10
    Frequency = 100
    Position = 1
    ShowHint = True
    TabOrder = 12
    OnChange = trckbr2Change
  end
end
