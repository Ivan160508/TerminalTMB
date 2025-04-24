unit Unit44;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormSetSendData = class(TForm)
    grp1: TGroupBox;
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    chk4: TCheckBox;
    chk5: TCheckBox;
    chk6: TCheckBox;
    chk7: TCheckBox;
    chk8: TCheckBox;
    chk9: TCheckBox;
    chk10: TCheckBox;
    chk11: TCheckBox;
    chk12: TCheckBox;
    chk13: TCheckBox;
    chk14: TCheckBox;
    chk15: TCheckBox;
    chk16: TCheckBox;
    Bt1: TButton;
    Bt2: TButton;
    Bt3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure SetSendClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
  private
    { Private declarations }
  public
    SendInPort : array[1..16] of Boolean;
    IsResetAll : Boolean;
    { Public declarations }
  end;

var
  FormSetSendData: TFormSetSendData;
  CBSendInPort : array[1..16] of TCheckBox;
  SendInPortTmp : array[1..16] of Boolean;
implementation

{$R *.dfm}

procedure TFormSetSendData.FormCreate(Sender: TObject);
var
  nport : Byte;
begin
  CBSendInPort[1]  := chk1;
  CBSendInPort[2]  := chk2;
  CBSendInPort[3]  := chk3;
  CBSendInPort[4]  := chk4;
  CBSendInPort[5]  := chk5;
  CBSendInPort[6]  := chk6;
  CBSendInPort[7]  := chk7;
  CBSendInPort[8]  := chk8;
  CBSendInPort[9]  := chk9;
  CBSendInPort[10] := chk10;
  CBSendInPort[11] := chk11;
  CBSendInPort[12] := chk12;
  CBSendInPort[13] := chk13;
  CBSendInPort[14] := chk14;
  CBSendInPort[15] := chk15;
  CBSendInPort[16] := chk16;

  for nport := 1 to 16 do
    begin
      CBSendInPort[nport].Caption := 'PortB_' + IntToStr(nPort);
      CBSendInPort[nport].Tag := nport;
      CBSendInPort[nport].OnClick := SetSendClick;
    end;

end;

procedure TFormSetSendData.SetSendClick(Sender: TObject);
  begin
    SendInPortTmp[(Sender as TCheckBox).Tag] := (Sender as TCheckBox).Checked;
    IsResetAll := false;
  end;

procedure TFormSetSendData.FormActivate(Sender: TObject);
var
  nport : Byte;
begin
  for nport := 1 to 16 do
    begin
      CBSendInPort[nport].Checked := SendInPort[nport];
      SendInPortTmp[nport] := SendInPort[nport];
    end;
  IsResetAll := False;
end;

procedure TFormSetSendData.Bt2Click(Sender: TObject);
begin
  FormSetSendData.Close;
end;

procedure TFormSetSendData.Bt1Click(Sender: TObject);
var
  nport : Byte;
begin
  for nport := 1 to 16 do
    begin
      SendInPort[nport] := SendInPortTmp[nport];
    end;
  FormSetSendData.Close;
end;

procedure TFormSetSendData.Bt3Click(Sender: TObject);
var nport : Byte;
begin
  for nport := 1 to 16 do
    begin
      CBSendInPort[nport].Checked := False;
      SendInPortTmp[nport] := False;
    end;
  IsResetAll := True;
end;

end.
