unit Unit28;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormMacroEditing = class(TForm)
    grp1: TGroupBox;
    Btbtn2: TButton;
    Btbtn1: TButton;
    Edtedt1: TEdit;
    Edtedt2: TEdit;
    lbl2: TLabel;
    lbl1: TLabel;
    Bt1: TButton;
    Bt2: TButton;
    dlgOpen1: TOpenDialog;
    procedure FormActivate(Sender: TObject);
    procedure Edtedt1Change(Sender: TObject);
    procedure Edtedt2Change(Sender: TObject);
    procedure Btbtn1Click(Sender: TObject);
    procedure Btbtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Bt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
  private
    { Private declarations }
  public
    Name : string[255];
    Cmd  : string[255];
    isSave : Boolean;
    { Public declarations }
  end;

var
  FormMacroEditing: TFormMacroEditing;
  stWidthEdt : Integer;
  stWidthPnl : Integer;
  stLeftCancel : Integer;
  stLeftOK   : Integer;
  StWidth    : Integer;
implementation

{$R *.dfm}

procedure TFormMacroEditing.FormActivate(Sender: TObject);
begin
  isSave := False;
  Edtedt1.Text := Name;
  Edtedt2.Text := Cmd;
end;

procedure TFormMacroEditing.Edtedt1Change(Sender: TObject);
begin
  Name := (Sender as TEdit).Text;
end;

procedure TFormMacroEditing.Edtedt2Change(Sender: TObject);
begin
Cmd := (Sender as TEdit).Text;
end;

procedure TFormMacroEditing.Btbtn1Click(Sender: TObject);
begin
  FormMacroEditing.Close;
end;

procedure TFormMacroEditing.Btbtn2Click(Sender: TObject);
begin
  isSave := True;
  FormMacroEditing.Close;
end;

procedure TFormMacroEditing.FormCreate(Sender: TObject);
begin
  stWidthEdt := Edtedt1.Width;
  stWidthPnl := grp1.Width;
  stLeftCancel := Btbtn1.Left;
  stLeftOK   := Btbtn2.Left;
  StWidth    := FormMacroEditing.Width;
end;

procedure TFormMacroEditing.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
  var
    dX : Integer;
begin
    dX := NewWidth - StWidth;

    Edtedt1.Width := stWidthEdt + dX;
    Edtedt2.Width := stWidthEdt + dX;

    grp1.Width := stWidthPnl + dX;
    Btbtn1.Left :=  stLeftCancel  + dX;
    Btbtn2.Left :=  stLeftOK + dX;
end;

procedure TFormMacroEditing.Bt1Click(Sender: TObject);
begin
  Edtedt1.Text := '';
  Edtedt2.Text := '';
end;

procedure TFormMacroEditing.Bt2Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
    Edtedt2.Text := '[sendfile:]' + dlgOpen1.FileName;
  (Sender as TButton).ShowHint := False;
end;

end.
