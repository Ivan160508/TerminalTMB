unit Unit43;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormLogPort = class(TForm)
    mmo1: TMemo;
    BtCopy: TButton;
    BtClear: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure BtClearClick(Sender: TObject);
    procedure BtCopyClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    BGColor : TColor;
    FontSize : Integer;
    FontColor : Tcolor;
    NumPort : Integer;
    isUseMultiPort : Boolean;
    procedure SendLineLog(Line : string);

    { Public declarations }
  end;

var
  FormLogPort: TFormLogPort;
  StartPozWidthLog : Integer;
  StartPozHeightLog : Integer;
  StartTopBtClear : Integer;
  StartTopBtCopy : Integer;
  StartLeftBtClear : Integer;
  StartLeftBtCopy : Integer;
  StartWidthForm : Integer;
  StartHeightForm : Integer;

implementation

uses Unit42, Unit3;

procedure TFormLogPort.SendLineLog(Line : string);
begin
  if Length(mmo1.Text) > 50000 then mmo1.Clear;
    mmo1.Lines.Add(Line);

end;

{$R *.dfm}

procedure TFormLogPort.FormCreate(Sender: TObject);
begin
  mmo1.Clear;
  StartPozWidthLog := mmo1.Width;
  StartPozHeightLog := mmo1.Height;
  StartTopBtClear := BtClear.Top;
  StartTopBtCopy := BtCopy.Top;
  StartLeftBtClear := BtClear.Left;
  StartLeftBtCopy := BtCopy.Left;
  StartWidthForm := 173;// FormLogPort.Width;
  StartHeightForm := 253;// FormLogPort.Height;
end;

procedure TFormLogPort.FormActivate(Sender: TObject);
begin
  mmo1.Color := BGColor;
  mmo1.Font.Size := FontSize;
  mmo1.Font.Color := FontColor;
end;

procedure TFormLogPort.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
var
  dW, dH : Integer;
begin
  dW:= StartWidthForm - NewWidth;
  dH:= StartHeightForm - NewHeight;

  mmo1.Width := StartPozWidthLog - dW;
  mmo1.Height := StartPozHeightLog - dH;
  BtClear.Top := StartTopBtClear - dH;
  BtCopy.Top := StartTopBtCopy - dH;
  BtClear.Left := StartLeftBtClear - dW;
  BtCopy.Left := StartLeftBtCopy - dW;
end;

procedure TFormLogPort.BtClearClick(Sender: TObject);
begin
  mmo1.Clear;
end;

procedure TFormLogPort.BtCopyClick(Sender: TObject);
begin
  mmo1.SelectAll;
  mmo1.CopyToClipboard;
end;

procedure TFormLogPort.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if isUseMultiPort then
    FormMultiPort.isSendFormAddLog[NumPort] := false
  else
    FormPacketsCNT.isOutLog := False;
end;

end.
