unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Common,  CLIPBrd;

type
  TFormEditHelpCmd = class(TForm)
    CmdName: TEdit;
    CmdData: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    mmo1: TMemo;
    req1: TStaticText;
    dlgOpen1: TOpenDialog;
    Bt1: TButton;
    grp1: TGroupBox;
    lbl1: TLabel;
    edt1: TEdit;
    rb1: TRadioButton;
    rb2: TRadioButton;
    btn1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure EditChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure CmdNameChange(Sender: TObject);
    procedure CmdDataChange(Sender: TObject);
    procedure CmdNameKeyPress(Sender: TObject; var Key: Char);
    procedure CmdDataKeyPress(Sender: TObject; var Key: Char);
    procedure mmo1Change(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditHelpCmd  : TFormEditHelpCmd;
  FormWidthStart   : Integer;
  EditWidthStart   : integer;

  NameWidthStart   : integer;
  DataWidthStart   : integer;
  StartMemoHeigt   : Integer;
  StartFormHeiht   : Integer;
  StartLeftBTSendFile : Integer;
  SelCmdWidthStart : integer;
  ButtonWidthStart : integer;
  StTextTopStart   : Integer;

  HelpStr : array[1..12] of TStaticText;
  EDTSrc : array[1..48] of TEdit;
  isEnChange : Boolean;

implementation

uses TerminalST, Unit3;

{$R *.dfm}

function StrToHex(str : string) : string;
  var
    i   : integer;
    len : integer;
    res : string;
  begin
    res := '';
    len := Length(str);
    for i := 1 to len do
      res := res + IntToHex(Ord(str[i]),2) + ' ';
    result := res;
  end;

function HexToInt(Hex: Char) : byte;
  begin
    if Hex = '0' then result := 0 else
    if Hex = '1' then result := 1 else
    if Hex = '2' then result := 2 else
    if Hex = '3' then result := 3 else
    if Hex = '4' then result := 4 else
    if Hex = '5' then result := 5 else
    if Hex = '6' then result := 6 else
    if Hex = '7' then result := 7 else
    if Hex = '8' then result := 8 else
    if Hex = '9' then result := 9 else
    if (Hex = 'A') or (Hex = 'a') then result := 10 else
    if (Hex = 'B') or (Hex = 'b') then result := 11 else
    if (Hex = 'C') or (Hex = 'c') then result := 12 else
    if (Hex = 'D') or (Hex = 'd') then result := 13 else
    if (Hex = 'E') or (Hex = 'e') then result := 14 else
    if (Hex = 'F') or (Hex = 'f') then result := 15 else
    result := 0;
  end;

function HexToStr(str : string) : string;
  var
    i      : integer;
    iBytes : integer;
    res    : string;
    Len    : integer;
  begin
    res    := '';
    i      := 1;
    iBytes := 1;
    Len    := Length(str);

    while i < Len do
      begin
        res := res + ChrZ(HexToInt(str[i]) * 16 + HexToInt(str[i + 1]));
        inc(iBytes);
        i := i + 3;
      end;
    result := res;
  end;

procedure TFormEditHelpCmd.EditChange(Sender: TObject);
  var Tag : integer;
begin
  Tag := (Sender as TEdit).Tag;
end;

procedure TFormEditHelpCmd.FormCreate(Sender: TObject);
var i : integer;
begin
  FormWidthStart  := FormEditHelpCmd.Width;

  NameWidthStart := CmdName.Width;
  DataWidthStart := CmdData.Width;
  edt1.Color := FormEditHelpCmd.Color;
  rb1.Color := FormEditHelpCmd.Color;
  rb2.Color := FormEditHelpCmd.Color;



  isEnChange := False;

  StartMemoHeigt   := mmo1.Height;
  StartFormHeiht   := FormEditHelpCmd.Height;
  StTextTopStart   := req1.Top;
  StartLeftBTSendFile := Bt1.Left;
  EDTSrc[1] := Form1.Edit1;
  EDTSrc[2] := Form1.Edit2;
  EDTSrc[3] := Form1.Edit3;
  EDTSrc[4] := Form1.Edit4;
  EDTSrc[5] := Form1.Edit5;
  EDTSrc[6] := Form1.Edit6;
  EDTSrc[7] := Form1.Edit7;
  EDTSrc[8] := Form1.Edit8;
  EDTSrc[9] := Form1.Edit9;
  EDTSrc[10] := Form1.Edit10;
  EDTSrc[11] := Form1.Edit11;
  EDTSrc[12] := Form1.Edit12;
  EDTSrc[13] := Form1.Edit13;
  EDTSrc[14] := Form1.Edit14;
  EDTSrc[15] := Form1.Edit15;
  EDTSrc[16] := Form1.Edit16;
  EDTSrc[17] := Form1.Edit17;
  EDTSrc[18] := Form1.Edit18;
  EDTSrc[19] := Form1.Edit19;
  EDTSrc[20] := Form1.Edit20;
  EDTSrc[21] := Form1.Edit21;
  EDTSrc[22] := Form1.Edit22;
  EDTSrc[23] := Form1.Edit23;
  EDTSrc[24] := Form1.Edit24;
  EDTSrc[25] := Form1.Edit25;
  EDTSrc[26] := Form1.Edit26;
  EDTSrc[27] := Form1.Edit27;
  EDTSrc[28] := Form1.Edit28;
  EDTSrc[29] := Form1.Edit29;
  EDTSrc[30] := Form1.Edit30;
  EDTSrc[31] := Form1.Edit31;
  EDTSrc[32] := Form1.Edit32;
  EDTSrc[33] := Form1.Edit33;
  EDTSrc[34] := Form1.Edit34;
  EDTSrc[35] := Form1.Edit35;
  EDTSrc[36] := Form1.Edit36;
  EDTSrc[37] := Form1.Edit37;
  EDTSrc[38] := Form1.Edit38;
  EDTSrc[39] := Form1.Edit39;
  EDTSrc[40] := Form1.Edit40;
  EDTSrc[41] := Form1.Edit41;
  EDTSrc[42] := Form1.Edit42;
  EDTSrc[43] := Form1.Edit43;
  EDTSrc[44] := Form1.Edit44;
  EDTSrc[45] := Form1.Edit45;
  EDTSrc[46] := Form1.Edit46;
  EDTSrc[47] := Form1.Edit47;
  EDTSrc[48] := Form1.Edit48;


  HelpStr[1] := Form1.STH1;
  HelpStr[2] := Form1.STH2;
  HelpStr[3] := Form1.STH3;
  HelpStr[4] := Form1.STH4;
  HelpStr[5] := Form1.STH5;
  HelpStr[6] := Form1.STH6;
  HelpStr[7] := Form1.STH7;
  HelpStr[8] := Form1.STH8;
  HelpStr[9] := Form1.STH9;
  HelpStr[10] := Form1.STH10;
  HelpStr[11] := Form1.STH11;
  HelpStr[12] := Form1.STH12;


end;



procedure TFormEditHelpCmd.FormActivate(Sender: TObject);
var i : integer;
//ListsCmd : array[1..CNT_LIST_CMD] of TListCmd;
 // List : ^TListCmd;
begin
  isEnChange := False;
  CmdName.Text := Form1.GetCmdName(Form1.GetNumList, Form1.ActualCellListCmd);
  CmdData.Text := Form1.GetCmdData(Form1.GetNumList, Form1.ActualCellListCmd);
  FormWidthStart  := FormEditHelpCmd.Width;

  edt1.Color := FormEditHelpCmd.Color;
  mmo1.Clear;

  for i:= 1 to 12 do
    begin
      mmo1.Lines.Add(HelpStr[i].Caption);
    end;

  while (i >= 0) and (mmo1.Lines.Strings[i] = '') do
    begin
      mmo1.Lines.Delete(i);
      Dec(i);
    end;

  req1.Caption := 'Number of lines ' + IntToStr(mmo1.Lines.Count);


  ActiveControl := CmdName;

  try
    if rb1.Checked then
      edt1.Text := StrToHex(CmdData.Text);
    if rb2.Checked then
      edt1.Text := HexToStr(CmdData.Text);
  except
    edt1.Text := 'Error converting to text';
  end;


  isEnChange := true;
end;

procedure TFormEditHelpCmd.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
  var DeltaWidth : Integer;
               i : integer;
      DeltaHeight : Integer;
begin
  DeltaWidth := FormEditHelpCmd.Width - FormWidthStart;
  DeltaHeight := FormEditHelpCmd.Height - StartFormHeiht;

  mmo1.Height := StartMemoHeigt + DeltaHeight;

  req1.Top    := StTextTopStart + DeltaHeight;

  CmdName.Width := NameWidthStart + DeltaWidth;
  CmdData.Width := DataWidthStart + DeltaWidth;

  Bt1.Left      := StartLeftBTSendFile + DeltaWidth;

  grp1.Left := CmdData.Left;
  grp1.Width := CmdData.Width;

  mmo1.Width    := CmdData.Width;
  req1.Width    := CmdData.Width;
  edt1.Width    := CmdData.Width - 12;
  btn1.Width    := CmdData.Width - 270;
end;

procedure TFormEditHelpCmd.CmdNameChange(Sender: TObject);
begin
  Form1.EditCmdName(Form1.GetNumList, Form1.ActualCellListCmd, CmdName.Text);
end;



procedure TFormEditHelpCmd.CmdDataChange(Sender: TObject);
begin
  Form1.EditCmdData(Form1.GetNumList, Form1.ActualCellListCmd, CmdData.Text);

  try
    if rb1.Checked then
      edt1.Text := StrToHex(CmdData.Text);
    if rb2.Checked then
      edt1.Text := HexToStr(CmdData.Text);
  except
    edt1.Text := 'Error converting to text';
  end;

end;

procedure TFormEditHelpCmd.CmdNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
     ActiveControl := CmdData;
     Key := #0;
    end;
end;


procedure TFormEditHelpCmd.CmdDataKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
     ActiveControl := mmo1;
     Key := #0;
    end;
  if (Key = #8) and ((Sender as TEdit).Text = '') then
    ActiveControl := CmdName;
end;



procedure TFormEditHelpCmd.mmo1Change(Sender: TObject);
  var
    MaxLine : Integer;
    i       : Integer;
begin
  if isEnChange then
    begin
      MaxLine := mmo1.Lines.Count;
      if mmo1.Lines.Count > 12 then
        begin
          MaxLine := 12;
          req1.Color := clYellow;
          req1.Caption := 'The number of lines is more than 12';
        end
      else
        begin
          req1.Color := FormEditHelpCmd.Color;
          req1.Caption := 'Number of lines ' + IntToStr(mmo1.Lines.Count);
        end;

      For i := 1 to 12 do
        begin
          if i > MaxLine then
            Form1.STH[i].Caption := ''
          else if Length(mmo1.Lines.Strings[i - 1]) < 151 then
            begin
              Form1.STH[i].Caption := mmo1.Lines.Strings[i - 1];
            end
          else
            begin
              req1.Color := clYellow;
              req1.Caption := 'String length is more than 150 characters';
            end;
        end;
    end;
end;

procedure TFormEditHelpCmd.Bt1Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
    begin
      CmdData.Text := '[sendfile:]' + dlgOpen1.FileName;
    end;
  (Sender as TButton).ShowHint := False;
end;

procedure TFormEditHelpCmd.rb1Click(Sender: TObject);
begin
  edt1.Text := StrToHex(CmdData.Text);
end;

procedure TFormEditHelpCmd.rb2Click(Sender: TObject);
begin
  edt1.Text := HexToStr(CmdData.Text);
end;

procedure TFormEditHelpCmd.btn1Click(Sender: TObject);
begin
  Clipboard.AsText := edt1.Text;
end;

end.
