unit Unit50;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, TerminalSt, ShellApi;

type
  TFormParserASCIILog = class(TForm)
    ColorDialog1: TColorDialog;
    dlgOpen1: TOpenDialog;
    CWinLog: TRichEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btnBt2: TButton;
    btnBt1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure btnBt1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBt2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    BGColor : TColor;
    procedure OutLog(text : string; Color : TColor);
    { Public declarations }
  end;

var
  FormParserASCIILog: TFormParserASCIILog;
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

uses Unit9;

{$R *.dfm}

procedure TFormParserASCIILog.OutLog(text : string; Color : TColor);
begin
  if Length(CWinLog.Text) > 1500000 then
    CWinLog.Clear;
  CWinLog.SelAttributes.Color := Color;
  CWinLog.Lines.Add(text);
  if isLogFile then
    Writeln(LogFile, text);

end;

procedure TFormParserASCIILog.FormCreate(Sender: TObject);
begin
  StartWidthForm := FormParserASCIILog.Width;
  StartHeightForm := FormParserASCIILog.Height;
  StartWidthLog := CWinLog.Width;
  StartHeightLog := CWinLog.Height;
  StartLeftBtClear := btnBt1.Left;
  StartTopBtClear := btnBt1.Top;
  StartLeftBtCopy := btnBt2.Left;
  StartTopBtCopy  := btnBt2.Top;
  StartLeftBtBG := btn1.Left;
  StartTopBtBG  := btn1.Top;

  StartLeftBtLOG := btn2.Left;
  StartTopBtLOG  := btn2.Top;

    StartLeftBtVLOG := btn3.Left;
  StartTopBtVLOG  := btn3.Top;


  isLogFile := false;

  CWinLog.Font := TerminalSt.Form1.CMainWindow.Font;
  CWinLog.Color := TerminalSt.Form1.CMainWindow.Color;
  CWinLog.Clear;
end;

procedure TFormParserASCIILog.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
var dH, dW : Integer;
begin
  dH := NewHeight - StartHeightForm;
  dW := NewWidth - StartWidthForm;

  CWinLog.Width := StartWidthLog + dW;
  CWinLog.Height:= StartHeightLog + dH;
  btnBt1.Left      := StartLeftBtClear + dW;
  btnBt1.Top       := StartTopBtClear + dH;
  btnBt2.Left      := StartLeftBtCopy + dW;
  btnBt2.Top       := StartTopBtCopy + dH;

  btn1.Left := StartLeftBtBG + dW;
  btn1.Top  := StartTopBtBG + dH;

    btn2.Left := StartLeftBtLOG + dW;
  btn2.Top  := StartTopBtLOG + dH;

    btn3.Left := StartLeftBtVLOG + dW;
  btn3.Top  := StartTopBtVLOG + dH;


end;

procedure TFormParserASCIILog.btnBt1Click(Sender: TObject);
begin
  CWinLog.Clear;
end;

procedure TFormParserASCIILog.FormActivate(Sender: TObject);
begin
  CWinLog.Font := TerminalSt.Form1.CMainWindow.Font;
  CWinLog.Color := BGColor;
end;

procedure TFormParserASCIILog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormParserASCII.isSendWinLog := False;
  FormParserASCII.SetLogBGColor(BGColor);
  CWinLog.Clear;
  if isLogFile then
    begin
      isLogFile := false;
      btn2.Caption := 'Start LOG';
      CloseFile(LogFile);
    end;
  btn2.Hint := '';
end;

procedure TFormParserASCIILog.btnBt2Click(Sender: TObject);
begin
  CWinLog.SelectAll;
  CWinLog.CopyToClipboard;
end;

procedure TFormParserASCIILog.btn1Click(Sender: TObject);
begin
  ColorDialog1.Color := BGColor;
  if ColorDialog1.Execute then
    begin
      BGColor := ColorDialog1.Color;
      CWinLog.Color := BGColor;
    end;
end;

procedure TFormParserASCIILog.btn2Click(Sender: TObject);
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

procedure TFormParserASCIILog.btn3Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
    ShellExecute(Handle, 'open' , 'notepad.exe', PChar(dlgOpen1.FileName), nil, SW_SHOWNORMAL);
end;

end.
