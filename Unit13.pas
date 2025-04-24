unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TerminalST;

type
  TFormLogName = class(TForm)
    LogFileName: TEdit;
    sendAnsBT1: TButton;
    Button1: TButton;
    ChText: TCheckBox;
    ChBin: TCheckBox;
    ChTxText: TCheckBox;
    ChTxBin: TCheckBox;
    ChRxText: TCheckBox;
    ChRxBin: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ChKeepPauses: TCheckBox;
    procedure sendAnsBT1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ChTextClick(Sender: TObject);
    procedure ChBinClick(Sender: TObject);
    procedure ChTxTextClick(Sender: TObject);
    procedure ChRxTextClick(Sender: TObject);
    procedure ChTxBinClick(Sender: TObject);
    procedure ChRxBinClick(Sender: TObject);
    procedure ChKeepPausesClick(Sender: TObject);
  private
    { Private declarations }
  public
    isCancelWriteLog : boolean;
    { Public declarations }
  end;

var
  FormLogName: TFormLogName;

implementation

{$R *.dfm}

procedure TFormLogName.sendAnsBT1Click(Sender: TObject);
begin
  TerminalST.FileLogName := LogFileName.Text;

  TerminalST.LogTxtFileTail := Edit1.Text;
  TerminalST.LogBinFileTail := Edit2.Text;



  TerminalST.isLogBin    := ChBin.Checked  and (ChTxBin.Checked  or ChRxBin.Checked);
  TerminalST.isLogText   := ChText.Checked and (ChTxText.Checked or ChRxText.Checked);

  TerminalST.isLogBinTx  := ChTxBin.Checked;
  TerminalST.isLogBinRx  := ChRxBin.Checked;

  TerminalST.isLogTextTx := ChTxText.Checked;
  TerminalST.isLogTextRx := ChRxText.Checked;
  TerminalST.isSaveDelay := ChKeepPauses.Checked;


  isCancelWriteLog       := false;
  FormLogName.Close;
end;

procedure TFormLogName.FormActivate(Sender: TObject);
begin
  isCancelWriteLog := true;
  if sendAnsBT1.Enabled then
    sendAnsBT1.SetFocus
  else
    Button1.SetFocus;
  LogFileName.Text := FormatDateTime('yyyy-mm-dd_hhnnss_', Now);
end;

procedure TFormLogName.Button1Click(Sender: TObject);
begin
 isCancelWriteLog := true;
 FormLogName.Close;
end;

procedure TFormLogName.ChTextClick(Sender: TObject);
begin
  sendAnsBT1.Enabled := (ChBin.Checked  and (ChTxBin.Checked or ChRxBin.Checked)) or
                        (ChText.Checked and (ChTxText.Checked or ChRxText.Checked)) ;

  ChTxText.Enabled := ChText.Checked;
  ChRxText.Enabled := ChText.Checked;
  ChKeepPauses.Enabled := ChText.Checked;
end;

procedure TFormLogName.ChBinClick(Sender: TObject);
begin
  sendAnsBT1.Enabled := (ChBin.Checked  and (ChTxBin.Checked or ChRxBin.Checked)) or
                        (ChText.Checked and (ChTxText.Checked or ChRxText.Checked)) ;
  ChTxBin.Enabled := ChBin.Checked;
  ChRxBin.Enabled := ChBin.Checked;

end;

procedure TFormLogName.ChTxTextClick(Sender: TObject);
begin
sendAnsBT1.Enabled := (ChBin.Checked  and (ChTxBin.Checked or ChRxBin.Checked)) or
                        (ChText.Checked and (ChTxText.Checked or ChRxText.Checked)) ;

ChText.Checked := ChTxText.Checked or ChRxText.Checked;

end;

procedure TFormLogName.ChRxTextClick(Sender: TObject);
begin
sendAnsBT1.Enabled := (ChBin.Checked  and (ChTxBin.Checked or ChRxBin.Checked)) or
                        (ChText.Checked and (ChTxText.Checked or ChRxText.Checked)) ;
ChText.Checked := ChTxText.Checked or ChRxText.Checked;
end;

procedure TFormLogName.ChTxBinClick(Sender: TObject);
begin
sendAnsBT1.Enabled := (ChBin.Checked  and (ChTxBin.Checked or ChRxBin.Checked)) or
                      (ChText.Checked and (ChTxText.Checked or ChRxText.Checked)) ;

ChBin.Checked := ChTxBin.Checked or ChRxBin.Checked;
end;

procedure TFormLogName.ChRxBinClick(Sender: TObject);
begin
sendAnsBT1.Enabled := (ChBin.Checked  and (ChTxBin.Checked or ChRxBin.Checked)) or
                        (ChText.Checked and (ChTxText.Checked or ChRxText.Checked)) ;

ChBin.Checked := ChTxBin.Checked or ChRxBin.Checked;
end;

procedure TFormLogName.ChKeepPausesClick(Sender: TObject);
begin
  //if (Sender as TCheckBox).Checked then
  //  ChTxText.Checked := False;
  //ChTxText.Enabled := not (Sender as TCheckBox).Checked;
end;

end.
