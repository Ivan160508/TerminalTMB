unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TerminalST, ExtCtrls, Common;

type
  TFastSend = class(TForm)
    Memo1: TMemo;
    BtClear: TButton;
    OpenPortBt: TButton;
    Timer1: TTimer;
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtClearClick(Sender: TObject);
    procedure OpenPortBtClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FastSend: TFastSend;

  CntBytesNew: integer;
  CntBytesOld: integer;
implementation

{$R *.dfm}

procedure TFastSend.Memo1KeyPress(Sender: TObject; var Key: Char);
  var
    Str1 : string;
    Str2 : string;
begin
  Str1 := '';
  Str2 := '';
  while (Form1.GetIsSendingData) do begin sleep(1); end;
  Str1 := Key;
  TerminalST.Form1.SendPortData(Str1, Str2, SendASCII, false);
end;

procedure TFastSend.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TFastSend.BitBtn1Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TFastSend.BtClearClick(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TFastSend.OpenPortBtClick(Sender: TObject);
begin
  Form1.BTConnect.Click;
  Memo1.Enabled := Form1.GetIsComPort;
  if Memo1.Enabled then Memo1.Color := TerminalST.Form1.CMainWindow.Color
  else Memo1.Color := FastSend.Color;
  OpenPortBt.Caption := TerminalST.Form1.BTConnect.Caption;
end;

procedure TFastSend.FormActivate(Sender: TObject);
begin
  Memo1.Enabled := Form1.GetIsComPort;
  OpenPortBt.Caption := TerminalST.Form1.BTConnect.Caption;
  if Memo1.Enabled then Memo1.Color := TerminalST.Form1.CMainWindow.Color
  else Memo1.Color := FastSend.Color;
  Timer1.Enabled := true;

  Memo1.Font  := Form1.GetFontMain;
end;

procedure TFastSend.Timer1Timer(Sender: TObject);
begin
  if Length(Memo1.Lines.Text) > 500000 then
    Memo1.Clear;
end;

procedure TFastSend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := false;
  TerminalST.Form1.FSmodeBt.Font.Style := [];
end;

end.
