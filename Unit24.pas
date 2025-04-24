unit Unit24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TerminalST, Common, ExtCtrls, DateUtils ;

type
  TModeParser = (Hex, ascii);


    //TSettParser = record
    //isUseByteCmp : array[0..16] of boolean;
    //  UseByteCmp : array[0..16] of Byte;
    //isUseParser  : Boolean;
    //NameParam    : string[64];
    //NumUseBytes  : array[0..3] of integer;
    //TypeParam    : TTypeParam;
    //isCheckLen   : Boolean;
    //PacketLen    : Cardinal;
    //Color        : TColor;
    //YMax         : Int64;
    //YMin         : Int64;
    //res1         : array[0..16] of integer;



type
  TCfgParser1 = record
    ParserHEX : array[1..100] of TParserHEX;
    isSyncMacros : Boolean;
    NumParserLast : Cardinal;
  end;


type
  TCfgParser2 = record
    ParserHEX : array[1..200] of TParserHEX;
    isSyncMacros : Boolean;
    NumParserLast : Cardinal;
  end;


type
  TCfgParser3 = record
    ParserHEX    : array[1..200] of TParserHEX;
    ParserHEXAdd : array[1..200] of TParserHEXAdd;
    isSyncMacros : Boolean;
    NumParserLast : Cardinal;
  end;


type TDataGraphBuf = record
  DataGraph : array[0..(MAX_CNT_DG - 1)] of TDataGraph;
end;

type TDataGraphFile = record
  DGFile : array[0..15] of TDataGraph;
  sett   : array[0..7] of byte;
end;




type
  TVisParser = record
    BtSett    : TButton;
    VName     : TStaticText;
    VTime     : TStaticText;
    VValue    : TStaticText;
    VSelParam : TRadioButton;
    VHex      : TStaticText;
    BTCopy    : TButton;
    BTPaste   : TButton;
    BTDel     : TButton;
    BTGraph   : TButton;
    BTGraphClr: TButton;
    BTChart   : TButton;
    VCount    : TStaticText;
  end;


type
  TFormParser = class(TForm)
    grp1: TGroupBox;
    req1: TStaticText;
    Bt1: TButton;
    req2: TStaticText;
    req3: TStaticText;
    Bt2: TButton;
    req4: TStaticText;
    req5: TStaticText;
    req6: TStaticText;
    Bt3: TButton;
    req7: TStaticText;
    req8: TStaticText;
    req9: TStaticText;
    Bt4: TButton;
    req10: TStaticText;
    req11: TStaticText;
    req12: TStaticText;
    Bt5: TButton;
    req13: TStaticText;
    req14: TStaticText;
    req15: TStaticText;
    Bt6: TButton;
    req16: TStaticText;
    req17: TStaticText;
    req18: TStaticText;
    Bt7: TButton;
    req19: TStaticText;
    req20: TStaticText;
    req21: TStaticText;
    Bt8: TButton;
    req22: TStaticText;
    req23: TStaticText;
    req24: TStaticText;
    Bt9: TButton;
    req25: TStaticText;
    req26: TStaticText;
    req27: TStaticText;
    Bt10: TButton;
    req28: TStaticText;
    req29: TStaticText;
    req30: TStaticText;
    Bt11: TButton;
    req31: TStaticText;
    req32: TStaticText;
    req33: TStaticText;
    Bt12: TButton;
    req34: TStaticText;
    req35: TStaticText;
    req36: TStaticText;
    Bt13: TButton;
    req37: TStaticText;
    req38: TStaticText;
    req39: TStaticText;
    Bt14: TButton;
    req40: TStaticText;
    req41: TStaticText;
    req42: TStaticText;
    Bt15: TButton;
    req43: TStaticText;
    req44: TStaticText;
    req45: TStaticText;
    Bt16: TButton;
    req46: TStaticText;
    req47: TStaticText;
    req48: TStaticText;
    mmoInput: TMemo;
    Edt1: TEdit;
    Bt19: TButton;
    lst1: TListBox;
    req49: TStaticText;
    dlgOpenLogOpen: TOpenDialog;
    req50: TStaticText;
    req51: TStaticText;
    btn1: TButton;
    txt2: TStaticText;
    txt3: TStaticText;
    txt4: TStaticText;
    txt5: TStaticText;
    txt6: TStaticText;
    txt7: TStaticText;
    txt8: TStaticText;
    txt9: TStaticText;
    txt10: TStaticText;
    txt11: TStaticText;
    txt12: TStaticText;
    txt13: TStaticText;
    txt14: TStaticText;
    txt15: TStaticText;
    txt16: TStaticText;
    txt17: TStaticText;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn10: TButton;
    btn11: TButton;
    btn12: TButton;
    btn13: TButton;
    btn14: TButton;
    btn15: TButton;
    btn16: TButton;
    btn17: TButton;
    btn18: TButton;
    btn19: TButton;
    btn20: TButton;
    btn21: TButton;
    btn22: TButton;
    btn23: TButton;
    btn24: TButton;
    btn25: TButton;
    btn26: TButton;
    btn27: TButton;
    btn28: TButton;
    btn29: TButton;
    btn30: TButton;
    btn31: TButton;
    btn32: TButton;
    btn33: TButton;
    btn34: TButton;
    Bt22: TButton;
    Bt23: TButton;
    Bt24: TButton;
    Bt25: TButton;
    Bt26: TButton;
    Bt27: TButton;
    Bt28: TButton;
    Bt29: TButton;
    Bt30: TButton;
    Bt31: TButton;
    Bt32: TButton;
    Bt33: TButton;
    Bt34: TButton;
    Bt35: TButton;
    Bt36: TButton;
    Bt37: TButton;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    rb4: TRadioButton;
    rb5: TRadioButton;
    rb6: TRadioButton;
    rb7: TRadioButton;
    rb8: TRadioButton;
    rb9: TRadioButton;
    rb10: TRadioButton;
    rb11: TRadioButton;
    rb12: TRadioButton;
    rb13: TRadioButton;
    rb14: TRadioButton;
    rb15: TRadioButton;
    rb16: TRadioButton;
    Bt38: TButton;
    Bt39: TButton;
    Bt40: TButton;
    Bt41: TButton;
    Bt42: TButton;
    Bt43: TButton;
    Bt44: TButton;
    Bt45: TButton;
    Bt46: TButton;
    Bt47: TButton;
    Bt48: TButton;
    Bt49: TButton;
    Bt50: TButton;
    Bt51: TButton;
    Bt52: TButton;
    Bt53: TButton;
    Bt54: TButton;
    Bt55: TButton;
    Bt56: TButton;
    Bt57: TButton;
    Bt58: TButton;
    Bt59: TButton;
    Bt60: TButton;
    Bt61: TButton;
    Bt62: TButton;
    Bt63: TButton;
    Bt64: TButton;
    Bt65: TButton;
    Bt66: TButton;
    Bt67: TButton;
    Bt68: TButton;
    Bt69: TButton;
    reqtxt1: TStaticText;
    dlgSaveFile: TOpenDialog;
    dlgOpenFileData: TOpenDialog;
    grp2: TGroupBox;
    cbb2: TComboBox;
    cbb1: TComboBox;
    cbb3: TComboBox;
    ctxt1: TStaticText;
    Button2: TButton;
    chk2: TCheckBox;
    lbl1: TLabel;
    cbb4: TComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button7: TButton;
    Button6: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button3: TButton;
    ctxt2: TStaticText;
    ctxt3: TStaticText;
    ctxt4: TStaticText;
    ctxt5: TStaticText;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    ColorDialog: TColorDialog;
    Edt2: TEdit;
    ctxt7: TStaticText;
    ctxt8: TStaticText;
    ctxt9: TStaticText;
    ctxt10: TStaticText;
    ctxt11: TStaticText;
    ctxt12: TStaticText;
    ctxt13: TStaticText;
    ctxt14: TStaticText;
    ctxt15: TStaticText;
    ctxt16: TStaticText;
    ctxt17: TStaticText;
    ctxt18: TStaticText;
    ctxt19: TStaticText;
    ctxt20: TStaticText;
    ctxt21: TStaticText;
    ctxt22: TStaticText;
    ctxt23: TStaticText;
    btn35: TButton;
    grp7: TGroupBox;
    grp4: TGroupBox;
    chk3: TCheckBox;
    BtLOG: TButton;
    Bt20: TButton;
    grp5: TGroupBox;
    Bt17: TButton;
    CheckBox1: TCheckBox;
    Bt18: TButton;
    grp3: TGroupBox;
    lbl8: TLabel;
    ctxt6: TStaticText;
    chk5: TCheckBox;
    chk4: TCheckBox;
    Button21: TButton;
    Bt72: TButton;
    Bt73: TButton;
    chk6: TCheckBox;
    grp6: TGroupBox;
    btnLoad: TButton;
    btnSave: TButton;
    chk1: TCheckBox;
    rb18: TRadioButton;
    btn2: TButton;
    chk7: TCheckBox;
    btn55: TButton;
    chk8: TCheckBox;
    btn36: TButton;
    rb17: TRadioButton;
    Bt21: TButton;
    Bt70: TButton;
    Bt71: TButton;
    Button1: TButton;
    Bt74: TButton;
    grp8: TGroupBox;
    btn37: TButton;
    btn38: TButton;
    btn39: TButton;
    btn40: TButton;
    Bt75: TButton;
    Bt76: TButton;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    btn41: TButton;
    edt10: TEdit;
    edt11: TEdit;
    edt12: TEdit;
    edt13: TEdit;
    edt14: TEdit;
    edt15: TEdit;
    lbl9: TLabel;
    lbl10: TLabel;
    btn42: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtParserClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edt1Change(Sender: TObject);
    procedure Bt17Click(Sender: TObject);
    procedure Bt18Click(Sender: TObject);
    procedure Bt19Click(Sender: TObject);
    procedure lst1DblClick(Sender: TObject);
    procedure lst1KeyPress(Sender: TObject; var Key: Char);
    procedure Edt1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lst1Exit(Sender: TObject);
    procedure BtLOGClick(Sender: TObject);
    procedure SelParamClick(Sender: TObject);
    procedure Bt20Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure tmrResetExpandTimer(Sender: TObject);
    procedure req51Click(Sender: TObject);
    procedure ValueClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure BTCopyClick(Sender: TObject);
    procedure BTPasteClick(Sender: TObject);
    procedure BtDelClick(Sender: TObject);
    procedure BtGraphOutClick(Sender: TObject);
    procedure BtChartOutClick(Sender: TObject);
    procedure BtGraphClrClick(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure rb17Click(Sender: TObject);
    procedure Bt21Click(Sender: TObject);
    procedure Bt70Click(Sender: TObject);
    procedure Bt71Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure chk4Click(Sender: TObject);
    procedure chk5Click(Sender: TObject);
    procedure ctxt6Click(Sender: TObject);
    procedure rb18Click(Sender: TObject);
    procedure Bt73Click(Sender: TObject);
    procedure Bt72Click(Sender: TObject);
    procedure chk6Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure CountDblClick(Sender: TObject);
    procedure btn35Click(Sender: TObject);
    procedure chk7Click(Sender: TObject);
    procedure btn55Click(Sender: TObject);
    procedure NameDblClick(Sender: TObject);
    procedure btn36Click(Sender: TObject);
    procedure chk8Click(Sender: TObject);
    procedure Bt74Click(Sender: TObject);
    procedure btn37Click(Sender: TObject);
    procedure btn39Click(Sender: TObject);
    procedure btn40Click(Sender: TObject);
    procedure btn38Click(Sender: TObject);
    procedure Bt76Click(Sender: TObject);
    procedure Bt75Click(Sender: TObject);
    procedure btn41Click(Sender: TObject);
    procedure edt3Change(Sender: TObject);
    procedure edt4Change(Sender: TObject);
    procedure edt5Change(Sender: TObject);
    procedure edt6Change(Sender: TObject);
    procedure edt7Change(Sender: TObject);
    procedure edt8Change(Sender: TObject);
    procedure UpdTimeStartExitt(Sender: TObject);
    procedure UpdTimeStopExitt(Sender: TObject);

    procedure edt10Exit(Sender: TObject);
    procedure edt11Change(Sender: TObject);
    procedure edt12Change(Sender: TObject);
    procedure edt13Change(Sender: TObject);
    procedure edt14Change(Sender: TObject);
    procedure edt15Change(Sender: TObject);
    procedure EdtKeyPress(Sender: TObject; var Key: Char);
    procedure edt10Change(Sender: TObject);
    procedure btn42Click(Sender: TObject);
  private
    { Private declarations }
  public
    isSendWinLog : Boolean;
    { Public declarations }
    procedure SetNewStr(SrcData : TTypeSrcData; newstr : string; isHex : Boolean; DateTime: TDateTime);
    procedure SetNumParser(NumListCmd : Cardinal);
    procedure SaveCfg;
    procedure SetSaveCfgDis;

    function GetMaxD(i : byte; pars : byte) : Int64;
    function GetMinD(i : byte; pars : byte) : Int64;
    procedure SetLogBGColor(BGColor : TColor);

    function GetSaveCfgEn : boolean;
  end;

const
  NameFileCfg1     = 'ParserHex_Cfg';
  NameFileCfg2     = 'ParserHexCfg';
  NameFileCfg3     = 'ParserCfgHex';
  Colors : array[0..3] of TColor = (clRed, clYellow, clLime, clAqua);

  MIN_INT64 = -9223372036854775807;
  MAX_INT64 = 9223372036854775807;
var
  FormParser: TFormParser;
  NumParserForGraph : Cardinal;
  isPauseGraph : Boolean;
  isSyncBuffers : Boolean;
  isAddInBuf : Boolean;
  isEnUpdTimeStartStop : boolean;
  MsgOld : string;
  MsgNew : string;
  HexBuf : array[0..$7FFFF] of Byte;
  ParsersHEX    : array[1..200] of TParserHEX;
  ParsersHEXAdd : array[1..200] of TParserHEXAdd;
  isOutLogRes : Boolean;
  ParsersHEXCopy : TParserHEX;
  VisParser  : array[0..15] of TVisParser;
  NumParser  : Cardinal;
  CfgParser1    : TCfgParser1;
  CfgParser2    : TCfgParser2;
  CfgParser3    : TCfgParser3;
  isMaxWin : Boolean;
  isSyncMacros : Boolean;
  iDisplayMinMax : Integer;
  Log : TextFile;
  isWriteLog : boolean;
  LogName    : string;
  isOpenMsgEventEn : array[0..15, 1..200] of Boolean;
  isEnOutCurrenVal : boolean;
  ValueOld : array[0..15, 1..200] of Int64;

  Counts : array[0..15, 1..200] of Cardinal;

  isUseAllList : Boolean;

  CntPacket : Cardinal;
  strLogFile : array[0..15] of string;
  strLogWin : string;
  isGraph : Boolean;
  isChart : Boolean;
  SelectParamForGraph : Integer;
  isEnSave     : Boolean;
  isPauseLog   : Boolean;
  isLogOnlyEvents : Boolean;
  isEvents : Boolean;
  CntStrInLog : Cardinal;
  MinValG : array[0..15] of Int64;
  MaxValG : array[0..15] of Int64;

  MinValD : array[0..15, 1..200] of Int64;
  MaxValD : array[0..15, 1..200] of Int64;

  TimeMaxG : array[0..15] of string;
  TimeMinG : array[0..15] of string;

  TimeMaxD : array[0..15, 1..200] of string;
  TimeMinD : array[0..15, 1..200] of string;

  DataGraphBuf : array[0..15] of TDataGraphBuf;
  DGiAct : array[0..15] of Integer;

  LastVal       : array[0..15, 1..200] of int64;

  LastValUpd    : array[0..15, 1..200] of boolean;
  LastValIndex1 : array[0..15, 1..200] of integer;
  LastValIndex2 : array[0..15, 1..200] of integer;

  ChartLastCValMath  : array[1..200] of Int64;
  ChartLastShiftMath : array[1..200] of Integer;


  DataGraphBufMath : TDataGraphBuf;
  DGiActMath : Integer;

  isUseMath : Boolean;
  isOutMathGraph : Boolean;
  SettParserCopy : TSettParser;
  SettParserAddCopy : TParserSettingsAdd;

  isMultiGraph : Boolean;

  TimeStartStat : TDateTime;
  TimeStopStat : TDateTime;

  TSStartYear, TSStartMonth, TSStartDay, TSStartHour, TSStartMin, TSStartSec : Cardinal;
  TSStopYear, TSStopMonth, TSStopDay, TSStopHour, TSStopMin, TSStopSec : Cardinal;

implementation

uses Unit25, Unit26, Unit33, Unit36, Unit37, Unit40, Unit32, Unit151,
  Unit152, Unit15, Unit153;

{$R *.dfm}

procedure TFormParser.SetLogBGColor(BGColor : TColor);
var
  i: integer;
begin
  for i:=1 to 200 do
    ParsersHEXAdd[i].ColorBG_LOG := BGColor;
end;

procedure UpdParser(index : integer; isDel : boolean);
var
  i : Integer;
begin
if isDel then
  begin
    For i:= 0 to 15 do
      begin
        ParsersHEX[NumParser].SettParser[index].isUseByteCmp[i] := False;
        ParsersHEX[NumParser].SettParser[index].UseByteCmp[i] := 0;
      end;
    For i:= 0 to 3 do
      ParsersHEX[NumParser].SettParser[index].NumUseBytes[i] := 0;

    for i:= 0 to 16 do
      ParsersHEX[NumParser].SettParser[index].res1[i] := 0;

    ParsersHEX[NumParser].SettParser[index].isUseParser := False;
    ParsersHEX[NumParser].SettParser[index].NameParam := '';
    ParsersHEX[NumParser].SettParser[index].TypeParam := uint8;
    ParsersHEX[NumParser].SettParser[index].isCheckLen := False;
    ParsersHEX[NumParser].SettParser[index].PacketLen := 0;
    ParsersHEX[NumParser].SettParser[index].Color := clWindow;
    ParsersHEX[NumParser].SettParser[index].YMin := -2147483647;
    ParsersHEX[NumParser].SettParser[index].YMax := 2147483647;

    ParsersHEXAdd[NumParser].isExpandOfChangeVal[index] := False;
    ParsersHEXAdd[NumParser].isChangeColorOfVal[index] := False;
    ParsersHEXAdd[NumParser].ColorOfChangeVal[index] := FormSettParser.Color;
  end;


  VisParser[index].VName.Caption := ParsersHEX[NumParser].SettParser[index].NameParam;

  if ParsersHEX[NumParser].SettParser[index].isUseParser then
    begin
      VisParser[index].BtSett.Hint := GetPortName(TTypeSrcData(ParsersHEX[NumParser].SettParser[index].res1[9] and $FF));
      VisParser[index].BtSett.ShowHint := True;


      VisParser[index].VName.Enabled := True;
      VisParser[index].VTime.Enabled := True;
      VisParser[index].VValue.Enabled := True;


      VisParser[index].VTime.Caption := 'Wait...';
      VisParser[index].VValue.Caption := 'Wait...';
      VisParser[index].VHex.Caption := 'Wait...';

      VisParser[index].VName.Color := ParsersHEX[NumParser].SettParser[index].Color;
      VisParser[index].VTime.Color := ParsersHEX[NumParser].SettParser[index].Color;
      VisParser[index].VValue.Color := ParsersHEX[NumParser].SettParser[index].Color;
    end
      else
    begin
      VisParser[index].BtSett.ShowHint := False;
      VisParser[index].VName.Enabled := False;
      VisParser[index].VTime.Enabled := False;
      VisParser[index].VValue.Enabled := False;

      VisParser[index].VTime.Caption := '';
      VisParser[index].VValue.Caption := '';
      VisParser[index].VHex.Caption := '';

      VisParser[index].VName.Color := FormParser.Color;
      VisParser[index].VTime.Color := FormParser.Color;
      VisParser[index].VValue.Color := FormParser.Color;
    end;

  //MinVal[index] := 2147483647;
  //MaxVal[index] := -2147483647;
    //VisParser[index].VValue.ShowHint := True;
  VisParser[index].VValue.Hint := '';
  VisParser[index].VCount.Hint := ParsersHEX[NumParser].SettParser[index].NameParam;
end;


procedure DataGraphBufAdd(val : Int64; DateTime: TDateTime; numBuf : Cardinal);
begin
  if numBuf < 16 then
    begin
      DataGraphBuf[numBuf].DataGraph[DGiAct[numBuf]].val := val;
      DataGraphBuf[numBuf].DataGraph[DGiAct[numBuf]].dt  := DateTime;
      inc(DGiAct[numBuf]);
      DGiAct[numBuf] := DGiAct[numBuf] and (MAX_CNT_DG - 1);
    end
  else
    begin
      DataGraphBufMath.DataGraph[DGiActMath].val := val;
      DataGraphBufMath.DataGraph[DGiActMath].dt  := DateTime;
      inc(DGiActMath);
      DGiActMath := DGiActMath and (MAX_CNT_DG - 1);
    end;
end;

procedure SetCurParser();
var
  index, i : Cardinal;
  iLast : Cardinal;

begin
  isEnOutCurrenVal := True;
  FormParser.btn42.Enabled := False;

  FormParser.Edt2.Text := Format('%03d', [NumParser]);
   if NumParserForGraph = NumParser then
     begin
       FormParser.rb18.Color := FormParser.Color;
       FormParser.rb18.Checked := True;
     end
   else
     begin
       FormParser.rb18.Color := clYellow;
       FormParser.rb18.Checked := false;
     end;

   if NumParser = 1 then
      begin
        FormParser.Bt17.Enabled := False;
        FormParser.Bt18.Enabled := True;
      end
    else if NumParser = 200 then
      begin
        FormParser.Bt17.Enabled := true;
        FormParser.Bt18.Enabled := False;
      end
    else
      begin
        FormParser.Bt17.Enabled := true;
        FormParser.Bt18.Enabled := True;
      end;


  FormParser.chk4.Checked := ParsersHEXAdd[NumParser].isLogMain;
  FormParser.chk5.Checked := ParsersHEXAdd[NumParser].isLogSecond;
  FormParser.chk6.Checked := ParsersHEXAdd[NumParser].isLogSep;
  FormParser.ctxt6.Color  := ParsersHEXAdd[NumParser].ColorLog;
  FormParser.ctxt6.Font.Color := $FFFFFF - FormParser.ctxt6.Color;

  FormParser.Edt1.Text := ParsersHEX[NumParser].ParserName;
  for index := 0 to 15 do
    begin
      UpdParser(index, false);
      LastValIndex1[index, NumParser] := -1;
      LastValIndex2[index, NumParser] := -1;
    end;
  iDisplayMinMax := 16;
  FormParser.req51.Color := FormParser.Color;
  FormParser.req51.Caption := ' Select the controlled parameter by clicking on its value';
  FormParser.btn1.Enabled := False;
  FormParser.rb17.Checked := False;
  FormParser.Bt21.Enabled := False;

  FormParser.cbb1.Clear;
  FormParser.cbb3.Clear;


  iLast := 0;
  for index := 0 to 15 do
    begin
      LastVal[index, NumParser] := 0;
      LastValUpd[index, NumParser] := false;
      if ParsersHEX[NumParser].SettParser[index].isUseParser then
        begin
          FormParser.cbb1.Items.Add(ParsersHEX[NumParser].SettParser[index].NameParam);
          FormParser.cbb3.Items.Add(ParsersHEX[NumParser].SettParser[index].NameParam);
          LastValIndex1[iLast, NumParser] := index;
          LastValIndex2[iLast, NumParser] := index;
          inc(iLast);
        end;
      VisParser[index].VCount.Hint := ParsersHEX[NumParser].SettParser[index].NameParam;
      VisParser[index].VCount.Caption := IntToStr(Counts[index, NumParser]);
      VisParser[index].VCount.Font.Style := [];
    end;
  FormParser.ctxt1.Caption := 'Wait...';
  FormParser.cbb1.ItemIndex := 0;
  FormParser.cbb3.ItemIndex := 0;


  FormParser.chk7.Checked := ParsersHEXAdd[NumParser].Sett17[0];
  if ParsersHEXAdd[NumParser].Sett17[0] then
    begin
      FormParser.chk7.Color := FormParser.Color;
      for i:= 0 to 15 do
        begin
          VisParser[i].VName.Color := ParsersHEX[NumParser].SettParser[i].Color;
          VisParser[i].VTime.Color := ParsersHEX[NumParser].SettParser[i].Color;
          VisParser[i].VValue.Color := ParsersHEX[NumParser].SettParser[i].Color;
        end;
    end
  else
    begin
      FormParser.chk7.Color := clRed;
      for i:= 0 to 15 do
        begin
          VisParser[i].VName.Color := FormParser.Color;
          VisParser[i].VTime.Color := FormParser.Color;
          VisParser[i].VValue.Color := FormParser.Color;
        end;
    end;
  FormParser.chk8.Checked := ParsersHEXAdd[NumParser].isSyncTime;
  isSyncBuffers := ParsersHEXAdd[NumParser].isSyncTime;
end;


procedure TFormParser.SetSaveCfgDis;
begin
  isEnSave := False;
end;


function TFormParser.GetMaxD(i : byte; pars : byte) : Int64;
begin
  Result := MaxValD[i, pars];
end;

function TFormParser.GetMinD(i : byte; pars : byte) : Int64;
begin
  Result := MinValD[i, pars];
end;


function TFormParser.GetSaveCfgEn : boolean;
begin
  result := isEnSave;
end;



procedure TFormParser.SetNumParser(NumListCmd : Cardinal);
begin
  if isSyncMacros then
    begin
      if (NumListCmd >= 1) and (NumListCmd <= 200) then
        NumParser := NumListCmd;

      SetCurParser();
    end;
end;


procedure TFormParser.SetNewStr(SrcData :TTypeSrcData; newstr : string; isHex : boolean; DateTime: TDateTime);
var i, j, k, iC : Integer;
    lenMsg : Integer;
    tmp : Char;
    isPars : Boolean;
    PacketLen : Cardinal;
    Parser    : TParserHEX;
    ParserAdd : TParserHEXAdd;
    tmpstr : string;

    Temp : Single;
    TempBytes   : Array[0..3] of Byte absolute Temp;
    strParam : string;
    strLogToWrite : string;

    val : Int64;
    valForIsChange : Int64;
    Time, DTime : string;
    isUseMin : array[0..3] of Boolean;
    isUseMax : array[0..3] of Boolean;
    isMaxWindow : array[0..3] of Boolean;
    strProc : string;
    isClearMultiGraph : Boolean;
    isClearMultiGraphTmp : Boolean;


    thr0 : array[0..3] of integer;
    thr1 : array[0..3] of integer;
    namePars : string;
    isSetColor : Boolean;
    ColorTmp : TColor;
    isUpdMinMax : Boolean;
    SrcPortCfg  : TTypeSrcData;
    delta : real;
    iParser : Byte;
    indexMath1, indexMath2, indexMathAct, indexMulti : Integer;
    ColorPort : TColor;
    isUseList : Boolean;
    isChangeValColor  : Boolean;
    isChangeValExpand : Boolean;
begin
  Inc(CntPacket);
  if DateTime > 0 then
    Time := FormatDateTime('hh:mm:ss:zzz ', DateTime)
  else
    Time := '--:--:--:---';
  DTime := SetTimeStamp(true, TerminalST.Form1.isAddDate, DateTime);
  req49.Caption := 'Cnt : ' + IntToStr(CntPacket);
  val := 0;
  if isHex then
    begin
      lenMsg := Length(newstr);
      MsgNew := newstr;

      j := 0;

      for i := 1 to lenMsg do
        begin
          tmp := newstr[i];
          if i mod 3 = 1 then
            HexBuf[j] := HexToInt(tmp) shl 4
          else if i mod 3 = 2 then
            HexBuf[j] := HexBuf[j] or HexToInt(tmp)
          else
            inc(j);
        end;

      if MsgNew <> MsgOld then
        begin
          ctxt5.Caption := IntToStr(Round((Length(MsgNew))/3));
          mmoInput.Text := MsgNew;
          MsgOld := MsgNew;
        end;

      mmoInput.Color := FormParser.Color;


      PacketLen := j;

      for i:= 0 to 15 do
        begin
          VisParser[i].VTime.Font.Style := [];
          VisParser[i].VCount.Font.Style := [];
        end;

      for iParser := 1 to 200 do
        begin
          Parser    := ParsersHEX[iParser];
          ParserAdd := ParsersHEXAdd[iParser];

          isUseList := ParserAdd.Sett17[0];

          //if (iParser = NumParser) or (iParser = NumParserForGraph) or ((ParserAdd.isLogMain or ParserAdd.isLogSecond or (ParserAdd.isLogSep and isSendWinLog)) and isOutLogRes) then
          if isUseList then
            begin
              i := 0;
              isClearMultiGraph := False;
              isClearMultiGraphTmp := False;
              isEvents := False;
              strLogWin := '';




              for i := 0 to 15 do
                if not isPauseGraph and (NumParserForGraph = iParser) and isSyncBuffers  then
                  begin
                    DataGraphBuf[i].DataGraph[DGiAct[i]].dt := DateTime;
                    DataGraphBuf[i].DataGraph[DGiAct[i]].val := DataGraphBuf[i].DataGraph[(DGiAct[i] - 1) and (MAX_CNT_DG - 1)].val;
                    Inc(DGiAct[i]);
                    DGiAct[i] := DGiAct[i] and (MAX_CNT_DG - 1);
                  end;


              isAddInBuf := False;



              i := 0;

              while i <= 15 do
                begin






                  LastValUpd[i, iParser] := false;
                  SrcPortCfg := TTypeSrcData(Parser.SettParser[i].res1[9] and $FF);

                  if (Parser.SettParser[i].isUseParser) and (SrcData = SrcPortCfg) and
                     ((Parser.SettParser[i].isCheckLen and (Parser.SettParser[i].PacketLen = PacketLen)) or
                     (not Parser.SettParser[i].isCheckLen))  then
                    begin
                      isPars := Parser.SettParser[i].isUseParser;

                      if iParser = NumParser then
                        begin
                          for iC := 0 to 3 do
                            begin
                              isUseMin[iC]    :=  (Parser.SettParser[i].res1[0] and ($01 shl iC)) > 0;
                              isUseMax[iC]    :=  (Parser.SettParser[i].res1[0] and ($01 shl (iC + 4))) > 0;
                              isMaxWindow[iC] :=  (Parser.SettParser[i].res1[0] and ($01 shl (iC + 8))) > 0;

                              thr0[iC] := Parser.SettParser[i].res1[iC * 2 + 1];
                              thr1[iC] := Parser.SettParser[i].res1[iC * 2 + 2];
                            end;
                        end;

                      if isPars then
                        begin
                          j := 15;
                          while j > 0 do
                            begin
                              if (Parser.SettParser[i].isUseByteCmp[j]) and (j >= PacketLen) then
                                begin
                                  isPars := False;
                                end;
                              Dec(j);
                            end;
                        end;

                      if isPars then
                        begin

                          if Parser.SettParser[i].NumUseBytes[0] >= PacketLen then isPars := False;

                          if Parser.SettParser[i].TypeParam > int8 then
                            if Parser.SettParser[i].NumUseBytes[1] >= PacketLen then isPars := False;

                          if Parser.SettParser[i].TypeParam > int16 then
                            if Parser.SettParser[i].NumUseBytes[2] >= PacketLen then isPars := False;

                          if Parser.SettParser[i].TypeParam > int16 then
                            if Parser.SettParser[i].NumUseBytes[3] >= PacketLen then isPars := False;
                        end;


                      if isPars then
                        begin
                          for j := 0 to 15 do
                            begin
                              if (Parser.SettParser[i].isUseByteCmp[j]) and (Parser.SettParser[i].UseByteCmp[j] <> HexBuf[j]) then
                                 begin
                                   isPars := False;
                                 end;
                            end;
                        end;

                      if isPars then
                        begin
                          Inc(Counts[i, iParser]);
                          if (iParser = NumParser) and isEnOutCurrenVal then
                            begin
                              VisParser[i].VTime.Caption := Time;
                              VisParser[i].VCount.Caption := IntToStr(Counts[i, iParser]);
                              VisParser[i].VTime.Font.Style := [fsBold];
                              VisParser[i].VCount.Font.Style := [fsBold];
                            end;
                          strLogFile[i] := '';
                          case Parser.SettParser[i].TypeParam of
                            uint8 :
                                    begin
                                      if (iParser = NumParser) and isEnOutCurrenVal then
                                        VisParser[i].VHex.Caption := IntToHex(byte(HexBuf[Parser.SettParser[i].NumUseBytes[0]]) and $FF, 2);
                                      val := Byte(HexBuf[Parser.SettParser[i].NumUseBytes[0]]);
                                      valForIsChange := val;
                                      LastValUpd[i, iParser] := True;
                                      strParam := IntToStr(val);
                                    end;

                            int8  :
                                    begin
                                      if (iParser = NumParser) and isEnOutCurrenVal then
                                        VisParser[i].VHex.Caption := IntToHex(byte(HexBuf[Parser.SettParser[i].NumUseBytes[0]]) and $FF, 2);
                                      val := ShortInt(HexBuf[Parser.SettParser[i].NumUseBytes[0]]);
                                      valForIsChange := val;
                                      LastValUpd[i, iParser] := True;
                                      strParam := IntToStr(val);
                                    end;
                            uint16:
                                    begin
                                      if (iParser = NumParser) and isEnOutCurrenVal then
                                        VisParser[i].VHex.Caption := IntToHex(Word((HexBuf[Parser.SettParser[i].NumUseBytes[1]] shl 8) or (HexBuf[Parser.SettParser[i].NumUseBytes[0]])) and $FFFF, 4);
                                      val := Word((HexBuf[Parser.SettParser[i].NumUseBytes[1]] shl 8) or (HexBuf[Parser.SettParser[i].NumUseBytes[0]]));
                                      valForIsChange := val;
                                      LastValUpd[i, iParser] := True;
                                      strParam := IntToStr(val);
                                    end;
                            int16 :
                                    begin
                                      if (iParser = NumParser) and isEnOutCurrenVal then
                                        VisParser[i].VHex.Caption := IntToHex(Word(((HexBuf[Parser.SettParser[i].NumUseBytes[1]] shl 8) or (HexBuf[Parser.SettParser[i].NumUseBytes[0]]))) and $FFFF, 4);
                                      val := SmallInt(((HexBuf[Parser.SettParser[i].NumUseBytes[1]] shl 8) or (HexBuf[Parser.SettParser[i].NumUseBytes[0]])));
                                      valForIsChange := val;
                                      LastValUpd[i, iParser] := True;
                                      strParam := IntToStr(val);
                                    end;
                            uint32:
                                    begin
                                      if (iParser = NumParser) and isEnOutCurrenVal then
                                        VisParser[i].VHex.Caption := IntToHex(Cardinal((HexBuf[Parser.SettParser[i].NumUseBytes[3]] shl 24) or (HexBuf[Parser.SettParser[i].NumUseBytes[2]] shl 16) or (HexBuf[Parser.SettParser[i].NumUseBytes[1]] shl 8) or (HexBuf[Parser.SettParser[i].NumUseBytes[0]])), 8);
                                      val := Cardinal((HexBuf[Parser.SettParser[i].NumUseBytes[3]] shl 24) or (HexBuf[Parser.SettParser[i].NumUseBytes[2]] shl 16) or (HexBuf[Parser.SettParser[i].NumUseBytes[1]] shl 8) or (HexBuf[Parser.SettParser[i].NumUseBytes[0]]));
                                      valForIsChange := val;
                                      LastValUpd[i, iParser] := True;
                                      strParam := IntToStr(val);
                                    end;
                            int32 :
                                    begin
                                      if (iParser = NumParser) and isEnOutCurrenVal then
                                        VisParser[i].VHex.Caption := IntToHex(Cardinal((HexBuf[Parser.SettParser[i].NumUseBytes[3]] shl 24) or (HexBuf[Parser.SettParser[i].NumUseBytes[2]] shl 16) or (HexBuf[Parser.SettParser[i].NumUseBytes[1]] shl 8) or (HexBuf[Parser.SettParser[i].NumUseBytes[0]])), 8);
                                      val:= Integer((HexBuf[Parser.SettParser[i].NumUseBytes[3]] shl 24) or (HexBuf[Parser.SettParser[i].NumUseBytes[2]] shl 16) or (HexBuf[Parser.SettParser[i].NumUseBytes[1]] shl 8) or (HexBuf[Parser.SettParser[i].NumUseBytes[0]]));
                                      valForIsChange := val;
                                      LastValUpd[i, iParser] := True;
                                      strParam := IntToStr(val);
                                    end;
                            float :
                                    begin
                                      if (iParser = NumParser) and isEnOutCurrenVal then
                                        VisParser[i].VHex.Caption := IntToHex(Cardinal((HexBuf[Parser.SettParser[i].NumUseBytes[3]] shl 24) or (HexBuf[Parser.SettParser[i].NumUseBytes[2]] shl 16) or (HexBuf[Parser.SettParser[i].NumUseBytes[1]] shl 8) or (HexBuf[Parser.SettParser[i].NumUseBytes[0]])), 8);

                                      TempBytes[0] := HexBuf[Parser.SettParser[i].NumUseBytes[0]];
                                      TempBytes[1] := HexBuf[Parser.SettParser[i].NumUseBytes[1]];
                                      TempBytes[2] := HexBuf[Parser.SettParser[i].NumUseBytes[2]];
                                      TempBytes[3] := HexBuf[Parser.SettParser[i].NumUseBytes[3]];

                                      valForIsChange := Cardinal((HexBuf[Parser.SettParser[i].NumUseBytes[3]] shl 24) or (HexBuf[Parser.SettParser[i].NumUseBytes[2]] shl 16) or (HexBuf[Parser.SettParser[i].NumUseBytes[1]] shl 8) or (HexBuf[Parser.SettParser[i].NumUseBytes[0]]));


                                      try
                                        val:= Int64(Round(Temp * Parser.SettParser[i].res1[15]));
                                        LastValUpd[i, iParser] := True;
                                        strParam := FloatToStr(Temp * Parser.SettParser[i].res1[15]);
                                      except
                                        strParam := 'NO';
                                        val := 0;
                                      end;
                                    end;
                            uint24 :
                                    begin
                                      if (iParser = NumParser) and isEnOutCurrenVal then
                                        VisParser[i].VHex.Caption := IntToHex(Cardinal((HexBuf[Parser.SettParser[i].NumUseBytes[2]] shl 16) or (HexBuf[Parser.SettParser[i].NumUseBytes[1]] shl 8) or (HexBuf[Parser.SettParser[i].NumUseBytes[0]])), 6);
                                      val:= Integer((HexBuf[Parser.SettParser[i].NumUseBytes[2]] shl 16) or (HexBuf[Parser.SettParser[i].NumUseBytes[1]] shl 8) or (HexBuf[Parser.SettParser[i].NumUseBytes[0]]));

                                      valForIsChange := val;

                                      LastValUpd[i, iParser] := True;
                                      strParam := IntToStr(val);
                                    end;

                          end;

                          LastVal[i, iParser] := val;

                          isChangeValColor  := (valForIsChange <> ValueOld[i, iParser]) and ParserAdd.isChangeColorOfVal[i];
                          isChangeValExpand := (valForIsChange <> ValueOld[i, iParser]) and ParserAdd.isExpandOfChangeVal[i];

                          ValueOld[i, iParser] := valForIsChange;



                          if (iParser = NumParser) and isEnOutCurrenVal then
                            VisParser[i].VValue.Caption := strParam;

                          if iParser = NumParser then
                            if isMultiGraph then
                              begin
                                isClearMultiGraphTmp := FormMultiGraph.AddPoint(i, val, DateTime);
                                isClearMultiGraph := isClearMultiGraph or isClearMultiGraphTmp;
                              end;

                          if not isPauseGraph and (NumParserForGraph = iParser) then
                            begin
                              if isSyncBuffers then
                                begin
                                  dec(DGiAct[i]);
                                  DGiAct[i] := DGiAct[i] and (MAX_CNT_DG - 1);
                                end;
                              isAddInBuf := True;
                              DataGraphBufAdd(val, DateTime, i);
                            end;

                          if i = SelectParamForGraph then
                            begin
                              Str((100 * DGiAct[i] / MAX_CNT_DG):3:2,  strProc);
                              reqtxt1.Caption := 'Buf ' + IntToStr(i + 1) +' Fill: ' + strProc + '%';
                            end;

                          //
                          if (isGraph) and (i = SelectParamForGraph) and (not isPauseGraph) and (NumParser = iParser) then
                            FormGraph.WriteNewPoint(val, DateTime);

                          if (isChart) and (i = SelectParamForGraph) and (not isPauseGraph) and (NumParser = iParser) then
                            frmBarChart.AddNewData(val);

                          if iParser = NumParser then
                            begin
                              iC := 0;
                              isSetColor := False;

                              while iC < 4 do
                                begin
                                  if isUseMin[iC] and isUseMax[iC] then
                                    begin
                                      if ((val <= thr0[iC]) and (val >= thr1[iC]) and (thr0[iC] >= thr1[iC])) or

                                         (((val >= thr1[iC]) or (val <= thr0[iC])) and (thr0[iC] < thr1[iC])) then
                                        begin
                                          ColorTmp := Colors[iC];
                                          isSetColor := True;
                                        end;
                                    end
                                  else if isUseMin[iC] then
                                    begin
                                      if val >= thr1[iC] then
                                        begin
                                          ColorTmp := Colors[iC];
                                          isSetColor := True;
                                        end;
                                    end
                                  else if isUseMax[iC] then
                                    begin
                                      if val <= thr0[iC] then
                                        begin
                                          ColorTmp := Colors[iC];
                                          isSetColor := True;
                                        end;
                                    end;

                                  if isSetColor and isEnOutCurrenVal then
                                    begin
                                      VisParser[i].VName.Color := ColorTmp;
                                      VisParser[i].VTime.Color := ColorTmp;
                                      VisParser[i].VValue.Color := ColorTmp;
                                      isEvents := True;

                                      if isMaxWindow[iC] and not IsIconic(Form1.Handle) and not isMaxWin and not isGraph then
                                        begin
                                          Application.Restore;
                                          FormParser.Show();
                                          FormParser.WindowState := wsNormal;
                                          isMaxWin := True;
                                          if isOpenMsgEventEn[i, NumParser]  then
                                            begin
                                              FormEvent.SrcEvent := TTypeSrcEvent(i + 1);
                                              FormEvent.EventMSG := IntToStr(i + 1) + ': ' + Parser.SettParser[i].NameParam;
                                              FormEvent.ShowModal;
                                              isOpenMsgEventEn[i, NumParser] := not FormEvent.isNotShowEvent;
                                            end;
                                        end;
                                    end;

                                  Inc(iC);
                                end;

                              if not isSetColor and not isChangeValColor and isEnOutCurrenVal then
                                begin
                                  VisParser[i].VName.Color := Parser.SettParser[i].Color;
                                  VisParser[i].VTime.Color := Parser.SettParser[i].Color;
                                  VisParser[i].VValue.Color := Parser.SettParser[i].Color;
                                end;

                              if isChangeValColor and isEnOutCurrenVal then
                                begin
                                  isEvents := True;
                                  VisParser[i].VName.Color  := ParserAdd.ColorOfChangeVal[i];
                                  VisParser[i].VTime.Color  := ParserAdd.ColorOfChangeVal[i];
                                  VisParser[i].VValue.Color := ParserAdd.ColorOfChangeVal[i];
                                end;


                              if isChangeValExpand then
                                begin
                                 isEvents := True;
                                 if not IsIconic(Form1.Handle) and not isMaxWin and not isGraph then
                                   begin
                                     Application.Restore;
                                     FormParser.Show();
                                     FormParser.WindowState := wsNormal;
                                     isMaxWin := True;
                                     if isOpenMsgEventEn[i, NumParser]  then
                                       begin
                                         FormEvent.SrcEvent := TTypeSrcEvent(i + 1);
                                         FormEvent.EventMSG := IntToStr(i + 1) + ': ' + Parser.SettParser[i].NameParam;
                                         FormEvent.ShowModal;
                                         isOpenMsgEventEn[i, NumParser] := not FormEvent.isNotShowEvent;
                                       end;
                                     end;
                                end;

                            end;

                          if isWriteLog then
                            strLogFile[i] := strLogFile[i] + Parser.SettParser[i].NameParam + ' ' + DTime + ' ' + strParam + ' ';

                          if (ParserAdd.isLogMain or ParserAdd.isLogSecond or (ParserAdd.isLogSep and isSendWinLog)) and isOutLogRes then
                            begin
                              strLogWin := strLogWin + Parser.SettParser[i].NameParam + '=' + strParam + ' ';
                            end;

                          if val > MaxValD[i, iParser] then
                            begin
                              MaxValD[i, iParser] := val;
                              TimeMaxD[i, iParser] := DTime;
                            end;

                          if val < MinValD[i, iParser] then
                            begin
                              MinValD[i, iParser] := val;
                              TimeMinD[i, iParser] := DTime;
                            end;

                          //isUpdMinMax := False;
                          if iParser = NumParser then
                            begin


                              if val > MaxValG[i] then
                                begin
                                  MaxValG[i] := val;
                                  TimeMaxG[i] := DTime;
                                end;

                              if val < MinValG[i] then
                                begin
                                  MinValG[i] := val;
                                  TimeMinG[i] := DTime;
                                end;



                              if i = iDisplayMinMax then
                                begin
                                  req51.Caption := ' ' + IntToStr(i + 1)+'. ' + Parser.SettParser[i].NameParam + '  Min: ' + IntToStr(MinValD[i, iParser]) +' [' + TimeMinD[i, iParser] + ']   Max: ' + IntToStr(MaxValD[i, iParser]) +' ['  +TimeMaxD[i, iParser] + ']';
                                  req51.Color := clWhite;
                                end;
                            end;
                      // end;

                        end;
                    end;



                  Str((100 * DGiAct[i] / MAX_CNT_DG):3:2,  strProc);
                  VisParser[i].BTGraphClr.Caption := strProc + '%';



                  Inc(i);
                end;


              for i := 0 to 15 do
                if not isPauseGraph and (NumParserForGraph = iParser) and not isAddInBuf and isSyncBuffers then
                  begin
                    Dec(DGiAct[i]);
                    DGiAct[i] := DGiAct[i] and (MAX_CNT_DG - 1);
                    DataGraphBuf[i].DataGraph[DGiAct[i]].dt := 0;
                    DataGraphBuf[i].DataGraph[DGiAct[i]].val := 0;
                  end;




              if isWriteLog or ((ParserAdd.isLogMain or ParserAdd.isLogSecond or (ParserAdd.isLogSep and isSendWinLog)) and isOutLogRes) then
                begin
                  i := 0;
                  strLogToWrite := '';
                  while i < 16 do
                    begin
                      if Parser.SettParser[i].isUseParser then
                        if strLogFile[i] <> '' then
                          strLogToWrite := strLogToWrite + strLogFile[i]
                        else
                          strLogToWrite := strLogToWrite + Parser.SettParser[i].NameParam + ' Wait... Wait... ';
                      inc(i);
                    end;
                  if not isPauseLog and isWriteLog then
                    if (isEvents and isLogOnlyEvents) or Not isLogOnlyEvents then
                      begin
                        Writeln(Log, strLogToWrite);
                        Inc(CntStrInLog);
                        ctxt2.Caption := 'Lines in the log: ' + IntToStr(CntStrInLog);
                      end;

                  if strLogWin <> '' then
                    begin
                      strLogWin := DTime + strLogWin;

                      namePars := '[ParsH' + Format('%03d', [iParser])+ ']';

                      if ParserAdd.isLogMain and isOutLogRes then
                        begin
                          TerminalST.Form1.MemoUpd(DateTime, namePars, strLogWin, '', '', '', '', TRUE, ParserAdd.ColorLog);
                        end;
                      if ParserAdd.isLogSecond and isOutLogRes then
                        begin
                          TerminalST.Form1.MemoUpd(DateTime, '', '', '', namePars + strLogWin, '', '', TRUE, ParserAdd.ColorLog);
                        end;
                      if ParserAdd.isLogSep and isSendWinLog and isOutLogRes then
                        begin
                          frmParserLog.OutLog(namePars + strLogWin, ParserAdd.ColorLog);
                        end;
                    end;
                end;

              if isClearMultiGraph and (iParser = NumParser) then
                begin
                  FormMultiGraph.ClearMultiGraph;
                end;


              if isUseMath and (iParser = NumParser) then
                begin
                  i := 0;
                  while (not LastValUpd[i, iParser]) and (i < 16) do
                    inc(i);
                  isOutMathGraph := True;
                  indexMath1 := LastValIndex1[cbb1.ItemIndex, iParser];
                  indexMath2 := LastValIndex2[cbb3.ItemIndex, iParser];
                  indexMathAct := cbb2.ItemIndex;
                  indexMulti   := cbb4.ItemIndex;

                  try
                  if i < 16 then
                    begin
                      case indexMathAct of
                        0:  delta := LastVal[indexMath1, iParser] + LastVal[indexMath2, iParser]; //+
                        1:  delta := LastVal[indexMath1, iParser] - LastVal[indexMath2, iParser]; //-
                        2:  delta := LastVal[indexMath1, iParser] / LastVal[indexMath2, iParser];// /
                        3:  delta := LastVal[indexMath1, iParser] * LastVal[indexMath2, iParser];// *
                      end;

                      case indexMulti of
                        0:   delta := delta * 1000000000;
                        1:   delta := delta * 100000000;
                        2:   delta := delta * 10000000;
                        3:   delta := delta * 1000000;
                        4:   delta := delta * 100000;
                        5:   delta := delta * 10000;
                        6:   delta := delta * 1000;
                        7:   delta := delta * 100;
                        8:   delta := delta * 10;
                        9:   delta := delta * 1;
                        10:  delta := delta / 10;
                        11:  delta := delta / 100;
                        12:  delta := delta / 1000;
                        13:  delta := delta / 10000;
                        14:  delta := delta / 100000;
                        15:  delta := delta / 1000000;
                        16:  delta := delta / 10000000;
                        17:  delta := delta / 100000000;
                        18:  delta := delta / 1000000000;
                      end;
                      ctxt1.Caption := FloatToStr(delta);
                      ctxt1.Color := clWindow;
                    end;
                  except
                    isOutMathGraph := False;
                    ctxt1.Caption := 'ERROR';
                    ctxt1.Color := clRed;
                  end;

                  if isOutMathGraph and (i < 16) then
                    begin
                      try
                        if not isPauseGraph and (NumParserForGraph = NumParser) then
                          DataGraphBufAdd(Int64(Round(delta)), DateTime, 16);
                        if (isGraph) and (not isPauseGraph) and (SelectParamForGraph = 16) then
                          FormGraph.WriteNewPoint(Int64(Round(delta)), DateTime);
                        if (isChart) and (not isPauseGraph) and (SelectParamForGraph = 16) then
                          frmBarChart.AddNewData(Int64(Round(delta)));
                      except
                        ctxt1.Caption := 'ERROR';
                        ctxt1.Color := clRed;
                      end;
                    end;
                end;
            end;
        end;
    end
  else
    begin
      mmoInput.Text := 'Parser works only for HEX mode!';
      mmoInput.Color := clYellow;
      ctxt5.Caption := '---';
    end;
  tmpstr := GetPortName(SrcData);
  case SrcData of
    SrcPortMain: begin ColorPort := FormParser.Color; end;
    SrcPort1   : begin ColorPort := clMoneyGreen; end;
    SrcPort2   : begin ColorPort := clMoneyGreen; end;
    Src2Port1  : begin ColorPort := clSkyBlue; end;
    Src2Port2  : begin ColorPort := clSkyBlue; end;
    Src2Port3  : begin ColorPort := clSkyBlue; end;
    Src2Port4  : begin ColorPort := clSkyBlue; end;
    Src2Port5  : begin ColorPort := clSkyBlue; end;
    Src2Port6  : begin ColorPort := clSkyBlue; end;
    Src2Port7  : begin ColorPort := clSkyBlue; end;
    Src2Port8  : begin ColorPort := clSkyBlue; end;
    Src2Port9  : begin ColorPort := clSkyBlue; end;
    Src2Port10 : begin ColorPort := clSkyBlue; end;
    Src2Port11 : begin ColorPort := clSkyBlue; end;
    Src2Port12 : begin ColorPort := clSkyBlue; end;
    Src2Port13 : begin ColorPort := clSkyBlue; end;
    Src2Port14 : begin ColorPort := clSkyBlue; end;
    Src2Port15 : begin ColorPort := clSkyBlue; end;
    Src2Port16 : begin ColorPort := clSkyBlue; end;
  end;
  ctxt3.Caption := tmpstr;

  if DateTime > 0 then
    ctxt4.Caption := FormatDateTime('hh:mm:ss:zzz', DateTime)
  else
    ctxt4.Caption := '--:--:--:---';

  ctxt3.Color := ColorPort;
  ctxt4.Color := ColorPort;
  ctxt5.Color := ColorPort;
end;

procedure TFormParser.SaveCfg;
var
  i : Integer;
  CfgParserFile : file of TCfgParser3;
begin
  for i := 1 to 200 do
    CfgParser3.ParserHEX[i] := ParsersHEX[i];

  CfgParser3.isSyncMacros := isSyncMacros;
  CfgParser3.NumParserLast := NumParser;

  AssignFile(CfgParserFile, ExtractFilePath(Application.ExeName) + NameFileCfg3);
  if FileExists(ExtractFilePath(Application.ExeName) + NameFileCfg3) and (Get_File_Size(ExtractFilePath(Application.ExeName) + NameFileCfg3, True) > 0) then
    begin
      ReWrite(CfgParserFile);
      ReSet(CfgParserFile);
      Write(CfgParserFile, CfgParser3);
      CloseFile(CfgParserFile);
    end;

  if isWriteLog then
    begin
      isWriteLog := False;
      CloseFile(Log);
      req50.Caption := '';
      BtLOg.Caption := 'Start LOG';
    end;
end;


procedure TFormParser.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i : Integer;
  CfgParserFile : file of TCfgParser3;
begin
  TerminalST.Form1.BtParser.Font.Style := [];
  TerminalST.Form1.isUseParserHEX := False;
  MsgNew := '';
  MsgOld := '';
  isMaxWin := False;
  isEnOutCurrenVal := True;
  btn42.Enabled := False;
  if isSendWinLog then
    frmParserLog.Close;
  Sleep(5);
  for i := 1 to 200 do
    begin
      CfgParser3.ParserHEX[i] := ParsersHEX[i];
      CfgParser3.ParserHEXAdd[i] := ParsersHEXAdd[i];
    end;
  CfgParser3.isSyncMacros := isSyncMacros;
  CfgParser3.NumParserLast := NumParser;

  AssignFile(CfgParserFile, ExtractFilePath(Application.ExeName) + NameFileCfg3);
  ReWrite(CfgParserFile);
  ReSet(CfgParserFile);
  Write(CfgParserFile, CfgParser3);
  CloseFile(CfgParserFile);

  if isWriteLog then
    begin
      isWriteLog := False;
      CloseFile(Log);
      req50.Caption := '';
      BtLOg.Caption := 'Start LOG';
      isPauseLog := False;
      Bt20.Caption := '||';
      Bt20.Enabled := False;
    end;
end;

procedure ClearParser(pars : Cardinal);
var i, j : Integer;
begin
  ParsersHEX[pars].ParserName := 'Parser ¹ ' + IntToStr(pars);

  ParsersHEXAdd[pars].isLogMain := False;
  ParsersHEXAdd[pars].isLogSecond := false;
  ParsersHEXAdd[pars].ColorLog    := clGreen;
  ParsersHEXAdd[pars].isLogSep    := false;
  ParsersHEXAdd[pars].isSyncTime := false;
  ParsersHEXAdd[pars].isRes3 := false;
  ParsersHEXAdd[pars].isRes4 := false;
  ParsersHEXAdd[pars].isRes5 := false;
  ParsersHEXAdd[pars].isRes6 := false;
  ParsersHEXAdd[pars].isRes7 := false;
  ParsersHEXAdd[pars].isRes8 := false;
  ParsersHEXAdd[pars].isRes9 := false;
  ParsersHEXAdd[pars].isRes10:= false;
  ParsersHEXAdd[pars].res1 := 0;
  ParsersHEXAdd[pars].res2 := 0;
  ParsersHEXAdd[pars].res3 := 0;
  ParsersHEXAdd[pars].res4 := 0;
  ParsersHEXAdd[pars].res5 := 0;
  ParsersHEXAdd[pars].res6 := 0;
  ParsersHEXAdd[pars].res7 := 0;
  ParsersHEXAdd[pars].res8 := 0;
  ParsersHEXAdd[pars].res9 := 0;
  ParsersHEXAdd[pars].res10 := 0;
  ParsersHEXAdd[pars].ColorRes1  := clBlack;
  ParsersHEXAdd[pars].ColorRes2  := clBlack;
  ParsersHEXAdd[pars].ColorRes3  := clBlack;
  ParsersHEXAdd[pars].ColorRes4  := clWhite;
  ParsersHEXAdd[pars].ColorRes5  := clWhite;
  ParsersHEXAdd[pars].ColorRes6  := clWhite;
  ParsersHEXAdd[pars].ColorRes7  := clWhite;
  ParsersHEXAdd[pars].ColorRes8  := clWhite;
  ParsersHEXAdd[pars].ColorBG_LOG  := clWhite;
  ParsersHEXAdd[pars].ColorBG_MG := clWhite;

  for i := 0 to 15 do
    begin
      for j := 0 to 15 do
        begin
          ParsersHEX[pars].SettParser[i].isUseByteCmp[j] := False;
          ParsersHEX[pars].SettParser[i].UseByteCmp[j] := 0;
        end;
      ParsersHEX[pars].SettParser[i].isUseParser := False;
      ParsersHEX[pars].SettParser[i].NameParam := '';
      ParsersHEX[pars].SettParser[i].NumUseBytes[0] := 0;
      ParsersHEX[pars].SettParser[i].NumUseBytes[1] := 0;
      ParsersHEX[pars].SettParser[i].NumUseBytes[2] := 0;
      ParsersHEX[pars].SettParser[i].NumUseBytes[3] := 0;
      ParsersHEX[pars].SettParser[i].TypeParam := uint8;
      ParsersHEX[pars].SettParser[i].Color := clWindow;
      ParsersHEX[pars].SettParser[i].isCheckLen := False;
      ParsersHEX[pars].SettParser[i].PacketLen  := 0;
      ParsersHEX[pars].SettParser[i].YMax := 99999999;
      ParsersHEX[pars].SettParser[i].YMin := -99999999;
      ParsersHEX[pars].SettParser[i].res1[0] := 0;
      ParsersHEX[pars].SettParser[i].res1[1] := 0;
      ParsersHEX[pars].SettParser[i].res1[2] := 0;
      ParsersHEX[pars].SettParser[i].res1[3] := 0;
      ParsersHEX[pars].SettParser[i].res1[4] := 0;
      ParsersHEX[pars].SettParser[i].res1[5] := 0;
      ParsersHEX[pars].SettParser[i].res1[6] := 0;
      ParsersHEX[pars].SettParser[i].res1[7] := 0;
      ParsersHEX[pars].SettParser[i].res1[8] := 0;
      ParsersHEX[pars].SettParser[i].res1[9] := 0;
      ParsersHEX[pars].SettParser[i].res1[10] := 0;
      ParsersHEX[pars].SettParser[i].res1[11] := 0;
      ParsersHEX[pars].SettParser[i].res1[12] := 0;
      ParsersHEX[pars].SettParser[i].res1[13] := 0;
      ParsersHEX[pars].SettParser[i].res1[14] := 0;
      ParsersHEX[pars].SettParser[i].res1[15] := $FFFFFF;//Integer(TColor.clWhite);
      ParsersHEX[pars].SettParser[i].res1[16] := 0;

      ParsersHEXAdd[pars].Sett1[i]  := 0;
      ParsersHEXAdd[pars].Sett2[i]  := 0;
      ParsersHEXAdd[pars].Sett3[i]  := 0;
      ParsersHEXAdd[pars].Sett4[i]  := 0;
      ParsersHEXAdd[pars].Sett5[i]  := 0;
      ParsersHEXAdd[pars].Sett6[i]  := 0;
      ParsersHEXAdd[pars].Sett7[i]  := 0;
      ParsersHEXAdd[pars].Sett8[i]  := 0;
      ParsersHEXAdd[pars].Sett9[i]  := 0;
      ParsersHEXAdd[pars].Sett10[i] := 0;

      ParsersHEXAdd[pars].isExpandOfChangeVal[i]  := false;
      ParsersHEXAdd[pars].isChangeColorOfVal[i]  := false;
      ParsersHEXAdd[pars].Sett13[i]  := false;
      ParsersHEXAdd[pars].Sett14[i]  := false;
      ParsersHEXAdd[pars].Sett15[i]  := false;
      ParsersHEXAdd[pars].Sett16[i]  := false;
      ParsersHEXAdd[pars].Sett17[i]  := true;
      ParsersHEXAdd[pars].Sett18[i]  := true;
      ParsersHEXAdd[pars].Sett19[i]  := true;
      ParsersHEXAdd[pars].Sett20[i]  := true;

      ParsersHEXAdd[pars].Sett21[i]  := clBlack;
      ParsersHEXAdd[pars].Sett22[i]  := clBlack;
      ParsersHEXAdd[pars].Sett23[i]  := clBlack;
      ParsersHEXAdd[pars].Sett24[i]  := clBlack;
      ParsersHEXAdd[pars].Sett25[i]  := clBlack;
      ParsersHEXAdd[pars].ColorOfChangeVal[i]  := clWhite;
      ParsersHEXAdd[pars].Sett27[i]  := clWhite;
      ParsersHEXAdd[pars].Sett28[i]  := clWhite;
      ParsersHEXAdd[pars].Sett29[i]  := clWhite;
      ParsersHEXAdd[pars].Sett30[i]  := clWhite;

      ParsersHEXAdd[pars].Sett31[i]  := 0;
      ParsersHEXAdd[pars].Sett32[i]  := 0;
      ParsersHEXAdd[pars].Sett33[i]  := 0;
      ParsersHEXAdd[pars].Sett34[i]  := 0;
      ParsersHEXAdd[pars].Sett35[i]  := 0;
      ParsersHEXAdd[pars].Sett36[i]  := 0;
      ParsersHEXAdd[pars].Sett37[i]  := 0;
      ParsersHEXAdd[pars].Sett38[i]  := 0;
      ParsersHEXAdd[pars].Sett39[i]  := 0;
      ParsersHEXAdd[pars].Sett40[i]  := 0;
    end;
end;


procedure SetVisStartTimeStat;
begin
  FormParser.edt3.Text := FormatDateTime('yyyy', TimeStartStat);
  FormParser.edt4.Text := FormatDateTime('mm',   TimeStartStat);
  FormParser.edt5.Text := FormatDateTime('dd',   TimeStartStat);
  FormParser.edt6.Text := FormatDateTime('hh',   TimeStartStat);
  FormParser.edt7.Text := FormatDateTime('nn',   TimeStartStat);
  FormParser.edt8.Text := FormatDateTime('ss',   TimeStartStat);
end;

procedure SetVisStopTimeStat;
begin
  FormParser.edt10.Text := FormatDateTime('yyyy', TimeStopStat);
  FormParser.edt11.Text := FormatDateTime('mm',   TimeStopStat);
  FormParser.edt12.Text := FormatDateTime('dd',   TimeStopStat);
  FormParser.edt13.Text := FormatDateTime('hh',   TimeStopStat);
  FormParser.edt14.Text := FormatDateTime('nn',   TimeStopStat);
  FormParser.edt15.Text := FormatDateTime('ss',   TimeStopStat);
end;



procedure TFormParser.FormCreate(Sender: TObject);
var
  i, j, pars : Integer;
  CfgParserFile1 : file of TCfgParser1;
  CfgParserFile2 : file of TCfgParser2;
  CfgParserFile3 : file of TCfgParser3;
begin
  isEnUpdTimeStartStop := True;
  isSendWinLog := False;
  isUseAllList := False;
  isSyncBuffers := false;
  for i := 1 to 200 do
    For j := 0 to 15 do
      begin
        isOpenMsgEventEn[j, i] := True;
        Counts[j, i] := 0;
      end;
  isEnOutCurrenVal := True;
  isOutLogRes  := False;    
  isLogOnlyEvents := False;
  isChart      := False;
  isMultiGraph := False;
  lst1.Visible := False;
  isSyncMacros := false;
  isMaxWin     := False;
  CntStrInLog  := 0;
  isOutMathGraph := False;
  NumParser := 1;
  CntPacket := 0;
  isWriteLog := False;
  LogName    := '';
  isGraph    := False;
  isPauseGraph := False;
  iDisplayMinMax := 16;
  SelectParamForGraph := 0;

  isUseMath := False;
  AssignFile(CfgParserFile1, ExtractFilePath(Application.ExeName) +  NameFileCfg1);
  AssignFile(CfgParserFile2, ExtractFilePath(Application.ExeName) +  NameFileCfg2);
  AssignFile(CfgParserFile3, ExtractFilePath(Application.ExeName) +  NameFileCfg3);


  Bt19.Font.Name:='Symbol';
  Bt19.Caption:=chr($AF);

  isPauseLog := False;
  Bt20.Caption := '||';
  Bt20.Enabled := False;
  Bt20.Hint := 'Pause logging to file';

  if FileExists(ExtractFilePath(Application.ExeName) + NameFileCfg1) and not FileExists(ExtractFilePath(Application.ExeName) + NameFileCfg2) then
    begin
      Reset(CfgParserFile1);
      Read(CfgParserFile1, CfgParser1);
      CloseFile(CfgParserFile1);
      DeleteFile(ExtractFilePath(Application.ExeName) + NameFileCfg1);

      for pars := 1 to 200 do
        begin
          ClearParser(pars);
        end;


      for i := 1 to 100 do
        ParsersHEX[i] := CfgParser1.ParserHEX[i];

      CfgParser3.isSyncMacros  := CfgParser1.isSyncMacros;
      CfgParser3.NumParserLast := CfgParser1.NumParserLast;

      for i := 1 to 200 do
        begin
          CfgParser3.ParserHEX[i]    := ParsersHEX[i];
          CfgParser3.ParserHEXAdd[i] := ParsersHEXAdd[i];
        end;

      isSyncMacros := CfgParser3.isSyncMacros;
      NumParser    := CfgParser3.NumParserLast;

      ReWrite(CfgParserFile3);
      ReSet(CfgParserFile3);
      Write(CfgParserFile3, CfgParser3);
      CloseFile(CfgParserFile3);
    end
  else if FileExists(ExtractFilePath(Application.ExeName) + NameFileCfg2) and (Get_File_Size(ExtractFilePath(Application.ExeName) + NameFileCfg2, True) > 0) and not FileExists(ExtractFilePath(Application.ExeName) + NameFileCfg3) then
    begin
      Reset(CfgParserFile2);
      Read(CfgParserFile2, CfgParser2);
      CloseFile(CfgParserFile2);

      DeleteFile(ExtractFilePath(Application.ExeName) + NameFileCfg2);

      for i := 1 to 200 do
        begin
          ClearParser(i);
        end;

      CfgParser3.isSyncMacros := CfgParser2.isSyncMacros;
      CfgParser3.NumParserLast := CfgParser2.NumParserLast;

      for i := 1 to 200 do
        begin
          CfgParser3.ParserHEX[i] := CfgParser2.ParserHEX[i];
          CfgParser3.ParserHEXAdd[i] := ParsersHEXAdd[i];
          ParsersHEX[i] := CfgParser3.ParserHEX[i];
        end;

      isSyncMacros := CfgParser3.isSyncMacros;
      NumParser := CfgParser3.NumParserLast;

      ReWrite(CfgParserFile3);
      ReSet(CfgParserFile3);
      Write(CfgParserFile3, CfgParser3);
      CloseFile(CfgParserFile3);
    end
  else if FileExists(ExtractFilePath(Application.ExeName) + NameFileCfg3) and (Get_File_Size(ExtractFilePath(Application.ExeName) + NameFileCfg3, True) > 0) then
    begin
      Reset(CfgParserFile3);     
      Read(CfgParserFile3, CfgParser3);
      CloseFile(CfgParserFile3);


      for i := 1 to 200 do
        begin
          ParsersHEX[i]    := CfgParser3.ParserHEX[i];
          ParsersHEXAdd[i] := CfgParser3.ParserHEXAdd[i];
        end;

      isSyncMacros := CfgParser3.isSyncMacros;
      NumParser := CfgParser3.NumParserLast;
    end
  else
    begin
      for pars := 1 to 200 do
        begin
          ClearParser(pars);
        end;

      for i := 1 to 200 do
        begin
          CfgParser3.ParserHEX[i]    := ParsersHEX[i];
          CfgParser3.ParserHEXAdd[i] := ParsersHEXAdd[i];
        end;

      CfgParser3.isSyncMacros := isSyncMacros;
      CfgParser3.NumParserLast := NumParser;

      ReWrite(CfgParserFile3);
      ReSet(CfgParserFile3);
      Write(CfgParserFile3, CfgParser3);
      CloseFile(CfgParserFile3);
    end;



  isEnSave := True;

  CheckBox1.Checked := isSyncMacros;

  for i := 0 to 16 do
    begin
      SettParserCopy.isUseByteCmp[i] := False;
      SettParserCopy.UseByteCmp[i] := 0;
      SettParserCopy.res1[i] := 0;
    end;
  SettParserCopy.isUseParser := False;
  SettParserCopy.NameParam := '';
  SettParserCopy.NumUseBytes[0] := 0;
  SettParserCopy.NumUseBytes[1] := 0;
  SettParserCopy.NumUseBytes[2] := 0;
  SettParserCopy.NumUseBytes[3] := 0;
  SettParserCopy.TypeParam := int8;
  SettParserCopy.isCheckLen := False;
  SettParserCopy.PacketLen := 0;
  SettParserCopy.Color := clWindow;
  SettParserCopy.YMax := 1;
  SettParserCopy.YMin := -1;

  mmoInput.Color := FormParser.Color;
  MsgNew := '';
  MsgOld := '';

  VisParser[ 0].BtSett := Bt1;
  VisParser[ 1].BtSett := Bt2;
  VisParser[ 2].BtSett := Bt3;
  VisParser[ 3].BtSett := Bt4;
  VisParser[ 4].BtSett := Bt5;
  VisParser[ 5].BtSett := Bt6;
  VisParser[ 6].BtSett := Bt7;
  VisParser[ 7].BtSett := Bt8;
  VisParser[ 8].BtSett := Bt9;
  VisParser[ 9].BtSett := Bt10;
  VisParser[10].BtSett := Bt11;
  VisParser[11].BtSett := Bt12;
  VisParser[12].BtSett := Bt13;
  VisParser[13].BtSett := Bt14;
  VisParser[14].BtSett := Bt15;
  VisParser[15].BtSett := Bt16;

  VisParser[ 0].VName := req1;
  VisParser[ 1].VName := req4;
  VisParser[ 2].VName := req7;
  VisParser[ 3].VName := req10;
  VisParser[ 4].VName := req13;
  VisParser[ 5].VName := req16;
  VisParser[ 6].VName := req19;
  VisParser[ 7].VName := req22;
  VisParser[ 8].VName := req25;
  VisParser[ 9].VName := req28;
  VisParser[10].VName := req31;
  VisParser[11].VName := req34;
  VisParser[12].VName := req37;
  VisParser[13].VName := req40;
  VisParser[14].VName := req43;
  VisParser[15].VName := req46;

  VisParser[ 0].VTime := req2;
  VisParser[ 1].VTime := req5;
  VisParser[ 2].VTime := req8;
  VisParser[ 3].VTime := req11;
  VisParser[ 4].VTime := req14;
  VisParser[ 5].VTime := req17;
  VisParser[ 6].VTime := req20;
  VisParser[ 7].VTime := req23;
  VisParser[ 8].VTime := req26;
  VisParser[ 9].VTime := req29;
  VisParser[10].VTime := req32;
  VisParser[11].VTime := req35;
  VisParser[12].VTime := req38;
  VisParser[13].VTime := req41;
  VisParser[14].VTime := req44;
  VisParser[15].VTime := req47;

  VisParser[ 0].VValue := req3;
  VisParser[ 1].VValue := req6;
  VisParser[ 2].VValue := req9;
  VisParser[ 3].VValue := req12;
  VisParser[ 4].VValue := req15;
  VisParser[ 5].VValue := req18;
  VisParser[ 6].VValue := req21;
  VisParser[ 7].VValue := req24;
  VisParser[ 8].VValue := req27;
  VisParser[ 9].VValue := req30;
  VisParser[10].VValue := req33;
  VisParser[11].VValue := req36;
  VisParser[12].VValue := req39;
  VisParser[13].VValue := req42;
  VisParser[14].VValue := req45;
  VisParser[15].VValue := req48;

  VisParser[ 0].VHex := txt2;
  VisParser[ 1].VHex := txt3;
  VisParser[ 2].VHex := txt4;
  VisParser[ 3].VHex := txt5;
  VisParser[ 4].VHex := txt6;
  VisParser[ 5].VHex := txt7;
  VisParser[ 6].VHex := txt8;
  VisParser[ 7].VHex := txt9;
  VisParser[ 8].VHex := txt10;
  VisParser[ 9].VHex := txt11;
  VisParser[10].VHex := txt12;
  VisParser[11].VHex := txt13;
  VisParser[12].VHex := txt14;
  VisParser[13].VHex := txt15;
  VisParser[14].VHex := txt16;
  VisParser[15].VHex := txt17;

  VisParser[ 0].VSelParam := rb1;
  VisParser[ 1].VSelParam := rb2;
  VisParser[ 2].VSelParam := rb3;
  VisParser[ 3].VSelParam := rb4;
  VisParser[ 4].VSelParam := rb5;
  VisParser[ 5].VSelParam := rb6;
  VisParser[ 6].VSelParam := rb7;
  VisParser[ 7].VSelParam := rb8;
  VisParser[ 8].VSelParam := rb9;
  VisParser[ 9].VSelParam := rb10;
  VisParser[10].VSelParam := rb11;
  VisParser[11].VSelParam := rb12;
  VisParser[12].VSelParam := rb13;
  VisParser[13].VSelParam := rb14;
  VisParser[14].VSelParam := rb15;
  VisParser[15].VSelParam := rb16;

  VisParser[ 0].BTCopy := btn3;
  VisParser[ 1].BTCopy := btn4;
  VisParser[ 2].BTCopy := btn5;
  VisParser[ 3].BTCopy := btn6;
  VisParser[ 4].BTCopy := btn7;
  VisParser[ 5].BTCopy := btn8;
  VisParser[ 6].BTCopy := btn9;
  VisParser[ 7].BTCopy := btn10;
  VisParser[ 8].BTCopy := btn11;
  VisParser[ 9].BTCopy := btn12;
  VisParser[10].BTCopy := btn13;
  VisParser[11].BTCopy := btn14;
  VisParser[12].BTCopy := btn15;
  VisParser[13].BTCopy := btn16;
  VisParser[14].BTCopy := btn17;
  VisParser[15].BTCopy := btn18;

  VisParser[ 0].BTPaste := btn19;
  VisParser[ 1].BTPaste := btn20;
  VisParser[ 2].BTPaste := btn21;
  VisParser[ 3].BTPaste := btn22;
  VisParser[ 4].BTPaste := btn23;
  VisParser[ 5].BTPaste := btn24;
  VisParser[ 6].BTPaste := btn25;
  VisParser[ 7].BTPaste := btn26;
  VisParser[ 8].BTPaste := btn27;
  VisParser[ 9].BTPaste := btn28;
  VisParser[10].BTPaste := btn29;
  VisParser[11].BTPaste := btn30;
  VisParser[12].BTPaste := btn31;
  VisParser[13].BTPaste := btn32;
  VisParser[14].BTPaste := btn33;
  VisParser[15].BTPaste := btn34;

  VisParser[ 0].BTDel := Bt22;
  VisParser[ 1].BTDel := Bt23;
  VisParser[ 2].BTDel := Bt24;
  VisParser[ 3].BTDel := Bt25;
  VisParser[ 4].BTDel := Bt26;
  VisParser[ 5].BTDel := Bt27;
  VisParser[ 6].BTDel := Bt28;
  VisParser[ 7].BTDel := Bt29;
  VisParser[ 8].BTDel := Bt30;
  VisParser[ 9].BTDel := Bt31;
  VisParser[10].BTDel := Bt32;
  VisParser[11].BTDel := Bt33;
  VisParser[12].BTDel := Bt34;
  VisParser[13].BTDel := Bt35;
  VisParser[14].BTDel := Bt36;
  VisParser[15].BTDel := Bt37;

  VisParser[ 0].BTGraph := Bt38;
  VisParser[ 1].BTGraph := Bt39;
  VisParser[ 2].BTGraph := Bt40;
  VisParser[ 3].BTGraph := Bt41;
  VisParser[ 4].BTGraph := Bt42;
  VisParser[ 5].BTGraph := Bt43;
  VisParser[ 6].BTGraph := Bt44;
  VisParser[ 7].BTGraph := Bt45;
  VisParser[ 8].BTGraph := Bt46;
  VisParser[ 9].BTGraph := Bt47;
  VisParser[10].BTGraph := Bt48;
  VisParser[11].BTGraph := Bt49;
  VisParser[12].BTGraph := Bt50;
  VisParser[13].BTGraph := Bt51;
  VisParser[14].BTGraph := Bt52;
  VisParser[15].BTGraph := Bt53;

  VisParser[ 0].BTGraphClr := Bt54;
  VisParser[ 1].BTGraphClr := Bt55;
  VisParser[ 2].BTGraphClr := Bt56;
  VisParser[ 3].BTGraphClr := Bt57;
  VisParser[ 4].BTGraphClr := Bt58;
  VisParser[ 5].BTGraphClr := Bt59;
  VisParser[ 6].BTGraphClr := Bt60;
  VisParser[ 7].BTGraphClr := Bt61;
  VisParser[ 8].BTGraphClr := Bt62;
  VisParser[ 9].BTGraphClr := Bt63;
  VisParser[10].BTGraphClr := Bt64;
  VisParser[11].BTGraphClr := Bt65;
  VisParser[12].BTGraphClr := Bt66;
  VisParser[13].BTGraphClr := Bt67;
  VisParser[14].BTGraphClr := Bt68;
  VisParser[15].BTGraphClr := Bt69;

  VisParser[ 0].BTChart := Button4;
  VisParser[ 1].BTChart := Button5;
  VisParser[ 2].BTChart := Button7;
  VisParser[ 3].BTChart := Button6;
  VisParser[ 4].BTChart := Button8;
  VisParser[ 5].BTChart := Button9;
  VisParser[ 6].BTChart := Button10;
  VisParser[ 7].BTChart := Button11;
  VisParser[ 8].BTChart := Button12;
  VisParser[ 9].BTChart := Button13;
  VisParser[10].BTChart := Button14;
  VisParser[11].BTChart := Button15;
  VisParser[12].BTChart := Button16;
  VisParser[13].BTChart := Button17;
  VisParser[14].BTChart := Button18;
  VisParser[15].BTChart := Button19;

  VisParser[ 0].VCount := ctxt8;
  VisParser[ 1].VCount := ctxt9;
  VisParser[ 2].VCount := ctxt10;
  VisParser[ 3].VCount := ctxt11;
  VisParser[ 4].VCount := ctxt12;
  VisParser[ 5].VCount := ctxt13;
  VisParser[ 6].VCount := ctxt14;
  VisParser[ 7].VCount := ctxt15;
  VisParser[ 8].VCount := ctxt16;
  VisParser[ 9].VCount := ctxt17;
  VisParser[10].VCount := ctxt18;
  VisParser[11].VCount := ctxt19;
  VisParser[12].VCount := ctxt20;
  VisParser[13].VCount := ctxt21;
  VisParser[14].VCount := ctxt22;
  VisParser[15].VCount := ctxt23;

  for i := 0 to 15 do
    begin
      VisParser[i].BTGraphClr.Tag := i;
      VisParser[i].BTGraphClr.OnClick := BtGraphClrClick;

      VisParser[i].BTGraph.Tag := i;
      VisParser[i].BTChart.Tag := i;
      VisParser[i].BTChart.OnClick := BtChartOutClick;

      VisParser[i].BTGraph.OnClick := BtGraphOutClick;
      VisParser[i].BTDel.Tag := i;
      VisParser[i].BTDel.OnClick := BtDelClick;
      VisParser[i].BTCopy.Tag := i;
      VisParser[i].BTCopy.OnClick := BTCopyClick;
      VisParser[i].BTPaste.OnClick := BTPasteClick;
      VisParser[i].BTPaste.Tag := i;
      VisParser[i].BtSett.Caption := IntToStr(i+1);
      VisParser[i].VTime.Caption := '---';
      VisParser[i].VValue.Caption := '---';
      VisParser[i].VHex.Caption := '---';

      VisParser[i].VValue.Hint := '---';
      VisParser[i].BtSett.Tag := i;
      VisParser[i].VName.Tag := i;
      VisParser[i].VTime.Tag := i;
      VisParser[i].VValue.Tag := i;
      VisParser[i].BtSett.OnClick := BtParserClick;
      VisParser[i].VName.Caption := ParsersHEX[1].SettParser[i].NameParam;
      VisParser[i].VSelParam.Tag := i;
      VisParser[i].VSelParam.OnClick := SelParamClick;
      VisParser[i].VValue.OnClick := ValueClick;
      VisParser[i].VCount.Caption := '';
      VisParser[i].VCount.Tag := i;

      VisParser[i].VCount.OnDblClick := CountDblClick;
      VisParser[i].VName.OnDblClick := NameDblClick;


      for pars := 1 to 200 do
        begin
          MinValD[i, pars] := 2147483647;
          MaxValD[i, pars] := -2147483647;
        end;
      MinValG[i] := 2147483647;
      MaxValG[i] := -2147483647;

   end;

   //VisParser[0].VSelParam.Checked := True;

   SetCurParser();
   NumParserForGraph := NumParser;
   rb18.Color := FormParser.Color;
   rb18.Checked := True;
   rb18.Hint  := 'Data buffering enabled for list ' + IntToStr(NumParser) +' [ ' + ParsersHEX[NumParser].ParserName + ' ]';

   /////////////////////////////////////////////////// TEST
   //Parser.SettParser[0].isUseParser := True;
   //Parser.SettParser[0].NumUseBytes[0] := 5;
   //Parser.SettParser[0].NumUseBytes[1] := 6;
   //Parser.SettParser[0].NumUseBytes[2] := 7;
   //Parser.SettParser[0].NumUseBytes[3] := 8;
   //Parser.SettParser[0].TypeParam := int8;
   //Parser.SettParser[0].Color := clDefault;

   //Parser.SettParser[0].isUseByteCmp[0] := true;
   //Parser.SettParser[0].UseByteCmp[0] := $33;

   //Parser.SettParser[0].isUseByteCmp[2] := true;
   //Parser.SettParser[0].UseByteCmp[2] := $55;
   ////////////////////////////////////////////////////

  TSStartYear  := 1970;
  TSStartMonth := 1;
  TSStartDay   := 1;
  TSStartHour  := 0;
  TSStartMin   := 0;
  TSStartSec   := 0;
  TimeStartStat := EncodeDateTime(TSStartYear,TSStartMonth,TSStartDay,TSStartHour,TSStartMin,TSStartSec,0);

  TSStopYear  := 2070;
  TSStopMonth := 1;
  TSStopDay   := 1;
  TSStopHour  := 0;
  TSStopMin   := 0;
  TSStopSec   := 0;
  TimeStopStat := EncodeDateTime(TSStopYear,TSStopMonth,TSStopDay,TSStopHour,TSStopMin,TSStopSec,0);
  SetVisStartTimeStat;
  SetVisStopTimeStat;
end;


procedure TFormParser.BtParserClick(Sender: TObject);
var
  i, index : Integer;
begin
  (Sender as TButton).Enabled := False;
  index := (Sender as TButton).Tag;
  FormSettParser.SettParser := ParsersHEX[NumParser].SettParser[index];

  FormSettParser.SettParserAdd.isExpandOfChangeVal := ParsersHEXAdd[NumParser].isExpandOfChangeVal[index];
  FormSettParser.SettParserAdd.isChangeColorOfVal  := ParsersHEXAdd[NumParser].isChangeColorOfVal[index];
  FormSettParser.SettParserAdd.ColorOfChangeVal    := ParsersHEXAdd[NumParser].ColorOfChangeVal[index];

  FormSettParser.SettParserCopy := SettParserCopy;
  FormSettParser.SettParserAddCopy := SettParserAddCopy;



  VisParser[index].VHex.Color := clBlack;
  VisParser[index].VHex.Font.Color := clWhite;

  FormSettParser.ShowModal();

  VisParser[index].VHex.Color := FormParser.Color;
  VisParser[index].VHex.Font.Color := clBlack;

  if FormSettParser.IsCopyParser then
    begin
      SettParserCopy := FormSettParser.SettParserCopy;
      SettParserAddCopy := FormSettParser.SettParserAddCopy;
    end;


  if FormSettParser.IsSave then
    begin
      strLogFile[index] := '';
      ParsersHEX[NumParser].SettParser[index] := FormSettParser.SettParser;
      isOpenMsgEventEn[index, NumParser] := true;

      ParsersHEXAdd[NumParser].isExpandOfChangeVal[index] := FormSettParser.SettParserAdd.isExpandOfChangeVal;
      ParsersHEXAdd[NumParser].isChangeColorOfVal[index]  := FormSettParser.SettParserAdd.isChangeColorOfVal;
      ParsersHEXAdd[NumParser].ColorOfChangeVal[index]    := FormSettParser.SettParserAdd.ColorOfChangeVal;
      
      if ParsersHEX[NumParser].SettParser[index].isUseParser then
        begin
          VisParser[index].BtSett.Hint := GetPortName(TTypeSrcData(ParsersHEX[NumParser].SettParser[index].res1[9] and $FF));
          VisParser[index].BtSett.ShowHint := True;

          VisParser[index].VName.Enabled := True;
          VisParser[index].VTime.Enabled := True;
          VisParser[index].VValue.Enabled := True;

          VisParser[index].VName.Caption := ParsersHEX[NumParser].SettParser[index].NameParam;
          VisParser[index].VTime.Caption := 'Wait...';
          VisParser[index].VValue.Caption := 'Wait...';
          VisParser[index].VHex.Caption := 'Wait...';

          VisParser[index].VName.Color := ParsersHEX[NumParser].SettParser[index].Color;
          VisParser[index].VTime.Color := ParsersHEX[NumParser].SettParser[index].Color;
          VisParser[index].VValue.Color := ParsersHEX[NumParser].SettParser[index].Color;
          VisParser[index].VValue.Hint := '';
        end
      else
        begin
          VisParser[index].BtSett.ShowHint := False;
          VisParser[index].VName.Enabled := False;
          VisParser[index].VTime.Enabled := False;
          VisParser[index].VValue.Enabled := False;

          VisParser[index].VName.Caption := ParsersHEX[NumParser].SettParser[index].NameParam;
          VisParser[index].VTime.Caption := '';
          VisParser[index].VValue.Caption := '';
          VisParser[index].VHex.Caption := '';


          VisParser[index].VName.Color := FormParser.Color;
          VisParser[index].VTime.Color := FormParser.Color;
          VisParser[index].VValue.Color := FormParser.Color;
        end;

     VisParser[index].VCount.Hint := ParsersHEX[NumParser].SettParser[index].NameParam;

     if not ParsersHEXAdd[NumParser].Sett17[0] then
       begin
         VisParser[index].VName.Color := FormParser.Color;
         VisParser[index].VTime.Color := FormParser.Color;
         VisParser[index].VValue.Color := FormParser.Color;
         VisParser[index].VValue.Caption := '----------';
         VisParser[index].VTime.Caption := '--:--:--:---';
       end;




     //for i := 1 to 200 do
     //  begin
     //    CfgParser3.ParserHEX[i] := ParsersHEX[i];
     //    CfgParser3.ParserHEXAdd[i] := ParsersHEXAdd[i];
     //  end;
     //CfgParser3.isSyncMacros := isSyncMacros;
     //CfgParser3.NumParserLast := NumParser;

     FormParser.Bt70.Enabled := True;
   end;

  (Sender as TButton).Enabled := True;
  mmoInput.SetFocus();
end;

procedure TFormParser.FormActivate(Sender: TObject);
  var i : Integer;
  begin
    isEnOutCurrenVal := True;
    btn42.Enabled := False;
    for i := 0 to 15 do
      begin
        strLogFile[i] := '';
      end;

    lst1.Visible := False;
    CntPacket := 0;
    //SetCurParser();
  end;

procedure TFormParser.CheckBox1Click(Sender: TObject);
begin
  isSyncMacros := (Sender as TCheckBox).Checked;
end;

procedure TFormParser.Edt1Change(Sender: TObject);
begin
  ParsersHEX[NumParser].ParserName := (Sender as TEdit).Text;
  if NumParserForGraph = NumParser then
    rb18.Hint  := 'Data buffering enabled for list ' + IntToStr(NumParser) +' [ ' + ParsersHEX[NumParser].ParserName + ' ]';

end;

procedure TFormParser.Bt17Click(Sender: TObject);
begin
  if NumParser > 1 then
    Dec(NumParser);
  SetCurParser();
  Bt70.Enabled := True;
end;

procedure TFormParser.Bt18Click(Sender: TObject);
begin
  if NumParser < 200 then
    Inc(NumParser);

  SetCurParser();
  Bt70.Enabled := True;
end;

procedure TFormParser.Bt19Click(Sender: TObject);
var
  i : Cardinal;
begin
  if not lst1.Visible then
    begin
      lst1.Clear();
      for i:= 1 to 200 do
        lst1.Items.Add('' + Format('%03d', [i]) + '.' + ParsersHEX[i].ParserName);
      lst1.Visible := True;
      lst1.SetFocus();
    end
  else
    lst1.Visible := False;
end;

procedure TFormParser.lst1DblClick(Sender: TObject);
begin
  NumParser := (Sender as TListBox).ItemIndex + 1;
  SetCurParser();
  lst1.Visible := False;
end;

procedure TFormParser.lst1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      NumParser := (Sender as TListBox).ItemIndex + 1;
      SetCurParser();
      Edt1.SetFocus();
      lst1.Visible := False;
    end;
end;

procedure TFormParser.Edt1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
    i : Cardinal;
begin
  if Key = VK_DOWN then
    begin
      lst1.Clear();
      for i:= 1 to 200 do
        lst1.Items.Add('' + Format('%03d', [i]) + '.' + ParsersHEX[i].ParserName);
      lst1.Visible := True;
      lst1.SetFocus();
    end;
end;

procedure TFormParser.lst1Exit(Sender: TObject);
begin
  lst1.Visible := False;
end;

procedure TFormParser.BtLOGClick(Sender: TObject);
begin
  isPauseLog := False;
  Bt20.Caption := '||';
  Bt20.Hint := 'Pause logging to file';

  CntStrInLog := 0;
  ctxt2.Caption := 'Lines in the log: ' + IntToStr(CntStrInLog);

  if not isWriteLog then
    begin
      if dlgOpenLogOpen.Execute then
        begin
          if dlgOpenLogOpen.FileName <> null then
            begin
              AssignFile(Log, dlgOpenLogOpen.FileName);
              Rewrite(Log);
              isWriteLog := True;
              LogName := dlgOpenLogOpen.FileName;
              req50.Caption := 'LOG: ' +  LogName;
              (Sender as TButton).Caption := 'Stop LOG in file';
              Bt20.Enabled := True;
            end;
        end;
    end
  else
    begin
      isWriteLog := False;
      CloseFile(Log);
      req50.Caption := '';
      (Sender as TButton).Caption := 'Start LOG in file';
      LogName := '';
      Bt20.Enabled := False;
    end;
end;



procedure TFormParser.SelParamClick(Sender: TObject);
var
  strProc : string;
  i : Integer;
begin
  SelectParamForGraph := (Sender as TRadioButton).Tag;
  Str((100 * DGiAct[SelectParamForGraph] / MAX_CNT_DG):3:2,  strProc);
  reqtxt1.Caption := 'Buf ' + IntToStr(SelectParamForGraph + 1) +' Fill: ' + strProc + '%';

  for i := 0 to 15 do
    VisParser[i].BTGraphClr.Enabled := VisParser[i].VSelParam.Checked;

  req51.Color := FormParser.Color;
  iDisplayMinMax := SelectParamForGraph;
  req51.Caption := ' ' +IntToStr(iDisplayMinMax + 1)+'. ' + ParsersHEX[NumParser].SettParser[iDisplayMinMax].NameParam + '  Min: --- Max: ---';
  btn1.Enabled := True;
  btn1.Hint := 'Reset Min-Max [ ' + ParsersHEX[NumParser].SettParser[iDisplayMinMax].NameParam + ' ]';
  reqtxt1.ShowHint := True;
end;

procedure TFormParser.Bt20Click(Sender: TObject);
begin
  if not isPauseLog then
    begin
      isPauseLog := true;
      (Sender as TButton).Caption := '>';
      (Sender as TButton).Hint := 'Resume logging to file';
    end
  else
    begin
      isPauseLog := false;
      (Sender as TButton).Caption := '||';
      (Sender as TButton).Hint := 'Pause logging to file';
    end;
end;

procedure TFormParser.FormDeactivate(Sender: TObject);
begin
  isMaxWin := False;
  isEnOutCurrenVal := True;
  btn42.Enabled := False;
  //if Form1.WindowState = wsMaximized then
  //  Form1.WindowState := wsNormal;
end;

procedure TFormParser.tmrResetExpandTimer(Sender: TObject);
begin
  Form1.WindowState := wsNormal;
  (Sender as TTimer).Enabled := False;

end;

procedure TFormParser.req51Click(Sender: TObject);
begin
  iDisplayMinMax := 16;
  req51.Caption := ' Select the controlled parameter by clicking on its value';
  req51.Color := FormParser.Color;
  btn1.Enabled := False;
end;

procedure TFormParser.ValueClick(Sender: TObject);
begin
  req51.Color := FormParser.Color;
  iDisplayMinMax := (Sender as TStaticText).Tag;
  req51.Caption := ' ' +IntToStr(iDisplayMinMax + 1)+'. ' + ParsersHEX[NumParser].SettParser[iDisplayMinMax].NameParam + '  Min: --- Max: ---';
  btn1.Enabled := True;
  btn1.Hint := 'Reset Min-Max [ ' + ParsersHEX[NumParser].SettParser[iDisplayMinMax].NameParam + ' ]';
end;

procedure TFormParser.btn1Click(Sender: TObject);
begin
  if iDisplayMinMax < 16 then
    begin
      MinValD[iDisplayMinMax, NumParser] := 2147483647;
      MaxValD[iDisplayMinMax, NumParser] := -2147483647;
      MinValG[iDisplayMinMax] := 2147483647;
      MaxValG[iDisplayMinMax] := -2147483647;

      req51.Caption := ' ' + IntToStr(iDisplayMinMax + 1)+'. ' + ParsersHEX[NumParser].SettParser[iDisplayMinMax].NameParam + '  Min: --- Max: ---';
    end
  else
    req51.Caption := ' Select the controlled parameter by clicking on its value';

  req51.Color := FormSettParser.Color;
end;



procedure TFormParser.btn2Click(Sender: TObject);
  var
    i, Param, pars : Cardinal;
  begin
    for Param := 0 to 15 do
      begin
        for i := 0 to (MAX_CNT_DG - 1) do
          begin
            DataGraphBuf[Param].DataGraph[i].val := 0;
            DataGraphBuf[Param].DataGraph[i].dt := 0;
          end;
        DGiAct[Param] := 0;
        VisParser[Param].BTGraphClr.Enabled := False;
        VisParser[Param].VSelParam.Checked  := False;
        For pars := 1 to 200 do
          begin
            MaxValD[Param, pars]:= -2147483647;
            MinValD[Param, pars]:= 2147483647;
          end;
        MaxValG[Param]:= -2147483647;
        MinValG[Param]:= 2147483647;
        VisParser[Param].BTGraphClr.Caption := '';
      end;
    reqtxt1.Caption := '';
    SelectParamForGraph := 16;
  end;

procedure TFormParser.BTCopyClick(Sender: TObject);
var
  index : integer;
begin
  index := (Sender as TButton).Tag;
  SettParserCopy := ParsersHEX[NumParser].SettParser[index];
  SettParserAddCopy.isExpandOfChangeVal := ParsersHEXAdd[NumParser].isExpandOfChangeVal[index];
  SettParserAddCopy.isChangeColorOfVal  := ParsersHEXAdd[NumParser].isChangeColorOfVal[index];
  SettParserAddCopy.ColorOfChangeVal    := ParsersHEXAdd[NumParser].ColorOfChangeVal[index];
end;

procedure TFormParser.BTPasteClick(Sender: TObject);
var
  index : Integer;
begin
  index := (Sender as TButton).Tag;
  ParsersHEX[NumParser].SettParser[index] := SettParserCopy;

  ParsersHEXAdd[NumParser].isExpandOfChangeVal[index] := SettParserAddCopy.isExpandOfChangeVal;
  ParsersHEXAdd[NumParser].isChangeColorOfVal[index]  := SettParserAddCopy.isChangeColorOfVal;
  ParsersHEXAdd[NumParser].ColorOfChangeVal[index]    := SettParserAddCopy.ColorOfChangeVal;


  isOpenMsgEventEn[index, NumParser] := true;
  UpdParser(index, false);
  Bt70.Enabled := True;
end;

procedure TFormParser.BtDelClick(Sender: TObject);
  var
    index : Integer;
begin
  index := (Sender as TButton).Tag;
  ParsersHEX[NumParser].SettParser[index].isUseParser := false;
  UpdParser(index, true);
end;


procedure TFormParser.BtChartOutClick(Sender: TObject);
var
  i : Integer;
begin
  SelectParamForGraph := (Sender as TButton).Tag;
  if ParsersHEX[NumParser].SettParser[SelectParamForGraph].isUseParser then
    begin
      //FormGraph.YMin := ParsersHEX[NumParser].SettParser[SelectParamForGraph].YMin;
      //FormGraph.YMax := ParsersHEX[NumParser].SettParser[SelectParamForGraph].YMax;
      frmBarChart.WindowState := wsNormal;
      frmBarChart.Color := FormParser.Color;
      frmBarChart.Caption := 'Parameter histogram [ ' + ParsersHEX[NumParser].SettParser[SelectParamForGraph].NameParam + ' ]';
      frmBarChart.pDG := @DataGraphBuf[SelectParamForGraph].DataGraph;
      frmBarChart.DGiAct := @DGiAct[SelectParamForGraph];
      //FormGraph.MaxVal := @MaxValG[SelectParamForGraph];
      //FormGraph.MinVal := @MinValG[SelectParamForGraph];
      frmBarChart.CenterVal := ParsersHEX[NumParser].SettParser[SelectParamForGraph].res1[16];//ChartLastCVal[NumParser, SelectParamForGraph];
      frmBarChart.ShiftStep := (ParsersHEX[NumParser].SettParser[SelectParamForGraph].res1[13] shr 16) and $FF;  //ChartLastShift[NumParser, SelectParamForGraph];
      isChart := True;
      frmBarChart.isBuf := NumParserForGraph = NumParser;


      VisParser[SelectParamForGraph].VHex.Color := clBlack;
      VisParser[SelectParamForGraph].VHex.Font.Color := clWhite;
      frmBarChart.ShowModal();
      VisParser[SelectParamForGraph].VHex.Color := FormParser.Color;
      VisParser[SelectParamForGraph].VHex.Font.Color := clBlack;





      isChart := False;
      if (frmBarChart.CenterVal <= 2147483648) and (frmBarChart.CenterVal >= -2147483647) then
        ParsersHEX[NumParser].SettParser[SelectParamForGraph].res1[16] := frmBarChart.CenterVal;

      ParsersHEX[NumParser].SettParser[SelectParamForGraph].res1[13] := ParsersHEX[NumParser].SettParser[SelectParamForGraph].res1[13] and $00FFFF;
      ParsersHEX[NumParser].SettParser[SelectParamForGraph].res1[13] := ParsersHEX[NumParser].SettParser[SelectParamForGraph].res1[13] or (frmBarChart.ShiftStep shl 16);
      //ChartLastShift[NumParser, SelectParamForGraph] := frmBarChart.ShiftStep;
    end
  else
    ShowMessage('Parser of this parameter is disabled!');
  end;



procedure TFormParser.BtGraphOutClick(Sender: TObject);
var
  i : Integer;
begin
  SelectParamForGraph := (Sender as TButton).Tag;
  if ParsersHEX[NumParser].SettParser[SelectParamForGraph].isUseParser then
    begin
      //FormGraph.YMin := ParsersHEX[NumParser].SettParser[SelectParamForGraph].YMin;
      //FormGraph.YMax := ParsersHEX[NumParser].SettParser[SelectParamForGraph].YMax;

      FormGraph.YMin := MinValG[SelectParamForGraph];
      FormGraph.YMax := MaxValG[SelectParamForGraph];

      FormGraph.WindowState := wsNormal;

      if isPauseGraph then
        begin
          FormGraph.WriteNewName(ParsersHEX[NumParser].SettParser[SelectParamForGraph].NameParam + ' ( Plotter data logging paused )');
          FormGraph.Color := TColor($0088FF);
        end
      else
        begin
          FormGraph.WriteNewName(ParsersHEX[NumParser].SettParser[SelectParamForGraph].NameParam);
          FormGraph.Color := FormParser.Color;
        end;
      for i:= 0 to 3 do
        begin
          FormGraph.isMin[i] := (ParsersHEX[NumParser].SettParser[SelectParamForGraph].res1[0] and (1 shl i)) > 0;
          FormGraph.isMax[i] := (ParsersHEX[NumParser].SettParser[SelectParamForGraph].res1[0] and (1 shl (i + 4))) > 0;
          FormGraph.CMax[i]  := ParsersHEX[NumParser].SettParser[SelectParamForGraph].res1[i * 2 + 1];
          FormGraph.CMin[i]  := ParsersHEX[NumParser].SettParser[SelectParamForGraph].res1[i * 2 + 2];
        end;

      FormGraph.GndColor := ParsersHEX[NumParser].SettParser[SelectParamForGraph].Color;
      FormGraph.pDG := @DataGraphBuf[SelectParamForGraph].DataGraph;
      FormGraph.DGiAct := @DGiAct[SelectParamForGraph];
      FormGraph.MaxVal := @MaxValG[SelectParamForGraph];
      FormGraph.MinVal := @MinValG[SelectParamForGraph];


      isGraph := True;
      FormGraph.isBuf := NumParserForGraph = NumParser;

      VisParser[SelectParamForGraph].VHex.Color := clBlack;
      VisParser[SelectParamForGraph].VHex.Font.Color := clWhite;

      //VisParser[SelectParamForGraph].VTime.BorderStyle := sbsSingle;
      //VisParser[SelectParamForGraph].VValue.BorderStyle := sbsSingle;
      FormGraph.ShowModal();
      VisParser[SelectParamForGraph].VHex.Color := FormParser.Color;
      VisParser[SelectParamForGraph].VHex.Font.Color := clBlack;

      //VisParser[SelectParamForGraph].VName.BorderStyle := sbsSunken;
      //VisParser[SelectParamForGraph].VTime.BorderStyle := sbsSunken;
      //VisParser[SelectParamForGraph].VValue.BorderStyle := sbsSunken;

      isGraph := False;
      ParsersHEX[NumParser].SettParser[SelectParamForGraph].YMin := FormGraph.YMin;
      ParsersHEX[NumParser].SettParser[SelectParamForGraph].YMax := FormGraph.YMax;
    end
  else
    ShowMessage('Parser of this parameter is disabled!');
  end;


procedure TFormParser.BtGraphClrClick(Sender: TObject);
var
  index : Integer;
  i : Cardinal;
begin
  index := (Sender as TButton).Tag;
  SelectParamForGraph := index;
  for i := 0 to (MAX_CNT_DG - 1) do
    begin
      DataGraphBuf[SelectParamForGraph].DataGraph[i].val := 0;
      DataGraphBuf[SelectParamForGraph].DataGraph[i].dt := 0;
    end;
  DGiAct[SelectParamForGraph] := 0;
  MaxValG[SelectParamForGraph]:= -2147483647;
  MinValG[SelectParamForGraph]:= 2147483647;

  VisParser[index].VSelParam.Checked := False;
  SelectParamForGraph := 16;
  reqtxt1.Caption := '';
  reqtxt1.ShowHint := False;
  (Sender as TButton).Caption := '';
  (Sender as TButton).Enabled := False;
end;



procedure TFormParser.chk1Click(Sender: TObject);
begin
   isPauseGraph := not (Sender as TCheckBox).Checked;

   if isPauseGraph then
     reqtxt1.Color := TColor($0088FF)
   else
     reqtxt1.Color := FormParser.Color;

   if isPauseGraph then
     reqtxt1.Caption := 'Data is not buffered'
   else
     reqtxt1.Caption := '';


   btnSave.Enabled := isPauseGraph;
   btnLoad.Enabled := isPauseGraph;
end;



procedure SaveFileTMB;

var
  FileData : file of TDataGraphFile;
  DGFBuf   : TDataGraphFile;
  NameFile : string;
  i, numParam, tmp : Integer;
  isStop : Boolean;
  index  : Integer;
  lenNameParser : integer;
  lenNameParam  : array[0..15] of integer;
  isEnSave : Boolean;
  msg : string;
  DGiMax : Cardinal;

begin
  isEnSave := False;
  DGiMax := 0;

  for tmp := 0 to 15 do
    if DGiAct[tmp] > DGiMax then
      DGiMax := DGiAct[tmp];

  if DGiMax > 500 then
    isEnSave := True;

  if not isEnSave then
    begin
      msg := 'Must accumulate more than >500 points! ' + '( Cur: ' + IntToStr(DGiMax) +' )';
      ShowMessage(msg);
      Exit;
    end;

  FormParser.dlgSaveFile.FileName := ParsersHEX[NumParser].ParserName;
  if FormParser.dlgSaveFile.Execute then
    begin
      isStop := false;
      if pos('.tmb', FormParser.dlgSaveFile.FileName) = 0 then
        NameFile := FormParser.dlgSaveFile.FileName + '.tmb'
      else
        NameFile := FormParser.dlgSaveFile.FileName;

      AssignFile(FileData, NameFile);
      Rewrite(FileData);
      Reset(FileData);
      index := 0;
      i := 0;
      lenNameParser := Length(ParsersHEX[NumParser].ParserName);
      for tmp := 0 to 15 do
        lenNameParam[tmp] := length(ParsersHEX[NumParser].SettParser[tmp].NameParam);

      while (i < (MAX_CNT_DG - 1)) and (not isStop) do
        begin
          isStop := True;
          DGFBuf.sett[0] := 0;
          DGFBuf.sett[1] := 0;
          DGFBuf.sett[2] := 0;
          DGFBuf.sett[3] := 0;
          DGFBuf.sett[4] := 0;
          DGFBuf.sett[5] := 0;
          DGFBuf.sett[6] := 0;
          DGFBuf.sett[7] := 0;

          for numParam := 0 to 15 do
            begin
              if DGiAct[numParam] > i then isStop := False;
              DGFBuf.DGFile[numParam].dt := DataGraphBuf[numParam].DataGraph[i].dt;
              DGFBuf.DGFile[numParam].val := DataGraphBuf[numParam].DataGraph[i].val;
            end;

          if i < 8 then
            Case i of
             0: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].ParserName[1]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].ParserName[2]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].ParserName[3]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].ParserName[4]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].ParserName[5]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].ParserName[6]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].ParserName[7]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].ParserName[8]);
                  if (lenNameParser < 8) then DGFBuf.sett[lenNameParser] := 0;
                end;

             1: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].ParserName[9]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].ParserName[10]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].ParserName[11]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].ParserName[12]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].ParserName[13]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].ParserName[14]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].ParserName[15]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].ParserName[16]);

                  if (lenNameParser >= 8) and (lenNameParser < 16) then DGFBuf.sett[lenNameParser - 8] := 0;
                end;
             2: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].ParserName[17]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].ParserName[18]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].ParserName[19]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].ParserName[20]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].ParserName[21]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].ParserName[22]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].ParserName[23]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].ParserName[24]);
                  if (lenNameParser >= 16) and (lenNameParser < 24) then DGFBuf.sett[lenNameParser - 16] := 0;
                end;
             3: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].ParserName[25]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].ParserName[26]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].ParserName[27]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].ParserName[28]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].ParserName[29]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].ParserName[30]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].ParserName[31]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].ParserName[32]);
                  if (lenNameParser >= 24) and (lenNameParser < 32) then DGFBuf.sett[lenNameParser - 24] := 0;
                end;
             4: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].ParserName[33]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].ParserName[34]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].ParserName[35]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].ParserName[36]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].ParserName[37]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].ParserName[38]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].ParserName[39]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].ParserName[40]);
                  if (lenNameParser >= 32) and (lenNameParser < 40) then DGFBuf.sett[lenNameParser - 32] := 0;
               end;
             5: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].ParserName[41]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].ParserName[42]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].ParserName[43]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].ParserName[44]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].ParserName[45]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].ParserName[46]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].ParserName[47]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].ParserName[48]);
                  if (lenNameParser >= 40) and (lenNameParser < 48) then DGFBuf.sett[lenNameParser - 40] := 0;
                end;
             6: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].ParserName[49]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].ParserName[50]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].ParserName[51]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].ParserName[52]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].ParserName[53]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].ParserName[54]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].ParserName[55]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].ParserName[56]);
                  if (lenNameParser >= 48) and (lenNameParser < 56) then DGFBuf.sett[lenNameParser - 48] := 0;

                end;
             7: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].ParserName[57]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].ParserName[58]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].ParserName[59]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].ParserName[60]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].ParserName[61]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].ParserName[62]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].ParserName[63]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].ParserName[64]);
                  if (lenNameParser >= 56) and (lenNameParser < 64) then DGFBuf.sett[lenNameParser - 56] := 0;
                end;
            end
              else  if i < 440 then
          begin
            case (i - 8) mod 27 of
               0: begin
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[0] then DGFBuf.sett[0] := 1 else DGFBuf.sett[0] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[1] then DGFBuf.sett[1] := 1 else DGFBuf.sett[1] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[2] then DGFBuf.sett[2] := 1 else DGFBuf.sett[2] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[3] then DGFBuf.sett[3] := 1 else DGFBuf.sett[3] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[4] then DGFBuf.sett[4] := 1 else DGFBuf.sett[4] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[5] then DGFBuf.sett[5] := 1 else DGFBuf.sett[5] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[6] then DGFBuf.sett[6] := 1 else DGFBuf.sett[6] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[7] then DGFBuf.sett[7] := 1 else DGFBuf.sett[7] := 0;
                  end;
               1: begin
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[8]  then DGFBuf.sett[0] := 1 else DGFBuf.sett[0] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[9]  then DGFBuf.sett[1] := 1 else DGFBuf.sett[1] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[10] then DGFBuf.sett[2] := 1 else DGFBuf.sett[2] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[11] then DGFBuf.sett[3] := 1 else DGFBuf.sett[3] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[12] then DGFBuf.sett[4] := 1 else DGFBuf.sett[4] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[13] then DGFBuf.sett[5] := 1 else DGFBuf.sett[5] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[14] then DGFBuf.sett[6] := 1 else DGFBuf.sett[6] := 0;
                  if ParsersHEX[NumParser].SettParser[index].isUseByteCmp[15] then DGFBuf.sett[7] := 1 else DGFBuf.sett[7] := 0;
                  end;
               2: begin
                  DGFBuf.sett[0] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[0];
                  DGFBuf.sett[1] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[1];
                  DGFBuf.sett[2] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[2];
                  DGFBuf.sett[3] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[3];
                  DGFBuf.sett[4] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[4];
                  DGFBuf.sett[5] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[5];
                  DGFBuf.sett[6] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[6];
                  DGFBuf.sett[7] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[7];
                  end;
               3: begin
                  DGFBuf.sett[0] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[8];
                  DGFBuf.sett[1] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[9];
                  DGFBuf.sett[2] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[10];
                  DGFBuf.sett[3] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[11];
                  DGFBuf.sett[4] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[12];
                  DGFBuf.sett[5] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[13];
                  DGFBuf.sett[6] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[14];
                  DGFBuf.sett[7] := ParsersHEX[NumParser].SettParser[index].UseByteCmp[15];
                  end;
               4: begin
                  if ParsersHEX[NumParser].SettParser[index].isUseParser then DGFBuf.sett[0] := 1 else DGFBuf.sett[0] := 0;
                  DGFBuf.sett[1] := Byte(ParsersHEX[NumParser].SettParser[index].TypeParam);
                  if ParsersHEX[NumParser].SettParser[index].isCheckLen then DGFBuf.sett[2] := 1 else DGFBuf.sett[2] := 0;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].PacketLen shr 0)  and $FF;
                  DGFBuf.sett[4] := (ParsersHEX[NumParser].SettParser[index].PacketLen shr 8)  and $FF;
                  DGFBuf.sett[5] := (ParsersHEX[NumParser].SettParser[index].PacketLen shr 16) and $FF;
                  DGFBuf.sett[6] := (ParsersHEX[NumParser].SettParser[index].PacketLen shr 24) and $FF;
                  DGFBuf.sett[7] := 77;
                  end;

               5: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[1]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[2]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[3]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[4]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[5]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[6]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[7]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[8]);
                  if (lenNameParam[index] >= 0) and (lenNameParam[index] < 8) then DGFBuf.sett[lenNameParam[index] - 0] := 0;
                  end;

               6: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[9]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[10]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[11]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[12]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[13]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[14]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[15]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[16]);
                  if (lenNameParam[index] >= 8) and (lenNameParam[index] < 16) then DGFBuf.sett[lenNameParam[index] - 8] := 0;

                  end;

               7: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[17]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[18]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[19]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[20]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[21]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[22]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[23]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[24]);
                  if (lenNameParam[index] >= 16) and (lenNameParam[index] < 24) then DGFBuf.sett[lenNameParam[index] - 16] := 0;

                  end;

               8: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[25]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[26]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[27]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[28]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[29]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[30]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[31]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[32]);
                  if (lenNameParam[index] >= 24) and (lenNameParam[index] < 32) then DGFBuf.sett[lenNameParam[index] - 24] := 0;

                  end;

               9: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[33]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[34]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[35]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[36]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[37]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[38]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[39]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[40]);
                  if (lenNameParam[index] >= 32) and (lenNameParam[index] < 40) then DGFBuf.sett[lenNameParam[index] - 32] := 0;

                  end;

              10: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[41]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[42]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[43]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[44]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[45]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[46]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[47]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[48]);
                  if (lenNameParam[index] >= 40) and (lenNameParam[index] < 48) then DGFBuf.sett[lenNameParam[index] - 40] := 0;

                  end;

              11: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[49]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[50]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[51]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[52]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[53]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[54]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[55]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[56]);
                  if (lenNameParam[index] >= 48) and (lenNameParam[index] < 56) then DGFBuf.sett[lenNameParam[index] - 48] := 0;

                  end;

              12: begin
                  DGFBuf.sett[0] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[57]);
                  DGFBuf.sett[1] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[58]);
                  DGFBuf.sett[2] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[59]);
                  DGFBuf.sett[3] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[60]);
                  DGFBuf.sett[4] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[61]);
                  DGFBuf.sett[5] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[62]);
                  DGFBuf.sett[6] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[63]);
                  DGFBuf.sett[7] := Ord(ParsersHEX[NumParser].SettParser[index].NameParam[64]);
                  if (lenNameParam[index] >= 56) and (lenNameParam[index] < 64) then DGFBuf.sett[lenNameParam[index] - 56] := 0;

                  end;

              13: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[0] shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[0] shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[0] shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[0] shr 24) and $FF;
                  DGFBuf.sett[4] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[1] shr 0)  and $FF;
                  DGFBuf.sett[5] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[1] shr 8)  and $FF;
                  DGFBuf.sett[6] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[1] shr 16) and $FF;
                  DGFBuf.sett[7] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[1] shr 24) and $FF;
                  end;

              14: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[2] shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[2] shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[2] shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[2] shr 24) and $FF;
                  DGFBuf.sett[4] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[3] shr 0)  and $FF;
                  DGFBuf.sett[5] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[3] shr 8)  and $FF;
                  DGFBuf.sett[6] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[3] shr 16) and $FF;
                  DGFBuf.sett[7] := (ParsersHEX[NumParser].SettParser[index].NumUseBytes[3] shr 24) and $FF;
                  end;
              15: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].Color shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].Color shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].Color shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].Color shr 24) and $FF;
                  end;
              16: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].YMax shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].YMax shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].YMax shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].YMax shr 24) and $FF;
                  DGFBuf.sett[4] := (ParsersHEX[NumParser].SettParser[index].YMax shr 32) and $FF;
                  DGFBuf.sett[5] := (ParsersHEX[NumParser].SettParser[index].YMax shr 40) and $FF;
                  DGFBuf.sett[6] := (ParsersHEX[NumParser].SettParser[index].YMax shr 48) and $FF;
                  DGFBuf.sett[7] := (ParsersHEX[NumParser].SettParser[index].YMax shr 56) and $FF;
                  end;
              17: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].YMin shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].YMin shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].YMin shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].YMin shr 24) and $FF;
                  DGFBuf.sett[4] := (ParsersHEX[NumParser].SettParser[index].YMin shr 32) and $FF;
                  DGFBuf.sett[5] := (ParsersHEX[NumParser].SettParser[index].YMin shr 40) and $FF;
                  DGFBuf.sett[6] := (ParsersHEX[NumParser].SettParser[index].YMin shr 48) and $FF;
                  DGFBuf.sett[7] := (ParsersHEX[NumParser].SettParser[index].YMin shr 56) and $FF;
                  end;
              18: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].res1[0] shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].res1[0] shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].res1[0] shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].res1[0] shr 24) and $FF;
                  DGFBuf.sett[4] := (ParsersHEX[NumParser].SettParser[index].res1[1] shr 0)  and $FF;
                  DGFBuf.sett[5] := (ParsersHEX[NumParser].SettParser[index].res1[1] shr 8)  and $FF;
                  DGFBuf.sett[6] := (ParsersHEX[NumParser].SettParser[index].res1[1] shr 16) and $FF;
                  DGFBuf.sett[7] := (ParsersHEX[NumParser].SettParser[index].res1[1] shr 24) and $FF;
                  end;
              19: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].res1[2] shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].res1[2] shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].res1[2] shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].res1[2] shr 24) and $FF;
                  DGFBuf.sett[4] := (ParsersHEX[NumParser].SettParser[index].res1[3] shr 0)  and $FF;
                  DGFBuf.sett[5] := (ParsersHEX[NumParser].SettParser[index].res1[3] shr 8)  and $FF;
                  DGFBuf.sett[6] := (ParsersHEX[NumParser].SettParser[index].res1[3] shr 16) and $FF;
                  DGFBuf.sett[7] := (ParsersHEX[NumParser].SettParser[index].res1[3] shr 24) and $FF;
                  end;
              20: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].res1[4] shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].res1[4] shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].res1[4] shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].res1[4] shr 24) and $FF;
                  DGFBuf.sett[4] := (ParsersHEX[NumParser].SettParser[index].res1[5] shr 0)  and $FF;
                  DGFBuf.sett[5] := (ParsersHEX[NumParser].SettParser[index].res1[5] shr 8)  and $FF;
                  DGFBuf.sett[6] := (ParsersHEX[NumParser].SettParser[index].res1[5] shr 16) and $FF;
                  DGFBuf.sett[7] := (ParsersHEX[NumParser].SettParser[index].res1[5] shr 24) and $FF;
                  end;
              21: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].res1[6] shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].res1[6] shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].res1[6] shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].res1[6] shr 24) and $FF;
                  DGFBuf.sett[4] := (ParsersHEX[NumParser].SettParser[index].res1[7] shr 0)  and $FF;
                  DGFBuf.sett[5] := (ParsersHEX[NumParser].SettParser[index].res1[7] shr 8)  and $FF;
                  DGFBuf.sett[6] := (ParsersHEX[NumParser].SettParser[index].res1[7] shr 16) and $FF;
                  DGFBuf.sett[7] := (ParsersHEX[NumParser].SettParser[index].res1[7] shr 24) and $FF;
                  end;
              22: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].res1[8] shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].res1[8] shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].res1[8] shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].res1[8] shr 24) and $FF;
                  DGFBuf.sett[4] := (ParsersHEX[NumParser].SettParser[index].res1[9] shr 0)  and $FF;
                  DGFBuf.sett[5] := (ParsersHEX[NumParser].SettParser[index].res1[9] shr 8)  and $FF;
                  DGFBuf.sett[6] := (ParsersHEX[NumParser].SettParser[index].res1[9] shr 16) and $FF;
                  DGFBuf.sett[7] := (ParsersHEX[NumParser].SettParser[index].res1[9] shr 24) and $FF;
                  end;
              23: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].res1[10] shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].res1[10] shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].res1[10] shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].res1[10] shr 24) and $FF;
                  DGFBuf.sett[4] := (ParsersHEX[NumParser].SettParser[index].res1[11] shr 0)  and $FF;
                  DGFBuf.sett[5] := (ParsersHEX[NumParser].SettParser[index].res1[11] shr 8)  and $FF;
                  DGFBuf.sett[6] := (ParsersHEX[NumParser].SettParser[index].res1[11] shr 16) and $FF;
                  DGFBuf.sett[7] := (ParsersHEX[NumParser].SettParser[index].res1[11] shr 24) and $FF;
                  end;
              24: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].res1[12] shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].res1[12] shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].res1[12] shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].res1[12] shr 24) and $FF;
                  DGFBuf.sett[4] := (ParsersHEX[NumParser].SettParser[index].res1[13] shr 0)  and $FF;
                  DGFBuf.sett[5] := (ParsersHEX[NumParser].SettParser[index].res1[13] shr 8)  and $FF;
                  DGFBuf.sett[6] := (ParsersHEX[NumParser].SettParser[index].res1[13] shr 16) and $FF;
                  DGFBuf.sett[7] := (ParsersHEX[NumParser].SettParser[index].res1[13] shr 24) and $FF;
                  end;
              25: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].res1[14] shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].res1[14] shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].res1[14] shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].res1[14] shr 24) and $FF;
                  DGFBuf.sett[4] := (ParsersHEX[NumParser].SettParser[index].res1[15] shr 0)  and $FF;
                  DGFBuf.sett[5] := (ParsersHEX[NumParser].SettParser[index].res1[15] shr 8)  and $FF;
                  DGFBuf.sett[6] := (ParsersHEX[NumParser].SettParser[index].res1[15] shr 16) and $FF;
                  DGFBuf.sett[7] := (ParsersHEX[NumParser].SettParser[index].res1[15] shr 24) and $FF;
                  end;
              26: begin
                  DGFBuf.sett[0] := (ParsersHEX[NumParser].SettParser[index].res1[16] shr 0)  and $FF;
                  DGFBuf.sett[1] := (ParsersHEX[NumParser].SettParser[index].res1[16] shr 8)  and $FF;
                  DGFBuf.sett[2] := (ParsersHEX[NumParser].SettParser[index].res1[16] shr 16) and $FF;
                  DGFBuf.sett[3] := (ParsersHEX[NumParser].SettParser[index].res1[16] shr 24) and $FF;
                  DGFBuf.sett[4] := 11;
                  DGFBuf.sett[5] := 22;
                  DGFBuf.sett[6] := 33;
                  DGFBuf.sett[7] := 44;
                  inc(index);
                  end;
             end;
          end;

          Write(FileData, DGFBuf);
          inc(i);
        end;
      CloseFile(FileData);
    end;
end;


procedure TFormParser.btnSaveClick(Sender: TObject);

var
  i, tmp, numParam:Integer;
  fText : textfile;
  fileName : string;
  isErrFile : Boolean;
  DGiMax    : Cardinal;
  str : string;
begin
  (Sender as TButton).ShowHint := False;

  isErrFile := False;
  for i := 0 to 15 do
    begin
      FormSaveBufData.isUseParam[i] := ParsersHEX[NumParser].SettParser[i].isUseParser;
      FormSaveBufData.NameParam[i]  := ParsersHEX[NumParser].SettParser[i].NameParam;
    end;
  FormSaveBufData.ShowModal;

  if FormSaveBufData.isOK then
  if FormSaveBufData.isSaveTMB then
    SaveFileTMB
  else if ParsersHEXAdd[NumParser].isSyncTime then
    begin
      FormParser.dlgSaveFile.FileName := ParsersHEX[NumParser].ParserName;
      if FormParser.dlgSaveFile.Execute then
         begin
             fileName := FormParser.dlgSaveFile.FileName;
             AssignFile(fText, fileName);
             Reset(fText);
           try
             Rewrite(fText);
           except
             isErrFile := True;
           end;
             if isErrFile then
               begin
                 CloseFile(fText);
                 ShowMessage('ErrFile');
               end
             else
               begin
                 DGiMax := 0;
                 for tmp := 0 to 15 do
                   if DGiAct[tmp] > DGiMax then
                     DGiMax := DGiAct[tmp];


                 str := '';
                 if FormSaveBufData.isEnSaveNum then
                   str := str + '¹ ';


                 if FormSaveBufData.isEnSaveDT then
                   str := str + 'Date_time ';

                 for numParam := 0 to 15 do
                   if FormSaveBufData.isEnSaveText[numParam] then
                     str := str + ' " ' + FormSaveBufData.NameParam[numParam] + ' "  ';
                 Writeln(fText, str);


                 for i := 0 to DGiMax - 1 do
                   begin
                     str := '';
                     if FormSaveBufData.isEnSaveNum then
                       str := str + IntToStr(i) + ' ';

                     numParam := 0;
                     while (DataGraphBuf[numParam].DataGraph[i].dt = 0) and (numParam < 16) do
                       inc(numParam);

                     if (numParam < 16) and FormSaveBufData.isEnSaveDT then
                       str := str + FormatDateTime('yyyy/mm/dd hh:nn:ss:zzz', DataGraphBuf[numParam].DataGraph[i].dt) + ' ';

                     for numParam := 0 to 15 do
                       if FormSaveBufData.isEnSaveText[numParam] then
                         str := str + IntToStr(DataGraphBuf[numParam].DataGraph[i].val) + ' ';

                     if str = '' then str := '- Not selected data -';
                     Writeln(fText, str);
                   end;
                 CloseFile(fText);
                 ShowMessage('Saved ' + IntToStr(DGiMax) + ' records');
               end;
         end;
    end
  else
    ShowMessage('The parameters are not synchronized in time!');
end;

procedure TFormParser.btnLoadClick(Sender: TObject);
var
  FileData : file of TDataGraphFile;
  DGFBuf   : TDataGraphFile;
  NameFile : string;
  i, tmp, numParam, index : Integer;
  isStopNameParser : boolean;
  isStopNameParam : array[0..15] of boolean;
  Min : array[0..15] of integer;
  Max : array[0..15] of integer;
  Cnt : array[0..15] of integer;
  dSecStart, dSecStop, dStart, dStop : Cardinal;
  TimeMin, TimeMax : TDateTime;
  strProc : string;
begin
  if dlgOpenFileData.Execute then
    begin
      dSecStart := $FFFFFFFF;
      dSecStop := $FFFFFFFF;
      btn36.Enabled := True;
      NameFile := dlgOpenFileData.FileName;
      AssignFile(FileData, NameFile);
      Reset(FileData);

      //TSStartYear  := 1970;
      //TSStartMonth := 1;
      //TSStartDay   := 1;
      //TSStartHour  := 0;
      //TSStartMin   := 0;
      //TSStartSec   := 0;
      TimeMin := EncodeDateTime(1970,1,1,0,0,0,0);
      TimeMax := EncodeDateTime(2070,1,1,0,0,0,0);

      //TimeStartStat := EncodeDateTime(TSStartYear,TSStartMonth,TSStartDay,TSStartHour,TSStartMin,TSStartSec,0);

      //TSStopYear  := 2070;
      //TSStopMonth := 1;
      //TSStopDay   := 1;
      //TSStopHour  := 0;
      //TSStopMin   := 0;
      //TSStopSec   := 0;
      //TimeStopStat := EncodeDateTime(TSStopYear,TSStopMonth,TSStopDay,TSStopHour,TSStopMin,TSStopSec,0);


      for numParam := 0 to 15 do
        begin
          MinValD[numParam, NumParser] := 2147483647;
          MaxValD[numParam, NumParser] := -2147483647;
          MinValG[numParam] := 2147483647;
          MaxValG[numParam] := -2147483647;
          Min[numParam] := 2147483647;
          Max[numParam] := -2147483647;
          DGiAct[numParam] := 0;
        end;

     i := 0;
     index := 0;
     ParsersHEX[NumParser].ParserName := '';
     ParsersHEX[NumParser].SettParser[index].NameParam := '';
     isStopNameParser := false;
     for tmp := 0 to 15 do
       begin
         isStopNameParam[tmp] := false;
         Cnt[tmp] := 0;
       end;

     while not Eof(FileData) do
        begin

          Read(FileData, DGFBuf);
          For tmp := 0 to 15 do
            begin
              if DGFBuf.DGFile[tmp].val > Max[tmp] then Max[tmp] := DGFBuf.DGFile[tmp].val;
              if DGFBuf.DGFile[tmp].val < Min[tmp] then Min[tmp] := DGFBuf.DGFile[tmp].val;
            end;


          ///////////////////////////////////////////
          if i < 8 then
            Case i of
             0..7: begin
                     tmp := 0;
                     while (DGFBuf.sett[tmp] <> 0) and (tmp < 8) and (not isStopNameParser) do
                       begin
                         ParsersHEX[NumParser].ParserName := ParsersHEX[NumParser].ParserName + Chr(DGFBuf.sett[tmp]);
                         inc(tmp);
                       end;
                     if (DGFBuf.sett[tmp] = 0) and (tmp < 8) then
                       isStopNameParser := TRUE;
                   end;
            end
              else  if i < 440 then
          begin
            case (i - 8) mod 27 of
               0: begin
                  for tmp := 0 to 7 do
                    ParsersHEX[NumParser].SettParser[index].isUseByteCmp[tmp] := DGFBuf.sett[tmp] = 1;
                  end;
               1: begin
                  for tmp := 0 to 7 do
                    ParsersHEX[NumParser].SettParser[index].isUseByteCmp[tmp + 8] := DGFBuf.sett[tmp] = 1;
                  end;
               2: begin
                  for tmp := 0 to 7 do
                    ParsersHEX[NumParser].SettParser[index].UseByteCmp[tmp] := DGFBuf.sett[tmp];
                  end;
               3: begin
                  for tmp := 0 to 7 do
                    ParsersHEX[NumParser].SettParser[index].UseByteCmp[tmp + 8] := DGFBuf.sett[tmp];
                  end;
               4: begin
                  ParsersHEX[NumParser].SettParser[index].isUseParser := DGFBuf.sett[0] = 1;
                  ParsersHEX[NumParser].SettParser[index].TypeParam := TTypeParam(DGFBuf.sett[1]);
                  ParsersHEX[NumParser].SettParser[index].isCheckLen := DGFBuf.sett[2] = 1;
                  ParsersHEX[NumParser].SettParser[index].PacketLen := DGFBuf.sett[3] or (DGFBuf.sett[4] shl 8) or (DGFBuf.sett[5] shl 16) or (DGFBuf.sett[6] shl 24);
                  end;
           5..12: begin
                    tmp := 0;
                    while (DGFBuf.sett[tmp] <> 0) and (tmp < 8) and (not isStopNameParam[index]) do
                      begin
                        ParsersHEX[NumParser].SettParser[index].NameParam := ParsersHEX[NumParser].SettParser[index].NameParam + Chr(DGFBuf.sett[tmp]);
                        inc(tmp);
                      end;
                    if (DGFBuf.sett[tmp] = 0) and (tmp < 8) then
                      isStopNameParam[index] := true;
                  end;

              13: begin
                  ParsersHEX[NumParser].SettParser[index].NumUseBytes[0] :=  DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24);
                  ParsersHEX[NumParser].SettParser[index].NumUseBytes[1] :=  DGFBuf.sett[4] or (DGFBuf.sett[5] shl 8) or (DGFBuf.sett[6] shl 16) or (DGFBuf.sett[7] shl 24);
                  end;

              14: begin
                  ParsersHEX[NumParser].SettParser[index].NumUseBytes[2] :=  DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24);
                  ParsersHEX[NumParser].SettParser[index].NumUseBytes[3] :=  DGFBuf.sett[4] or (DGFBuf.sett[5] shl 8) or (DGFBuf.sett[6] shl 16) or (DGFBuf.sett[7] shl 24);
                  end;
              15: begin
                  ParsersHEX[NumParser].SettParser[index].Color :=  TColor(DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24));
                  end;
              16: begin
                  ///ParsersHEX[NumParser].SettParser[index].YMax :=  DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24);// or (DGFBuf.sett[4] shl 32) or (DGFBuf.sett[5] shl 40) or (DGFBuf.sett[6] shl 48) or (DGFBuf.sett[7] shl 56);
                  end;
              17: begin
                  ///ParsersHEX[NumParser].SettParser[index].YMin :=  DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24);// or (DGFBuf.sett[4] shl 32) or (DGFBuf.sett[5] shl 40) or (DGFBuf.sett[6] shl 48) or (DGFBuf.sett[7] shl 56));
                  end;
              18: begin
                  ParsersHEX[NumParser].SettParser[index].res1[0] :=  DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24);
                  ParsersHEX[NumParser].SettParser[index].res1[1] :=  DGFBuf.sett[4] or (DGFBuf.sett[5] shl 8) or (DGFBuf.sett[6] shl 16) or (DGFBuf.sett[7] shl 24);
                  end;
              19: begin
                  ParsersHEX[NumParser].SettParser[index].res1[2] :=  DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24);
                  ParsersHEX[NumParser].SettParser[index].res1[3] :=  DGFBuf.sett[4] or (DGFBuf.sett[5] shl 8) or (DGFBuf.sett[6] shl 16) or (DGFBuf.sett[7] shl 24);
                  end;
              20: begin
                  ParsersHEX[NumParser].SettParser[index].res1[4] :=  DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24);
                  ParsersHEX[NumParser].SettParser[index].res1[5] :=  DGFBuf.sett[4] or (DGFBuf.sett[5] shl 8) or (DGFBuf.sett[6] shl 16) or (DGFBuf.sett[7] shl 24);
                  end;
              21: begin
                  ParsersHEX[NumParser].SettParser[index].res1[6] :=  DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24);
                  ParsersHEX[NumParser].SettParser[index].res1[7] :=  DGFBuf.sett[4] or (DGFBuf.sett[5] shl 8) or (DGFBuf.sett[6] shl 16) or (DGFBuf.sett[7] shl 24);
                  end;
              22: begin
                  ParsersHEX[NumParser].SettParser[index].res1[8] :=  DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24);
                  ParsersHEX[NumParser].SettParser[index].res1[9] :=  DGFBuf.sett[4] or (DGFBuf.sett[5] shl 8) or (DGFBuf.sett[6] shl 16) or (DGFBuf.sett[7] shl 24);
                  end;
              23: begin
                  ParsersHEX[NumParser].SettParser[index].res1[10] :=  DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24);
                  ParsersHEX[NumParser].SettParser[index].res1[11] :=  DGFBuf.sett[4] or (DGFBuf.sett[5] shl 8) or (DGFBuf.sett[6] shl 16) or (DGFBuf.sett[7] shl 24);
                  end;
              24: begin
                  ParsersHEX[NumParser].SettParser[index].res1[12] :=  DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24);
                  ParsersHEX[NumParser].SettParser[index].res1[13] :=  DGFBuf.sett[4] or (DGFBuf.sett[5] shl 8) or (DGFBuf.sett[6] shl 16) or (DGFBuf.sett[7] shl 24);
                  end;
              25: begin
                  ParsersHEX[NumParser].SettParser[index].res1[14] :=  DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24);
                  ParsersHEX[NumParser].SettParser[index].res1[15] :=  DGFBuf.sett[4] or (DGFBuf.sett[5] shl 8) or (DGFBuf.sett[6] shl 16) or (DGFBuf.sett[7] shl 24);
                  end;
              26: begin
                  ParsersHEX[NumParser].SettParser[index].res1[16] :=  DGFBuf.sett[0] or (DGFBuf.sett[1] shl 8) or (DGFBuf.sett[2] shl 16) or (DGFBuf.sett[3] shl 24);
                  inc(index);
                  ParsersHEX[NumParser].SettParser[index].NameParam := '';
                  end;
             end;
          end;


          ///////////////////////////////////////////



          inc(i);
          for numParam := 0 to 15 do
            begin
              if DGFBuf.DGFile[numParam].dt <> 0 then
                begin
                  dStart := SecondsBetween(DGFBuf.DGFile[numParam].dt, TimeMin);
                  dStop  := SecondsBetween(DGFBuf.DGFile[numParam].dt, TimeMax);

                  if dStart < dSecStart then
                    begin
                      dSecStart := dStart;
                      TimeStartStat := DGFBuf.DGFile[numParam].dt;
                    end;

                  if dStop < dSecStop then
                    begin
                      dSecStop := dStop;
                      TimeStopStat := DGFBuf.DGFile[numParam].dt;
                    end;




                  DataGraphBufAdd(DGFBuf.DGFile[numParam].val, DGFBuf.DGFile[numParam].dt, numParam);
                  Inc(Cnt[numParam]);
                  if MinValD[numParam, NumParser] > DGFBuf.DGFile[numParam].val then
                    begin
                      MinValD[numParam, NumParser] := DGFBuf.DGFile[numParam].val;
                      TimeMinD[numParam, NumParser] := FormatDateTime('hh:mm:ss:zzz ', DGFBuf.DGFile[numParam].dt);
                    end;
                  if MaxValD[numParam, NumParser] < DGFBuf.DGFile[numParam].val then
                    begin
                      MaxValD[numParam, NumParser] := DGFBuf.DGFile[numParam].val;
                      TimeMaxD[numParam, NumParser] := FormatDateTime('hh:mm:ss:zzz ', DGFBuf.DGFile[numParam].dt);
                    end;
                  if MinValG[numParam] > DGFBuf.DGFile[numParam].val then
                    begin
                      MinValG[numParam] := DGFBuf.DGFile[numParam].val;
                      TimeMinG[numParam] := FormatDateTime('hh:mm:ss:zzz ', DGFBuf.DGFile[numParam].dt);
                    end;
                  if MaxValG[numParam] < DGFBuf.DGFile[numParam].val then
                    begin
                      MaxValG[numParam] := DGFBuf.DGFile[numParam].val;
                      TimeMaxG[numParam] := FormatDateTime('hh:mm:ss:zzz ', DGFBuf.DGFile[numParam].dt);
                    end;
                end;
            end;
        end;

      for numParam := 0 to 15 do
        begin
          ParsersHEX[NumParser].SettParser[numParam].YMax := Max[numParam];
          ParsersHEX[NumParser].SettParser[numParam].YMin := Min[numParam];
          VisParser[numParam].VCount.Caption := IntToStr(Cnt[numParam]);
          Str((100 * Cnt[numParam] / MAX_CNT_DG):3:2,  strProc);
          VisParser[numParam].BTGraphClr.Caption := strProc + '%';
        end;
      CloseFile(FileData);
      SetCurParser();

      for numParam := 0 to 15 do
        begin
          VisParser[numParam].VCount.Caption := IntToStr(Cnt[numParam]);
        end;

      mmoInput.Text := 'Data loaded from ' + NameFile + ' file';
      mmoInput.Color := clLime;

      isEnUpdTimeStartStop := False;

      TSStartYear  := StrToInt(FormatDateTime('yyyy', TimeStartStat));
      TSStartMonth := StrToInt(FormatDateTime('mm',   TimeStartStat));
      TSStartDay   := StrToInt(FormatDateTime('dd',   TimeStartStat));
      TSStartHour  := StrToInt(FormatDateTime('hh',   TimeStartStat));
      TSStartMin   := StrToInt(FormatDateTime('nn',   TimeStartStat));
      TSStartSec   := StrToInt(FormatDateTime('ss',   TimeStartStat));

      TSStopYear  := StrToInt(FormatDateTime('yyyy', TimeStopStat));
      TSStopMonth := StrToInt(FormatDateTime('mm',   TimeStopStat));
      TSStopDay   := StrToInt(FormatDateTime('dd',   TimeStopStat));
      TSStopHour  := StrToInt(FormatDateTime('hh',   TimeStopStat));
      TSStopMin   := StrToInt(FormatDateTime('nn',   TimeStopStat));
      TSStopSec   := StrToInt(FormatDateTime('ss',   TimeStopStat));

      SetVisStartTimeStat;
      SetVisStopTimeStat;
      isEnUpdTimeStartStop := True;

    end;
end;

procedure TFormParser.Button1Click(Sender: TObject);
var i: Integer;
begin
  if not chk7.Checked or (NumParserForGraph <> NumParser) or not chk8.Checked or not chk1.Checked then
    begin
      FormWarnMG.isEnList      := chk7.Checked;
      FormWarnMG.isUseGraphBuf := NumParserForGraph = NumParser;
      FormWarnMG.isEnTimeSync  := chk8.Checked;
      FormWarnMG.isEnBuffering := chk1.Checked;
      FormWarnMG.ShowModal;
      if not FormWarnMG.isOK then
        Exit;
    end;


  //if isPauseGraph then
  //  begin
  //    ShowMessage('Writing data to the buffer is disabled!');
  //  end;

  //if NumParserForGraph <> NumParser then
  //  begin
  //    ShowMessage('Data from another parser list is written to the buffer!');
  //  end;

  //if not ParsersHEXAdd[NumParser].Sett17[0] then
  //  begin
  //    ShowMessage('This list of parsers is not used!');
  //  end;


  FormMultiGraph.ParserHEX := @ParsersHEX[NumParser];

  for i := 0 to 15 do
    begin
      FormMultiGraph.DGiAct[i] := @DGiAct[i];
      FormMultiGraph.pDG[i] := @DataGraphBuf[i].DataGraph[FormMultiGraph.DGiAct[i]^];

    end;

  isMultiGraph := True;
  FormMultiGraph.FonColor := ParsersHEXAdd[NumParser].ColorBG_MG;
  FormMultiGraph.numPars := NumParser;
  FormMultiGraph.Caption := 'MultiGraph ' + '[ ' + ParsersHEX[NumParser].ParserName + ' ]';

  FormMultiGraph.ShowModal;
  ParsersHEXAdd[NumParser].ColorBG_MG := FormMultiGraph.FonColor;
  isMultiGraph := False;
end;

procedure TFormParser.rb17Click(Sender: TObject);
begin
  Bt21.Enabled := True;
end;

procedure TFormParser.Bt21Click(Sender: TObject);
begin
  rb17.Checked := False;
  (Sender as TButton).Enabled := False;
  Bt70.Enabled := False;
  ClearParser(NumParser);
  SetCurParser();
end;

procedure TFormParser.Bt70Click(Sender: TObject);
begin
  ParsersHEXCopy := ParsersHEX[NumParser];
  Bt71.ShowHint := True;
  Bt71.Hint := 'Paste list ' + '"' + ParsersHEXCopy.ParserName + '"';
  Bt71.Enabled := True;
end;

procedure TFormParser.Bt71Click(Sender: TObject);
begin
  ParsersHEX[NumParser] := ParsersHEXCopy;
  SetCurParser();
  FormParser.Bt70.Enabled := True;
end;

procedure TFormParser.chk2Click(Sender: TObject);
var
  iLast, index : Integer;
begin
  isUseMath := not isUseMath;

  cbb1.Enabled := isUseMath;
  cbb2.Enabled := isUseMath;
  cbb3.Enabled := isUseMath;
  cbb4.Enabled := isUseMath;

  ctxt1.Enabled := isUseMath;
  Button2.Enabled := isUseMath;
  Button3.Enabled := isUseMath;
  lbl1.Enabled := isUseMath;
  lbl2.Enabled := isUseMath;
  lbl3.Enabled := isUseMath;
  lbl4.Enabled := isUseMath;
  Button20.Enabled := isUseMath;
  Bt74.Enabled := isUseMath;
  cbb4.ItemIndex := 9;
  (Sender as TCheckBox).ShowHint := False;

  iLast := 0;
  FormParser.cbb1.Clear;
  FormParser.cbb3.Clear;

  for index := 0 to 15 do
    begin
      LastVal[index, NumParser] := 0;
      LastValUpd[index, NumParser] := false;
      if ParsersHEX[NumParser].SettParser[index].isUseParser then
        begin
          FormParser.cbb1.Items.Add(ParsersHEX[NumParser].SettParser[index].NameParam);
          FormParser.cbb3.Items.Add(ParsersHEX[NumParser].SettParser[index].NameParam);
          LastValIndex1[iLast, NumParser] := index;
          LastValIndex2[iLast, NumParser] := index;
          inc(iLast);
        end;
    end;
  FormParser.ctxt1.Caption := 'Wait...';
  FormParser.cbb1.ItemIndex := 0;
  FormParser.cbb3.ItemIndex := 0;
end;

procedure TFormParser.Button2Click(Sender: TObject);
var
  i : Integer;
  Min, Max : int64;
  name : string;
begin
  FormGraph.YMin := 0;
  FormGraph.YMax := 1;
  SelectParamForGraph := 16;

  name := '( ' + FormParser.cbb1.Text + ' ' + FormParser.cbb2.Text + ' ' + FormParser.cbb3.Text + ' ) X ' + FormParser.cbb4.Text;

  FormGraph.WindowState := wsNormal;

  if isPauseGraph then
    begin
      FormGraph.WriteNewName(name + ' ( Plotter data logging paused )');
      FormGraph.Color := TColor($0088FF);
    end
      else
    begin
      FormGraph.WriteNewName(name);
      FormGraph.Color := FormParser.Color;
    end;

  for i:= 0 to 3 do
    begin
      FormGraph.isMin[i] := false;
      FormGraph.isMax[i] := false;
      FormGraph.CMax[i]  := 0;
      FormGraph.CMin[i]  := 0;
    end;

  Max := 1;
  Min := 0;
  FormGraph.GndColor := clWindow;
  FormGraph.pDG      := @DataGraphBufMath.DataGraph;
  FormGraph.DGiAct   := @DGiActMath;
  FormGraph.MaxVal   := @Max;
  FormGraph.MinVal   := @Min;
  FormGraph.isBuf    := NumParser = NumParserForGraph;

  isGraph := True;
  FormGraph.ShowModal();
  isGraph := False;
end;

procedure TFormParser.Button3Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to (MAX_CNT_DG - 1) do
    begin
      DataGraphBufMath.DataGraph[i].val := 0;
      DataGraphBufMath.DataGraph[i].dt := 0;
    end;
  DGiActMath := 0;
  SelectParamForGraph := 16;
end;

procedure TFormParser.Button20Click(Sender: TObject);
var
  i : Integer;
begin
  SelectParamForGraph := 16;
  frmBarChart.WindowState := wsNormal;
  frmBarChart.Color := FormParser.Color;
  frmBarChart.Caption := 'Parameter histogram [ ' + '( ' + FormParser.cbb1.Text + ' ' + FormParser.cbb2.Text + ' ' + FormParser.cbb3.Text + ' ) X ' + FormParser.cbb4.Text + ' ]';
  frmBarChart.pDG := @DataGraphBufMath.DataGraph;
  frmBarChart.DGiAct := @DGiActMath;



  frmBarChart.CenterVal := ChartLastCValMath[NumParser];
  frmBarChart.ShiftStep := ChartLastShiftMath[NumParser];
  frmBarChart.isBuf := NumParser = NumParserForGraph;
  isChart := True;
  frmBarChart.ShowModal();
  isChart := False;
  ChartLastCValMath[NumParser] := frmBarChart.CenterVal;
  ChartLastShiftMath[NumParser] := frmBarChart.ShiftStep;
end;

procedure TFormParser.chk3Click(Sender: TObject);
begin
  isLogOnlyEvents := (Sender as TCheckBox).Checked;
  (Sender as TCheckBox).ShowHint := False;
end;

procedure TFormParser.chk4Click(Sender: TObject);
begin
  ParsersHEXAdd[NumParser].isLogMain := (Sender as TCheckBox).Checked;
end;

procedure TFormParser.chk5Click(Sender: TObject);
begin
  ParsersHEXAdd[NumParser].isLogSecond := (Sender as TCheckBox).Checked;
end;

procedure TFormParser.ctxt6Click(Sender: TObject);
begin
  ColorDialog.Color := ParsersHEXAdd[NumParser].ColorLog;
  if ColorDialog.Execute then
    begin
      ParsersHEXAdd[NumParser].ColorLog := ColorDialog.Color;
    end;
  ctxt6.Color := ParsersHEXAdd[NumParser].ColorLog;
  ctxt6.Font.Color := $FFFFFF - ctxt6.Color;

end;

procedure TFormParser.rb18Click(Sender: TObject);
begin
  NumParserForGraph := NumParser;
  (Sender as TRadioButton).Color := FormParser.Color;
  (Sender as TRadioButton).Hint  := 'Data buffering enabled for list ' + IntToStr(NumParser) +' [ ' + ParsersHEX[NumParser].ParserName + ' ]';
end;

procedure TFormParser.Bt73Click(Sender: TObject);
var i : Byte;
begin
  for i := 1 to 200 do
    begin
      ParsersHEXAdd[i].isLogMain   := False;
      ParsersHEXAdd[i].isLogSecond := False;
      ParsersHEXAdd[i].isLogSep    := False;
      ParsersHEXAdd[i].ColorLog    := clGreen;
    end;
  FormParser.chk4.Checked := False;
  FormParser.chk5.Checked := False;
  FormParser.chk6.Checked := False;
  FormParser.ctxt6.Color := clGreen;
  FormParser.ctxt6.Font.Color := $FFFFFF - FormParser.ctxt6.Color;

end;

procedure TFormParser.Bt72Click(Sender: TObject);
begin
  isOutLogRes := not isOutLogRes;

  if isOutLogRes then (Sender as TButton).Caption := '||'
  else (Sender as TButton).Caption := '>';
end;

procedure TFormParser.chk6Click(Sender: TObject);
begin
  ParsersHEXAdd[NumParser].isLogSep := (Sender as TCheckBox).Checked;
end;

procedure TFormParser.Button21Click(Sender: TObject);
begin
  if not isSendWinLog then
    begin
      isSendWinLog := True;
      frmParserLog.Position := poDesktopCenter;
      frmParserLog.Color := FormParser.Color;
      frmParserLog.BGColor := ParsersHEXAdd[NumParser].ColorBG_LOG;
      frmParserLog.Show;
      frmParserLog.WindowState := wsNormal;
    end
  else
    begin
      frmParserLog.Position := poDesktopCenter;
      frmParserLog.WindowState := wsNormal;
    end;
end;

procedure TFormParser.CountDblClick(Sender: TObject);
var
  index : Integer;
begin
  index := (Sender as TStaticText).Tag;
  Counts[index, NumParser] := 0;
  (Sender as TStaticText).Caption := IntToStr(Counts[index, NumParser]);
end;

procedure TFormParser.btn35Click(Sender: TObject);
var
  i, j : Integer;
begin
  For j := 0 to 15 do
    begin
      for i := 1 to 200 do
        Counts[j, i] := 0;
      VisParser[j].VCount.Caption := '';
    end;
end;

procedure TFormParser.chk7Click(Sender: TObject);
var i : Integer;
begin
  ParsersHEXAdd[NumParser].Sett17[0] := (Sender as TCheckBox).Checked;
  if ParsersHEXAdd[NumParser].Sett17[0] then
    begin
      chk7.Color := FormParser.Color;
      for i:= 0 to 15 do
        begin
          VisParser[i].VName.Color := ParsersHEX[NumParser].SettParser[i].Color;
          VisParser[i].VTime.Color := ParsersHEX[NumParser].SettParser[i].Color;
          VisParser[i].VValue.Color := ParsersHEX[NumParser].SettParser[i].Color;
        end;
    end
  else
    begin
      chk7.Color := clRed;
      for i:= 0 to 15 do
        begin
          VisParser[i].VName.Color := FormParser.Color;
          VisParser[i].VTime.Color := FormParser.Color;
          VisParser[i].VValue.Color := FormParser.Color;
        end;
    end;
end;

procedure TFormParser.btn55Click(Sender: TObject);
var i : Integer;
begin
  for i := 1 to 200 do
    ParsersHEXAdd[i].Sett17[0] := isUseAllList;

  chk7.Checked := isUseAllList;
  if isUseAllList then
    begin
      chk7.Color := FormParser.Color;
      (Sender as TButton).Caption := 'Disable other lists';
    end
  else
    begin
      chk7.Color := clRed;
      (Sender as TButton).Caption := 'Enable other lists';
    end;
  isUseAllList := not isUseAllList;
end;

procedure TFormParser.NameDblClick(Sender: TObject);
var
  i : Integer;
begin
  for i := 0 to 15 do
    if (VisParser[i].VName.Alignment = taCenter) then
      VisParser[i].VName.Alignment := taLeftJustify
    else
      VisParser[i].VName.Alignment := taCenter;
end;

procedure TFormParser.btn36Click(Sender: TObject);
var i, point, ptmp : Integer;
    isEmpt : Boolean;
    PointMax : Integer;
    POintMaxTmp : Integer;
    ChangePOint : Integer;
begin
  PointMax := 0;
  ChangePOint := 0;
  for i := 0 to 15 do
    begin
      POintMaxTmp := 0;
      For point := 0 to (MAX_CNT_DG - 1) do
        begin
          if DataGraphBuf[i].DataGraph[point].dt <> 0 then
            POintMaxTmp := point;
        end;
      if POintMaxTmp > PointMax then
        PointMax := POintMaxTmp;
    end;



  For point := 0 to PointMax do
    begin
      isEmpt := True;
      For i := 0 to 15 do
        begin
          isEmpt := isEmpt and (DataGraphBuf[i].DataGraph[point].dt = 0);
        end;
      if isEmpt then
        begin
          inc(ChangePOint);
          For ptmp := point + 1 to (MAX_CNT_DG - 1) do
            begin
              for i := 0 to 15 do
                begin
                  DataGraphBuf[i].DataGraph[ptmp - 1].dt := DataGraphBuf[i].DataGraph[ptmp].dt;
                  DataGraphBuf[i].DataGraph[ptmp - 1].val := DataGraphBuf[i].DataGraph[ptmp].val;
                end;
            end;
        end;
    end;
  for point := PointMax - ChangePOint to PointMax do
    for i:= 0 to 15 do
      begin
        DataGraphBuf[i].DataGraph[point].dt := 0;
        DataGraphBuf[i].DataGraph[point].val := 0;
      end;
  ShowMessage(IntToStr(ChangePOint) + ' unwritten blocks removed');
  (Sender as TButton).Enabled := False;
end;

procedure TFormParser.chk8Click(Sender: TObject);
begin
  isSyncBuffers := (Sender as TCheckBox).Checked;
  ParsersHEXAdd[NumParser].isSyncTime := isSyncBuffers;
end;

procedure TFormParser.Bt74Click(Sender: TObject);
var
  multi, val : real;
  indexMathAct, indexMulti, i, iMax : Integer;
  param1, param2 : Int64;
  indexMath1, indexMath2 : Integer;
  isTimeSync : Boolean;
  cntNoSync  : Cardinal;
  cntErr  : Cardinal;
begin
  //DataGraphBufMath
  //DGiActMath
  //     inc(DGiActMath);
  //    DGiActMath := DGiActMath and (MAX_CNT_DG - 1);

  indexMath1 := cbb1.ItemIndex;
  indexMath2 := cbb3.ItemIndex;

  indexMathAct := cbb2.ItemIndex;
  indexMulti   := cbb4.ItemIndex;

  multi := 1;

  case indexMulti of
      0:   multi := 1000000000;
      1:   multi := 100000000;
      2:   multi := 10000000;
      3:   multi := 1000000;
      4:   multi := 100000;
      5:   multi := 10000;
      6:   multi := 1000;
      7:   multi := 100;
      8:   multi := 10;
      9:   multi := 1;
      10:  multi := 1 / 10;
      11:  multi := 1 / 100;
      12:  multi := 1 / 1000;
      13:  multi := 1 / 10000;
      14:  multi := 1 / 100000;
      15:  multi := 1 / 1000000;
      16:  multi := 1 / 10000000;
      17:  multi := 1 / 100000000;
      18:  multi := 1 / 1000000000;
  end;

  iMax := DGiAct[indexMath1];
  if DGiAct[indexMath2] > DGiAct[indexMath1] then
    iMax := DGiAct[indexMath2];

  DGiActMath := 0;
  cntNoSync  := 0;
  cntErr     := 0;
  for i:= 0 to iMax do
    begin
      try
        case indexMathAct of
        0:  val := DataGraphBuf[indexMath1].DataGraph[i].val + DataGraphBuf[indexMath2].DataGraph[i].val; //+
        1:  val := DataGraphBuf[indexMath1].DataGraph[i].val - DataGraphBuf[indexMath2].DataGraph[i].val; //-
        2:  val := DataGraphBuf[indexMath1].DataGraph[i].val / DataGraphBuf[indexMath2].DataGraph[i].val;// /
        3:  val := DataGraphBuf[indexMath1].DataGraph[i].val * DataGraphBuf[indexMath2].DataGraph[i].val;// *
        end;
        val := val * multi;
        DataGraphBufMath.DataGraph[i].val := Trunc(val);
        DataGraphBufMath.DataGraph[i].dt  := DataGraphBuf[indexMath1].DataGraph[i].dt;
        inc(DGiActMath);
        if DataGraphBuf[indexMath1].DataGraph[i].dt <> DataGraphBuf[indexMath2].DataGraph[i].dt then
          inc(cntNoSync);
      except
        inc(cntErr);
      end;
    end;

  if cntNoSync > 0 then
    ShowMessage(IntToStr(cntNoSync) + ' points are not synchronized');
  if cntErr > 0 then
    ShowMessage(IntToStr(cntErr) + ' division errors by 0');


end;

procedure TFormParser.btn37Click(Sender: TObject);
var Min : array[0..15] of Int64;
    i, pars : Integer;
begin
  For pars := 0 to 15 do
    begin
      Min[pars] := MAX_INT64;
    end;

  For pars := 0 to 15 do
    begin
      if ParsersHEX[NumParser].SettParser[pars].isUseParser then
        begin
          for i := 0 to MAX_CNT_DG - 1 do
            if (DataGraphBuf[pars].DataGraph[i].dt > TimeStartStat) and (DataGraphBuf[pars].DataGraph[i].dt < TimeStopStat) then
              if DataGraphBuf[pars].DataGraph[i].val < Min[pars] then
                Min[pars] := DataGraphBuf[pars].DataGraph[i].val;
          if Min[pars] < MAX_INT64 then
            begin
              VisParser[pars].VValue.Caption := IntToStr(Min[pars]);
              VisParser[pars].VTime.Caption := 'Min';
            end
          else
            begin
              VisParser[pars].VValue.Caption := '---';
              VisParser[pars].VTime.Caption := '---';
            end;
        end;
    end;
  btn42.Enabled := True;
  isEnOutCurrenVal := False;
end;

procedure TFormParser.btn39Click(Sender: TObject);
var Max : array[0..15] of Int64;
    i, pars : Integer;
begin
  For pars := 0 to 15 do
    begin
      Max[pars] := MIN_INT64;
    end;

  For pars := 0 to 15 do
    begin
      if ParsersHEX[NumParser].SettParser[pars].isUseParser then
        begin
          for i := 0 to MAX_CNT_DG - 1 do
            if (DataGraphBuf[pars].DataGraph[i].dt > TimeStartStat) and (DataGraphBuf[pars].DataGraph[i].dt < TimeStopStat) then
              if DataGraphBuf[pars].DataGraph[i].val > Max[pars] then
                Max[pars] := DataGraphBuf[pars].DataGraph[i].val;
          if Max[pars] > MIN_INT64 then
            begin
              VisParser[pars].VValue.Caption := IntToStr(Max[pars]);
              VisParser[pars].VTime.Caption := 'Max';
            end
          else
            begin
              VisParser[pars].VValue.Caption := '---';
              VisParser[pars].VTime.Caption := '---';
            end;

        end;
    end;
  btn42.Enabled := True;
  isEnOutCurrenVal := False;
end;

procedure TFormParser.btn40Click(Sender: TObject);
var Min, Max : array[0..15] of Int64;
    i, pars : Integer;
begin
  For pars := 0 to 15 do
    begin
      Min[pars] := MAX_INT64;
      Max[pars] := MIN_INT64;
    end;

  For pars := 0 to 15 do
    begin
      if ParsersHEX[NumParser].SettParser[pars].isUseParser then
        begin
          for i := 0 to MAX_CNT_DG - 1 do
            if (DataGraphBuf[pars].DataGraph[i].dt > TimeStartStat) and (DataGraphBuf[pars].DataGraph[i].dt < TimeStopStat) then
              begin
                if DataGraphBuf[pars].DataGraph[i].val < Min[pars] then
                  Min[pars] := DataGraphBuf[pars].DataGraph[i].val;
                if DataGraphBuf[pars].DataGraph[i].val > Max[pars] then
                  Max[pars] := DataGraphBuf[pars].DataGraph[i].val;

              end;
          if (Min[pars] < MAX_INT64) and (Max[pars] > MIN_INT64) then
            begin
              VisParser[pars].VValue.Caption := IntToStr(Max[pars] - Min[pars]);
              VisParser[pars].VTime.Caption := 'Max - Min';
            end
          else
            begin
              VisParser[pars].VValue.Caption := '---';
              VisParser[pars].VTime.Caption := '---';
            end;

        end;
    end;

  btn42.Enabled := True;
  isEnOutCurrenVal := False;
end;

procedure TFormParser.btn38Click(Sender: TObject);
var Sum, cnt : array[0..15] of Int64;
    i, pars : Integer;
begin
  For pars := 0 to 15 do
    begin
      Sum[pars] := 0;
      Cnt[pars] := 0;
    end;

  For pars := 0 to 15 do
    begin
      if ParsersHEX[NumParser].SettParser[pars].isUseParser then
        begin
          for i := 0 to MAX_CNT_DG - 1 do
            if (DataGraphBuf[pars].DataGraph[i].dt > TimeStartStat) and (DataGraphBuf[pars].DataGraph[i].dt < TimeStopStat) then
              begin
                Inc(Cnt[pars]);
                Sum[pars] := Sum[pars] + DataGraphBuf[pars].DataGraph[i].val;
              end;
          if Cnt[pars] > 0 then
            begin
              VisParser[pars].VValue.Caption := IntToStr(Trunc(Sum[pars]/Cnt[pars]));
              VisParser[pars].VTime.Caption := 'Average';
            end
          else
            begin
              VisParser[pars].VValue.Caption := '---';
              VisParser[pars].VTime.Caption := '---';
            end;

        end;
    end;

  btn42.Enabled := True;
  isEnOutCurrenVal := False;
end;

procedure TFormParser.Bt76Click(Sender: TObject);
begin
  TimeStartStat := EncodeDateTime(1970,1,1,0,0,0,0);
  TimeStopStat  := EncodeDateTime(2070,1,1,0,0,0,0);

  SetVisStartTimeStat;
  SetVisStopTimeStat;
end;

procedure TFormParser.Bt75Click(Sender: TObject);
begin
  TimeStartStat := Now;

  TSStartYear  := StrToInt(FormatDateTime('yyyy', TimeStartStat));
  TSStartMonth := StrToInt(FormatDateTime('mm',   TimeStartStat));
  TSStartDay   := StrToInt(FormatDateTime('dd',   TimeStartStat));
  TSStartHour  := StrToInt(FormatDateTime('hh',   TimeStartStat));
  TSStartMin   := StrToInt(FormatDateTime('nn',   TimeStartStat));
  TSStartSec   := StrToInt(FormatDateTime('ss',   TimeStartStat));
  SetVisStartTimeStat;
end;

procedure TFormParser.btn41Click(Sender: TObject);
begin
  TimeStopStat := Now;
  TSStopYear  := StrToInt(FormatDateTime('yyyy', TimeStopStat));
  TSStopMonth := StrToInt(FormatDateTime('mm',   TimeStopStat));
  TSStopDay   := StrToInt(FormatDateTime('dd',   TimeStopStat));
  TSStopHour  := StrToInt(FormatDateTime('hh',   TimeStopStat));
  TSStopMin   := StrToInt(FormatDateTime('nn',   TimeStopStat));
  TSStopSec   := StrToInt(FormatDateTime('ss',   TimeStopStat));
  SetVisStopTimeStat;
end;

procedure TFormParser.edt3Change(Sender: TObject);
var TimeStartStatBuf : TDateTime;
begin
  if not isEnUpdTimeStartStop then
    Exit;

  try
    TSStartYear := StrToInt((Sender as TEdit).Text);
  except
    TSStartYear := 1970;
  end;

  TimeStartStatBuf := TimeStartStat;

  try
    TimeStartStat := EncodeDateTime(TSStartYear,TSStartMonth,TSStartDay,TSStartHour,TSStartMin,TSStartSec,0);
  except
    TimeStartStat := TimeStartStatBuf;
  end;

end;

procedure TFormParser.edt4Change(Sender: TObject);
var TimeStartStatBuf : TDateTime;
begin
  if not isEnUpdTimeStartStop then
    Exit;

  try
    TSStartMonth := StrToInt((Sender as TEdit).Text);
  except
    TSStartMonth := 1;
  end;

  TimeStartStatBuf := TimeStartStat;

  try
    TimeStartStat := EncodeDateTime(TSStartYear,TSStartMonth,TSStartDay,TSStartHour,TSStartMin,TSStartSec,0);
  except
    TimeStartStat := TimeStartStatBuf;
  end;

end;

procedure TFormParser.edt5Change(Sender: TObject);
var TimeStartStatBuf : TDateTime;
begin
  if not isEnUpdTimeStartStop then
    Exit;

  try
    TSStartDay := StrToInt((Sender as TEdit).Text);
  except
    TSStartDay := 1;
  end;

  TimeStartStatBuf := TimeStartStat;

  try
    TimeStartStat := EncodeDateTime(TSStartYear,TSStartMonth,TSStartDay,TSStartHour,TSStartMin,TSStartSec,0);
  except
    TimeStartStat := TimeStartStatBuf;
  end;

end;

procedure TFormParser.edt6Change(Sender: TObject);
var TimeStartStatBuf : TDateTime;
begin
  if not isEnUpdTimeStartStop then
    Exit;


  try
    TSStartHour := StrToInt((Sender as TEdit).Text);
  except
    TSStartHour := 0;
  end;

  TimeStartStatBuf := TimeStartStat;

  try
    TimeStartStat := EncodeDateTime(TSStartYear,TSStartMonth,TSStartDay,TSStartHour,TSStartMin,TSStartSec,0);
  except
    TimeStartStat := TimeStartStatBuf;
  end;

end;
procedure TFormParser.edt7Change(Sender: TObject);
var TimeStartStatBuf : TDateTime;
begin
  if not isEnUpdTimeStartStop then
    Exit;

  try
    TSStartMin := StrToInt((Sender as TEdit).Text);
  except
    TSStartMin := 0;
  end;

  TimeStartStatBuf := TimeStartStat;

  try
    TimeStartStat := EncodeDateTime(TSStartYear,TSStartMonth,TSStartDay,TSStartHour,TSStartMin,TSStartSec,0);
  except
    TimeStartStat := TimeStartStatBuf;
  end;

end;

procedure TFormParser.edt8Change(Sender: TObject);
var TimeStartStatBuf : TDateTime;
begin
  if not isEnUpdTimeStartStop then
    Exit;


  try
    TSStartSec := StrToInt((Sender as TEdit).Text);
  except
    TSStartSec := 0;
  end;

  TimeStartStatBuf := TimeStartStat;

  try
    TimeStartStat := EncodeDateTime(TSStartYear,TSStartMonth,TSStartDay,TSStartHour,TSStartMin,TSStartSec,0);
  except
    TimeStartStat := TimeStartStatBuf;
  end;

end;

procedure TFormParser.UpdTimeStartExitt(Sender: TObject);
begin
  SetVisStartTimeStat;
end;


procedure TFormParser.UpdTimeStopExitt(Sender: TObject);
begin
  SetVisStopTimeStat;
end;


procedure TFormParser.edt10Exit(Sender: TObject);
var TimeStopStatBuf : TDateTime;
begin

  try
    TSStopYear := StrToInt((Sender as TEdit).Text);
  except
    TSStopYear := 2070;
  end;

  TimeStopStatBuf := TimeStopStat;

  try
    TimeStopStat := EncodeDateTime(TSStopYear,TSStopMonth,TSStopDay,TSStopHour,TSStopMin,TSStopSec,0);
  except
    TimeStopStat := TimeStopStatBuf;
  end;

end;
procedure TFormParser.edt11Change(Sender: TObject);
var TimeStopStatBuf : TDateTime;
begin
  if not isEnUpdTimeStartStop then
    Exit;


  try
    TSStopMonth := StrToInt((Sender as TEdit).Text);
  except
    TSStopMonth := 1;
  end;

  TimeStopStatBuf := TimeStopStat;

  try
    TimeStopStat := EncodeDateTime(TSStopYear,TSStopMonth,TSStopDay,TSStopHour,TSStopMin,TSStopSec,0);
  except
    TimeStopStat := TimeStopStatBuf;
  end;

end;

procedure TFormParser.edt12Change(Sender: TObject);
var TimeStopStatBuf : TDateTime;
begin
  if not isEnUpdTimeStartStop then
    Exit;


  try
    TSStopDay := StrToInt((Sender as TEdit).Text);
  except
    TSStopDay := 1;
  end;

  TimeStopStatBuf := TimeStopStat;

  try
    TimeStopStat := EncodeDateTime(TSStopYear,TSStopMonth,TSStopDay,TSStopHour,TSStopMin,TSStopSec,0);
  except
    TimeStopStat := TimeStopStatBuf;
  end;

end;
procedure TFormParser.edt13Change(Sender: TObject);
var TimeStopStatBuf : TDateTime;
begin
  if not isEnUpdTimeStartStop then
    Exit;


  try
    TSStopHour := StrToInt((Sender as TEdit).Text);
  except
    TSStopHour := 0;
  end;

  TimeStopStatBuf := TimeStopStat;

  try
    TimeStopStat := EncodeDateTime(TSStopYear,TSStopMonth,TSStopDay,TSStopHour,TSStopMin,TSStopSec,0);
  except
    TimeStopStat := TimeStopStatBuf;
  end;

end;
procedure TFormParser.edt14Change(Sender: TObject);
var TimeStopStatBuf : TDateTime;
begin
  if not isEnUpdTimeStartStop then
    Exit;


  try
    TSStopMin := StrToInt((Sender as TEdit).Text);
  except
    TSStopMin := 0;
  end;

  TimeStopStatBuf := TimeStopStat;

  try
    TimeStopStat := EncodeDateTime(TSStopYear,TSStopMonth,TSStopDay,TSStopHour,TSStopMin,TSStopSec,0);
  except
    TimeStopStat := TimeStopStatBuf;
  end;

end;
procedure TFormParser.edt15Change(Sender: TObject);
var TimeStopStatBuf : TDateTime;
begin
  if not isEnUpdTimeStartStop then
    Exit;


  try
    TSStopSec := StrToInt((Sender as TEdit).Text);
  except
    TSStopSec := 0;
  end;

  TimeStopStatBuf := TimeStopStat;

  try
    TimeStopStat := EncodeDateTime(TSStopYear,TSStopMonth,TSStopDay,TSStopHour,TSStopMin,TSStopSec,0);
  except
    TimeStopStat := TimeStopStatBuf;
  end;

end;
procedure TFormParser.EdtKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TFormParser.edt10Change(Sender: TObject);
var TimeStopStatBuf : TDateTime;
begin
  if not isEnUpdTimeStartStop then
    Exit;


  try
    TSStopYear := StrToInt((Sender as TEdit).Text);
  except
    TSStopYear := 2070;
  end;

  TimeStopStatBuf := TimeStopStat;

  try
    TimeStopStat := EncodeDateTime(TSStopYear,TSStopMonth,TSStopDay,TSStopHour,TSStopMin,TSStopSec,0);
  except
    TimeStopStat := TimeStopStatBuf;
  end;

end;

procedure TFormParser.btn42Click(Sender: TObject);
begin
  (Sender as TButton).Enabled := False;
  isEnOutCurrenVal := True;
end;

end.


