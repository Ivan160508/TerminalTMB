unit Unit34;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TActFileLog = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    FileName: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    isRewrite : Boolean;
    isAppend : Boolean;
    isChangeMind : Boolean;
    { Public declarations }
  end;

var
  ActFileLog: TActFileLog;

implementation

{$R *.dfm}

procedure TActFileLog.FormCreate(Sender: TObject);
begin
    isRewrite := false;
    isAppend := false;
    isChangeMind := false;
end;

procedure TActFileLog.FormActivate(Sender: TObject);
begin
  isRewrite := false;
  isAppend := false;
  isChangeMind := false;
end;

procedure TActFileLog.Button1Click(Sender: TObject);
begin
  isRewrite := True;
  isAppend := false;
  isChangeMind := false;
  ActFileLog.Close;
end;

procedure TActFileLog.Button2Click(Sender: TObject);
begin
  isRewrite := false;
  isAppend := true;
  isChangeMind := false;
  ActFileLog.Close;

end;

procedure TActFileLog.Button3Click(Sender: TObject);
begin
  isRewrite := false;
  isAppend := false;
  isChangeMind := true;
  ActFileLog.Close;

end;

end.
