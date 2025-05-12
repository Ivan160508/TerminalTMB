unit SetParsASCII;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Common;

type TGUIColorZone = record
  ChisThrHCol         : TCheckBox;
  ChisThrLCol         : TCheckBox;
  ChisExpWindowCol    : TCheckBox;
  EdtThrHCol          : TEdit;
  EdtThrLCol          : TEdit;
end;

type
  TFormSetParsASCII = class(TForm)
    grp18: TGroupBox;
    lbl1: TLabel;
    lbl56: TLabel;
    btnBtOK: TButton;
    btnBt1: TButton;
    ctxtreq1: TStaticText;
    chk26: TCheckBox;
    edtEdt33: TEdit;
    btnBtCopy: TButton;
    btnBtPaste: TButton;
    btnBtClear: TButton;
    grp23: TGroupBox;
    grp22: TGroupBox;
    lbl34: TLabel;
    lbl52: TLabel;
    chk1: TCheckBox;
    ctxttxt1: TStaticText;
    edt40: TEdit;
    edt39: TEdit;
    chk2: TCheckBox;
    chk6: TCheckBox;
    grp24: TGroupBox;
    lbl58: TLabel;
    lbl59: TLabel;
    chk27: TCheckBox;
    ctxt1: TStaticText;
    edt41: TEdit;
    edt42: TEdit;
    chk3: TCheckBox;
    chk7: TCheckBox;
    grp25: TGroupBox;
    lbl60: TLabel;
    lbl61: TLabel;
    chk28: TCheckBox;
    ctxt2: TStaticText;
    edt43: TEdit;
    edt44: TEdit;
    chk4: TCheckBox;
    chk8: TCheckBox;
    grp26: TGroupBox;
    lbl62: TLabel;
    lbl63: TLabel;
    chk29: TCheckBox;
    ctxt3: TStaticText;
    edt45: TEdit;
    edt46: TEdit;
    chk5: TCheckBox;
    chk9: TCheckBox;
    cbbPort: TComboBox;
    grp1: TGroupBox;
    lbl2: TLabel;
    edt1: TEdit;
    lbl3: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    lbl4: TLabel;
    edt6: TEdit;
    mmo1: TMemo;
    cbb1: TComboBox;
    btn1: TButton;
    ctxt4: TStaticText;
    ColorDialog1: TColorDialog;
    edt7: TEdit;
    edt8: TEdit;
    Edt9: TEdit;
    lbl5: TLabel;
    Edt10: TEdit;
    lbl6: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure chk26Click(Sender: TObject);
    procedure btnBtOKClick(Sender: TObject);
    procedure cbbPortChange(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure edtEdt33Change(Sender: TObject);
    procedure edt6Change(Sender: TObject);
    procedure edt2Change(Sender: TObject);
    procedure edt3Change(Sender: TObject);
    procedure edt4Change(Sender: TObject);
    procedure edt5Change(Sender: TObject);
    procedure btnBt1Click(Sender: TObject);
    procedure edt7Change(Sender: TObject);
    procedure edt8Change(Sender: TObject);
    procedure btnBtClearClick(Sender: TObject);
    procedure btnBtCopyClick(Sender: TObject);
    procedure btnBtPasteClick(Sender: TObject);
    procedure Edt9Change(Sender: TObject);
    procedure mmo1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkThrHColClick(Sender: TObject);
    procedure chkThrLColClick(Sender: TObject);
    procedure chkThrEWClick(Sender: TObject);
    procedure edtThrHValChange(Sender: TObject);
    procedure edtThrLValChange(Sender: TObject);
    procedure Edt10Change(Sender: TObject);
    procedure EdtKeyPress(Sender: TObject; var Key: Char);
    procedure EdtMinusKeyPress(Sender: TObject; var Key: Char);
    procedure SepDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    SettParserAscii : TSettParserAscii;
    SettParserAsciiBuf : TSettParserAscii;
    isUpdate        : Boolean;
    { Public declarations }
  end;



var
  FormSetParsASCII: TFormSetParsASCII;
  GUIColorZone : array[0..3] of TGUIColorZone;
implementation

uses Unit32, Unit42, Unit19;

{$R *.dfm}

procedure TFormSetParsASCII.btn1Click(Sender: TObject);
begin
  ctxt4.Caption := ParsASCII(SettParserAscii.TypeSrcData, mmo1.Text, @SettParserAscii);
end;

procedure SetActive(isAct : boolean);
var j : Integer;
begin
  FormSetParsASCII.lbl56.Enabled := isAct;
  FormSetParsASCII.cbbPort.Enabled := isAct;
  FormSetParsASCII.lbl1.Enabled := isAct;
  FormSetParsASCII.edtEdt33.Enabled := isAct;
  FormSetParsASCII.btnBt1.Enabled := isAct;
  FormSetParsASCII.ctxtreq1.Enabled := isAct;
  FormSetParsASCII.lbl2.Enabled := isAct;
  FormSetParsASCII.lbl3.Enabled := isAct;
  FormSetParsASCII.lbl4.Enabled := isAct;
  FormSetParsASCII.edt1.Enabled := isAct;
  FormSetParsASCII.edt2.Enabled := isAct;
  FormSetParsASCII.edt3.Enabled := isAct;
  FormSetParsASCII.edt4.Enabled := isAct;
  FormSetParsASCII.edt5.Enabled := isAct;
  FormSetParsASCII.edt6.Enabled := isAct;
  FormSetParsASCII.edt7.Enabled := isAct;
  FormSetParsASCII.edt8.Enabled := isAct;
  FormSetParsASCII.mmo1.Enabled := isAct;
  FormSetParsASCII.cbb1.Enabled := isAct;
  FormSetParsASCII.btn1.Enabled := isAct;
  FormSetParsASCII.ctxt4.Enabled := isAct;
  FormSetParsASCII.edt9.Enabled := isAct;
  FormSetParsASCII.lbl5.Enabled := isAct;

  isAct := FormSetParsASCII.SettParserAscii.TypeParsASCII <> ParsString;

  for j := 0 to 3 do
    begin
      GUIColorZone[j].ChisThrHCol.Enabled := isAct;
      GUIColorZone[j].ChisThrLCol.Enabled := isAct;
      GUIColorZone[j].ChisExpWindowCol.Enabled := isAct;
      GUIColorZone[j].EdtThrHCol.Enabled := isAct;
      GUIColorZone[j].EdtThrLCol.Enabled := isAct;
    end;
end;

procedure UpdateSett;
var
  j : Integer;
begin
  FormSetParsASCII.chk26.Checked := FormSetParsASCII.SettParserAscii.isUse;
  SetActive(FormSetParsASCII.SettParserAscii.isUse);
  FormSetParsASCII.cbbPort.ItemIndex := Integer(FormSetParsASCII.SettParserAscii.TypeSrcData);
  FormSetParsASCII.edtEdt33.Text := FormSetParsASCII.SettParserAscii.ParamName;
  FormSetParsASCII.ctxtreq1.Color := FormSetParsASCII.SettParserAscii.Color;
  FormSetParsASCII.edt1.Text := FormSetParsASCII.SettParserAscii.StartSubstring;
  FormSetParsASCII.edt2.Text := Chr(FormSetParsASCII.SettParserAscii.Sep[0]);
  FormSetParsASCII.edt3.Text := Chr(FormSetParsASCII.SettParserAscii.Sep[1]);
  FormSetParsASCII.edt4.Text := Chr(FormSetParsASCII.SettParserAscii.Sep[2]);
  FormSetParsASCII.edt5.Text := Chr(FormSetParsASCII.SettParserAscii.Sep[3]);
  FormSetParsASCII.edt7.Text := Chr(FormSetParsASCII.SettParserAscii.Sep[4]);
  FormSetParsASCII.edt8.Text := Chr(FormSetParsASCII.SettParserAscii.Sep[5]);
  FormSetParsASCII.edt9.Text := FormSetParsASCII.SettParserAscii.BeginLine;
  FormSetParsASCII.edt6.Text := IntToStr(FormSetParsASCII.SettParserAscii.ParamNum);
  FormSetParsASCII.cbb1.ItemIndex := Integer(FormSetParsASCII.SettParserAscii.TypeParsASCII);

  if FormSetParsASCII.SettParserAscii.Sep[0] = 0 then FormSetParsASCII.edt2.Color := FormSetParsASCII.Color else FormSetParsASCII.edt2.Color := clWindow;
  if FormSetParsASCII.SettParserAscii.Sep[1] = 0 then FormSetParsASCII.edt3.Color := FormSetParsASCII.Color else FormSetParsASCII.edt3.Color := clWindow;
  if FormSetParsASCII.SettParserAscii.Sep[2] = 0 then FormSetParsASCII.edt4.Color := FormSetParsASCII.Color else FormSetParsASCII.edt4.Color := clWindow;
  if FormSetParsASCII.SettParserAscii.Sep[3] = 0 then FormSetParsASCII.edt5.Color := FormSetParsASCII.Color else FormSetParsASCII.edt5.Color := clWindow;
  if FormSetParsASCII.SettParserAscii.Sep[4] = 0 then FormSetParsASCII.edt7.Color := FormSetParsASCII.Color else FormSetParsASCII.edt7.Color := clWindow;
  if FormSetParsASCII.SettParserAscii.Sep[5] = 0 then FormSetParsASCII.edt8.Color := FormSetParsASCII.Color else FormSetParsASCII.edt8.Color := clWindow;

  if FormSetParsASCII.SettParserAscii.StartSubstring <> '' then FormSetParsASCII.edt1.Color := clWindow else FormSetParsASCII.edt1.Color := FormSetParsASCII.Color;
  if FormSetParsASCII.SettParserAscii.BeginLine <> '' then FormSetParsASCII.edt9.Color := clWindow else FormSetParsASCII.edt9.Color := FormSetParsASCII.Color;

  for j := 0 to 3 do
    begin
      GUIColorZone[j].ChisThrHCol.Checked := FormSetParsASCII.SettParserAscii.isThrHCol[j];
      GUIColorZone[j].ChisThrLCol.Checked := FormSetParsASCII.SettParserAscii.isThrLCol[j];
      GUIColorZone[j].ChisExpWindowCol.Checked := FormSetParsASCII.SettParserAscii.isExpWindowCol[j];
      GUIColorZone[j].EdtThrHCol.Text := IntToStr(FormSetParsASCII.SettParserAscii.ThrHCol[j]);
      GUIColorZone[j].EdtThrLCol.Text := IntToStr(FormSetParsASCII.SettParserAscii.ThrLCol[j]);
    end;
  FormSetParsASCII.Edt10.Text := IntToStr(FormSetParsASCII.SettParserAscii.Res1[0]);
  FormSetParsASCII.Edt10.Visible := FormSetParsASCII.SettParserAscii.TypeParsASCII = ParsFloat;
  FormSetParsASCII.lbl6.Visible := FormSetParsASCII.SettParserAscii.TypeParsASCII = ParsFloat;
  FormSetParsASCII.Edt10.Enabled := FormSetParsASCII.SettParserAscii.isUse;
  FormSetParsASCII.lbl6.Enabled := FormSetParsASCII.SettParserAscii.isUse;

end;


procedure TFormSetParsASCII.FormActivate(Sender: TObject);
begin
  isUpdate := False;
  chk26.Checked := SettParserAscii.isUse;
  UpdateSett;
end;


procedure TFormSetParsASCII.chk26Click(Sender: TObject);
begin
  SettParserAscii.isUse := (Sender as TCheckBox).Checked;
  UpdateSett;
end;

procedure TFormSetParsASCII.btnBtOKClick(Sender: TObject);
begin
  isUpdate := True;
  FormSetParsASCII.Close;
end;

procedure TFormSetParsASCII.cbbPortChange(Sender: TObject);
begin
  FormSetParsASCII.SettParserAscii.TypeSrcData := TTypeSrcData((Sender as TComboBox).ItemIndex);

  case (Sender as TComboBox).ItemIndex of
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

procedure TFormSetParsASCII.cbb1Change(Sender: TObject);
var
  j : Integer;
  isAct : Boolean;
begin
  FormSetParsASCII.SettParserAscii.TypeParsASCII := TTypeParsASCII((Sender as TComboBox).ItemIndex);

  isAct := FormSetParsASCII.SettParserAscii.TypeParsASCII <> ParsString;

  FormSetParsASCII.Edt10.Visible := FormSetParsASCII.SettParserAscii.TypeParsASCII = ParsFloat;
  FormSetParsASCII.lbl6.Visible := FormSetParsASCII.SettParserAscii.TypeParsASCII = ParsFloat;

  for j := 0 to 3 do
    begin
      GUIColorZone[j].ChisThrHCol.Enabled := isAct;
      GUIColorZone[j].ChisThrLCol.Enabled := isAct;
      GUIColorZone[j].ChisExpWindowCol.Enabled := isAct;
      GUIColorZone[j].EdtThrHCol.Enabled := isAct;
      GUIColorZone[j].EdtThrLCol.Enabled := isAct;
    end;
end;

procedure TFormSetParsASCII.edt1Change(Sender: TObject);
begin
  FormSetParsASCII.SettParserAscii.StartSubstring := (Sender as TEdit).Text;
  FormSetParsASCII.ctxt4.Caption := ParsASCII(SettParserAscii.TypeSrcData, mmo1.Text, @SettParserAscii);

  if (Sender as TEdit).Text <> '' then
    (Sender as TEdit).Color := clWindow
  else
    (Sender as TEdit).Color := FormSetParsASCII.Color;
end;

procedure TFormSetParsASCII.edtEdt33Change(Sender: TObject);
begin
  FormSetParsASCII.SettParserAscii.ParamName := (Sender as TEdit).Text;
end;

procedure TFormSetParsASCII.edt6Change(Sender: TObject);
begin
  if (Sender as TEdit).Text <> '' then
    begin
      FormSetParsASCII.SettParserAscii.ParamNum := StrToInt((Sender as TEdit).Text);
      FormSetParsASCII.ctxt4.Caption := ParsASCII(SettParserAscii.TypeSrcData, mmo1.Text, @SettParserAscii);
    end;
end;

procedure ChangeSep(Sender: TObject; numSep : byte);
begin
  if Length((Sender as TEdit).Text) > 0 then
    begin
      FormSetParsASCII.SettParserAscii.Sep[numSep] := Ord((Sender as TEdit).Text[1]);
      (Sender as TEdit).Color := clWindow;
    end
  else
    begin
      (Sender as TEdit).Color := FormSetParsASCII.Color;
      FormSetParsASCII.SettParserAscii.Sep[numSep] := 0;
      (Sender as TEdit).ShowHint := False;
    end;
  FormSetParsASCII.ctxt4.Caption := ParsASCII(FormSetParsASCII.SettParserAscii.TypeSrcData, FormSetParsASCII.mmo1.Text, @FormSetParsASCII.SettParserAscii);
end;

procedure TFormSetParsASCII.edt2Change(Sender: TObject);
begin
  ChangeSep(Sender, 0);
end;

procedure TFormSetParsASCII.edt3Change(Sender: TObject);
begin
  ChangeSep(Sender, 1);
end;

procedure TFormSetParsASCII.edt4Change(Sender: TObject);
begin
  ChangeSep(Sender, 2);
end;

procedure TFormSetParsASCII.edt5Change(Sender: TObject);
begin
  ChangeSep(Sender, 3);
end;

procedure TFormSetParsASCII.edt7Change(Sender: TObject);
begin
  ChangeSep(Sender, 4);
end;

procedure TFormSetParsASCII.edt8Change(Sender: TObject);
begin
  ChangeSep(Sender, 5);
end;

procedure TFormSetParsASCII.btnBt1Click(Sender: TObject);
begin
  ColorDialog1.Color := FormSetParsASCII.SettParserAscii.Color;
  if ColorDialog1.Execute then
    begin
      FormSetParsASCII.SettParserAscii.Color := ColorDialog1.Color;
      ctxtreq1.Color := FormSetParsASCII.SettParserAscii.Color;
    end;
end;


procedure TFormSetParsASCII.btnBtClearClick(Sender: TObject);
begin
  ClearSettParserASCII(@SettParserAscii);
  UpdateSett;
end;

procedure TFormSetParsASCII.btnBtCopyClick(Sender: TObject);
begin
  SettParserAsciiBuf := SettParserAscii;
end;

procedure TFormSetParsASCII.btnBtPasteClick(Sender: TObject);
begin
  SettParserAscii := SettParserAsciiBuf;
  UpdateSett;
end;

procedure TFormSetParsASCII.Edt9Change(Sender: TObject);
begin
  FormSetParsASCII.SettParserAscii.BeginLine := (Sender as TEdit).Text;
  FormSetParsASCII.ctxt4.Caption := ParsASCII(SettParserAscii.TypeSrcData, mmo1.Text, @SettParserAscii);

  if (Sender as TEdit).Text <> '' then
    (Sender as TEdit).Color := clWindow
  else
    (Sender as TEdit).Color := FormSetParsASCII.Color;
end;

procedure TFormSetParsASCII.mmo1Change(Sender: TObject);
begin
  FormSetParsASCII.ctxt4.Caption := ParsASCII(SettParserAscii.TypeSrcData, mmo1.Text, @SettParserAscii);
end;

procedure TFormSetParsASCII.FormCreate(Sender: TObject);
var j : Integer;
begin
  GUIColorZone[0].ChisThrHCol      := chk1;
  GUIColorZone[0].ChisThrLCol      := chk2;
  GUIColorZone[0].ChisExpWindowCol := chk6;
  GUIColorZone[0].EdtThrHCol       := edt39;
  GUIColorZone[0].EdtThrLCol       := edt40;

  GUIColorZone[1].ChisThrHCol      := chk27;
  GUIColorZone[1].ChisThrLCol      := chk3;
  GUIColorZone[1].ChisExpWindowCol := chk7;
  GUIColorZone[1].EdtThrHCol       := edt42;
  GUIColorZone[1].EdtThrLCol       := edt41;

  GUIColorZone[2].ChisThrHCol      := chk28;
  GUIColorZone[2].ChisThrLCol      := chk4;
  GUIColorZone[2].ChisExpWindowCol := chk8;
  GUIColorZone[2].EdtThrHCol       := edt44;
  GUIColorZone[2].EdtThrLCol       := edt43;

  GUIColorZone[3].ChisThrHCol      := chk29;
  GUIColorZone[3].ChisThrLCol      := chk5;
  GUIColorZone[3].ChisExpWindowCol := chk9;
  GUIColorZone[3].EdtThrHCol       := edt46;
  GUIColorZone[3].EdtThrLCol       := edt45;

  for j := 0 to 3 do
    begin
      GUIColorZone[j].ChisThrHCol.Tag := j;
      GUIColorZone[j].ChisThrLCol.Tag := j;
      GUIColorZone[j].ChisExpWindowCol.Tag := j;
      GUIColorZone[j].EdtThrHCol.Tag := j;
      GUIColorZone[j].EdtThrLCol.Tag := j;

      GUIColorZone[j].ChisThrHCol.OnClick := chkThrHColClick;
      GUIColorZone[j].ChisThrLCol.OnClick := chkThrLColClick;
      GUIColorZone[j].ChisExpWindowCol.OnClick := chkThrEWClick;

      GUIColorZone[j].EdtThrHCol.OnChange := edtThrHValChange;
      GUIColorZone[j].EdtThrLCol.OnChange := edtThrLValChange;

    end;

end;

procedure TFormSetParsASCII.chkThrHColClick(Sender: TObject);
begin
  FormSetParsASCII.SettParserAscii.isThrHCol[(Sender as TCheckBox).Tag] := (Sender as TCheckBox).Checked;
end;

procedure TFormSetParsASCII.chkThrLColClick(Sender: TObject);
begin
  FormSetParsASCII.SettParserAscii.isThrLCol[(Sender as TCheckBox).Tag] := (Sender as TCheckBox).Checked;
end;

procedure TFormSetParsASCII.chkThrEWClick(Sender: TObject);
begin
  FormSetParsASCII.SettParserAscii.isExpWindowCol[(Sender as TCheckBox).Tag] := (Sender as TCheckBox).Checked;
end;

procedure TFormSetParsASCII.edtThrHValChange(Sender: TObject);
begin
  if (Sender as TEdit).Text <> '' then
    begin
      try
        FormSetParsASCII.SettParserAscii.ThrHCol[(Sender as TEdit).Tag] := StrToInt((Sender as TEdit).Text);
        (Sender as TEdit).Color := clWindow;
      except
        (Sender as TEdit).Color := clYellow;
      end;
    end
  else
    (Sender as TEdit).Color := clYellow;

end;

procedure TFormSetParsASCII.edtThrLValChange(Sender: TObject);
begin
  if (Sender as TEdit).Text <> '' then
    begin
      try
        FormSetParsASCII.SettParserAscii.ThrLCol[(Sender as TEdit).Tag] := StrToInt((Sender as TEdit).Text);
        (Sender as TEdit).Color := clWindow;
      except
        (Sender as TEdit).Color := clYellow;
      end;
    end
  else
    (Sender as TEdit).Color := clYellow;

end;

procedure TFormSetParsASCII.Edt10Change(Sender: TObject);
begin
  if (Sender as TEdit).Text <> '' then
    begin
      try
        FormSetParsASCII.SettParserAscii.Res1[0] := StrToInt((Sender as TEdit).Text);
        (Sender as TEdit).Color := clWindow;
      except
        (Sender as TEdit).Color := clYellow;
      end;
    end
  else
    (Sender as TEdit).Color := clYellow;
end;

procedure TFormSetParsASCII.EdtKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TFormSetParsASCII.EdtMinusKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','-', #8]) then
    Key := #0;
end;

procedure TFormSetParsASCII.SepDblClick(Sender: TObject);
begin
  FormAsciiTable.Color := FormSetParsASCII.Color;
  FormAsciiTable.ByteClick := 256;
  if (Sender as TEdit).Text <> '' then
    FormAsciiTable.ByteClick := Ord((Sender as TEdit).Text[1]);
  FormAsciiTable.isSelect := True;
  FormAsciiTable.WindowState := wsNormal;
  FormAsciiTable.ShowModal();
  if Not FormAsciiTable.isSelect then
    begin
      (Sender as TEdit).Text := Chr(FormAsciiTable.ByteClick);
      (Sender as TEdit).Hint := FormAsciiTable.Help;
      (Sender as TEdit).ShowHint := True;
    end;
end;

end.
