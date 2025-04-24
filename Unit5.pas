unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormEditCmd = class(TForm)
    CmdName: TEdit;
    CmdData: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure CmdNameChange(Sender: TObject);
    procedure CmdDataChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditCmd: TFormEditCmd;

implementation

uses TerminalST, Unit2;

{$R *.dfm}

procedure TFormEditCmd.FormActivate(Sender: TObject);
begin
  CmdName.Text := Form1.GetCmdName(Form1.GetNumList, Form1.ActualCellListCmd);
  CmdData.Text := Form1.GetCmdData(Form1.GetNumList, Form1.ActualCellListCmd);
end;

procedure TFormEditCmd.CmdNameChange(Sender: TObject);
begin
  Form1.EditCmdName(Form1.GetNumList, Form1.ActualCellListCmd, CmdName.Text);
end;

procedure TFormEditCmd.CmdDataChange(Sender: TObject);
begin
  Form1.EditCmdData(Form1.GetNumList, Form1.ActualCellListCmd, CmdData.Text);
end;

procedure TFormEditCmd.Button1Click(Sender: TObject);
begin
  FormEditCmd.Close;
  FormEditHelpCmd.ShowModal;
end;

end.
