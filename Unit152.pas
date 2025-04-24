unit Unit152;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type TItemCheck = record
  ChSelect : TCheckBox;
  ChName   : TStaticText;
end;

type
  TFormSaveFileDataBuf = class(TForm)
    grp1: TGroupBox;
    rbTMB: TRadioButton;
    rbTEXT: TRadioButton;
    grp2: TGroupBox;
    ctxt1: TStaticText;
    chk1: TCheckBox;
    ctxt2: TStaticText;
    chk2: TCheckBox;
    ctxt3: TStaticText;
    chk3: TCheckBox;
    ctxt4: TStaticText;
    chk4: TCheckBox;
    ctxt5: TStaticText;
    chk5: TCheckBox;
    ctxt6: TStaticText;
    chk6: TCheckBox;
    ctxt7: TStaticText;
    chk7: TCheckBox;
    ctxt8: TStaticText;
    chk8: TCheckBox;
    ctxt9: TStaticText;
    chk9: TCheckBox;
    ctxt10: TStaticText;
    chk10: TCheckBox;
    ctxt11: TStaticText;
    chk11: TCheckBox;
    ctxt12: TStaticText;
    chk12: TCheckBox;
    ctxt13: TStaticText;
    chk13: TCheckBox;
    ctxt14: TStaticText;
    chk14: TCheckBox;
    ctxt15: TStaticText;
    chk15: TCheckBox;
    ctxt16: TStaticText;
    chk16: TCheckBox;
    ctxt17: TStaticText;
    chk17: TCheckBox;
    ctxt18: TStaticText;
    chk18: TCheckBox;
    btn1: TButton;
    btn2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure rbTMBClick(Sender: TObject);
    procedure rbTEXTClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
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
  FormSaveFileDataBuf: TFormSaveFileDataBuf;
  ChNum : TItemCheck;
  ChTime : TItemCheck;
  ChData : array[0..15] of TItemCheck;
implementation

{$R *.dfm}

procedure TFormSaveFileDataBuf.FormCreate(Sender: TObject);
var i : Integer;
begin
  ChNum.ChSelect := chk1;
  ChNum.ChName   := ctxt1;

  ChTime.ChSelect := chk2;
  ChTime.ChName   := ctxt2;

  ChData[0].ChSelect := chk3;
  ChData[0].ChName   := ctxt3;

  ChData[1].ChSelect := chk4;
  ChData[1].ChName   := ctxt4;

  ChData[2].ChSelect := chk5;
  ChData[2].ChName   := ctxt5;

  ChData[3].ChSelect := chk6;
  ChData[3].ChName   := ctxt6;

  ChData[4].ChSelect := chk7;
  ChData[4].ChName   := ctxt7;

  ChData[5].ChSelect := chk8;
  ChData[5].ChName   := ctxt8;

  ChData[6].ChSelect := chk9;
  ChData[6].ChName   := ctxt9;

  ChData[7].ChSelect := chk10;
  ChData[7].ChName   := ctxt10;

  ChData[8].ChSelect := chk11;
  ChData[8].ChName   := ctxt11;

  ChData[9].ChSelect := chk12;
  ChData[9].ChName   := ctxt12;

  ChData[10].ChSelect := chk13;
  ChData[10].ChName   := ctxt13;

  ChData[11].ChSelect := chk14;
  ChData[11].ChName   := ctxt14;

  ChData[12].ChSelect := chk15;
  ChData[12].ChName   := ctxt15;

  ChData[13].ChSelect := chk16;
  ChData[13].ChName   := ctxt16;

  ChData[14].ChSelect := chk17;
  ChData[14].ChName   := ctxt17;

  ChData[15].ChSelect := chk18;
  ChData[15].ChName   := ctxt18;

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
    end;
end;

procedure TFormSaveFileDataBuf.rbTMBClick(Sender: TObject);
  var i : integer;
begin
  //ChNum.ChSelect.Enabled  := False;
  //ChNum.ChName.Enabled    := False;
  //ChTime.ChSelect.Enabled := False;
  //ChTime.ChName.Enabled   := False;

  //for i := 0 to 15 do
  //  begin
  //    ChData[i].ChSelect.Enabled := False;
  //    ChData[i].ChName.Enabled   := False;
  //  end;
  //isSaveTMB := True;
end;

procedure TFormSaveFileDataBuf.rbTEXTClick(Sender: TObject);
  var i : integer;
begin
  //ChNum.ChSelect.Enabled  := True;
  //ChNum.ChName.Enabled    := True;
  //ChTime.ChSelect.Enabled := True;
  //ChTime.ChName.Enabled   := True;

  //for i := 0 to 15 do
  //  begin
  //    ChData[i].ChSelect.Enabled := isEnSaveText[i];
  //    ChData[i].ChName.Enabled   := isEnSaveText[i];
  //  end;
end;


procedure TFormSaveFileDataBuf.FormActivate(Sender: TObject);
var i : Integer;
begin
  isSaveTMB := True;
  isSaveTXT := False;

  isCancel  := false;
  isOK      := False;

  isEnSaveNum   := True;
  isEnSaveDT    := true;

  //ChNum.ChSelect.Enabled  := False;
  //ChNum.ChName.Enabled    := False;
  //ChTime.ChSelect.Enabled := False;
  //ChTime.ChName.Enabled   := False;
  //ChNum.ChSelect.Checked  := False;
  //ChTime.ChSelect.Checked := False;

  for i := 0 to 15 do
    begin
      isEnSaveText[i] := False;
      isUseParam[i] := False;
      NameParam[i]  := 'Param ' + IntToStr(i);
      ChData[i].ChSelect.Enabled := isUseParam[i];
      ChData[i].ChSelect.Checked := isUseParam[i] and isEnSaveText[i];
      ChData[i].ChName.Enabled   := isUseParam[i];
      ChData[i].ChName.Caption   := NameParam[i];
    end;
end;

end.
