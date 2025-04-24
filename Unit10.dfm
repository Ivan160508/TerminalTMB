object FormSetParsASCII: TFormSetParsASCII
  Left = 588
  Top = 260
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parser ASCII setting'
  ClientHeight = 401
  ClientWidth = 913
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
    Height = 389
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
    object lbl56: TLabel
      Left = 144
      Top = 14
      Width = 62
      Height = 13
      Caption = 'Data source:'
    end
    object btnBtOK: TButton
      Left = 792
      Top = 356
      Width = 105
      Height = 25
      Caption = 'Save and exit'
      TabOrder = 7
      OnClick = btnBtOKClick
    end
    object btnBt1: TButton
      Left = 682
      Top = 11
      Width = 105
      Height = 22
      Caption = #1057'olor...'
      TabOrder = 2
      OnClick = btnBt1Click
    end
    object ctxtreq1: TStaticText
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
      TabOrder = 3
    end
    object chk26: TCheckBox
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
      OnClick = chk26Click
    end
    object edtEdt33: TEdit
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
      Text = 'edtEdt33'
      OnChange = edtEdt33Change
    end
    object btnBtCopy: TButton
      Left = 6
      Top = 356
      Width = 105
      Height = 25
      Caption = 'Copy'
      TabOrder = 4
      OnClick = btnBtCopyClick
    end
    object btnBtPaste: TButton
      Left = 110
      Top = 356
      Width = 105
      Height = 25
      Caption = 'Paste'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnBtPasteClick
    end
    object btnBtClear: TButton
      Left = 214
      Top = 356
      Width = 105
      Height = 25
      Caption = 'Clear'
      TabOrder = 6
      OnClick = btnBtClearClick
    end
    object grp23: TGroupBox
      Left = 6
      Top = 214
      Width = 891
      Height = 135
      Caption = 'Colors'
      TabOrder = 8
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
        object ctxttxt1: TStaticText
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
          OnKeyPress = EdtMinusKeyPress
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
          OnKeyPress = EdtMinusKeyPress
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
      object grp24: TGroupBox
        Left = 232
        Top = 14
        Width = 209
        Height = 109
        TabOrder = 1
        object lbl58: TLabel
          Left = 28
          Top = 22
          Width = 33
          Height = 13
          Caption = 'Val <='
        end
        object lbl59: TLabel
          Left = 28
          Top = 48
          Width = 33
          Height = 13
          Caption = 'Val >='
        end
        object chk27: TCheckBox
          Tag = 1
          Left = 6
          Top = 20
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object ctxt1: TStaticText
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
        object edt41: TEdit
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
          OnKeyPress = EdtMinusKeyPress
        end
        object edt42: TEdit
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
          OnKeyPress = EdtMinusKeyPress
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
      object grp25: TGroupBox
        Left = 452
        Top = 14
        Width = 209
        Height = 109
        TabOrder = 2
        object lbl60: TLabel
          Left = 28
          Top = 22
          Width = 33
          Height = 13
          Caption = 'Val <='
        end
        object lbl61: TLabel
          Left = 28
          Top = 48
          Width = 33
          Height = 13
          Caption = 'Val >='
        end
        object chk28: TCheckBox
          Tag = 2
          Left = 6
          Top = 20
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object ctxt2: TStaticText
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
        object edt43: TEdit
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
          OnKeyPress = EdtMinusKeyPress
        end
        object edt44: TEdit
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
          OnKeyPress = EdtMinusKeyPress
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
      object grp26: TGroupBox
        Left = 672
        Top = 14
        Width = 209
        Height = 109
        TabOrder = 3
        object lbl62: TLabel
          Left = 28
          Top = 22
          Width = 33
          Height = 13
          Caption = 'Val <='
        end
        object lbl63: TLabel
          Left = 28
          Top = 48
          Width = 33
          Height = 13
          Caption = 'Val >='
        end
        object chk29: TCheckBox
          Tag = 3
          Left = 6
          Top = 20
          Width = 19
          Height = 17
          TabOrder = 0
        end
        object ctxt3: TStaticText
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
        object edt45: TEdit
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
          OnKeyPress = EdtMinusKeyPress
        end
        object edt46: TEdit
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
          OnKeyPress = EdtMinusKeyPress
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
      TabOrder = 9
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
    object grp1: TGroupBox
      Left = 6
      Top = 44
      Width = 891
      Height = 167
      TabOrder = 10
      object lbl2: TLabel
        Left = 6
        Top = 46
        Width = 106
        Height = 16
        Caption = 'Starting substring:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 6
        Top = 78
        Width = 124
        Height = 16
        Caption = 'Parameter separator:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 6
        Top = 110
        Width = 151
        Height = 16
        Caption = 'Parameter number in line:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 6
        Top = 14
        Width = 99
        Height = 16
        Caption = 'Beginning of line:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 6
        Top = 134
        Width = 166
        Height = 16
        Caption = 'Multiplier ( for the plotter ) : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edt1: TEdit
        Left = 134
        Top = 44
        Width = 130
        Height = 21
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 16
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = 'edt1'
        OnChange = edt1Change
      end
      object edt2: TEdit
        Left = 134
        Top = 76
        Width = 20
        Height = 21
        AutoSize = False
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = ','
        OnChange = edt2Change
        OnDblClick = SepDblClick
      end
      object edt3: TEdit
        Left = 156
        Top = 76
        Width = 20
        Height = 21
        AutoSize = False
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = ','
        OnChange = edt3Change
        OnDblClick = SepDblClick
      end
      object edt4: TEdit
        Left = 178
        Top = 76
        Width = 20
        Height = 21
        AutoSize = False
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = ','
        OnChange = edt4Change
        OnDblClick = SepDblClick
      end
      object edt5: TEdit
        Left = 200
        Top = 76
        Width = 20
        Height = 21
        AutoSize = False
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Text = ','
        OnChange = edt5Change
        OnDblClick = SepDblClick
      end
      object edt6: TEdit
        Left = 168
        Top = 106
        Width = 32
        Height = 21
        AutoSize = False
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 3
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '123'
        OnChange = edt6Change
        OnKeyPress = EdtKeyPress
      end
      object mmo1: TMemo
        Left = 274
        Top = 12
        Width = 611
        Height = 115
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        Lines.Strings = (
          #1054#1073#1088#1072#1079#1077#1094)
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
        OnChange = mmo1Change
      end
      object cbb1: TComboBox
        Left = 202
        Top = 106
        Width = 64
        Height = 22
        Style = csOwnerDrawFixed
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 16
        ItemIndex = 0
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        Text = 'String'
        OnChange = cbb1Change
        Items.Strings = (
          'String'
          'Int'
          'Float')
      end
      object btn1: TButton
        Left = 274
        Top = 132
        Width = 75
        Height = 21
        Caption = 'Convert'
        TabOrder = 8
        OnClick = btn1Click
      end
      object ctxt4: TStaticText
        Left = 352
        Top = 132
        Width = 533
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object edt7: TEdit
        Left = 222
        Top = 76
        Width = 20
        Height = 21
        AutoSize = False
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        Text = ','
        OnChange = edt7Change
        OnDblClick = SepDblClick
      end
      object edt8: TEdit
        Left = 244
        Top = 76
        Width = 20
        Height = 21
        AutoSize = False
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        Text = ','
        OnChange = edt8Change
        OnDblClick = SepDblClick
      end
      object Edt9: TEdit
        Left = 134
        Top = 12
        Width = 130
        Height = 21
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 16
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        Text = 'edt1'
        OnChange = Edt9Change
      end
      object Edt10: TEdit
        Left = 202
        Top = 132
        Width = 63
        Height = 21
        Ctl3D = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
        Text = 'Edt10'
        OnChange = Edt10Change
        OnKeyPress = EdtKeyPress
      end
    end
  end
  object ColorDialog1: TColorDialog
    Left = 472
    Top = 66
  end
end
