unit Unit41;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TerminalST, ExtCtrls, StdCtrls;

type
  TFormScheduler = class(TForm)
    ctxt1: TStaticText;
    tmr1: TTimer;
    Edt1: TEdit;
    Edt2: TEdit;
    Edt3: TEdit;
    Edt4: TEdit;
    Edt5: TEdit;
    Edt6: TEdit;
    Edt7: TEdit;
    Edt8: TEdit;
    Edt9: TEdit;
    Edt10: TEdit;
    Edt11: TEdit;
    Edt12: TEdit;
    Edt13: TEdit;
    Edt14: TEdit;
    Edt15: TEdit;
    Edt16: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    cbb4: TComboBox;
    cbb5: TComboBox;
    cbb6: TComboBox;
    cbb7: TComboBox;
    cbb8: TComboBox;
    cbb9: TComboBox;
    cbb10: TComboBox;
    cbb11: TComboBox;
    cbb12: TComboBox;
    cbb13: TComboBox;
    cbb14: TComboBox;
    cbb15: TComboBox;
    cbb16: TComboBox;
    cbb17: TComboBox;
    cbb18: TComboBox;
    cbb19: TComboBox;
    cbb20: TComboBox;
    cbb21: TComboBox;
    cbb22: TComboBox;
    cbb23: TComboBox;
    cbb24: TComboBox;
    cbb25: TComboBox;
    cbb26: TComboBox;
    cbb27: TComboBox;
    cbb28: TComboBox;
    cbb29: TComboBox;
    cbb30: TComboBox;
    cbb31: TComboBox;
    cbb32: TComboBox;
    cbb33: TComboBox;
    cbb34: TComboBox;
    cbb35: TComboBox;
    cbb36: TComboBox;
    cbb37: TComboBox;
    cbb38: TComboBox;
    cbb39: TComboBox;
    cbb40: TComboBox;
    cbb41: TComboBox;
    cbb42: TComboBox;
    cbb43: TComboBox;
    cbb44: TComboBox;
    cbb45: TComboBox;
    cbb46: TComboBox;
    cbb47: TComboBox;
    cbb48: TComboBox;
    req1: TStaticText;
    req2: TStaticText;
    req3: TStaticText;
    req4: TStaticText;
    req5: TStaticText;
    req6: TStaticText;
    req7: TStaticText;
    req8: TStaticText;
    req9: TStaticText;
    req10: TStaticText;
    req11: TStaticText;
    req12: TStaticText;
    req13: TStaticText;
    req14: TStaticText;
    req15: TStaticText;
    req16: TStaticText;
    req17: TStaticText;
    req18: TStaticText;
    req19: TStaticText;
    req20: TStaticText;
    req21: TStaticText;
    req22: TStaticText;
    req23: TStaticText;
    req24: TStaticText;
    req25: TStaticText;
    req26: TStaticText;
    req27: TStaticText;
    req28: TStaticText;
    req29: TStaticText;
    req30: TStaticText;
    req31: TStaticText;
    req32: TStaticText;
    req33: TStaticText;
    req34: TStaticText;
    req35: TStaticText;
    req36: TStaticText;
    req37: TStaticText;
    req38: TStaticText;
    req39: TStaticText;
    req40: TStaticText;
    req41: TStaticText;
    req42: TStaticText;
    req43: TStaticText;
    req44: TStaticText;
    req45: TStaticText;
    req46: TStaticText;
    req47: TStaticText;
    req48: TStaticText;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormScheduler: TFormScheduler;
  cY, cM, cD, cH, cN, cS, mSec: Word;
implementation

{$R *.dfm}

procedure SetCurTime(dt : TDateTime);
begin
  DecodeDate(dt, cY, cM, cD);
  DecodeTime(dt, cH, cN, cS, mSec);
end;

procedure TFormScheduler.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TerminalST.Form1.btnPacketStats.Font.Style := [];
  tmr1.Enabled := False;
end;

procedure TFormScheduler.FormActivate(Sender: TObject);
begin
  tmr1.Enabled := True;
end;

procedure TFormScheduler.tmr1Timer(Sender: TObject);
begin
  //ctxt1.Caption := FormatDateTime('yy/mm/dd hh:nn:ss', Now);
  SetCurTime(Now);
  ctxt1.Caption := IntToStr(cY) +' ' + IntToStr(cM) +' ' + IntToStr(cD) +' ' + IntToStr(cH) +' ' + IntToStr(cN) +' ' + IntToStr(cS) +' ' + IntToStr(mSec);
end;

end.
