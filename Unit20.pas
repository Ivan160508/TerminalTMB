unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TerminalST;

type
  TAutoexpander = class(TForm)
    Bt1: TButton;
    reqMessage: TStaticText;
    procedure Bt1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Autoexpander: TAutoexpander;

implementation

{$R *.dfm}

procedure TAutoexpander.Bt1Click(Sender: TObject);
begin
  Autoexpander.Close;
end;

end.
