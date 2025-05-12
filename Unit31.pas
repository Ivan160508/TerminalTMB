unit Unit31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, TerminalST;

type
  TFormFont = class(TForm)
    GroupBox1: TGroupBox;
    trckbr1: TTrackBar;
    grp1: TGroupBox;
    grp2: TGroupBox;
    ctxt1: TStaticText;
    ctxt2: TStaticText;
    ctxt3: TStaticText;
    Button1: TButton;
    Button2: TButton;
    dlgC: TColorDialog;
    Button3: TButton;
    chk1: TCheckBox;
    grp3: TGroupBox;
    ctxt4: TStaticText;
    Button4: TButton;
    chk2: TCheckBox;
    StaticText1: TStaticText;
    Button5: TButton;
    Label1: TLabel;
    edt1: TEdit;
    procedure trckbr1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure edt1Change(Sender: TObject);
    procedure edt1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    ColorSend : TColor;
    ColorRead : TColor;
    Size      : Cardinal;
    isSave    : Boolean;
    isBold    : Boolean;
    BGColor   : TColor;
    isColorInputData : Boolean;
      ColorInputData : TColor;
    TimeNoAns : Integer;
  end;

var
  FormFont: TFormFont;

implementation

uses DataSendLog_;

{$R *.dfm}

procedure TFormFont.trckbr1Change(Sender: TObject);
begin
  Size := trckbr1.Position;
  ctxt1.Caption := IntToStr(Size);
  TerminalST.Form1.CMainWindow.Font.Size := Size;
  TerminalST.Form1.CMainWindowAdd.Font.Size := Size;
  TerminalST.Form1.SecondWindow.Font.Size := Size;
  TerminalST.Form1.SecondWindow.Font.Size := Size;

end;

procedure TFormFont.Button1Click(Sender: TObject);
begin
  if dlgC.Execute then
    begin
      ColorSend := dlgC.Color;
      ctxt2.Color := ColorSend;
      TerminalST.FontColorSend := ColorSend;
    end
end;

procedure TFormFont.Button2Click(Sender: TObject);
begin
  if dlgC.Execute then
    begin
      ColorRead := dlgC.Color;
      ctxt3.Color := ColorRead;
      TerminalST.FontColorRead := ColorRead;
    end

end;

procedure TFormFont.FormActivate(Sender: TObject);
begin
  if Size < 8 then Size := 8;
  if Size > 50 then Size := 50;

  trckbr1.Position := Size;
  ctxt1.Caption := IntToStr(Size);
  ctxt2.Color := ColorSend;
  ctxt3.Color := ColorRead;
  chk1.Checked := isBold;
  ctxt4.Color := BGColor;
  chk2.Checked := isColorInputData;
  StaticText1.Color := ColorInputData;

  
  edt1.Text := IntToStr(TimeNoAns);
  edt1.Enabled := isColorInputData;

  StaticText1.Enabled := isColorInputData;
  Button5.Enabled := isColorInputData;
  isSave := False;
end;

procedure TFormFont.Button3Click(Sender: TObject);
begin
  isSave := True;
  FormFont.Close();
end;

procedure TFormFont.chk1Click(Sender: TObject);
begin
  isBold := chk1.Checked;
  TerminalST.isFontBold := isBold;
  if isBold then
    begin
      TerminalST.Form1.CMainWindow.Font.Style := [fsBold];
      TerminalST.Form1.CMainWindowAdd.Font.Style := [fsBold];
      TerminalST.Form1.SecondWindow.Font.Style := [fsBold];
      TerminalST.Form1.SecondWindowAdd.Font.Style := [fsBold];

      TerminalST.Form1.MainStrCmd.Font.Style := [fsBold];
      TerminalST.Form1.AddStrCmd.Font.Style := [fsBold];
    end
  else
    begin
      TerminalST.Form1.CMainWindow.Font.Style := [];
      TerminalST.Form1.CMainWindowAdd.Font.Style := [];
      TerminalST.Form1.SecondWindow.Font.Style := [];
      TerminalST.Form1.SecondWindowAdd.Font.Style := [];

      TerminalST.Form1.MainStrCmd.Font.Style := [];
      TerminalST.Form1.AddStrCmd.Font.Style := [];
    end;


end;

procedure TFormFont.Button5Click(Sender: TObject);
begin
  if dlgC.Execute then
    begin
      ColorInputData := dlgC.Color;
      TerminalST.Form1.ColorInputData    := ColorInputData;
      StaticText1.Color := ColorInputData;
    end
end;

procedure TFormFont.chk2Click(Sender: TObject);
begin
  isColorInputData := (Sender as TCheckBox).Checked;
  StaticText1.Enabled := isColorInputData;
  Button5.Enabled := isColorInputData;
  edt1.Enabled := isColorInputData;
  TerminalST.Form1.isColorInputData := isColorInputData;
end;

procedure TFormFont.Button4Click(Sender: TObject);
begin
  if dlgC.Execute then
    begin
      BGColor := dlgC.Color;
      TerminalST.Form1.MainStrCmd.Color := BGColor;
      TerminalST.Form1.AddStrCmd.Color  := BGColor;
      TerminalST.Form1.CMainWindow.Color  := BGColor;
      TerminalST.Form1.CMainWindowAdd.Color  := BGColor;

      ctxt4.Color := BGColor;
    end
end;

procedure TFormFont.edt1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8])then Key:=#0;
end;

procedure TFormFont.edt1Change(Sender: TObject);
begin
  if (Sender as TEDit).Text <> '' then
    TimeNoAns := StrToInt((Sender as TEDit).Text);
end;

procedure TFormFont.edt1Exit(Sender: TObject);
begin
  (Sender as TEDit).Text := IntToStr(TimeNoAns);
end;

procedure TFormFont.FormCreate(Sender: TObject);
begin
  edt1.Text := IntToStr(TimeNoAns);
end;

end.
