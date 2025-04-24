unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm8 = class(TForm)
    Cmd: TEdit;
    Help: TEdit;
    Command: TLabel;
    Label1: TLabel;
    btn1: TButton;
    BtSendFile: TButton;
    dlgOpenDOpenFile: TOpenDialog;
    procedure FormActivate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure CmdKeyPress(Sender: TObject; var Key: Char);
    procedure HelpKeyPress(Sender: TObject; var Key: Char);
    procedure CmdChange(Sender: TObject);
    procedure HelpChange(Sender: TObject);
    procedure BtSendFileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  CmdStr :string[250];
  HelpStr :string[250];
  StartLeftSendFile: Integer; 
  StartWidthForm   : Integer;
  StartWidthEdit   : Integer;
  StartWidthButton : Integer;
  StartTopForm     : Integer;
  StartTopButton   : Integer;
implementation

uses Unit7;

{$R *.dfm}


procedure TForm8.FormActivate(Sender: TObject);
begin
  Cmd.Text := Form7.GetStrCmdTmp;
  Help.Text:= Form7.GetStrHelpTmp;
end;

procedure TForm8.btn1Click(Sender: TObject);
begin
  if Length(Cmd.Text)  <= 250 then Form7.SetStrCmdTmp(Cmd.Text);
  if Length(Help.Text) <= 250 then Form7.SetStrHelpTmp(Help.Text);
  Form8.Close;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  StartWidthForm   := Form8.Width;
  StartWidthEdit   := Cmd.Width;
  StartWidthButton := btn1.Width;
  StartTopForm     := Form8.Height;
  StartTopButton   := btn1.Height;
  StartLeftSendFile:= BtSendFile.Left;
end;

procedure TForm8.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
  var
    dx, dy : Integer;
begin
  dx := StartWidthForm - Form8.Width;
  dy := StartTopForm   - Form8.Height;
  Cmd.Width   := StartWidthEdit   - dx;
  Help.Width  := StartWidthEdit   - dx;
  btn1.Width  := StartWidthButton - dx;
  btn1.Height := StartTopButton   - dy;
  BtSendFile.Left := StartLeftSendFile - dx;
end;

procedure TForm8.CmdKeyPress(Sender: TObject; var Key: Char);
begin
  if (Length(Cmd.Text) > 250) and (Key <> #8) and (Key <> #46) then
    begin
      Cmd.Color := clRed;
      Key := #0;
    end
  else
    begin
      Cmd.Color := clWindow;
    end;
  if (Length(Cmd.Text) > 250) then
    begin
      Cmd.Color := clRed;
    end;
end;

procedure TForm8.HelpKeyPress(Sender: TObject; var Key: Char);
begin
  if (Length(Help.Text) > 250) and (Key <> #8) and (Key <> #46) then
    begin
      Help.Color := clRed;
      Key := #0;
    end
  else
    begin
      Help.Color := clWindow;
    end;

  if (Length(Help.Text) > 250) then
    begin
      Help.Color := clRed;
    end;

end;

procedure TForm8.CmdChange(Sender: TObject);
begin
 if (Length(Cmd.Text) > 250) then
   begin
     Cmd.Color := clRed;
   end
 else
   begin
     Cmd.Color := clWindow;
   end;

end;

procedure TForm8.HelpChange(Sender: TObject);
begin
 if (Length(Cmd.Text) > 250) then
   begin
     Help.Color := clRed;
   end
 else
   begin
     Help.Color := clWindow;
   end;
end;

procedure TForm8.BtSendFileClick(Sender: TObject);
  begin
    if dlgOpenDOpenFile.Execute then
      Cmd.Text := '[sendfile:]' + dlgOpenDOpenFile.FileName;
  end;

end.
