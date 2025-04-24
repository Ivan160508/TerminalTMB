unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TerminalST, FileCtrl;

type
  TSettings = class(TForm)
    EdtDirLog: TEdit;
    EditDirCmd: TEdit;
    EditDirSendFile: TEdit;
    BTDirLog: TButton;
    BTDirCmd: TButton;
    BTDirSendFile: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    sendAnsBT1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure BTDirLogClick(Sender: TObject);
    procedure BTDirCmdClick(Sender: TObject);
    procedure BTDirSendFileClick(Sender: TObject);
    procedure sendAnsBT1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtDirLogChange(Sender: TObject);
    procedure EdtDirLogClick(Sender: TObject);
    procedure EditDirCmdChange(Sender: TObject);
    procedure EditDirCmdClick(Sender: TObject);
    procedure EditDirSendFileChange(Sender: TObject);
    procedure EditDirSendFileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Settings: TSettings;

implementation

{$R *.dfm}

procedure TSettings.FormActivate(Sender: TObject);
begin
  EdtDirLog.Text       := TerminalST.CfgTerminal.LogDir;
  EditDirCmd.Text      := TerminalST.CfgTerminal.CmdDir;
  EditDirSendFile.Text := TerminalST.CfgTerminal.FileDir;

end;

procedure TSettings.BTDirLogClick(Sender: TObject);
var
  chosenDirectory : string;
begin
  if (SelectDirectory('Directory for log files', '', chosenDirectory)) then
    begin
      EdtDirLog.Text := chosenDirectory + '\';
    end;
end;

procedure TSettings.BTDirCmdClick(Sender: TObject);
var
  chosenDirectory : string;
begin
  if (SelectDirectory('Directory for commands files', '', chosenDirectory)) then
    begin
      EditDirCmd.Text := chosenDirectory + '\';
    end;
end;

procedure TSettings.BTDirSendFileClick(Sender: TObject);
var
  chosenDirectory : string;
begin
  if (SelectDirectory('Directory for data files', '', chosenDirectory)) then
    begin
      EditDirSendFile.Text := chosenDirectory + '\';
    end;
end;

procedure TSettings.sendAnsBT1Click(Sender: TObject);
  var
    isClose : Boolean;
begin
  isClose := True;
  if Length(EdtDirLog.Text) < 250 then
    begin
      TerminalST.CfgTerminal.LogDir  := EdtDirLog.Text;
    end
  else
    begin
      EdtDirLog.Color := clRed;
      ShowMessage('Long directory path');
      isClose := False;
    end;


  if Length(EditDirCmd.Text) < 250 then
    begin
      TerminalST.CfgTerminal.CmdDir  := EditDirCmd.Text;
    end
  else
    begin
      EditDirCmd.Color := clRed;
      ShowMessage('Long directory path');
      isClose := False;
    end;

  if Length(EditDirCmd.Text) < 250 then
    begin
      TerminalST.CfgTerminal.FileDir := EditDirSendFile.Text;
    end
  else
    begin
      EditDirSendFile.Color := clRed;
      ShowMessage('Long directory path');
      isClose := False;
    end;

  if isClose then
    begin
      Settings.Close;
    end;
end;

procedure TSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TerminalST.Form1.SettBt.Font.Style := [];
  EdtDirLog.Color := clWindow;
  EditDirCmd.Color:= clWindow;
  EditDirSendFile.Color := clWindow;
end;

procedure TSettings.EdtDirLogChange(Sender: TObject);
begin
  (Sender as TEdit).Color := clWindow;
end;

procedure TSettings.EdtDirLogClick(Sender: TObject);
begin
  (Sender as TEdit).Color := clWindow;
end;

procedure TSettings.EditDirCmdChange(Sender: TObject);
begin
  (Sender as TEdit).Color := clWindow;
end;

procedure TSettings.EditDirCmdClick(Sender: TObject);
begin
  (Sender as TEdit).Color := clWindow;
end;

procedure TSettings.EditDirSendFileChange(Sender: TObject);
begin
  (Sender as TEdit).Color := clWindow;
end;

procedure TSettings.EditDirSendFileClick(Sender: TObject);
begin
  (Sender as TEdit).Color := clWindow;
end;

end.
