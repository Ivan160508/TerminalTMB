unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TerminalST, ComCtrls;

type
  TDataSendLog = class(TForm)
    WindowLog: TMemo;
    ClrButton: TButton;
    ChMode: TCheckBox;
    pbFlow: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure ClrButtonClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure ChModeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure WindowLogChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataSendLog : TDataSendLog;
  WStart  : integer;
  HStart  : integer;
  deltaW  : integer;
  deltaH  : integer;

  StartPbFlowWidth      : integer;
  StartPbFlowTop        : integer;
  StartWindowLogWidth   : integer;
  StartWindowLogHeight  : integer;
  StartButtonClearLeft  : integer;
  StartChModeTop        : Integer;
  StartButtonTop        : Integer;


  isShowMode            : Integer;


implementation

{$R *.dfm}

procedure TDataSendLog.FormCreate(Sender: TObject);
begin
  WindowLog.Clear;
  WStart := DataSendLog.Width;
  HStart := DataSendLog.Height;
  deltaW := 0;
  deltaH := 0;
  StartWindowLogWidth   := WindowLog.Width;
  StartWindowLogHeight  := WindowLog.Height;
  StartButtonClearLeft  := ClrButton.Left;
  StartChModeTop        := ChMode.Top;
  StartButtonTop        := ClrButton.Top;
  StartPbFlowWidth      := pbFlow.Width;
  StartPbFlowTop        := pbFlow.Top;
end;

procedure TDataSendLog.ClrButtonClick(Sender: TObject);
begin
  WindowLog.Clear;
  pbFlow.Position := 0;
end;

procedure TDataSendLog.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  deltaW := DataSendLog.Width  - WStart;
  deltaH := DataSendLog.Height - HStart;

  WindowLog.Width := StartWindowLogWidth   + deltaW;
  WindowLog.Height:= StartWindowLogHeight  + deltaH;
  ClrButton.Left  := StartButtonClearLeft  + deltaW;
  ChMode.Top      := StartChModeTop        + deltaH;
  ClrButton.Top   := StartButtonTop        + deltaH;
  pbFlow.Width    := StartPbFlowWidth      + deltaW;
  pbFlow.Top      := StartPbFlowTop        + deltaH;
end;

procedure TDataSendLog.ChModeClick(Sender: TObject);
begin
  if ChMode.Checked then
    isShowMode := 1
  else
    isShowMode := 0;

  TerminalST.CfgTerminal.isShowModeLSC := isShowMode;
end;

procedure TDataSendLog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TerminalST.isListSendCmd          := False;
  TerminalST.Form1.CSLbt.Font.Style := [];
  TerminalST.Form1.CSLbt.Tag        := 0;
end;

procedure TDataSendLog.WindowLogChange(Sender: TObject);
begin
if WindowLog.Lines.Count > MAX_LINES_LOG_SEND then
  WindowLog.Clear;

pbFlow.Position := WindowLog.Lines.Count;
end;

end.
