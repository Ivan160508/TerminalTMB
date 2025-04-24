unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ClipBrd;

type
  TInfo = class(TForm)
    Button1: TButton;
    grp1: TGroupBox;
    req2: TStaticText;
    req3: TStaticText;
    req11: TStaticText;
    mmo1: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure reqURLTextClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure req7Click(Sender: TObject);
    procedure req8Click(Sender: TObject);
    procedure req9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Info: TInfo;

implementation

uses TerminalST;

{$R *.dfm}

procedure TInfo.FormActivate(Sender: TObject);
begin
  Button1.Visible     := true;
  ActiveControl       := Button1;
  Button1.Visible     := false;
  req3.Caption      := Form1.VersionInfo + ' (' + Form1.DateInfo + ')';
  req11.Caption := 'Em@il: ' + Form1.Email;
end;

procedure TInfo.reqURLTextClick(Sender: TObject);
begin
  //ClipBoard.AsText := (Sender as TStaticText).Caption;
  //ClipBoard.AsText := 'https://electronix.ru/forum/index.php?app=forums&module=forums&controller=topic&id=148453';
  ClipBoard.AsText := 'https://zen.yandex.ru/media/tehnozet2/besplatnaia-programma-terminaltmb-dlia-raboty-s-com-portom-60093c2a19811f0c23280013';
end;

procedure TInfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TerminalST.Form1.BtInfo.Font.Style := [];
end;

procedure TInfo.req7Click(Sender: TObject);
begin
ClipBoard.AsText := (Sender as TStaticText).Caption;
end;

procedure TInfo.req8Click(Sender: TObject);
begin
ClipBoard.AsText := (Sender as TStaticText).Caption;
end;

procedure TInfo.req9Click(Sender: TObject);
begin
ClipBoard.AsText := (Sender as TStaticText).Caption;
end;

procedure TInfo.FormCreate(Sender: TObject);
begin
  if Form1.isMielta = 1 then
    begin
      grp1.Height        := 180;
      Info.Height        := 125 + 90;
    end;
  if Form1.isMielta = 2 then
    begin
      grp1.Height        := 180;
      Info.Height        := 125 + 90;
    end;

end;

end.
