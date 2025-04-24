object FormSettParser: TFormSettParser
  Left = 496
  Top = 309
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parser HEX setting'
  ClientHeight = 508
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grp18: TGroupBox
    Left = 4
    Top = 8
    Width = 903
    Height = 495
    TabOrder = 0
    object lbl1: TLabel
      Left = 336
      Top = 15
      Width = 31
      Height = 13
      Caption = 'Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 28
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Val <='
    end
    object lbl56: TLabel
      Left = 144
      Top = 14
      Width = 62
      Height = 13
      Caption = 'Data source:'
    end
    object BtOK: TButton
      Left = 792
      Top = 462
      Width = 105
      Height = 25
      Caption = 'Save and exit'
      TabOrder = 11
      OnClick = BtOKClick
    end
    object grp17: TGroupBox
      Left = 154
      Top = 210
      Width = 501
      Height = 73
      Caption = 'Type of the resulting variable'
      TabOrder = 3
      object lbl57: TLabel
        Left = 352
        Top = 50
        Width = 11
        Height = 19
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rb1: TRadioButton
        Left = 10
        Top = 20
        Width = 55
        Height = 35
        Caption = 'uint8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = rb1Click
      end
      object rb3: TRadioButton
        Left = 190
        Top = 20
        Width = 55
        Height = 35
        Caption = 'int16'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = rb3Click
      end
      object rb4: TRadioButton
        Left = 250
        Top = 20
        Width = 55
        Height = 35
        Caption = 'uint32'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = rb4Click
      end
      object rb2: TRadioButton
        Left = 70
        Top = 20
        Width = 55
        Height = 35
        Caption = 'int8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rb2Click
      end
      object rb5: TRadioButton
        Left = 130
        Top = 20
        Width = 55
        Height = 35
        Caption = 'uint16'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = rb5Click
      end
      object rb6: TRadioButton
        Left = 310
        Top = 20
        Width = 55
        Height = 35
        Caption = 'int32'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = rb6Click
      end
      object rb7: TRadioButton
        Left = 370
        Top = 20
        Width = 55
        Height = 35
        Caption = 'float'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = rb7Click
      end
      object rb10: TRadioButton
        Left = 430
        Top = 20
        Width = 55
        Height = 35
        Caption = 'uint24'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = rb10Click
      end
      object Edt41: TEdit
        Left = 366
        Top = 48
        Width = 61
        Height = 19
        Ctl3D = False
        MaxLength = 9
        ParentCtl3D = False
        TabOrder = 8
        Text = '100000000'
        OnChange = Edt41Change
        OnExit = Edt41Exit
        OnKeyPress = Edt41KeyPress
      end
    end
    object Bt1: TButton
      Left = 682
      Top = 11
      Width = 105
      Height = 22
      Caption = #1057'olor...'
      TabOrder = 2
      OnClick = Bt1Click
    end
    object req1: TStaticText
      Left = 790
      Top = 11
      Width = 105
      Height = 22
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'TEST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object grp19: TGroupBox
      Left = 6
      Top = 44
      Width = 891
      Height = 163
      Caption = 'Packet comparison mask on the first 16 bytes'
      TabOrder = 5
      object lbl50: TLabel
        Left = 814
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl49: TLabel
        Left = 762
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl48: TLabel
        Left = 710
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl47: TLabel
        Left = 658
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl46: TLabel
        Left = 606
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl45: TLabel
        Left = 554
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl44: TLabel
        Left = 502
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl43: TLabel
        Left = 450
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl42: TLabel
        Left = 398
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl41: TLabel
        Left = 346
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl40: TLabel
        Left = 294
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl39: TLabel
        Left = 242
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl38: TLabel
        Left = 190
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl37: TLabel
        Left = 138
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl36: TLabel
        Left = 86
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl35: TLabel
        Left = 34
        Top = 108
        Width = 48
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'XX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object grp1: TGroupBox
        Left = 32
        Top = 32
        Width = 51
        Height = 79
        Caption = '0'
        TabOrder = 0
        object lbl2: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl4: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox1: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt2: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt3: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp2: TGroupBox
        Left = 84
        Top = 32
        Width = 51
        Height = 79
        Caption = '1'
        TabOrder = 1
        object lbl3: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox2: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt1: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt4: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp3: TGroupBox
        Left = 136
        Top = 32
        Width = 51
        Height = 79
        Caption = '2'
        TabOrder = 2
        object lbl6: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl7: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox3: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt5: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt6: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp4: TGroupBox
        Left = 188
        Top = 32
        Width = 51
        Height = 79
        Caption = '3'
        TabOrder = 3
        object lbl8: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl9: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox4: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt7: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt8: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp5: TGroupBox
        Left = 240
        Top = 32
        Width = 51
        Height = 79
        Caption = '4'
        TabOrder = 4
        object lbl10: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl11: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox5: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt9: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt10: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp6: TGroupBox
        Left = 292
        Top = 32
        Width = 51
        Height = 79
        Caption = '5'
        TabOrder = 5
        object lbl12: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl13: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox6: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt11: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt12: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp7: TGroupBox
        Left = 344
        Top = 32
        Width = 51
        Height = 79
        Caption = '6'
        TabOrder = 6
        object lbl14: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl15: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox7: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt13: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt14: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp8: TGroupBox
        Left = 396
        Top = 32
        Width = 51
        Height = 79
        Caption = '7'
        TabOrder = 7
        object lbl16: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl17: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox8: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt15: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt16: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp9: TGroupBox
        Left = 448
        Top = 32
        Width = 51
        Height = 79
        Caption = '8'
        TabOrder = 8
        object lbl18: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl19: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox9: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt17: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt18: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp10: TGroupBox
        Left = 500
        Top = 32
        Width = 51
        Height = 79
        Caption = '9'
        TabOrder = 9
        object lbl20: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl21: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox10: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt19: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt20: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp11: TGroupBox
        Left = 552
        Top = 32
        Width = 51
        Height = 79
        Caption = '10'
        TabOrder = 10
        object lbl22: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl23: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox11: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt21: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt22: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp12: TGroupBox
        Left = 604
        Top = 32
        Width = 51
        Height = 79
        Caption = '11'
        TabOrder = 11
        object lbl24: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl25: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox12: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt23: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt24: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp13: TGroupBox
        Left = 656
        Top = 32
        Width = 51
        Height = 79
        Caption = '12'
        TabOrder = 12
        object lbl26: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl27: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox13: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt25: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt26: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp14: TGroupBox
        Left = 708
        Top = 32
        Width = 51
        Height = 79
        Caption = '13'
        TabOrder = 13
        object lbl28: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl29: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox14: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt27: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt28: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp15: TGroupBox
        Left = 760
        Top = 32
        Width = 51
        Height = 79
        Caption = '14'
        TabOrder = 14
        object lbl30: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl31: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox15: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt29: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt30: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
      object grp16: TGroupBox
        Left = 812
        Top = 32
        Width = 51
        Height = 79
        Caption = '15'
        TabOrder = 15
        object lbl32: TLabel
          Left = 6
          Top = 34
          Width = 9
          Height = 16
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl33: TLabel
          Left = 8
          Top = 52
          Width = 7
          Height = 16
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox16: TCheckBox
          Left = 24
          Top = 12
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object Edt31: TEdit
          Left = 18
          Top = 32
          Width = 25
          Height = 19
          AutoSize = False
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          Text = 'Edt2'
        end
        object Edt32: TEdit
          Left = 18
          Top = 52
          Width = 25
          Height = 19
          AutoSelect = False
          AutoSize = False
          Ctl3D = False
          MaxLength = 2
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Edt2'
        end
      end
    end
    object CheckBox17: TCheckBox
      Left = 6
      Top = 13
      Width = 97
      Height = 17
      Caption = 'Use this parser'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = CheckBox17Click
    end
    object Edt33: TEdit
      Left = 378
      Top = 11
      Width = 301
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 63
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = 'Edt33'
      OnChange = EdtLenPacketChange
    end
    object grp20: TGroupBox
      Left = 660
      Top = 210
      Width = 237
      Height = 73
      Caption = 'Value'
      TabOrder = 6
      object lbl55: TLabel
        Left = 176
        Top = 17
        Width = 35
        Height = 16
        Caption = 'Byte 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl54: TLabel
        Left = 120
        Top = 17
        Width = 35
        Height = 16
        Caption = 'Byte 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl53: TLabel
        Left = 64
        Top = 17
        Width = 35
        Height = 16
        Caption = 'Byte 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl51: TLabel
        Left = 8
        Top = 17
        Width = 35
        Height = 16
        Caption = 'Byte 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edt37: TEdit
        Left = 176
        Top = 33
        Width = 51
        Height = 22
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = 'Edt33'
      end
      object Edt36: TEdit
        Left = 120
        Top = 33
        Width = 51
        Height = 22
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = 'Edt33'
      end
      object Edt35: TEdit
        Left = 64
        Top = 33
        Width = 51
        Height = 22
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = 'Edt33'
      end
      object Edt34: TEdit
        Left = 8
        Top = 33
        Width = 51
        Height = 22
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = 'Edt33'
      end
    end
    object grp21: TGroupBox
      Left = 6
      Top = 210
      Width = 143
      Height = 73
      Caption = 'Packet length'
      TabOrder = 7
      object rb8: TRadioButton
        Left = 8
        Top = 19
        Width = 53
        Height = 20
        Caption = 'Any'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = rb8Click
      end
      object rb9: TRadioButton
        Left = 8
        Top = 43
        Width = 61
        Height = 20
        Caption = 'Fixed:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rb9Click
      end
      object Edt38: TEdit
        Left = 66
        Top = 41
        Width = 67
        Height = 22
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = 'Edt38'
        OnChange = Edt38Change
        OnKeyPress = Edt38KeyPress
      end
    end
    object BtCopy: TButton
      Left = 6
      Top = 462
      Width = 105
      Height = 25
      Caption = 'Copy'
      TabOrder = 8
      OnClick = BtCopyClick
    end
    object BtPaste: TButton
      Left = 110
      Top = 462
      Width = 105
      Height = 25
      Caption = 'Paste'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = BtPasteClick
    end
    object BtClear: TButton
      Left = 214
      Top = 462
      Width = 105
      Height = 25
      Caption = 'Clear'
      TabOrder = 10
      OnClick = BtClearClick
    end
    object grp23: TGroupBox
      Left = 6
      Top = 286
      Width = 891
      Height = 175
      Caption = 'Colors'
      TabOrder = 12
      object grp22: TGroupBox
        Left = 12
        Top = 14
        Width = 209
        Height = 109
        TabOrder = 0
        object lbl34: TLabel
          Left = 28
          Top = 22
          Width = 33
          Height = 13
          Caption = 'Val <='
        end
        object lbl52: TLabel
          Left = 28
          Top = 48
          Width = 33
          Height = 13
          Caption = 'Val >='
        end
        object chk1: TCheckBox
          Left = 6
          Top = 20
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object txt1: TStaticText
          Left = 150
          Top = 20
          Width = 49
          Height = 45
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clRed
          ParentColor = False
          TabOrder = 1
        end
        object edt40: TEdit
          Left = 64
          Top = 46
          Width = 83
          Height = 19
          Ctl3D = False
          MaxLength = 11
          ParentCtl3D = False
          TabOrder = 2
          Text = 'edt40'
        end
        object edt39: TEdit
          Left = 64
          Top = 20
          Width = 83
          Height = 19
          Ctl3D = False
          MaxLength = 11
          ParentCtl3D = False
          TabOrder = 3
          Text = 'edt39'
        end
        object chk2: TCheckBox
          Left = 6
          Top = 46
          Width = 19
          Height = 17
          TabOrder = 4
        end
        object chk6: TCheckBox
          Left = 6
          Top = 82
          Width = 200
          Height = 17
          Caption = 'Expand parser window'
          TabOrder = 5
        end
      end
      object GroupBox1: TGroupBox
        Left = 232
        Top = 14
        Width = 209
        Height = 109
        TabOrder = 1
        object Label1: TLabel
          Left = 28
          Top = 22
          Width = 33
          Height = 13
          Caption = 'Val <='
        end
        object Label2: TLabel
          Left = 28
          Top = 48
          Width = 33
          Height = 13
          Caption = 'Val >='
        end
        object CheckBox18: TCheckBox
          Tag = 1
          Left = 6
          Top = 20
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object StaticText1: TStaticText
          Left = 150
          Top = 20
          Width = 49
          Height = 45
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clYellow
          ParentColor = False
          TabOrder = 1
        end
        object Edit1: TEdit
          Tag = 1
          Left = 64
          Top = 46
          Width = 83
          Height = 19
          Ctl3D = False
          MaxLength = 11
          ParentCtl3D = False
          TabOrder = 2
          Text = 'edt40'
        end
        object Edit2: TEdit
          Tag = 1
          Left = 64
          Top = 20
          Width = 83
          Height = 19
          Ctl3D = False
          MaxLength = 11
          ParentCtl3D = False
          TabOrder = 3
          Text = 'edt39'
        end
        object chk3: TCheckBox
          Tag = 1
          Left = 6
          Top = 46
          Width = 19
          Height = 17
          TabOrder = 4
        end
        object chk7: TCheckBox
          Tag = 1
          Left = 6
          Top = 82
          Width = 200
          Height = 17
          Caption = 'Expand parser window'
          TabOrder = 5
        end
      end
      object GroupBox2: TGroupBox
        Left = 452
        Top = 14
        Width = 209
        Height = 109
        TabOrder = 2
        object Label5: TLabel
          Left = 28
          Top = 22
          Width = 33
          Height = 13
          Caption = 'Val <='
        end
        object Label6: TLabel
          Left = 28
          Top = 48
          Width = 33
          Height = 13
          Caption = 'Val >='
        end
        object CheckBox20: TCheckBox
          Tag = 2
          Left = 6
          Top = 20
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object StaticText3: TStaticText
          Left = 150
          Top = 20
          Width = 49
          Height = 45
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clLime
          ParentColor = False
          TabOrder = 1
        end
        object Edit5: TEdit
          Tag = 2
          Left = 64
          Top = 46
          Width = 83
          Height = 19
          Ctl3D = False
          MaxLength = 11
          ParentCtl3D = False
          TabOrder = 2
          Text = 'edt40'
        end
        object Edit6: TEdit
          Tag = 2
          Left = 64
          Top = 20
          Width = 83
          Height = 19
          Ctl3D = False
          MaxLength = 11
          ParentCtl3D = False
          TabOrder = 3
          Text = 'edt39'
        end
        object chk4: TCheckBox
          Tag = 2
          Left = 6
          Top = 46
          Width = 19
          Height = 17
          TabOrder = 4
        end
        object chk8: TCheckBox
          Tag = 2
          Left = 6
          Top = 82
          Width = 200
          Height = 17
          Caption = 'Expand parser window'
          TabOrder = 5
        end
      end
      object GroupBox3: TGroupBox
        Left = 672
        Top = 14
        Width = 209
        Height = 109
        TabOrder = 3
        object Label7: TLabel
          Left = 28
          Top = 22
          Width = 33
          Height = 13
          Caption = 'Val <='
        end
        object Label8: TLabel
          Left = 28
          Top = 48
          Width = 33
          Height = 13
          Caption = 'Val >='
        end
        object CheckBox21: TCheckBox
          Tag = 3
          Left = 6
          Top = 20
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object StaticText4: TStaticText
          Left = 150
          Top = 20
          Width = 49
          Height = 45
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clAqua
          ParentColor = False
          TabOrder = 1
        end
        object Edit7: TEdit
          Tag = 3
          Left = 64
          Top = 46
          Width = 83
          Height = 19
          Ctl3D = False
          MaxLength = 11
          ParentCtl3D = False
          TabOrder = 2
          Text = 'edt40'
        end
        object Edit8: TEdit
          Tag = 3
          Left = 64
          Top = 20
          Width = 83
          Height = 19
          Ctl3D = False
          MaxLength = 11
          ParentCtl3D = False
          TabOrder = 3
          Text = 'edt39'
        end
        object chk5: TCheckBox
          Tag = 3
          Left = 6
          Top = 46
          Width = 19
          Height = 17
          TabOrder = 4
        end
        object chk9: TCheckBox
          Tag = 3
          Left = 6
          Top = 82
          Width = 200
          Height = 17
          Caption = 'Expand parser window'
          TabOrder = 5
        end
      end
      object grp24: TGroupBox
        Left = 12
        Top = 126
        Width = 869
        Height = 39
        TabOrder = 4
        object chk11: TCheckBox
          Left = 6
          Top = 12
          Width = 249
          Height = 17
          Caption = 'Change color when parameter value changes'
          TabOrder = 0
          OnClick = chk11Click
        end
        object ctxt1: TStaticText
          Left = 304
          Top = 12
          Width = 261
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Parameter color when changed'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = ctxt1Click
        end
        object chk10: TCheckBox
          Left = 596
          Top = 14
          Width = 257
          Height = 17
          Caption = 'Expand parser window on any parameter change'
          TabOrder = 2
          OnClick = chk10Click
        end
      end
    end
    object cbbPort: TComboBox
      Left = 210
      Top = 11
      Width = 99
      Height = 23
      Style = csDropDownList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ItemHeight = 15
      ItemIndex = 0
      ParentFont = False
      TabOrder = 13
      Text = 'Port MAIN'
      OnChange = cbbPortChange
      Items.Strings = (
        'Port MAIN'
        'PortA 1'
        'PortA 2'
        'PortB 1'
        'PortB 2'
        'PortB 3'
        'PortB 4'
        'PortB 5'
        'PortB 6'
        'PortB 7'
        'PortB 8'
        'PortB 9'
        'PortB 10'
        'PortB 11'
        'PortB 12'
        'PortB 13'
        'PortB 14'
        'PortB 15'
        'PortB 16')
    end
  end
  object dlgColor1: TColorDialog
    Left = 674
    Top = 52
  end
end
