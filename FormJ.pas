unit FormJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, mmsystem, TerminalST;


type
  TFormJoyst = class(TForm)
    reqSTKey1: TStaticText;
    reqSTKey2: TStaticText;
    lbl1: TLabel;
    lbl2: TLabel;
    pnl1: TPanel;
    rb1: TRadioButton;
    rb2: TRadioButton;
    pnl2: TPanel;
    rb3: TRadioButton;
    rb4: TRadioButton;
    Bt1: TButton;
    Bt2: TButton;
    Bt3: TButton;
    tmrJRead: TTimer;
    procedure tmrJReadTimer(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rb3Click(Sender: TObject);
    procedure rb4Click(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
  private
    { Private declarations }
  public
    numJ : Byte;
    Key1 : Byte;
    Key2 : Byte;
    SendMode : Byte;
    isUse: Boolean;
    isCancel : Boolean;
    isSave   : Boolean;
    { Public declarations }
  end;

var
  FormJoyst: TFormJoyst;
  myjoy: tjoyinfo;
  curj : Byte;

implementation

{$R *.dfm}

procedure TFormJoyst.tmrJReadTimer(Sender: TObject);
var i : integer;
    k1 : Byte;
    k2 : Byte;
begin
  k1 := 0;
  k2 := 0;
  if curj = 1 then
    begin
      joygetpos(joystickid1,@myjoy);
    end;

  if curj = 2 then
    begin
      joygetpos(joystickid2,@myjoy);
    end;

  for i:=1 to 32 do
    begin
      if (myjoy.wButtons and (1 shl (i - 1)) > 0) then
        begin
          if k1 = 0 then
            k1 := i
          else if k2 = 0 then
            k2 := i;
       end;
    end;


  if (Key1 = 0) and (k1 <> 0) then
    Key1 := k1;
  if (Key2 = 0) and (k2 <> 0) then
    Key2 := k2;

  reqSTKey1.Caption := IntToStr(Key1);
  reqSTKey2.Caption := IntToStr(Key2);
end;

procedure TFormJoyst.rb1Click(Sender: TObject);
begin
  curj := 1;
end;

procedure TFormJoyst.rb2Click(Sender: TObject);
begin
  curj := 2;
end;

procedure TFormJoyst.FormCreate(Sender: TObject);
begin
  curj := 1;
end;

procedure TFormJoyst.FormActivate(Sender: TObject);
begin
  if numJ = 1 then rb1.Checked := True;
  if numJ = 2 then rb2.Checked := True;

  if SendMode = 1 then rb3.Checked := True;
  if SendMode = 2 then rb4.Checked := True;

  if isUse then
    begin
      reqSTKey1.Color := clLime;
      reqSTKey2.Color := clLime;
    end
  else
    begin
      reqSTKey1.Color := Form1.Color;
      reqSTKey2.Color := Form1.Color;
    end;


  isCancel := false;
  isSave   := false;

  Form1.tmrCheckJ.Enabled :=False;
  tmrJRead.Enabled := True;
end;

procedure TFormJoyst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tmrJRead.Enabled := False;
  Form1.tmrCheckJ.Enabled :=True;
  numJ := curj;
end;

procedure TFormJoyst.rb3Click(Sender: TObject);
begin
SendMode := 1;
end;

procedure TFormJoyst.rb4Click(Sender: TObject);
begin
SendMode := 2;
end;

procedure TFormJoyst.Bt1Click(Sender: TObject);
begin
  Key1 := 0;
  Key2 := 0;

  reqSTKey1.Caption := IntToStr(Key1);
  reqSTKey2.Caption := IntToStr(Key2);

  
end;

procedure TFormJoyst.Bt3Click(Sender: TObject);
begin
  isCancel := true;
  isUse    := False;
  FormJoyst.Close();
end;

procedure TFormJoyst.Bt2Click(Sender: TObject);
begin
  isSave := true;
  isUse := true;
  FormJoyst.Close();
end;

end.
