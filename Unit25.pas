unit Unit25;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Common, ExtCtrls, TerminalST;

type
  TCtrlColor = record
    UseMax : TCheckBox;
    UseMin : TCheckBox;
    AutoMaxWindow : TCheckBox;
    EdtMin : TEdit;
    EdtMax : TEdit;
    LblMin : TLabel;
    LblMax : TLabel;

  end;


type
  TVisSett = record
    UseParser    : TCheckBox;
    CheckBoxMask : array[0..15] of TCheckBox;
    LabelMask    : array[0..15] of TLabel;
    EdtDec       : array[0..15] of TEdit;
    EdtHex       : array[0..15] of TEdit;
    EdtName      : TEdit;
    StColor      : TStaticText;
    EdtNumByte   : array[0..3] of TEdit;
    RBType       : array[0..7] of TRadioButton;
    CtrlColor    : array[0..3] of TCtrlColor;
  end;


type
  TFormSettParser = class(TForm)
    dlgColor1: TColorDialog;
    grp18: TGroupBox;
    BtOK: TButton;
    grp17: TGroupBox;
    rb1: TRadioButton;
    rb3: TRadioButton;
    rb4: TRadioButton;
    rb2: TRadioButton;
    rb5: TRadioButton;
    rb6: TRadioButton;
    rb7: TRadioButton;
    Bt1: TButton;
    req1: TStaticText;
    grp19: TGroupBox;
    grp1: TGroupBox;
    lbl2: TLabel;
    lbl4: TLabel;
    CheckBox1: TCheckBox;
    Edt2: TEdit;
    Edt3: TEdit;
    grp2: TGroupBox;
    lbl3: TLabel;
    lbl5: TLabel;
    CheckBox2: TCheckBox;
    Edt1: TEdit;
    Edt4: TEdit;
    grp3: TGroupBox;
    lbl6: TLabel;
    lbl7: TLabel;
    CheckBox3: TCheckBox;
    Edt5: TEdit;
    Edt6: TEdit;
    grp4: TGroupBox;
    lbl8: TLabel;
    lbl9: TLabel;
    CheckBox4: TCheckBox;
    Edt7: TEdit;
    Edt8: TEdit;
    grp5: TGroupBox;
    lbl10: TLabel;
    lbl11: TLabel;
    CheckBox5: TCheckBox;
    Edt9: TEdit;
    Edt10: TEdit;
    grp6: TGroupBox;
    lbl12: TLabel;
    lbl13: TLabel;
    CheckBox6: TCheckBox;
    Edt11: TEdit;
    Edt12: TEdit;
    grp7: TGroupBox;
    lbl14: TLabel;
    lbl15: TLabel;
    CheckBox7: TCheckBox;
    Edt13: TEdit;
    Edt14: TEdit;
    grp8: TGroupBox;
    lbl16: TLabel;
    lbl17: TLabel;
    CheckBox8: TCheckBox;
    Edt15: TEdit;
    Edt16: TEdit;
    grp9: TGroupBox;
    lbl18: TLabel;
    lbl19: TLabel;
    CheckBox9: TCheckBox;
    Edt17: TEdit;
    Edt18: TEdit;
    grp10: TGroupBox;
    lbl20: TLabel;
    lbl21: TLabel;
    CheckBox10: TCheckBox;
    Edt19: TEdit;
    Edt20: TEdit;
    grp11: TGroupBox;
    lbl22: TLabel;
    lbl23: TLabel;
    CheckBox11: TCheckBox;
    Edt21: TEdit;
    Edt22: TEdit;
    grp12: TGroupBox;
    lbl24: TLabel;
    lbl25: TLabel;
    CheckBox12: TCheckBox;
    Edt23: TEdit;
    Edt24: TEdit;
    grp13: TGroupBox;
    lbl26: TLabel;
    lbl27: TLabel;
    CheckBox13: TCheckBox;
    Edt25: TEdit;
    Edt26: TEdit;
    grp14: TGroupBox;
    lbl28: TLabel;
    lbl29: TLabel;
    CheckBox14: TCheckBox;
    Edt27: TEdit;
    Edt28: TEdit;
    grp15: TGroupBox;
    lbl30: TLabel;
    lbl31: TLabel;
    CheckBox15: TCheckBox;
    Edt29: TEdit;
    Edt30: TEdit;
    grp16: TGroupBox;
    lbl32: TLabel;
    lbl33: TLabel;
    CheckBox16: TCheckBox;
    Edt31: TEdit;
    Edt32: TEdit;
    lbl50: TLabel;
    lbl49: TLabel;
    lbl48: TLabel;
    lbl47: TLabel;
    lbl46: TLabel;
    lbl45: TLabel;
    lbl44: TLabel;
    lbl43: TLabel;
    lbl42: TLabel;
    lbl41: TLabel;
    lbl40: TLabel;
    lbl39: TLabel;
    lbl38: TLabel;
    lbl37: TLabel;
    lbl36: TLabel;
    lbl35: TLabel;
    CheckBox17: TCheckBox;
    lbl1: TLabel;
    Edt33: TEdit;
    grp20: TGroupBox;
    Edt37: TEdit;
    lbl55: TLabel;
    Edt36: TEdit;
    lbl54: TLabel;
    Edt35: TEdit;
    lbl53: TLabel;
    Edt34: TEdit;
    lbl51: TLabel;
    grp21: TGroupBox;
    rb8: TRadioButton;
    rb9: TRadioButton;
    Edt38: TEdit;
    BtCopy: TButton;
    BtPaste: TButton;
    BtClear: TButton;
    Label4: TLabel;
    grp23: TGroupBox;
    grp22: TGroupBox;
    lbl34: TLabel;
    lbl52: TLabel;
    chk1: TCheckBox;
    txt1: TStaticText;
    edt40: TEdit;
    edt39: TEdit;
    chk2: TCheckBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox18: TCheckBox;
    StaticText1: TStaticText;
    Edit1: TEdit;
    Edit2: TEdit;
    chk3: TCheckBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    CheckBox20: TCheckBox;
    StaticText3: TStaticText;
    Edit5: TEdit;
    Edit6: TEdit;
    chk4: TCheckBox;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    CheckBox21: TCheckBox;
    StaticText4: TStaticText;
    Edit7: TEdit;
    Edit8: TEdit;
    chk5: TCheckBox;
    chk6: TCheckBox;
    chk7: TCheckBox;
    chk8: TCheckBox;
    chk9: TCheckBox;
    rb10: TRadioButton;
    cbbPort: TComboBox;
    lbl56: TLabel;
    Edt41: TEdit;
    lbl57: TLabel;
    grp24: TGroupBox;
    chk11: TCheckBox;
    ctxt1: TStaticText;
    chk10: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CheckBox17Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb5Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure rb4Click(Sender: TObject);
    procedure rb6Click(Sender: TObject);
    procedure rb7Click(Sender: TObject);
    procedure SetActiveBytes;
    procedure CheckBoxUseByte(Sender: TObject);
    procedure EdtLenPacketChange(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure EdtNumBytesPress(Sender: TObject; var Key: Char);
    procedure EdtNumBytesChange(Sender: TObject);
    procedure EdtByteHexKeyPress(Sender: TObject; var Key: Char);
    procedure EdtByteDecKeyPress(Sender: TObject; var Key: Char);
    procedure EdtByteDecChange(Sender: TObject);
    procedure EdtByteHexChange(Sender: TObject);
    procedure rb8Click(Sender: TObject);
    procedure rb9Click(Sender: TObject);
    procedure Edt38KeyPress(Sender: TObject; var Key: Char);
    procedure Edt38Change(Sender: TObject);
    procedure BtOKClick(Sender: TObject);
    procedure BtCopyClick(Sender: TObject);
    procedure BtPasteClick(Sender: TObject);
    procedure BtClearClick(Sender: TObject);
    procedure UseMinCBClick(Sender: TObject);
    procedure UseMaxCBClick(Sender: TObject);
    procedure AutoMaxCBClick(Sender: TObject);

    procedure EdtThrKeyPress(Sender: TObject; var Key: Char);
    procedure EdtMaxChange(Sender: TObject);
    procedure EdtMinChange(Sender: TObject);
    procedure rb10Click(Sender: TObject);
    //procedure rbPortMainClick(Sender: TObject);
    //procedure rbPort1Click(Sender: TObject);
    //procedure rbPort2Click(Sender: TObject);
    procedure cbbPortChange(Sender: TObject);
    procedure Edt41Change(Sender: TObject);
    procedure Edt41Exit(Sender: TObject);
    procedure Edt41KeyPress(Sender: TObject; var Key: Char);
    procedure chk11Click(Sender: TObject);
    procedure chk10Click(Sender: TObject);
    procedure ctxt1Click(Sender: TObject);


    //procedure EdtLenPacketChange(Sender: TObject);

  private
    { Private declarations }
  public
    SettParser : TSettParser;
    SettParserAdd : TParserSettingsAdd;
    IsSave : Boolean;
    SettParserCopy : TSettParser;
    SettParserAddCopy : TParserSettingsAdd;
    IsCopyParser : Boolean;
    { Public declarations }
  end;

var
  FormSettParser: TFormSettParser;
  VisSett        : TVisSett;
  isEnChange     : Boolean;
implementation

uses Unit32, Unit42;


{$R *.dfm}

procedure TFormSettParser.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  isEnChange := False;


  For i:= 0 to 15 do
    begin
      SettParserCopy.isUseByteCmp[i] := False;
      SettParserCopy.UseByteCmp[i] := 0;
    end;
  For i:= 0 to 3 do
    SettParserCopy.NumUseBytes[i] := 0;

  SettParserCopy.isUseParser := False;
  SettParserCopy.NameParam := 'No';
  SettParserCopy.TypeParam := uint8;
  SettParserCopy.isCheckLen := False;
  SettParserCopy.PacketLen := 0;
  SettParserCopy.Color := SettParser.Color;
  SettParserCopy.YMin := -99999999;
  SettParserCopy.YMax := 99999999;

  VisSett.UseParser := CheckBox17;
  VisSett.CheckBoxMask[0] := CheckBox1;
  VisSett.CheckBoxMask[1] := CheckBox2;
  VisSett.CheckBoxMask[2] := CheckBox3;
  VisSett.CheckBoxMask[3] := CheckBox4;
  VisSett.CheckBoxMask[4] := CheckBox5;
  VisSett.CheckBoxMask[5] := CheckBox6;
  VisSett.CheckBoxMask[6] := CheckBox7;
  VisSett.CheckBoxMask[7] := CheckBox8;
  VisSett.CheckBoxMask[8] := CheckBox9;
  VisSett.CheckBoxMask[9] := CheckBox10;
  VisSett.CheckBoxMask[10] := CheckBox11;
  VisSett.CheckBoxMask[11] := CheckBox12;
  VisSett.CheckBoxMask[12] := CheckBox13;
  VisSett.CheckBoxMask[13] := CheckBox14;
  VisSett.CheckBoxMask[14] := CheckBox15;
  VisSett.CheckBoxMask[15] := CheckBox16;

  VisSett.EdtDec[0]  := Edt2;
  VisSett.EdtDec[1]  := Edt1;
  VisSett.EdtDec[2]  := Edt5;
  VisSett.EdtDec[3]  := Edt7;
  VisSett.EdtDec[4]  := Edt9;
  VisSett.EdtDec[5]  := Edt11;
  VisSett.EdtDec[6]  := Edt13;
  VisSett.EdtDec[7]  := Edt15;
  VisSett.EdtDec[8]  := Edt17;
  VisSett.EdtDec[9]  := Edt19;
  VisSett.EdtDec[10] := Edt21;
  VisSett.EdtDec[11] := Edt23;
  VisSett.EdtDec[12] := Edt25;
  VisSett.EdtDec[13] := Edt27;
  VisSett.EdtDec[14] := Edt29;
  VisSett.EdtDec[15] := Edt31;

  VisSett.EdtHex[0]  := Edt3;
  VisSett.EdtHex[1]  := Edt4;
  VisSett.EdtHex[2]  := Edt6;
  VisSett.EdtHex[3]  := Edt8;
  VisSett.EdtHex[4]  := Edt10;
  VisSett.EdtHex[5]  := Edt12;
  VisSett.EdtHex[6]  := Edt14;
  VisSett.EdtHex[7]  := Edt16;
  VisSett.EdtHex[8]  := Edt18;
  VisSett.EdtHex[9]  := Edt20;
  VisSett.EdtHex[10] := Edt22;
  VisSett.EdtHex[11] := Edt24;
  VisSett.EdtHex[12] := Edt26;
  VisSett.EdtHex[13] := Edt28;
  VisSett.EdtHex[14] := Edt30;
  VisSett.EdtHex[15] := Edt32;

  VisSett.LabelMask[0]  := lbl35;
  VisSett.LabelMask[1]  := lbl36;
  VisSett.LabelMask[2]  := lbl37;
  VisSett.LabelMask[3]  := lbl38;
  VisSett.LabelMask[4]  := lbl39;
  VisSett.LabelMask[5]  := lbl40;
  VisSett.LabelMask[6]  := lbl41;
  VisSett.LabelMask[7]  := lbl42;
  VisSett.LabelMask[8]  := lbl43;
  VisSett.LabelMask[9]  := lbl44;
  VisSett.LabelMask[10] := lbl45;
  VisSett.LabelMask[11] := lbl46;
  VisSett.LabelMask[12] := lbl47;
  VisSett.LabelMask[13] := lbl48;
  VisSett.LabelMask[14] := lbl49;
  VisSett.LabelMask[15] := lbl50;

  VisSett.EdtName := Edt33;
  VisSett.StColor := req1;

  VisSett.EdtNumByte[0] := Edt34;
  VisSett.EdtNumByte[1] := Edt35;
  VisSett.EdtNumByte[2] := Edt36;
  VisSett.EdtNumByte[3] := Edt37;




  VisSett.StColor       := req1;

  VisSett.RBType[0] :=  rb1;
  VisSett.RBType[1] :=  rb2;
  VisSett.RBType[2] :=  rb5;
  VisSett.RBType[3] :=  rb3;
  VisSett.RBType[4] :=  rb4;
  VisSett.RBType[5] :=  rb6;
  VisSett.RBType[6] :=  rb7;
  VisSett.RBType[7] :=  rb10;

  VisSett.CtrlColor[0].UseMax := chk1;
  VisSett.CtrlColor[0].UseMin := chk2;
  VisSett.CtrlColor[0].EdtMax := edt39;
  VisSett.CtrlColor[0].EdtMin := edt40;
  VisSett.CtrlColor[0].LblMax := lbl34;
  VisSett.CtrlColor[0].LblMin := lbl52;
  VisSett.CtrlColor[0].AutoMaxWindow := chk6;

  VisSett.CtrlColor[1].UseMax := CheckBox18;
  VisSett.CtrlColor[1].UseMin := chk3;

  VisSett.CtrlColor[1].EdtMax := Edit2;
  VisSett.CtrlColor[1].EdtMin := Edit1;
  VisSett.CtrlColor[1].LblMax := Label1;
  VisSett.CtrlColor[1].LblMin := Label2;
  VisSett.CtrlColor[1].AutoMaxWindow := chk7;


  VisSett.CtrlColor[2].UseMax := CheckBox20;
  VisSett.CtrlColor[2].UseMin := chk4;

  VisSett.CtrlColor[2].EdtMax := Edit6;
  VisSett.CtrlColor[2].EdtMin := Edit5;
  VisSett.CtrlColor[2].LblMax := Label5;
  VisSett.CtrlColor[2].LblMin := Label6;
  VisSett.CtrlColor[2].AutoMaxWindow := chk8;


  VisSett.CtrlColor[3].UseMax := CheckBox21;
  VisSett.CtrlColor[3].UseMin := chk5;

  VisSett.CtrlColor[3].EdtMax := Edit8;
  VisSett.CtrlColor[3].EdtMin := Edit7;
  VisSett.CtrlColor[3].LblMax := Label7;
  VisSett.CtrlColor[3].LblMin := Label8;
  VisSett.CtrlColor[3].AutoMaxWindow := chk9;

  for i := 0 to 15 do
    begin
      VisSett.CheckBoxMask[i].Tag := i;
      VisSett.EdtHex[i].Tag := i;
      VisSett.EdtDec[i].Tag := i;
      VisSett.CheckBoxMask[i].OnClick := CheckBoxUseByte;
      VisSett.EdtHex[i].OnKeyPress := EdtByteHexKeyPress;
      VisSett.EdtDec[i].OnKeyPress := EdtByteDecKeyPress;
      VisSett.EdtDec[i].OnChange := EdtByteDecChange;
      VisSett.EdtHex[i].OnChange := EdtByteHexChange;
    end;

  for i:= 0 to 3 do
    begin
      VisSett.EdtNumByte[i].OnKeyPress := EdtNumBytesPress;
      VisSett.EdtNumByte[i].OnChange := EdtNumBytesChange;
      VisSett.EdtNumByte[i].Tag := 3 - i;
    end;

  for i:= 0 to 3 do
    begin
      VisSett.CtrlColor[i].UseMin.OnClick := UseMinCBClick;
      VisSett.CtrlColor[i].UseMax.OnClick := UseMaxCBClick;

      VisSett.CtrlColor[i].EdtMin.OnChange := EdtMinChange;
      VisSett.CtrlColor[i].EdtMax.OnChange := EdtMaxChange;
      VisSett.CtrlColor[i].EdtMin.OnKeyPress := EdtThrKeyPress;
      VisSett.CtrlColor[i].EdtMax.OnKeyPress := EdtThrKeyPress;
      VisSett.CtrlColor[i].AutoMaxWindow.OnClick := AutoMaxCBClick;
    end;
end;


procedure TFormSettParser.SetActiveBytes;
begin
  isEnChange := False;
  if ((SettParser.TypeParam = uint8) or (SettParser.TypeParam = int8)) then
    begin
      VisSett.EdtNumByte[3].Enabled := True;
      VisSett.EdtNumByte[2].Enabled := false;
      VisSett.EdtNumByte[1].Enabled := False;
      VisSett.EdtNumByte[0].Enabled := False;

      VisSett.EdtNumByte[3].Color := clWindow;
      VisSett.EdtNumByte[2].Color := FormSettParser.Color;
      VisSett.EdtNumByte[1].Color := FormSettParser.Color;
      VisSett.EdtNumByte[0].Color := FormSettParser.Color;

      lbl55.Enabled := True;
      lbl54.Enabled := False;
      lbl53.Enabled := False;
      lbl51.Enabled := False;

      VisSett.EdtNumByte[3].Text := IntToStr(SettParser.NumUseBytes[3]);
      VisSett.EdtNumByte[2].Text := '';
      VisSett.EdtNumByte[1].Text := '';
      VisSett.EdtNumByte[0].Text := '';
    end
  else if (SettParser.TypeParam = uint16) or (SettParser.TypeParam = int16) then
    begin
      VisSett.EdtNumByte[3].Enabled := True;
      VisSett.EdtNumByte[2].Enabled := True;
      VisSett.EdtNumByte[1].Enabled := False;
      VisSett.EdtNumByte[0].Enabled := False;

      VisSett.EdtNumByte[3].Color := clWindow;
      VisSett.EdtNumByte[2].Color := clWindow;
      VisSett.EdtNumByte[1].Color := FormSettParser.Color;
      VisSett.EdtNumByte[0].Color := FormSettParser.Color;

      lbl55.Enabled := True;
      lbl54.Enabled := True;
      lbl53.Enabled := False;
      lbl51.Enabled := False;

      VisSett.EdtNumByte[3].Text := IntToStr(SettParser.NumUseBytes[3]);
      VisSett.EdtNumByte[2].Text := IntToStr(SettParser.NumUseBytes[2]);
      VisSett.EdtNumByte[1].Text := '';
      VisSett.EdtNumByte[0].Text := '';
    end
  else if SettParser.TypeParam = uint24 then
    begin
      VisSett.EdtNumByte[3].Enabled := True;
      VisSett.EdtNumByte[2].Enabled := True;
      VisSett.EdtNumByte[1].Enabled := True;
      VisSett.EdtNumByte[0].Enabled := False;

      VisSett.EdtNumByte[3].Color := clWindow;
      VisSett.EdtNumByte[2].Color := clWindow;
      VisSett.EdtNumByte[1].Color := clWindow;
      VisSett.EdtNumByte[0].Color := FormSettParser.Color;

      lbl55.Enabled := True;
      lbl54.Enabled := True;
      lbl53.Enabled := True;
      lbl51.Enabled := False;

      VisSett.EdtNumByte[3].Text := IntToStr(SettParser.NumUseBytes[3]);
      VisSett.EdtNumByte[2].Text := IntToStr(SettParser.NumUseBytes[2]);
      VisSett.EdtNumByte[1].Text := IntToStr(SettParser.NumUseBytes[1]);
      VisSett.EdtNumByte[0].Text := '';
    end

  else
    begin
      VisSett.EdtNumByte[3].Enabled := True;
      VisSett.EdtNumByte[2].Enabled := True;
      VisSett.EdtNumByte[1].Enabled := true;
      VisSett.EdtNumByte[0].Enabled := true;

      VisSett.EdtNumByte[3].Color := clWindow;
      VisSett.EdtNumByte[2].Color := clWindow;
      VisSett.EdtNumByte[1].Color := clWindow;
      VisSett.EdtNumByte[0].Color := clWindow;

      lbl55.Enabled := True;
      lbl54.Enabled := True;
      lbl53.Enabled := True;
      lbl51.Enabled := True;

      VisSett.EdtNumByte[3].Text := IntToStr(SettParser.NumUseBytes[3]);
      VisSett.EdtNumByte[2].Text := IntToStr(SettParser.NumUseBytes[2]);
      VisSett.EdtNumByte[1].Text := IntToStr(SettParser.NumUseBytes[1]);
      VisSett.EdtNumByte[0].Text := IntToStr(SettParser.NumUseBytes[0]);



    end;
  isEnChange := True;
end;


procedure TFormSettParser.EdtThrKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', '-', #8]) then
    Key := #0;
end;

procedure SetViewActiv(isActiv : Boolean);
var
  i : Integer;
begin
    for i := 0 to 15 do
    begin
      VisSett.CheckBoxMask[i].Enabled := isActiv;
      VisSett.LabelMask[i].Enabled := isActiv;

      if FormSettParser.SettParser.isUseByteCmp[i] then
        begin
          VisSett.EdtDec[i].Enabled := isActiv;
          VisSett.EdtHex[i].Enabled := isActiv;
        end;
    end;
  FormSettParser.cbbPort.Enabled := isActiv;

  VisSett.EdtName.Enabled := isActiv;

  VisSett.EdtNumByte[0].Enabled := isActiv;
  VisSett.EdtNumByte[1].Enabled := isActiv;
  VisSett.EdtNumByte[2].Enabled := isActiv;
  VisSett.EdtNumByte[3].Enabled := isActiv;

  VisSett.StColor.Enabled := isActiv;

  VisSett.RBType[Integer(uint8)].Enabled := isActiv;
  VisSett.RBType[Integer(int8)].Enabled := isActiv;
  VisSett.RBType[Integer(uint16)].Enabled := isActiv;
  VisSett.RBType[Integer(int16)].Enabled := isActiv;
  VisSett.RBType[Integer(uint32)].Enabled := isActiv;
  VisSett.RBType[Integer(int32)].Enabled := isActiv;
  VisSett.RBType[Integer(float)].Enabled := isActiv;
  VisSett.RBType[Integer(uint24)].Enabled := isActiv;

  for i := 0 to 3 do
    begin
      VisSett.CtrlColor[i].UseMin.Checked := (FormSettParser.SettParser.res1[0] and (1 shl i)) > 0;
      VisSett.CtrlColor[i].UseMax.Checked := (FormSettParser.SettParser.res1[0] and (1 shl (i + 4))) > 0;
      VisSett.CtrlColor[i].AutoMaxWindow.Checked := (FormSettParser.SettParser.res1[0] and (1 shl (i + 8))) > 0;

      VisSett.CtrlColor[i].UseMin.Enabled := isActiv;
      VisSett.CtrlColor[i].UseMax.Enabled := isActiv;

      VisSett.CtrlColor[i].AutoMaxWindow.Enabled := isActiv;

      VisSett.CtrlColor[i].EdtMin.Enabled := VisSett.CtrlColor[i].UseMin.Enabled and VisSett.CtrlColor[i].UseMin.Checked;
      VisSett.CtrlColor[i].EdtMax.Enabled := VisSett.CtrlColor[i].UseMax.Enabled and VisSett.CtrlColor[i].UseMax.Checked;
      VisSett.CtrlColor[i].LblMin.Enabled := VisSett.CtrlColor[i].UseMin.Enabled and VisSett.CtrlColor[i].UseMin.Checked;
      VisSett.CtrlColor[i].LblMax.Enabled := VisSett.CtrlColor[i].UseMax.Enabled and VisSett.CtrlColor[i].UseMax.Checked;

      VisSett.CtrlColor[i].EdtMax.Text := IntToStr(FormSettParser.SettParser.res1[i * 2 + 1]);
      VisSett.CtrlColor[i].EdtMin.Text := IntToStr(FormSettParser.SettParser.res1[i * 2 + 2]);
    end;


  if isActiv then
    begin
      FormSettParser.SetActiveBytes();
    end
  else
    begin
      FormSettParser.lbl55.Enabled := false;
      FormSettParser.lbl54.Enabled := false;
      FormSettParser.lbl53.Enabled := false;
      FormSettParser.lbl51.Enabled := false;
    end;

  FormSettParser.lbl1.Enabled := isActiv;

  FormSettParser.Bt1.Enabled := isActiv;


  FormSettParser.req1.Color := FormSettParser.SettParser.Color;

  FormSettParser.rb8.Enabled := isActiv;
  FormSettParser.rb9.Enabled := isActiv;

  FormSettParser.grp17.Enabled := isActiv;
  
  FormSettParser.grp19.Enabled := isActiv;

  FormSettParser.grp20.Enabled := isActiv;

  FormSettParser.grp21.Enabled := isActiv;

  FormSettParser.chk11.Enabled := isActiv;
  FormSettParser.chk10.Enabled := isActiv;
  FormSettParser.ctxt1.Enabled := isActiv;

  if not isActiv then
    FormSettParser.ctxt1.Color := FormSettParser.Color;

  if FormSettParser.SettParser.isCheckLen then
    FormSettParser.Edt38.Enabled := isActiv
  else
    FormSettParser.Edt38.Color := FormSettParser.Color;


end;

procedure UpdateForm(SettParser : TSettParser);
var
  i : Integer;
  strHex, strDec : string[5];
  isUseMin : array[0..3] of Boolean;
  isUseMax : array[0..3] of Boolean;
  SrcData  : TTypeSrcData;
begin
  VisSett.UseParser.Checked := SettParser.isUseParser;
  for i := 0 to 15 do
    begin
      VisSett.CheckBoxMask[i].Checked := SettParser.isUseByteCmp[i];
      VisSett.EdtDec[i].Text := IntToStr(SettParser.UseByteCmp[i]);
      VisSett.EdtHex[i].Text := IntToStr(SettParser.UseByteCmp[i]);

      strHex := IntToHex(SettParser.UseByteCmp[i], 2);
      strDec := IntToStr(SettParser.UseByteCmp[i]);
      if SettParser.isUseByteCmp[i] then
        begin
          VisSett.LabelMask[i].Caption := StrHex;
          VisSett.LabelMask[i].Caption := strHex;
          VisSett.EdtHex[i].Text := strHex;
          VisSett.EdtDec[i].Text := strDec;
          VisSett.EdtHex[i].Color := clWindow;
          VisSett.EdtDec[i].Color := clWindow;
          VisSett.EdtHex[i].Enabled := true;
          VisSett.EdtDec[i].Enabled := true;
        end
      else
        begin
          VisSett.LabelMask[i].Caption := '--';
          VisSett.EdtHex[i].Text := '';
          VisSett.EdtDec[i].Text := '';
          VisSett.EdtHex[i].Color := FormSettParser.Color;
          VisSett.EdtDec[i].Color := FormSettParser.Color;
          VisSett.EdtHex[i].Enabled := false;
          VisSett.EdtDec[i].Enabled := false;
        end;

      VisSett.CheckBoxMask[i].TabOrder := i;
      VisSett.EdtDec[i].TabOrder := i + 16;
      VisSett.EdtHex[i].TabOrder := i + 32;
    end;
  VisSett.EdtName.Text := SettParser.NameParam;



  VisSett.StColor.Color := SettParser.Color;

  VisSett.RBType[Integer(SettParser.TypeParam)].Checked := True;

  if SettParser.isCheckLen then
    begin
      FormSettParser.rb9.Checked := True;
      FormSettParser.Edt38.Enabled := True;
      FormSettParser.Edt38.Color := clWindow;
    end
  else
    begin
      FormSettParser.rb8.Checked := True;
      FormSettParser.Edt38.Enabled := False;
      FormSettParser.Edt38.Color := FormSettParser.Color;
    end;

  FormSettParser.Edt38.Text := IntToStr(SettParser.PacketLen);

  SetViewActiv(SettParser.isUseParser);

  if VisSett.EdtNumByte[3].Enabled then VisSett.EdtNumByte[3].Text := IntToStr(SettParser.NumUseBytes[0]);
  if VisSett.EdtNumByte[2].Enabled then VisSett.EdtNumByte[2].Text := IntToStr(SettParser.NumUseBytes[1]);
  if VisSett.EdtNumByte[1].Enabled then VisSett.EdtNumByte[1].Text := IntToStr(SettParser.NumUseBytes[2]);
  if VisSett.EdtNumByte[0].Enabled then VisSett.EdtNumByte[0].Text := IntToStr(SettParser.NumUseBytes[3]);

  isUseMin[0]:= (SettParser.res1[0] and $01) > 0;
  isUseMin[1]:= (SettParser.res1[0] and $02) > 0;
  isUseMin[2]:= (SettParser.res1[0] and $04) > 0;
  isUseMin[3]:= (SettParser.res1[0] and $08) > 0;

  isUseMax[0]:= (SettParser.res1[0] and $10) > 0;
  isUseMax[1]:= (SettParser.res1[0] and $20) > 0;
  isUseMax[2]:= (SettParser.res1[0] and $40) > 0;
  isUseMax[3]:= (SettParser.res1[0] and $80) > 0;


  for i:= 0 to 3 do
    begin
      VisSett.CtrlColor[i].UseMin.Enabled := SettParser.isUseParser;
      VisSett.CtrlColor[i].UseMax.Enabled := SettParser.isUseParser;

      VisSett.CtrlColor[i].UseMin.Checked := isUseMin[i];
      VisSett.CtrlColor[i].UseMax.Checked := isUseMax[i];

      VisSett.CtrlColor[i].EdtMin.Enabled := VisSett.CtrlColor[i].UseMin.Enabled and VisSett.CtrlColor[i].UseMin.Checked;
      VisSett.CtrlColor[i].EdtMax.Enabled := VisSett.CtrlColor[i].UseMax.Enabled and VisSett.CtrlColor[i].UseMax.Checked;
      VisSett.CtrlColor[i].LblMin.Enabled := VisSett.CtrlColor[i].UseMin.Enabled and VisSett.CtrlColor[i].UseMin.Checked;
      VisSett.CtrlColor[i].LblMax.Enabled := VisSett.CtrlColor[i].UseMax.Enabled and VisSett.CtrlColor[i].UseMax.Checked;
      VisSett.CtrlColor[i].EdtMax.Text := IntToStr(SettParser.res1[i * 2 + 1]);
      VisSett.CtrlColor[i].EdtMin.Text := IntToStr(SettParser.res1[i * 2 + 2]);
    end;

  SrcData := TTypeSrcData(SettParser.res1[9] and $FF);

  FormSettParser.cbbPort.ItemIndex := Integer(SrcData);

  if SettParser.res1[15] = 0 then
    SettParser.res1[15] := 1;

  FormSettParser.Edt41.Visible := SettParser.TypeParam = float;
  FormSettParser.lbl57.Visible := SettParser.TypeParam = float;
  FormSettParser.Edt41.Text := IntToStr(SettParser.res1[15]);
  //case SrcData of
  //  SrcPortMain : FormSettParser.rbPortMain.Checked := True;
  //  SrcPort1    : FormSettParser.rbPort1.Checked := True;
  //  SrcPort2    : FormSettParser.rbPort2.Checked := True;
  //end;

  isEnChange := True;
end;


procedure UpdateFormAdd(SettParserAdd : TParserSettingsAdd);
begin
  isEnChange := False;
  FormSettParser.chk11.Checked := SettParserAdd.isChangeColorOfVal;
  FormSettParser.chk10.Checked := SettParserAdd.isExpandOfChangeVal;

  if SettParserAdd.isChangeColorOfVal then
    FormSettParser.ctxt1.Color    := SettParserAdd.ColorOfChangeVal
  else
    FormSettParser.ctxt1.Color    := FormSettParser.Color;


  FormSettParser.ctxt1.Enabled  := SettParserAdd.isChangeColorOfVal;
  isEnChange := True;
end;





procedure TFormSettParser.FormActivate(Sender: TObject);
var
  i : Integer;
  strHex, strDec : string[5];
begin
  IsSave := False;
  isEnChange := False;
  UpdateForm(SettParser);
  UpdateFormAdd(SettParserAdd);

  isEnChange := True;
  IsCopyParser := False;
  FormSettParser.Color := TerminalST.Form1.Color;
end;

procedure TFormSettParser.CheckBox17Click(Sender: TObject);
begin
  SettParser.isUseParser := (Sender as TCheckBox).Checked;
  SetViewActiv(SettParser.isUseParser);
end;

procedure TFormSettParser.rb1Click(Sender: TObject);
begin
  SettParser.TypeParam := uint8;
  FormSettParser.Edt41.Visible := false;
  FormSettParser.lbl57.Visible := false;
  SetActiveBytes;
end;

procedure TFormSettParser.rb2Click(Sender: TObject);
begin
  SettParser.TypeParam := int8;
  FormSettParser.Edt41.Visible := false;
  FormSettParser.lbl57.Visible := false;
  SetActiveBytes;
end;

procedure TFormSettParser.rb5Click(Sender: TObject);
begin
  SettParser.TypeParam := uint16;
  FormSettParser.Edt41.Visible := false;
  FormSettParser.lbl57.Visible := false;
  SetActiveBytes;
end;

procedure TFormSettParser.rb3Click(Sender: TObject);
begin
  SettParser.TypeParam := int16;
  FormSettParser.Edt41.Visible := false;
  FormSettParser.lbl57.Visible := false;

  SetActiveBytes;
end;

procedure TFormSettParser.rb4Click(Sender: TObject);
begin
  SettParser.TypeParam := uint32;
  FormSettParser.Edt41.Visible := false;
  FormSettParser.lbl57.Visible := false;

  SetActiveBytes;
end;

procedure TFormSettParser.rb6Click(Sender: TObject);
begin
  SettParser.TypeParam := int32;
  FormSettParser.Edt41.Visible := false;
  FormSettParser.lbl57.Visible := false;

  SetActiveBytes;
end;

procedure TFormSettParser.rb7Click(Sender: TObject);
begin
  SettParser.TypeParam := float;
  FormSettParser.Edt41.Visible := true;
  FormSettParser.lbl57.Visible := true;

  SetActiveBytes;
end;

procedure TFormSettParser.CheckBoxUseByte(Sender: TObject);
var
  isUse : Boolean;
  num   : Integer;
  strDec: string[5];
  strHex: string[5];
begin
  isUse := (Sender as TCheckBox).Checked;
  num   := (Sender as TCheckBox).Tag;

  strHex := IntToHex(SettParser.UseByteCmp[num], 2);
  strDec := IntToStr(SettParser.UseByteCmp[num]);


  SettParser.isUseByteCmp[num] := isUse;

  if isUse then
    begin
      VisSett.LabelMask[num].Caption := strHex;
      VisSett.EdtHex[num].Text := strHex;
      VisSett.EdtDec[num].Text := strDec;
      VisSett.EdtHex[num].Color := clWindow;
      VisSett.EdtDec[num].Color := clWindow;
      VisSett.EdtHex[num].Enabled := true;
      VisSett.EdtDec[num].Enabled := true;
    end
  else
    begin
      VisSett.LabelMask[num].Caption := '--';
      VisSett.EdtHex[num].Text := '';
      VisSett.EdtDec[num].Text := '';
      VisSett.EdtHex[num].Color := FormSettParser.Color;
      VisSett.EdtDec[num].Color := FormSettParser.Color;
      VisSett.EdtHex[num].Enabled := false;
      VisSett.EdtDec[num].Enabled := false;
    end;


end;

procedure TFormSettParser.EdtLenPacketChange(Sender: TObject);
begin
  SettParser.NameParam := (Sender as TEdit).Text;
end;

procedure TFormSettParser.Bt1Click(Sender: TObject);
begin
  if dlgColor1.Execute then
    SettParser.Color := dlgColor1.Color;
  req1.Color := SettParser.Color;
end;


procedure TFormSettParser.EdtNumBytesPress(Sender: TObject; var Key: Char);
  begin
    if not (Key in ['0'..'9', #8]) then
      Key := #0;
  end;

procedure TFormSettParser.EdtNumBytesChange(Sender: TObject);
  var
  i : Integer;
  str : string[5];
  begin
    if isEnChange then
      begin
        i := (Sender as TEdit).Tag;
        str := (Sender as TEdit).Text;

        if (Sender as TEdit).Text <> '' then
          begin
            SettParser.NumUseBytes[i] := StrToInt(str);
          end
        else
          begin
            SettParser.NumUseBytes[i] := 0;
          end;
      end;
  end;


procedure TFormSettParser.EdtByteHexKeyPress(Sender: TObject; var Key: Char);
begin
  if((Key <> '0') and
     (Key <> '1') and
     (Key <> '2') and
     (Key <> '3') and
     (Key <> '4') and
     (Key <> '5') and
     (Key <> '6') and
     (Key <> '7') and
     (Key <> '8') and
     (Key <> '9') and
     (Key <> 'a') and
     (Key <> 'b') and
     (Key <> 'c') and
     (Key <> 'd') and
     (Key <> 'e') and
     (Key <> 'f') and
     (Key <> 'A') and
     (Key <> 'B') and
     (Key <> 'C') and
     (Key <> 'D') and
     (Key <> 'E') and
     (Key <> 'F') and
     (Key <> #8) ) then Key := #0;
end;


procedure TFormSettParser.EdtByteDecKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;


procedure TFormSettParser.EdtByteDecChange(Sender: TObject);
var
  n : Integer;
  strH : string[5];
  str  : string[5];
  Byt  : Integer;
begin
  if isEnChange then
    begin
      str := (Sender as TEdit).Text;
      n := (Sender as TEdit).Tag;
      if str <> '' then
        begin
          Byt := StrToInt(str);
          if Byt < 256 then
            begin
              strH := IntToHex(Byt,2);
              VisSett.LabelMask[n].Caption := strH;
              VisSett.EdtHex[n].Text := strH;
              SettParser.UseByteCmp[n] := Byte(Byt);
              (Sender as TEdit).Color := clWindow;
            end
          else
            begin
              (Sender as TEdit).Color := clYellow;
            end;
        end
      else
        begin
          (Sender as TEdit).Color := clYellow;
        end;
    end;
end;

procedure TFormSettParser.EdtByteHexChange(Sender: TObject);
var
  n : Integer;
  strH : string[5];
  str  : string[5];
  byt  : Byte;
begin
  if isEnChange then
    begin
      str := (Sender as TEdit).Text;
      n := (Sender as TEdit).Tag;
      if Length(str) = 2 then
        begin
          strH := str;
          VisSett.LabelMask[n].Caption := strH;
          if Length(str) = 1 then
            VisSett.EdtDec[n].Text := IntToStr(HexToInt(str[1]))
          else if Length(str) = 2 then
            begin
              byt := (HexToInt(strH[1]) shl 4) or (HexToInt(strH[2]));
              VisSett.EdtDec[n].Text := IntToStr(byt);
              SettParser.UseByteCmp[n] := Byte(Byt);
            end;
          (Sender as TEdit).Color := clWindow;
        end
      else
        begin
          (Sender as TEdit).Color := clYellow;
        end;
    end;
end;

procedure TFormSettParser.rb8Click(Sender: TObject);
begin
  SettParser.isCheckLen := False;
  Edt38.Enabled := False;
  Edt38.Color := FormSettParser.Color;
end;

procedure TFormSettParser.rb9Click(Sender: TObject);
begin
  SettParser.isCheckLen := True;
  Edt38.Enabled := True;
  Edt38.Color := clWindow;
end;

procedure TFormSettParser.Edt38KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;




procedure TFormSettParser.Edt38Change(Sender: TObject);
var
  str : string[7];
begin
  str := (Sender as TEdit).Text;
  if str <> '' then
    begin
      SettParser.PacketLen := StrToInt(str);
      (Sender as TEdit).Color := clWindow;
    end
  else
    (Sender as TEdit).Color := clYellow;
end;

procedure TFormSettParser.BtOKClick(Sender: TObject);
begin
  IsSave := true;
  FormSettParser.Close();
end;

procedure TFormSettParser.BtCopyClick(Sender: TObject);
begin
  SettParserCopy := SettParser;
  SettParserAddCopy := SettParserAdd;

  BtPaste.Hint := 'Insert: ' + SettParserCopy.NameParam;
  IsCopyParser := True;
end;

procedure TFormSettParser.BtPasteClick(Sender: TObject);
begin
  SettParser := SettParserCopy;
  SettParserAdd := SettParserAddCopy;

  IsSave := False;
  isEnChange := False;
  UpdateForm(SettParser);
  UpdateFormAdd(SettParserAdd);
  isEnChange := True;
end;

procedure TFormSettParser.BtClearClick(Sender: TObject);
var
  i : Integer;
begin
  For i:= 0 to 15 do
    begin
      SettParser.isUseByteCmp[i] := False;
      SettParser.UseByteCmp[i] := 0;
    end;
  For i:= 0 to 3 do
    SettParser.NumUseBytes[i] := 0;

  for i:= 0 to 16 do
    SettParser.res1[i] := 0;

  SettParserAdd.isExpandOfChangeVal := False;
  SettParserAdd.isChangeColorOfVal  := False;
  SettParserAdd.ColorOfChangeVal    := FormSettParser.Color;

  SettParser.isUseParser := False;
  SettParser.NameParam := '';
  SettParser.TypeParam := uint8;
  SettParser.isCheckLen := False;
  SettParser.PacketLen := 0;
  SettParser.Color := clWindow;
  SettParser.YMin := -99999999;
  SettParser.YMax := 99999999;
  UpdateForm(SettParser);
  UpdateFormAdd(SettParserAdd);

end;





procedure TFormSettParser.UseMinCBClick(Sender: TObject);
var
  isUse : boolean;
  num : Integer;
begin
  isUse := (Sender as TCheckBox).Checked;
  num := (Sender as TCheckBox).Tag;
  VisSett.CtrlColor[num].EdtMin.Enabled := isUse;
  //VisSett.CtrlColor[num].EdtMax.Enabled := isUse;
  VisSett.CtrlColor[num].LblMin.Enabled := isUse;
  //VisSett.CtrlColor[num].LblMax.Enabled := isUse;

  if isUse then
    SettParser.res1[0] := SettParser.res1[0] or ($01 shl num)
  else
    begin
      SettParser.res1[0] := SettParser.res1[0]  or ($01 shl num);{ Устанавливаем бит }
      SettParser.res1[0] := SettParser.res1[0]  xor ($01 shl num) { Переключаем бит   }
    end;
end;

procedure TFormSettParser.UseMaxCBClick(Sender: TObject);
var
  isUse : boolean;
  num : Integer;
begin
  isUse := (Sender as TCheckBox).Checked;
  num := (Sender as TCheckBox).Tag;
  //VisSett.CtrlColor[num].EdtMin.Enabled := isUse;
  VisSett.CtrlColor[num].EdtMax.Enabled := isUse;
  //VisSett.CtrlColor[num].LblMin.Enabled := isUse;
  VisSett.CtrlColor[num].LblMax.Enabled := isUse;

  if isUse then
    SettParser.res1[0] := SettParser.res1[0] or ($01 shl (num + 4))
  else
    begin
      SettParser.res1[0] := SettParser.res1[0]  or ($01 shl (num + 4));{ Устанавливаем бит }
      SettParser.res1[0] := SettParser.res1[0]  xor ($01 shl (num + 4)) { Переключаем бит   }
    end;
end;

procedure TFormSettParser.AutoMaxCBClick(Sender: TObject);
var
  isUse : boolean;
  num : Integer;
begin
  isUse := (Sender as TCheckBox).Checked;
  num := (Sender as TCheckBox).Tag;
  //VisSett.CtrlColor[num].EdtMin.Enabled := isUse;
  //VisSett.CtrlColor[num].EdtMax.Enabled := isUse;
  //VisSett.CtrlColor[num].LblMin.Enabled := isUse;
  //VisSett.CtrlColor[num].LblMax.Enabled := isUse;

  if isUse then
    SettParser.res1[0] := SettParser.res1[0] or ($01 shl (num + 8))
  else
    begin
      SettParser.res1[0] := SettParser.res1[0]  or ($01 shl (num + 8));{ Устанавливаем бит }
      SettParser.res1[0] := SettParser.res1[0]  xor ($01 shl (num + 8)) { Переключаем бит   }
    end;
end;





procedure TFormSettParser.EdtMaxChange(Sender: TObject);
var
  num : Integer;
  tmp : Integer;
begin
  num := (Sender as TEdit).Tag;
  if (Sender as TEdit).Text = '' then (Sender as TEdit).Text := '0';

  try
    tmp := StrToInt((Sender as TEdit).Text);
    (Sender as TEdit).Color := clWindow;
  except
    tmp := SettParser.res1[num * 2 + 1];
    (Sender as TEdit).Color := clYellow;
  end;

  SettParser.res1[num * 2 + 1] := tmp;
end;

procedure TFormSettParser.EdtMinChange(Sender: TObject);
var
  num : Integer;
  tmp : Integer;
begin
  num := (Sender as TEdit).Tag;
  if (Sender as TEdit).Text = '' then (Sender as TEdit).Text := '0';

  try
    tmp := StrToInt((Sender as TEdit).Text);
    (Sender as TEdit).Color := clWindow;
  except
    tmp := SettParser.res1[num * 2 + 2];
    (Sender as TEdit).Color := clYellow;
  end;

  SettParser.res1[num * 2 + 2] := tmp;
end;


procedure TFormSettParser.rb10Click(Sender: TObject);
begin
  SettParser.TypeParam := uint24;
  FormSettParser.Edt41.Visible := false;
  FormSettParser.lbl57.Visible := false;
  SetActiveBytes;
end;



//procedure TFormSettParser.rbPortMainClick(Sender: TObject);
//begin
//  SettParser.res1[9] := SettParser.res1[9] and $FFFFFF00;
//  SettParser.res1[9] := Byte(SrcPortMain);
//end;

//procedure TFormSettParser.rbPort1Click(Sender: TObject);
//begin
//  SettParser.res1[9] := SettParser.res1[9] and $FFFFFF00;
//  SettParser.res1[9] := Byte(SrcPort1);
//end;

//procedure TFormSettParser.rbPort2Click(Sender: TObject);
//begin
//  SettParser.res1[9] := SettParser.res1[9] and $FFFFFF00;
//  SettParser.res1[9] := Byte(SrcPort2);
//end;

procedure TFormSettParser.cbbPortChange(Sender: TObject);
begin
  SettParser.res1[9] := SettParser.res1[9] and $FFFFFF00;
  SettParser.res1[9] := Byte(cbbPort.ItemIndex);

  case cbbPort.ItemIndex of
    1:  FormAddPorts.SetSendDataInParser(0);
    2:  FormAddPorts.SetSendDataInParser(1);
    3:  FormMultiPort.SetSendDataInParser(1);
    4:  FormMultiPort.SetSendDataInParser(2);
    5:  FormMultiPort.SetSendDataInParser(3);
    6:  FormMultiPort.SetSendDataInParser(4);
    7:  FormMultiPort.SetSendDataInParser(5);
    8:  FormMultiPort.SetSendDataInParser(6);
    9:  FormMultiPort.SetSendDataInParser(7);
    10: FormMultiPort.SetSendDataInParser(8);
    11: FormMultiPort.SetSendDataInParser(9);
    12: FormMultiPort.SetSendDataInParser(10);
    13: FormMultiPort.SetSendDataInParser(11);
    14: FormMultiPort.SetSendDataInParser(12);
    15: FormMultiPort.SetSendDataInParser(13);
    16: FormMultiPort.SetSendDataInParser(14);
    17: FormMultiPort.SetSendDataInParser(15);
    18: FormMultiPort.SetSendDataInParser(16);
  end;


end;

procedure TFormSettParser.Edt41Change(Sender: TObject);
begin
  if (Sender as TEdit).Text <> '' then
    SettParser.res1[15] := StrToInt((Sender as TEdit).Text);
  if SettParser.res1[15] = 0 then
    SettParser.res1[15] := 1;
end;

procedure TFormSettParser.Edt41Exit(Sender: TObject);
begin
  (Sender as TEdit).Text := IntToStr(SettParser.res1[15]);
end;

procedure TFormSettParser.Edt41KeyPress(Sender: TObject; var Key: Char);
begin
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;
end;

procedure TFormSettParser.chk11Click(Sender: TObject);
begin
  SettParserAdd.isChangeColorOfVal := (Sender as TCheckBox).Checked;
  FormSettParser.ctxt1.Enabled  := SettParserAdd.isChangeColorOfVal;

  if SettParserAdd.isChangeColorOfVal then
    FormSettParser.ctxt1.Color := SettParserAdd.ColorOfChangeVal
  else
    FormSettParser.ctxt1.Color := FormSettParser.Color;
end;

procedure TFormSettParser.chk10Click(Sender: TObject);
begin
  SettParserAdd.isExpandOfChangeVal := (Sender as TCheckBox).Checked;
end;

procedure TFormSettParser.ctxt1Click(Sender: TObject);
begin
  dlgColor1.Color := SettParserAdd.ColorOfChangeVal;
  if dlgColor1.Execute then
    SettParserAdd.ColorOfChangeVal := dlgColor1.Color;
  ctxt1.Color := SettParserAdd.ColorOfChangeVal;
end;

end.

