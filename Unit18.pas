unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TComStruct = record
    DCB            : tDCB;
    Stat           : tComStat;
    CurrentComPort : Pchar;
    ComBoudRate    : DWord;
    Bits           : byte;
    StopBits       : byte;
  end;

  TFormSniffer = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSniffer: TFormSniffer;
  ComStruct  : TComStruct;
implementation

{$R *.dfm}

end.
