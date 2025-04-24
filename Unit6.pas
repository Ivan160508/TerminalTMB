unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TOpenPortError = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OpenPortError: TOpenPortError;

implementation

uses TerminalST;

{$R *.dfm}

procedure TOpenPortError.Button1Click(Sender: TObject);
begin
  Form1.BTConnect.Click;
  OpenPortError.Close;
end;

end.
