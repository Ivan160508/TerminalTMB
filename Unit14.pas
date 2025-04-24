unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TerminalST, ShellApi;

type
  TOpenLogFile = class(TForm)
    Button1: TButton;
    sendAnsBT1: TButton;
    BinLogOpenBT: TButton;
    procedure Button1Click(Sender: TObject);
    procedure sendAnsBT1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BinLogOpenBTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OpenLogFile: TOpenLogFile;

implementation

{$R *.dfm}


procedure TOpenLogFile.Button1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open' , 'notepad.exe', PChar(TerminalST.NameLogFile), nil, SW_SHOWNORMAL);
  OpenLogFile.Close;
end;

procedure TOpenLogFile.sendAnsBT1Click(Sender: TObject);
begin
  OpenLogFile.Close;
end;

procedure TOpenLogFile.FormActivate(Sender: TObject);
begin
  Button1.Enabled      := TerminalST.NameLogFile    <> '';
  BinLogOpenBT.Enabled := TerminalST.NameLogBinFile <> '';
  sendAnsBT1.SetFocus;
end;

procedure TOpenLogFile.BinLogOpenBTClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open' , 'notepad.exe', PChar(TerminalST.NameLogBinFile), nil, SW_SHOWNORMAL);
  OpenLogFile.Close;
end;

end.
