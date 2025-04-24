unit Unit40;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, TerminalSt, ShellApi;

type
  TfrmParserLog = class(TForm)
    CWinLog: TRichEdit;
    ColorDialog1: TColorDialog;
    Button2: TButton;
    dlgOpen1: TOpenDialog;
    Button1: TButton;
    Bt2: TButton;
    Bt1: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Bt1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bt2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    BGColor : TColor;

    procedure OutLog(text : string; Color : TColor);
    { Public declarations }
  end;

var
  frmParserLog: TfrmParserLog;
  StartWidthForm : Integer;
  StartHeightForm : Integer;
  StartWidthLog : Integer;
  StartHeightLog : Integer;
  StartLeftBtClear : Integer;
  StartTopBtClear : Integer;
  StartLeftBtCopy : Integer;
  StartTopBtCopy  : Integer;
  StartLeftBtBG : Integer;
  StartTopBtBG  : Integer;


    StartLeftBtLOG : Integer;
  StartTopBtLOG  : Integer;

    StartLeftBtVLOG : Integer;
  StartTopBtVLOG  : Integer;


  LogFile : TextFile;
  isLogFile : Boolean;
implementation

uses Unit24;
{$R *.dfm}

procedure TfrmParserLog.FormCreate(Sender: TObject);
begin
  StartWidthForm := frmParserLog.Width;
  StartHeightForm := frmParserLog.Height;
  StartWidthLog := CWinLog.Width;
  StartHeightLog := CWinLog.Height;
  StartLeftBtClear := Bt1.Left;
  StartTopBtClear := Bt1.Top;
  StartLeftBtCopy := Bt2.Left;
  StartTopBtCopy  := Bt2.Top;
  StartLeftBtBG := Button1.Left;
  StartTopBtBG  := Button1.Top;

  StartLeftBtLOG := Button2.Left;
  StartTopBtLOG  := Button2.Top;

    StartLeftBtVLOG := Button3.Left;
  StartTopBtVLOG  := Button3.Top;


  isLogFile := false;

  CWinLog.Font := TerminalSt.Form1.CMainWindow.Font;
  CWinLog.Color := TerminalSt.Form1.CMainWindow.Color;
  CWinLog.Clear;
end;

procedure TfrmParserLog.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
var dH, dW : Integer;
begin
  dH := NewHeight - StartHeightForm;
  dW := NewWidth - StartWidthForm;

  CWinLog.Width := StartWidthLog + dW;
  CWinLog.Height:= StartHeightLog + dH;
  Bt1.Left      := StartLeftBtClear + dW;
  Bt1.Top       := StartTopBtClear + dH;
  Bt2.Left      := StartLeftBtCopy + dW;
  Bt2.Top       := StartTopBtCopy + dH;

  Button1.Left := StartLeftBtBG + dW;
  Button1.Top  := StartTopBtBG + dH;

    Button2.Left := StartLeftBtLOG + dW;
  Button2.Top  := StartTopBtLOG + dH;

    Button3.Left := StartLeftBtVLOG + dW;
  Button3.Top  := StartTopBtVLOG + dH;


end;
procedure TfrmParserLog.Bt1Click(Sender: TObject);
begin
  CWinLog.Clear;
end;

procedure TfrmParserLog.FormActivate(Sender: TObject);
begin
  CWinLog.Font := TerminalSt.Form1.CMainWindow.Font;
  CWinLog.Color := BGColor;
end;

procedure TfrmParserLog.OutLog(text : string; Color : TColor);
begin
  if Length(CWinLog.Text) > 1500000 then
    CWinLog.Clear;
  CWinLog.SelAttributes.Color := Color;
  CWinLog.Lines.Add(text);
  if isLogFile then
    Writeln(LogFile, text);

end;

procedure TfrmParserLog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormParser.isSendWinLog := False;
  FormParser.SetLogBGColor(BGColor);
  CWinLog.Clear;
  if isLogFile then
    begin
      isLogFile := false;
      Button2.Caption := 'Start LOG';
      CloseFile(LogFile);
    end;
  Button2.Hint := '';  
end;

procedure TfrmParserLog.Bt2Click(Sender: TObject);
begin
  CWinLog.SelectAll;
  CWinLog.CopyToClipboard;
end;

procedure TfrmParserLog.Button1Click(Sender: TObject);
begin
  ColorDialog1.Color := BGColor;
  if ColorDialog1.Execute then
    begin
      BGColor := ColorDialog1.Color;
      CWinLog.Color := BGColor;
    end;
end;

procedure TfrmParserLog.Button2Click(Sender: TObject);
begin
  if not isLogFile then
    begin
      dlgOpen1.InitialDir := CfgTerminal.LogDir;
      if dlgOpen1.Execute then
        begin
          try
            AssignFile(LogFile, dlgOpen1.FileName);
            Rewrite(LogFile);
            (Sender as TButton).Hint := dlgOpen1.FileName;
            isLogFile := True;
          except
            ShowMessage('Open file error');
            isLogFile := False;
          end;
        end;
    end
  else
    begin
      isLogFile := false;
      try
        CloseFile(LogFile);
      except
        ShowMessage('Close file error');
      end;
    end;
  if isLogFile then (Sender as TButton).Caption := 'Stop LOG'
  else (Sender as TButton).Caption := 'Start LOG';
  (Sender as TButton).ShowHint := isLogFile;

end;

procedure TfrmParserLog.Button3Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
    ShellExecute(Handle, 'open' , 'notepad.exe', PChar(dlgOpen1.FileName), nil, SW_SHOWNORMAL);
end;

end.
