unit Unit37;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Common, ExtCtrls;

type
  TFormEvent = class(TForm)
    tmr1: TTimer;
    grp1: TGroupBox;
    ctxtreq1: TStaticText;
    chk1: TCheckBox;
    Bt1: TButton;
    Bt2: TButton;
    procedure Bt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    SrcEvent: TTypeSrcEvent;
    EventMSG : string;
    isNotShowEvent : Boolean;
    isOpenSetupEvent : Boolean;
    { Public declarations }
  end;

var
  FormEvent: TFormEvent;

implementation

uses TerminalST, Unit24;

{$R *.dfm}

procedure TFormEvent.Bt1Click(Sender: TObject);
begin
  if not isOpenSetupEvent or true then
    begin
      if SrcEvent = SrcEventMain then
        begin
          if form1.BtAddFunctions.Tag = 0 then
          form1.BtAddFunctions.Click;
          Sleep(10);
          if form1.BtAutoExpand.Tag = 0 then
            form1.BtAutoExpand.Click;
          Sleep(10);
        end
      else
        begin
          if form1.BtAddFunctions.Tag = 0 then
            form1.BtAddFunctions.Click;
          Sleep(10);
          form1.BtParser.Click;
          Sleep(10);

          case SrcEvent of
            SrcEventParser_1 :  FormParser.Bt1.Click;
            SrcEventParser_2 :  FormParser.Bt2.Click;
            SrcEventParser_3 :  FormParser.Bt3.Click;
            SrcEventParser_4 :  FormParser.Bt4.Click;
            SrcEventParser_5 :  FormParser.Bt5.Click;
            SrcEventParser_6 :  FormParser.Bt6.Click;
            SrcEventParser_7 :  FormParser.Bt7.Click;
            SrcEventParser_8 :  FormParser.Bt8.Click;
            SrcEventParser_9 :  FormParser.Bt9.Click;
            SrcEventParser_10:  FormParser.Bt10.Click;
            SrcEventParser_11:  FormParser.Bt11.Click;
            SrcEventParser_12:  FormParser.Bt12.Click;
            SrcEventParser_13:  FormParser.Bt13.Click;
            SrcEventParser_14:  FormParser.Bt14.Click;
            SrcEventParser_15:  FormParser.Bt15.Click;
            SrcEventParser_16:  FormParser.Bt16.Click;
          end;
        end;
    end;
  FormEvent.Close;
end;

procedure TFormEvent.Bt2Click(Sender: TObject);
begin
  FormEvent.Close;
  tmr1.Enabled := False;
end;

procedure TFormEvent.FormActivate(Sender: TObject);
begin
  ctxtreq1.Caption := EventMSG;
  chk1.Checked := False;
  Bt2.SetFocus;
  tmr1.Enabled := true;
end;

procedure TFormEvent.chk1Click(Sender: TObject);
begin
  isNotShowEvent := (Sender as TCheckBox).Checked;
  tmr1.Enabled := False;
end;

procedure TFormEvent.tmr1Timer(Sender: TObject);
begin
  tmr1.Enabled := False;
  isNotShowEvent := True;
  FormEvent.Close;
end;

end.
