object FormGraph: TFormGraph
  Left = 312
  Top = 39
  Width = 1620
  Height = 979
  BorderIcons = [biSystemMenu]
  Caption = 'Graph'
  Color = clBtnFace
  Constraints.MaxHeight = 979
  Constraints.MaxWidth = 1620
  Constraints.MinHeight = 450
  Constraints.MinWidth = 900
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCanResize = FormCanResize
  OnClick = FormClick
  OnClose = FormClose
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object img1: TImage
    Left = 52
    Top = 31
    Width = 1545
    Height = 860
    Constraints.MaxHeight = 875
    Constraints.MaxWidth = 1593
    Constraints.MinHeight = 50
    Constraints.MinWidth = 100
    OnClick = img1Click
    OnDblClick = img1DblClick
    OnMouseMove = img1MouseMove
  end
  object lbl3: TLabel
    Left = 2
    Top = 4
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
  object lbl4: TLabel
    Left = 4
    Top = 910
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
  object lbl1: TLabel
    Left = 108
    Top = 4
    Width = 88
    Height = 16
    Caption = 'Vertical lines:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 110
    Top = 912
    Width = 56
    Height = 16
    Caption = 'Scale H :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbltxt2: TLabel
    Left = 1420
    Top = 6
    Width = 175
    Height = 17
    AutoSize = False
    Caption = '[ --:--:--:--- ] : ----------'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnDblClick = lbltxt2DblClick
  end
  object lbl2: TLabel
    Left = 3
    Top = 348
    Width = 24
    Height = 13
    Caption = 'H.Lin'
  end
  object Edt1: TEdit
    Left = 35
    Top = 2
    Width = 70
    Height = 19
    Ctl3D = False
    MaxLength = 11
    ParentCtl3D = False
    TabOrder = 0
    Text = '---'
    OnChange = Edt1Change
    OnKeyPress = Edt1KeyPress
  end
  object Edt2: TEdit
    Left = 35
    Top = 910
    Width = 70
    Height = 19
    Ctl3D = False
    MaxLength = 11
    ParentCtl3D = False
    TabOrder = 1
    Text = '---'
    OnChange = Edt2Change
    OnKeyPress = Edt2KeyPress
  end
  object Bt1: TButton
    Left = 1420
    Top = 910
    Width = 177
    Height = 21
    Caption = 'Clear'
    TabOrder = 2
    OnClick = Bt1Click
  end
  object pb1: TProgressBar
    Left = 52
    Top = 898
    Width = 1545
    Height = 7
    TabOrder = 3
  end
  object rb1: TRadioButton
    Left = 212
    Top = 6
    Width = 41
    Height = 15
    Caption = 'No'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TabStop = True
    OnClick = rb1Click
  end
  object rb2: TRadioButton
    Left = 256
    Top = 6
    Width = 59
    Height = 15
    Caption = 'Second'
    Color = clInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    OnClick = rb2Click
  end
  object rb3: TRadioButton
    Left = 318
    Top = 6
    Width = 59
    Height = 15
    Caption = 'Minute'
    Color = clLime
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    OnClick = rb3Click
  end
  object rb4: TRadioButton
    Left = 380
    Top = 6
    Width = 59
    Height = 15
    Caption = 'Hour'
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    OnClick = rb4Click
  end
  object txt1: TStaticText
    Left = 284
    Top = 910
    Width = 39
    Height = 19
    Hint = '1 dot per 1 pixel'
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'txt1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = txt1Click
  end
  object trckbr1: TTrackBar
    Left = 170
    Top = 910
    Width = 111
    Height = 19
    Max = 14
    Min = -2
    PageSize = 1
    Position = 6
    TabOrder = 9
    ThumbLength = 15
    OnChange = trckbr1Change
  end
  object Bt2: TButton
    Left = 326
    Top = 910
    Width = 85
    Height = 21
    Caption = 'Oscilloscope'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Bt2Click
  end
  object CheckBox1: TCheckBox
    Left = 442
    Top = 6
    Width = 71
    Height = 15
    Caption = 'Color zone'
    TabOrder = 11
    OnClick = CheckBox1Click
  end
  object chk1: TCheckBox
    Left = 556
    Top = 6
    Width = 61
    Height = 15
    Caption = 'Bold line'
    TabOrder = 12
    OnClick = chk1Click
  end
  object btn1: TButton
    Left = 412
    Top = 910
    Width = 37
    Height = 21
    Caption = '<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    Visible = False
    OnClick = btn1Click
  end
  object btn3: TButton
    Left = 448
    Top = 910
    Width = 37
    Height = 21
    Caption = '||'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    Visible = False
    OnClick = btn3Click
  end
  object btn2: TButton
    Left = 484
    Top = 910
    Width = 37
    Height = 21
    Caption = '>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    Visible = False
    OnClick = btn2Click
  end
  object chk2: TCheckBox
    Left = 618
    Top = 6
    Width = 71
    Height = 15
    Caption = 'Autoscale'
    TabOrder = 16
    Visible = False
    OnClick = chk2Click
  end
  object thrVal: TTrackBar
    Left = 30
    Top = 23
    Width = 19
    Height = 876
    Ctl3D = True
    Max = 1000
    Orientation = trVertical
    ParentCtl3D = False
    ParentShowHint = False
    Frequency = 1000
    Position = 1000
    ShowHint = True
    TabOrder = 17
    ThumbLength = 15
    OnChange = thrValChange
  end
  object btn000: TButton
    Left = 522
    Top = 910
    Width = 37
    Height = 21
    Hint = 'Move plotter to start position'
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
    Visible = False
    OnClick = btn000Click
  end
  object chkShowGrid: TCheckBox
    Left = 514
    Top = 6
    Width = 41
    Height = 15
    Caption = 'Grid'
    TabOrder = 19
    OnClick = chkShowGridClick
  end
  object Button1: TButton
    Left = 558
    Top = 910
    Width = 135
    Height = 21
    Hint = 
      'Scroll the chart at the desired time. The time is selected by cl' +
      'icking on the graph area.'
    Caption = '0000.00.00.00:00:00.000'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 20
    Visible = False
    OnClick = Button1Click
  end
  object ud1: TUpDown
    Left = 4
    Top = 66
    Width = 23
    Height = 43
    Hint = 'Change the scale of the scale vertically'
    Min = -32768
    Max = 32767
    ParentShowHint = False
    ShowHint = True
    TabOrder = 21
    OnClick = ud1Click
  end
  object ud3: TUpDown
    Left = 4
    Top = 162
    Width = 23
    Height = 43
    Hint = 'Vertical shift of the graph'
    Min = -32768
    Max = 32767
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
    OnClick = ud3Click
  end
  object btn4: TButton
    Left = 4
    Top = 212
    Width = 23
    Height = 25
    Hint = 'Set the first point to the center of the vertical scale'
    Caption = '1/2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 23
    OnClick = btn4Click
  end
  object ctxt1: TStaticText
    Left = 2
    Top = 144
    Width = 26
    Height = 17
    Alignment = taCenter
    Caption = 'Shift'
    TabOrder = 24
  end
  object ctxt2: TStaticText
    Left = 2
    Top = 24
    Width = 26
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = 'Zoom'
    TabOrder = 25
  end
  object ctxt3: TStaticText
    Left = 2
    Top = 44
    Width = 26
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = '+'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 26
  end
  object ctxt4: TStaticText
    Left = 2
    Top = 110
    Width = 26
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = '-'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 27
  end
  object chk3: TCheckBox
    Left = 8
    Top = 242
    Width = 15
    Height = 17
    Hint = 
      'Automatically sets the first point to the center of the vertical' +
      ' scale'
    Caption = 'chk3'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 28
    Visible = False
    OnClick = chk3Click
  end
  object ctxt5: TStaticText
    Left = 2
    Top = 260
    Width = 27
    Height = 17
    Alignment = taCenter
    Caption = 'Auto'
    TabOrder = 29
    Visible = False
  end
  object ctxt6: TStaticText
    Left = 2
    Top = 276
    Width = 25
    Height = 17
    Alignment = taCenter
    Caption = 'pos.'
    TabOrder = 30
    Visible = False
  end
  object Bt3: TButton
    Left = 4
    Top = 300
    Width = 23
    Height = 25
    Hint = 'Remember the current position of the vertical mark'
    Caption = 'M'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 31
    OnClick = Bt3Click
  end
  object CheckBox2: TCheckBox
    Left = 8
    Top = 330
    Width = 15
    Height = 17
    TabOrder = 32
    OnClick = CheckBox2Click
  end
  object tmrClear: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrClearTimer
    Left = 416
    Top = 118
  end
  object tmrOutGraph: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrOutGraphTimer
    Left = 456
    Top = 298
  end
  object tmrUpdAddLine: TTimer
    Enabled = False
    Interval = 20
    OnTimer = tmrUpdAddLineTimer
    Left = 424
    Top = 456
  end
  object tmrL: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrLTimer
    Left = 208
    Top = 554
  end
  object tmrR: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrRTimer
    Left = 270
    Top = 556
  end
end
