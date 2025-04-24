unit Unit153;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type TItemCheck = record
  ChSelect : TCheckBox;
  ChName   : TStaticText;
end;


type
  TFormSaveBufData = class(TForm)
    grp1: TGroupBox;
    rbTMB: TRadioButton;
    rbTEXT: TRadioButton;
    grp2: TGroupBox;
    reqctxt1: TStaticText;
    Chchk1: TCheckBox;
    reqctxt2: TStaticText;
    Chchk2: TCheckBox;
    reqctxt3: TStaticText;
    Chchk3: TCheckBox;
    reqctxt4: TStaticText;
    Chchk4: TCheckBox;
    reqctxt5: TStaticText;
    Chchk5: TCheckBox;
    reqctxt6: TStaticText;
    Chchk6: TCheckBox;
    reqctxt7: TStaticText;
    Chchk7: TCheckBox;
    reqctxt8: TStaticText;
    Chchk8: TCheckBox;
    reqctxt9: TStaticText;
    Chchk9: TCheckBox;
    reqctxt10: TStaticText;
    Chchk10: TCheckBox;
    reqctxt11: TStaticText;
    Chchk11: TCheckBox;
    reqctxt12: TStaticText;
    Chchk12: TCheckBox;
    reqctxt13: TStaticText;
    Chchk13: TCheckBox;
    reqctxt14: TStaticText;
    Chchk14: TCheckBox;
    reqctxt15: TStaticText;
    Chchk15: TCheckBox;
    reqctxt16: TStaticText;
    Chchk16: TCheckBox;
    reqctxt17: TStaticText;
    Chchk17: TCheckBox;
    reqctxt18: TStaticText;
    Chchk18: TCheckBox;
    Btbtn1: TButton;
    Btbtn2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure rbTEXTClick(Sender: TObject);
    procedure rbTMBClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Chchk1Click(Sender: TObject);
    procedure Chchk2Click(Sender: TObject);
    procedure ParamClick(Sender: TObject);
    procedure Btbtn2Click(Sender: TObject);
    procedure Btbtn1Click(Sender: TObject);


  private
    { Private declarations }
  public
    isSaveTMB : Boolean;
    isSaveTXT : Boolean;

    isCancel  : Boolean;
    isOK      : Boolean;

    isEnSaveNum   : Boolean;
    isEnSaveDT    : Boolean;
    isEnSaveText  : array[0..15] of Boolean;
    isUseParam    : array[0..15] of Boolean;

    NameParam     : array[0..15] of string[64];
    { Public declarations }
  end;

var
  FormSaveBufData: TFormSaveBufData;
  ChNum : TItemCheck;
  ChTime : TItemCheck;
  ChData : array[0..15] of TItemCheck;
implementation

{$R *.dfm}

procedure TFormSaveBufData.FormCreate(Sender: TObject);
var i : Integer;
begin
  ChNum.ChSelect := Chchk1;
  ChNum.ChName   := reqctxt1;

  ChTime.ChSelect := Chchk2;
  ChTime.ChName   := reqctxt2;

  ChData[0].ChSelect := Chchk3;
  ChData[0].ChName   := reqctxt3;

  ChData[1].ChSelect := Chchk4;
  ChData[1].ChName   := reqctxt4;

  ChData[2].ChSelect := Chchk5;
  ChData[2].ChName   := reqctxt5;

  ChData[3].ChSelect := Chchk6;
  ChData[3].ChName   := reqctxt6;

  ChData[4].ChSelect := Chchk7;
  ChData[4].ChName   := reqctxt7;

  ChData[5].ChSelect := Chchk8;
  ChData[5].ChName   := reqctxt8;

  ChData[6].ChSelect := Chchk9;
  ChData[6].ChName   := reqctxt9;

  ChData[7].ChSelect := Chchk10;
  ChData[7].ChName   := reqctxt10;

  ChData[8].ChSelect := Chchk11;
  ChData[8].ChName   := reqctxt11;

  ChData[9].ChSelect := Chchk12;
  ChData[9].ChName   := reqctxt12;

  ChData[10].ChSelect := Chchk13;
  ChData[10].ChName   := reqctxt13;

  ChData[11].ChSelect := Chchk14;
  ChData[11].ChName   := reqctxt14;

  ChData[12].ChSelect := Chchk15;
  ChData[12].ChName   := reqctxt15;

  ChData[13].ChSelect := Chchk16;
  ChData[13].ChName   := reqctxt16;

  ChData[14].ChSelect := Chchk17;
  ChData[14].ChName   := reqctxt17;

  ChData[15].ChSelect := Chchk18;
  ChData[15].ChName   := reqctxt18;

  isSaveTMB := True;
  isSaveTXT := False;

  isCancel  := false;
  isOK      := False;

  isEnSaveNum   := True;
  isEnSaveDT    := true;


  ChNum.ChSelect.Enabled  := False;
  ChNum.ChName.Enabled    := False;
  ChTime.ChSelect.Enabled := False;
  ChTime.ChName.Enabled   := False;
  ChNum.ChSelect.Checked  := False;
  ChTime.ChSelect.Checked := False;

  for i := 0 to 15 do
    begin
      isEnSaveText[i] := False;
      isUseParam[i] := False;
      NameParam[i]  := 'Param ' + IntToStr(i);
      ChData[i].ChSelect.Enabled := isUseParam[i];
      ChData[i].ChSelect.Checked := isUseParam[i] and isEnSaveText[i];
      ChData[i].ChName.Enabled   := isUseParam[i];
      ChData[i].ChName.Caption   := NameParam[i];

      ChData[i].ChSelect.Tag := i;
      ChData[i].ChName.Tag   := i;
      ChData[i].ChSelect.OnClick := ParamClick;
    end;
end;


procedure TFormSaveBufData.rbTEXTClick(Sender: TObject);
  var i : integer;
begin
  ChNum.ChSelect.Enabled  := True;
  ChNum.ChName.Enabled    := True;

  ChTime.ChSelect.Enabled := True;
  ChTime.ChName.Enabled   := True;

  for i := 0 to 15 do
    begin
      isEnSaveText[i] := isEnSaveText[i] and isUseParam[i];
      //isUseParam[i] := False;
      //NameParam[i]  := 'Param ' + IntToStr(i);
      ChData[i].ChSelect.Enabled := isUseParam[i];
      ChData[i].ChSelect.Checked := isUseParam[i] and isEnSaveText[i];
      ChData[i].ChName.Enabled   := isUseParam[i];
      ChData[i].ChName.Caption   := NameParam[i];
    end;
  isSaveTMB := False;
  isSaveTXT := True;
end;

procedure TFormSaveBufData.rbTMBClick(Sender: TObject);
  var i : integer;
begin
  ChNum.ChSelect.Enabled  := False;
  ChNum.ChName.Enabled    := False;
  ChTime.ChSelect.Enabled := False;
  ChTime.ChName.Enabled   := False;

  for i := 0 to 15 do
    begin
      ChData[i].ChSelect.Enabled := False;
      ChData[i].ChName.Enabled   := False;
    end;
  isSaveTMB := True;
  isSaveTXT := False;
end;

procedure TFormSaveBufData.FormActivate(Sender: TObject);
  var i : Integer;
begin
  isSaveTMB := True;
  isSaveTXT := False;

  rbTMB.Checked := isSaveTMB;
  rbTEXT.Checked := isSaveTXT;

  isCancel  := false;
  isOK      := False;

  ChNum.ChSelect.Enabled  := isSaveTXT;
  ChNum.ChName.Enabled    := isSaveTXT;

  ChTime.ChSelect.Enabled := isSaveTXT;
  ChTime.ChName.Enabled   := isSaveTXT;

  ChNum.ChSelect.Checked  := isEnSaveNum;
  ChTime.ChSelect.Checked := isEnSaveDt;

  for i := 0 to 15 do
    begin
      isEnSaveText[i] := isEnSaveText[i] and isUseParam[i];
      ChData[i].ChSelect.Enabled := isUseParam[i] and isSaveTXT;
      ChData[i].ChSelect.Checked := isUseParam[i] and isEnSaveText[i];
      ChData[i].ChName.Enabled   := isUseParam[i] and isSaveTXT;
      ChData[i].ChName.Caption   := NameParam[i];
    end;
end;


procedure TFormSaveBufData.Chchk1Click(Sender: TObject);
begin
  isEnSaveNum := (Sender as TCheckBox).Checked;
  if (Sender as TCheckBox).Checked then
    ChNum.ChName.Color := clLime
  else
    ChNum.ChName.Color := FormSaveBufData.Color;
end;

procedure TFormSaveBufData.Chchk2Click(Sender: TObject);
begin
  isEnSaveDt := (Sender as TCheckBox).Checked;
  if (Sender as TCheckBox).Checked then
    ChTime.ChName.Color := clLime
  else
    ChTime.ChName.Color := FormSaveBufData.Color;

end;

procedure TFormSaveBufData.ParamClick(Sender: TObject);
begin
  isEnSaveText[(Sender as TCheckBox).Tag] := (Sender as TCheckBox).Checked;
  if (Sender as TCheckBox).Checked then
    ChData[(Sender as TCheckBox).Tag].ChName.Color := clLime
  else
    ChData[(Sender as TCheckBox).Tag].ChName.Color := FormSaveBufData.Color;
end;



procedure TFormSaveBufData.Btbtn2Click(Sender: TObject);
begin
  isOK := True;
  isCancel := False;
  FormSaveBufData.Close;
end;

procedure TFormSaveBufData.Btbtn1Click(Sender: TObject);
begin
  isCancel := True;
  isOK := False;
  FormSaveBufData.Close;
end;

end.
