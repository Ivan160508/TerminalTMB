unit Unit151;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormWarnMG = class(TForm)
    grp1: TGroupBox;
    chk1: TCheckBox;
    rb1: TRadioButton;
    chk2: TCheckBox;
    chk3: TCheckBox;
    btn1: TButton;
    btn2: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    isEnList : Boolean;
    isUseGraphBuf : Boolean;
    isEnTimeSync : Boolean;
    isEnBuffering : Boolean;
        isOK : Boolean;
    { Public declarations }
  end;

var
  FormWarnMG: TFormWarnMG;
      isEnList : Boolean;
    isUseGraphBuf : Boolean;
    isEnTimeSync : Boolean;
    isEnBuffering : Boolean;
implementation

uses Unit24;

{$R *.dfm}

procedure TFormWarnMG.FormActivate(Sender: TObject);
begin
  isEnList      := FormWarnMG.isEnList;
  isUseGraphBuf := FormWarnMG.isUseGraphBuf;
  isEnTimeSync  := FormWarnMG.isEnTimeSync;
  isEnBuffering := FormWarnMG.isEnBuffering;

  chk1.Checked := isEnList;
  rb1.Checked  := isUseGraphBuf;
  chk2.Checked := isEnTimeSync;
  chk3.Checked := isEnBuffering;
  FormWarnMG.isOK := False;
end;

procedure TFormWarnMG.chk1Click(Sender: TObject);
begin
  FormParser.chk7.Checked := (Sender as TCheckBox).Checked;
end;

procedure TFormWarnMG.rb1Click(Sender: TObject);
begin
  FormParser.rb18.Checked := True;
end;

procedure TFormWarnMG.chk2Click(Sender: TObject);
begin
  FormParser.chk8.Checked := (Sender as TCheckBox).Checked;
end;

procedure TFormWarnMG.chk3Click(Sender: TObject);
begin
  FormParser.chk1.Checked := (Sender as TCheckBox).Checked;
end;

procedure TFormWarnMG.btn1Click(Sender: TObject);
begin
  FormWarnMG.isOK := True;
  FormWarnMG.Close;
end;

procedure TFormWarnMG.btn2Click(Sender: TObject);
begin
  FormWarnMG.isOK := False;
  FormWarnMG.Close;
end;

end.
