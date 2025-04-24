unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TerminalST, ComCtrls, Common;

type
  TCtrlBytes = record
    STNumByte   : TStaticText;
    RBSelByte   : TRadioButton;
    isAct       : boolean;
    isSelByte   : array[0..255] of boolean;
    Pos         : byte;
    STByteHEX   : TStaticText;
    STByteASCII : TStaticText;
  end;

type TSendMode = (SendManual = 0, SendAuto = 1);
type TThroughMode = (ThroughSequent = 0, ThroughRandom = 1);

type
  TListSett = record
    Name : string[64];
    SendMode : TSendMode;
    ThroughMode : TThroughMode;
    PeriodMin   : Cardinal;
    isSelByte   : array[1..32, 0..255] of boolean;
    isReserv1   : array[1..32, 0..255] of boolean;
    reserv2     : Cardinal;
    PeriodMax   : Cardinal;
    Reserv4     : array[1..32, 0..255] of byte;
    LenMin      : Byte;
    LenMax      : Byte;
  end;

type
  TCfgPG = record
    NumList  : Cardinal;
    Reserv1  : Cardinal;
    Reserv2  : Cardinal;
    Reserv3  : Cardinal;
    ListSett : array[1..CNT_LIST_SETT_PG] of TListSett;
  end;




type
  TBruteForce = class(TForm)
    GBBytes: TGroupBox;
    RadioButton1: TRadioButton;  StaticText1: TStaticText;        StaticText2: TStaticText;    StaticText3: TStaticText;       StaticText4: TStaticText;    StaticText5: TStaticText;        StaticText6: TStaticText;    StaticText7: TStaticText;       StaticText8: TStaticText;    StaticText9: TStaticText;        StaticText10: TStaticText;   StaticText11: TStaticText;      StaticText12: TStaticText;   StaticText13: TStaticText;       StaticText14: TStaticText;   StaticText15: TStaticText;
    StaticText16: TStaticText;   StaticText17: TStaticText;       StaticText18: TStaticText;   StaticText19: TStaticText;      StaticText20: TStaticText;   StaticText21: TStaticText;       StaticText22: TStaticText;   StaticText23: TStaticText;      StaticText24: TStaticText;   StaticText25: TStaticText;       StaticText26: TStaticText;   StaticText27: TStaticText;      StaticText28: TStaticText;   StaticText29: TStaticText;       StaticText30: TStaticText;   StaticText31: TStaticText;
    StaticText32: TStaticText;   StaticText33: TStaticText;       StaticText34: TStaticText;   StaticText35: TStaticText;      StaticText36: TStaticText;   StaticText37: TStaticText;       StaticText38: TStaticText;   StaticText39: TStaticText;      StaticText40: TStaticText;   StaticText41: TStaticText;       StaticText42: TStaticText;   StaticText43: TStaticText;      StaticText44: TStaticText;   StaticText45: TStaticText;       StaticText46: TStaticText;   StaticText47: TStaticText;
    StaticText48: TStaticText;   StaticText49: TStaticText;       StaticText50: TStaticText;   StaticText51: TStaticText;      StaticText52: TStaticText;   StaticText53: TStaticText;       StaticText54: TStaticText;   StaticText55: TStaticText;      StaticText56: TStaticText;   StaticText57: TStaticText;       StaticText58: TStaticText;   StaticText59: TStaticText;      StaticText60: TStaticText;   StaticText61: TStaticText;       StaticText62: TStaticText;   StaticText63: TStaticText;
    StaticText64: TStaticText;   CheckBox1: TCheckBox;            CheckBox2: TCheckBox;        CheckBox3: TCheckBox;           CheckBox4: TCheckBox;        CheckBox5: TCheckBox;            CheckBox6: TCheckBox;        CheckBox7: TCheckBox;           CheckBox8: TCheckBox;        CheckBox9: TCheckBox;            CheckBox10: TCheckBox;       CheckBox11: TCheckBox;          CheckBox12: TCheckBox;       CheckBox13: TCheckBox;           CheckBox14: TCheckBox;       CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;       CheckBox17: TCheckBox;           CheckBox18: TCheckBox;       CheckBox19: TCheckBox;          CheckBox20: TCheckBox;       CheckBox21: TCheckBox;           CheckBox22: TCheckBox;       CheckBox23: TCheckBox;          CheckBox24: TCheckBox;       CheckBox25: TCheckBox;           CheckBox26: TCheckBox;       CheckBox27: TCheckBox;          CheckBox28: TCheckBox;       CheckBox29: TCheckBox;           CheckBox30: TCheckBox;       CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;       CheckBox33: TCheckBox;           CheckBox34: TCheckBox;       CheckBox35: TCheckBox;          CheckBox36: TCheckBox;       CheckBox37: TCheckBox;           CheckBox38: TCheckBox;       CheckBox39: TCheckBox;          CheckBox40: TCheckBox;       CheckBox41: TCheckBox;           CheckBox42: TCheckBox;       CheckBox43: TCheckBox;          CheckBox44: TCheckBox;       CheckBox45: TCheckBox;           CheckBox46: TCheckBox;       CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;       CheckBox49: TCheckBox;           CheckBox50: TCheckBox;       CheckBox51: TCheckBox;          CheckBox52: TCheckBox;       CheckBox53: TCheckBox;           CheckBox54: TCheckBox;       CheckBox55: TCheckBox;          CheckBox56: TCheckBox;       CheckBox57: TCheckBox;           CheckBox58: TCheckBox;       CheckBox59: TCheckBox;          CheckBox60: TCheckBox;       CheckBox61: TCheckBox;           CheckBox62: TCheckBox;       CheckBox63: TCheckBox;
    CheckBox64: TCheckBox;       CheckBox65: TCheckBox;           CheckBox66: TCheckBox;       CheckBox67: TCheckBox;          CheckBox68: TCheckBox;       CheckBox69: TCheckBox;           CheckBox70: TCheckBox;       CheckBox71: TCheckBox;          CheckBox72: TCheckBox;       CheckBox73: TCheckBox;           CheckBox74: TCheckBox;       CheckBox75: TCheckBox;          CheckBox76: TCheckBox;       CheckBox77: TCheckBox;           CheckBox78: TCheckBox;       CheckBox79: TCheckBox;
    CheckBox80: TCheckBox;       CheckBox81: TCheckBox;           CheckBox82: TCheckBox;       CheckBox83: TCheckBox;          CheckBox84: TCheckBox;       CheckBox85: TCheckBox;           CheckBox86: TCheckBox;       CheckBox87: TCheckBox;          CheckBox88: TCheckBox;       CheckBox89: TCheckBox;           CheckBox90: TCheckBox;       CheckBox91: TCheckBox;          CheckBox92: TCheckBox;       CheckBox93: TCheckBox;           CheckBox94: TCheckBox;       CheckBox95: TCheckBox;
    CheckBox96: TCheckBox;       CheckBox97: TCheckBox;           CheckBox98: TCheckBox;       CheckBox99: TCheckBox;          CheckBox100: TCheckBox;      CheckBox101: TCheckBox;          CheckBox102: TCheckBox;      CheckBox103: TCheckBox;         CheckBox104: TCheckBox;      CheckBox105: TCheckBox;          CheckBox106: TCheckBox;      CheckBox107: TCheckBox;         CheckBox108: TCheckBox;      CheckBox109: TCheckBox;          CheckBox110: TCheckBox;      CheckBox111: TCheckBox;
    CheckBox112: TCheckBox;      CheckBox113: TCheckBox;          CheckBox114: TCheckBox;      CheckBox115: TCheckBox;         CheckBox116: TCheckBox;      CheckBox117: TCheckBox;          CheckBox118: TCheckBox;      CheckBox119: TCheckBox;         CheckBox120: TCheckBox;      CheckBox121: TCheckBox;          CheckBox122: TCheckBox;      CheckBox123: TCheckBox;         CheckBox124: TCheckBox;      CheckBox125: TCheckBox;          CheckBox126: TCheckBox;      CheckBox127: TCheckBox;
    CheckBox128: TCheckBox;      CheckBox129: TCheckBox;          CheckBox130: TCheckBox;      CheckBox131: TCheckBox;         CheckBox132: TCheckBox;      CheckBox133: TCheckBox;          CheckBox134: TCheckBox;      CheckBox135: TCheckBox;         CheckBox136: TCheckBox;      CheckBox137: TCheckBox;          CheckBox138: TCheckBox;      CheckBox139: TCheckBox;         CheckBox140: TCheckBox;      CheckBox141: TCheckBox;          CheckBox142: TCheckBox;      CheckBox143: TCheckBox;
    CheckBox144: TCheckBox;      CheckBox145: TCheckBox;          CheckBox146: TCheckBox;      CheckBox147: TCheckBox;         CheckBox148: TCheckBox;      CheckBox149: TCheckBox;          CheckBox150: TCheckBox;      CheckBox151: TCheckBox;         CheckBox152: TCheckBox;      CheckBox153: TCheckBox;          CheckBox154: TCheckBox;      CheckBox155: TCheckBox;         CheckBox156: TCheckBox;      CheckBox157: TCheckBox;          CheckBox158: TCheckBox;      CheckBox159: TCheckBox;
    CheckBox160: TCheckBox;      CheckBox161: TCheckBox;          CheckBox162: TCheckBox;      CheckBox163: TCheckBox;         CheckBox164: TCheckBox;      CheckBox165: TCheckBox;          CheckBox166: TCheckBox;      CheckBox167: TCheckBox;         CheckBox168: TCheckBox;      CheckBox169: TCheckBox;          CheckBox170: TCheckBox;      CheckBox171: TCheckBox;         CheckBox172: TCheckBox;      CheckBox173: TCheckBox;          CheckBox174: TCheckBox;      CheckBox175: TCheckBox;
    CheckBox176: TCheckBox;      CheckBox177: TCheckBox;          CheckBox178: TCheckBox;      CheckBox179: TCheckBox;         CheckBox180: TCheckBox;      CheckBox181: TCheckBox;          CheckBox182: TCheckBox;      CheckBox183: TCheckBox;         CheckBox184: TCheckBox;      CheckBox185: TCheckBox;          CheckBox186: TCheckBox;      CheckBox187: TCheckBox;         CheckBox188: TCheckBox;      CheckBox189: TCheckBox;          CheckBox190: TCheckBox;      CheckBox191: TCheckBox;
    CheckBox192: TCheckBox;      CheckBox193: TCheckBox;          CheckBox194: TCheckBox;      CheckBox195: TCheckBox;         CheckBox196: TCheckBox;      CheckBox197: TCheckBox;          CheckBox198: TCheckBox;      CheckBox199: TCheckBox;         CheckBox200: TCheckBox;      CheckBox201: TCheckBox;          CheckBox202: TCheckBox;      CheckBox203: TCheckBox;         CheckBox204: TCheckBox;      CheckBox205: TCheckBox;          CheckBox206: TCheckBox;      CheckBox207: TCheckBox;
    CheckBox208: TCheckBox;      CheckBox209: TCheckBox;          CheckBox210: TCheckBox;      CheckBox211: TCheckBox;         CheckBox212: TCheckBox;      CheckBox213: TCheckBox;          CheckBox214: TCheckBox;      CheckBox215: TCheckBox;         CheckBox216: TCheckBox;      CheckBox217: TCheckBox;          CheckBox218: TCheckBox;      CheckBox219: TCheckBox;         CheckBox220: TCheckBox;      CheckBox221: TCheckBox;          CheckBox222: TCheckBox;      CheckBox223: TCheckBox;
    CheckBox224: TCheckBox;      CheckBox225: TCheckBox;          CheckBox226: TCheckBox;      CheckBox227: TCheckBox;         CheckBox228: TCheckBox;      CheckBox229: TCheckBox;          CheckBox230: TCheckBox;      CheckBox231: TCheckBox;         CheckBox232: TCheckBox;      CheckBox233: TCheckBox;          CheckBox234: TCheckBox;      CheckBox235: TCheckBox;         CheckBox236: TCheckBox;      CheckBox237: TCheckBox;          CheckBox238: TCheckBox;      CheckBox239: TCheckBox;
    CheckBox240: TCheckBox;      CheckBox241: TCheckBox;          CheckBox242: TCheckBox;      CheckBox243: TCheckBox;         CheckBox244: TCheckBox;      CheckBox245: TCheckBox;          CheckBox246: TCheckBox;      CheckBox247: TCheckBox;         CheckBox248: TCheckBox;      CheckBox249: TCheckBox;          CheckBox250: TCheckBox;      CheckBox251: TCheckBox;         CheckBox252: TCheckBox;      CheckBox253: TCheckBox;          CheckBox254: TCheckBox;      CheckBox255: TCheckBox;
    CheckBox256: TCheckBox;      Button1: TButton;                Button2: TButton;            Label1: TLabel;                 Label2: TLabel;              GBMode: TGroupBox;               RBAuto: TRadioButton;        RBManual: TRadioButton;         SendPeriod: TEdit;           Label3: TLabel;                  StaticText97: TStaticText;   StaticText98: TStaticText;      RadioButton2: TRadioButton;  StaticText99: TStaticText;       RadioButton3: TRadioButton;  RadioButton4: TRadioButton;
    StaticText100: TStaticText;  StaticText101: TStaticText;      RadioButton5: TRadioButton;  RadioButton6: TRadioButton;     StaticText102: TStaticText;  RadioButton7: TRadioButton;      StaticText103: TStaticText;  StaticText104: TStaticText;     RadioButton8: TRadioButton;  StaticText105: TStaticText;      RadioButton9: TRadioButton;  RadioButton10: TRadioButton;    StaticText106: TStaticText;  RadioButton11: TRadioButton;     StaticText107: TStaticText;  StaticText108: TStaticText;
    RadioButton12: TRadioButton; StaticText109: TStaticText;      RadioButton13: TRadioButton; StaticText110: TStaticText;     RadioButton14: TRadioButton; StaticText111: TStaticText;      RadioButton15: TRadioButton; StaticText112: TStaticText;     RadioButton16: TRadioButton; StaticText113: TStaticText;      RadioButton17: TRadioButton; RadioButton18: TRadioButton;    StaticText114: TStaticText;  RadioButton19: TRadioButton;     StaticText115: TStaticText;  StaticText116: TStaticText;
    RadioButton20: TRadioButton; StaticText117: TStaticText;      RadioButton21: TRadioButton; StaticText118: TStaticText;     RadioButton22: TRadioButton; StaticText119: TStaticText;      RadioButton23: TRadioButton; StaticText120: TStaticText;     RadioButton24: TRadioButton; StaticText121: TStaticText;      RadioButton25: TRadioButton; StaticText122: TStaticText;     RadioButton26: TRadioButton; StaticText123: TStaticText;      RadioButton27: TRadioButton; StaticText124: TStaticText;
    RadioButton28: TRadioButton; StaticText125: TStaticText;      RadioButton29: TRadioButton; StaticText126: TStaticText;     RadioButton30: TRadioButton; StaticText127: TStaticText;      RadioButton31: TRadioButton; StaticText128: TStaticText;     RadioButton32: TRadioButton; CheckBox257: TCheckBox;          CheckBox258: TCheckBox;      CheckBox259: TCheckBox;         CheckBox260: TCheckBox;      CheckBox261: TCheckBox;          CheckBox262: TCheckBox;      CheckBox263: TCheckBox;
    CheckBox264: TCheckBox;      CheckBox265: TCheckBox;          CheckBox266: TCheckBox;      CheckBox267: TCheckBox;         CheckBox268: TCheckBox;      CheckBox269: TCheckBox;          CheckBox270: TCheckBox;      CheckBox271: TCheckBox;         CheckBox272: TCheckBox;      CheckBox273: TCheckBox;          CheckBox274: TCheckBox;      CheckBox275: TCheckBox;         CheckBox276: TCheckBox;      CheckBox277: TCheckBox;          CheckBox278: TCheckBox;      CheckBox279: TCheckBox;
    CheckBox280: TCheckBox;      CheckBox281: TCheckBox;          CheckBox282: TCheckBox;      CheckBox283: TCheckBox;         CheckBox284: TCheckBox;      CheckBox285: TCheckBox;          CheckBox286: TCheckBox;      CheckBox287: TCheckBox;         CheckBox288: TCheckBox;      CBSelAll: TCheckBox;             TimerSend: TTimer;           BTRestart: TButton;             BTStart: TButton;            BTCopy: TButton;                 BTPaste: TButton;            BTClear: TButton;
    BTReadCfg: TButton;          grp1: TGroupBox;                 trckbr1: TTrackBar;          trckbr2: TTrackBar;             lbl1: TLabel;                lbl2: TLabel;                    lbl3: TLabel;                lbl4: TLabel;                   grp2: TGroupBox;             rb1: TRadioButton;               rb2: TRadioButton;           req1: TStaticText;              edt1: TEdit;                 btn1: TButton;                   btn2: TButton;               btn3: TButton;
    edt2: TEdit;
    lst1: TListBox;
    tmrUpdList: TTimer;
    edt3: TEdit;
    lbl5: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure SelByteClick(Sender: TObject);
    procedure CtrlBytesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CBSelAllClick(Sender: TObject);
    procedure SelByteVClick(Sender: TObject);
    procedure SelByteHClick(Sender: TObject);
    procedure TimerSendTimer(Sender: TObject);
    procedure BTStartClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SendPeriodKeyPress(Sender: TObject; var Key: Char);
    procedure SendPeriodChange(Sender: TObject);
    procedure RBAutoClick(Sender: TObject);
    procedure RBManualClick(Sender: TObject);
    procedure BTRestartClick(Sender: TObject);
    procedure BTCopyClick(Sender: TObject);
    procedure BTPasteClick(Sender: TObject);
    procedure BTClearClick(Sender: TObject);
    procedure BTReadCfgClick(Sender: TObject);
    procedure Edt1KeyPress(Sender: TObject; var Key: Char);
    procedure Edt2KeyPress(Sender: TObject; var Key: Char);
    procedure Edt1Change(Sender: TObject);
    procedure Edt2Change(Sender: TObject);
    procedure trckbr1Change(Sender: TObject);
    procedure trckbr2Change(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure lst1DblClick(Sender: TObject);
    procedure lst1KeyPress(Sender: TObject; var Key: Char);
    procedure edt1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lst1Exit(Sender: TObject);
    procedure tmrUpdListTimer(Sender: TObject);
    procedure edt3Change(Sender: TObject);

  private
    { Private declarations }
  public
  procedure CloseFileCfgBruteForce;
    { Public declarations }
  end;


const
  CFG_FILE_NAME = 'CfgPacketGenerator';

var
  CfgPG : TCfgPG;
  CurNumList : Integer;
  BruteForce    : TBruteForce;
  CtrlBytes     : array[1..32] of TCtrlBytes;
  CtrlSelBytes  : array[0..255] of TCheckBox;
  CtrlSelBytesV : array[0..15] of TCheckBox;
  CtrlSelBytesH : array[0..15] of TCheckBox;
  CurByte       : integer;
  CopyByte      : integer;
  isModeAuto    : boolean;
  SendMsg       : Cardinal;
  SettingFile   : file of TCfgPG;
  LenMin, LenMax : Integer;
  isSelByteBuf  : array[0..255] of boolean;
  isRandomEnum  : Boolean;
  isExitSendCmd : boolean;
implementation

{$R *.dfm}


function CalcCsum(NumCsum : integer) : integer;
  var
    SumIndex  : integer;
    Summa     : integer;
    TmpStr    : string;
    i, len    : integer;
    TmpBuf    : array[1..65535] of byte;
    iData     : integer;
    pos       : integer;
    tmp       : word;
    tmpsum    : word;
  begin
    Summa     := 0;
    SumIndex  := 1;
    len       := Length(TmpStr);

    iData     := 1;

    if SendMode = SendHEX then
      begin
        i := 1;
        while i < len do
          begin
            TmpBuf[iData] := HexToInt(TmpStr[i]) * 16 + HexToInt(TmpStr[i + 1]);
            inc(iData);
            i := i + 3;
          end;
        len := iData - 1;
      end;


    if NumCsum = 1 then
      begin
        for i := 1 to len do
          Summa := Summa + TmpBuf[i];
        Summa := Summa and $FF;
      end;


    if NumCsum = 2 then
      begin
        for i := 2 to len do
          Summa := Summa + TmpBuf[i];
        Summa := Summa and $FF;
      end;

    if NumCsum = 3 then
      begin
        for i := 3 to len do
          Summa := Summa + TmpBuf[i];
        Summa := Summa and $FF;
      end;


    if NumCsum = 4 then
      begin
        for i := 1 to len do
          Summa := Summa xor TmpBuf[i];
      end;

    if NumCsum = 5 then
      begin
        for i := 2 to len do
          Summa := Summa xor TmpBuf[i];
      end;

    if NumCsum = 6 then
      begin
        for i := 3 to len do
          Summa := Summa xor TmpBuf[i];
      end;


    if NumCsum = 7 then
      begin
        for i := 1 to len do
          Summa := Summa + TmpBuf[i];
        Summa := $FF - (Summa and $FF);
      end;


    if NumCsum = 8 then
      begin
        for i := 2 to len do
          Summa := Summa + TmpBuf[i];
        Summa := $FF - (Summa and $FF);
      end;

    if NumCsum = 9 then
      begin
        for i := 3 to len do
          Summa := Summa + TmpBuf[i];
        Summa := $FF - (Summa and $FF);
      end;


    if NumCsum = 10 then  //MODBUS
      begin
        tmpsum := $FFFF;
        for pos := 1 to len do
          begin
            tmp := TmpBuf[pos];
            tmpsum := tmpsum xor tmp;
            for i := 8 downto 1 do
              begin
                if (tmpsum and $0001) <> 0 then
                  begin
                    tmpsum := tmpsum shr 1;
                    tmpsum := tmpsum xor $A001;
                  end
                else
                  begin
                    tmpsum := tmpsum shr 1;
                  end;
              end;
          end;
        Summa := tmpsum;
      end;


    if NumCsum = 11 then //LLS
      begin
        tmpsum := 0;
        for i := 1 to len do
          begin
            tmp := TmpBuf[i] xor tmpsum;
            tmpsum := 0;
            if (tmp and $01) <> 0 then tmpsum := tmpsum xor $5e;
            if (tmp and $02) <> 0 then tmpsum := tmpsum xor $bc;
            if (tmp and $04) <> 0 then tmpsum := tmpsum xor $61;
            if (tmp and $08) <> 0 then tmpsum := tmpsum xor $c2;
            if (tmp and $10) <> 0 then tmpsum := tmpsum xor $9d;
            if (tmp and $20) <> 0 then tmpsum := tmpsum xor $23;
            if (tmp and $40) <> 0 then tmpsum := tmpsum xor $46;
            if (tmp and $80) <> 0 then tmpsum := tmpsum xor $8c;
          end;
        Summa := tmpsum;
      end;
    result := Summa;
  end;

procedure UpdSett(nList : Cardinal);

var
  numByte, numSelByte, cnt : Cardinal;
begin
  BruteForce.TimerSend.Enabled := False;
  BruteForce.BtStart.Caption := '>';
  isExitSendCmd := True;
  CtrlBytes[1].RBSelByte.Checked := True;

  for numByte := 1 to 32 do
    begin
      CtrlBytes[numByte].STNumByte.Color := BruteForce.Color;
      cnt := 0;
      for numSelByte := 0 to 255 do
        begin
          CtrlBytes[numByte].isSelByte[numSelByte] := CfgPG.ListSett[nList].isSelByte[numByte, numSelByte];
          if(CtrlBytes[numByte].isSelByte[numSelByte]) then
            inc(cnt);
        end;
      if cnt > 0 then
        begin
          CtrlBytes[numByte].STNumByte.Color := clLime;
          CtrlBytes[numByte].isAct := True;
        end
      else
        begin
          CtrlBytes[numByte].STNumByte.Color := BruteForce.Color;
          CtrlBytes[numByte].isAct := false;
        end;

      CtrlBytes[numByte].STNumByte.Caption := IntToStr(cnt);
    end;

  for numSelByte := 0 to 255 do
    begin
      CtrlSelBytes[numSelByte].Checked := CtrlBytes[CurByte].isSelByte[numSelByte];
    end;

  case CfgPG.ListSett[nList].SendMode of
    SendManual : BruteForce.RBManual.Checked := True;
    SendAuto   : BruteForce.RBAuto.Checked := True;
  end;

  case CfgPG.ListSett[nList].ThroughMode of
    ThroughSequent : BruteForce.RB1.Checked := True;
    ThroughRandom : BruteForce.RB2.Checked := True;
  end;

  BruteForce.edt1.Text := CfgPG.ListSett[nList].Name;
  BruteForce.SendPeriod.Text := IntToStr(CfgPG.ListSett[nList].PeriodMin);
  BruteForce.edt3.Text       := IntToStr(CfgPG.ListSett[nList].PeriodMax);
  BruteForce.trckbr1.Position := CfgPG.ListSett[nList].LenMin;
  BruteForce.trckbr2.Position := CfgPG.ListSett[nList].LenMax;
  BruteForce.edt2.Text := Format('%03d', [nList]);

  CfgPG.NumList := nList;
  CurNumList := nList;
end;

procedure TBruteForce.FormCreate(Sender: TObject);
  var
    numByte : integer;
    numSelByte : integer;
    nH, nV     : integer;
    cnt        : integer;
    nList      : Integer;
    isResCfg   : Boolean;
  begin
    isResCfg   := False;
    isModeAuto := false;
    isExitSendCmd := False;
    LenMin := 32;
    LenMax := 32;
    isRandomEnum := False;

    btn3.Font.Name:='Symbol';
    btn3.Caption:=chr($AF);

    CtrlBytes[1].STNumByte  := StaticText97;      CtrlBytes[2].STNumByte  := StaticText98;        CtrlBytes[3].STNumByte  := StaticText99;      CtrlBytes[4].STNumByte  := StaticText100;      CtrlBytes[5].STNumByte  := StaticText101;     CtrlBytes[6].STNumByte  := StaticText102;       CtrlBytes[7].STNumByte  := StaticText103;     CtrlBytes[8].STNumByte  := StaticText104;
    CtrlBytes[9].STNumByte  := StaticText105;     CtrlBytes[10].STNumByte := StaticText106;       CtrlBytes[11].STNumByte := StaticText107;     CtrlBytes[12].STNumByte := StaticText108;      CtrlBytes[13].STNumByte := StaticText109;     CtrlBytes[14].STNumByte := StaticText110;       CtrlBytes[15].STNumByte := StaticText111;     CtrlBytes[16].STNumByte := StaticText112;
    CtrlBytes[17].STNumByte := StaticText113;     CtrlBytes[18].STNumByte := StaticText114;       CtrlBytes[19].STNumByte := StaticText115;     CtrlBytes[20].STNumByte := StaticText116;      CtrlBytes[21].STNumByte := StaticText117;     CtrlBytes[22].STNumByte := StaticText118;       CtrlBytes[23].STNumByte := StaticText119;     CtrlBytes[24].STNumByte := StaticText120;
    CtrlBytes[25].STNumByte := StaticText121;     CtrlBytes[26].STNumByte := StaticText122;       CtrlBytes[27].STNumByte := StaticText123;     CtrlBytes[28].STNumByte := StaticText124;      CtrlBytes[29].STNumByte := StaticText125;     CtrlBytes[30].STNumByte := StaticText126;       CtrlBytes[31].STNumByte := StaticText127;     CtrlBytes[32].STNumByte := StaticText128;

    CtrlBytes[1].RBSelByte   := RadioButton1;     CtrlBytes[2].RBSelByte   := RadioButton2;       CtrlBytes[3].RBSelByte   := RadioButton3;     CtrlBytes[4].RBSelByte   := RadioButton4;      CtrlBytes[5].RBSelByte   := RadioButton5;     CtrlBytes[6].RBSelByte   := RadioButton6;       CtrlBytes[7].RBSelByte   := RadioButton7;     CtrlBytes[8].RBSelByte   := RadioButton8;
    CtrlBytes[9].RBSelByte   := RadioButton9;     CtrlBytes[10].RBSelByte  := RadioButton10;      CtrlBytes[11].RBSelByte  := RadioButton11;    CtrlBytes[12].RBSelByte  := RadioButton12;     CtrlBytes[13].RBSelByte  := RadioButton13;    CtrlBytes[14].RBSelByte  := RadioButton14;      CtrlBytes[15].RBSelByte  := RadioButton15;    CtrlBytes[16].RBSelByte  := RadioButton16;
    CtrlBytes[17].RBSelByte  := RadioButton17;    CtrlBytes[18].RBSelByte  := RadioButton18;      CtrlBytes[19].RBSelByte  := RadioButton19;    CtrlBytes[20].RBSelByte  := RadioButton20;     CtrlBytes[21].RBSelByte  := RadioButton21;    CtrlBytes[22].RBSelByte  := RadioButton22;      CtrlBytes[23].RBSelByte  := RadioButton23;    CtrlBytes[24].RBSelByte  := RadioButton24;
    CtrlBytes[25].RBSelByte  := RadioButton25;    CtrlBytes[26].RBSelByte  := RadioButton26;      CtrlBytes[27].RBSelByte  := RadioButton27;    CtrlBytes[28].RBSelByte  := RadioButton28;     CtrlBytes[29].RBSelByte  := RadioButton29;    CtrlBytes[30].RBSelByte  := RadioButton30;      CtrlBytes[31].RBSelByte  := RadioButton31;    CtrlBytes[32].RBSelByte  := RadioButton32;
                                                                                                                                                                                               CtrlBytes[1].STByteHEX   := StaticText33;    CtrlBytes[2].STByteHEX   := StaticText34;        CtrlBytes[3].STByteHEX   := StaticText35;    CtrlBytes[4].STByteHEX   := StaticText36;
    CtrlBytes[5].STByteHEX   := StaticText37;    CtrlBytes[6].STByteHEX   := StaticText38;        CtrlBytes[7].STByteHEX   := StaticText39;    CtrlBytes[8].STByteHEX   := StaticText40;       CtrlBytes[9].STByteHEX   := StaticText41;    CtrlBytes[10].STByteHEX  := StaticText42;        CtrlBytes[11].STByteHEX  := StaticText43;    CtrlBytes[12].STByteHEX  := StaticText44;
    CtrlBytes[13].STByteHEX  := StaticText45;    CtrlBytes[14].STByteHEX  := StaticText46;        CtrlBytes[15].STByteHEX  := StaticText47;    CtrlBytes[16].STByteHEX  := StaticText48;       CtrlBytes[17].STByteHEX  := StaticText49;    CtrlBytes[18].STByteHEX  := StaticText50;        CtrlBytes[19].STByteHEX  := StaticText51;    CtrlBytes[20].STByteHEX  := StaticText52;
    CtrlBytes[21].STByteHEX  := StaticText53;    CtrlBytes[22].STByteHEX  := StaticText54;        CtrlBytes[23].STByteHEX  := StaticText55;    CtrlBytes[24].STByteHEX  := StaticText56;       CtrlBytes[25].STByteHEX  := StaticText57;    CtrlBytes[26].STByteHEX  := StaticText58;        CtrlBytes[27].STByteHEX  := StaticText59;    CtrlBytes[28].STByteHEX  := StaticText60;
    CtrlBytes[29].STByteHEX  := StaticText61;    CtrlBytes[30].STByteHEX  := StaticText62;        CtrlBytes[31].STByteHEX  := StaticText63;    CtrlBytes[32].STByteHEX  := StaticText64;                                                                                                     CtrlBytes[1].STByteASCII := StaticText1;     CtrlBytes[2].STByteASCII := StaticText2;
    CtrlBytes[3].STByteASCII := StaticText3;     CtrlBytes[4].STByteASCII := StaticText4;         CtrlBytes[5].STByteASCII := StaticText5;     CtrlBytes[6].STByteASCII := StaticText6;        CtrlBytes[7].STByteASCII := StaticText7;     CtrlBytes[8].STByteASCII := StaticText8;         CtrlBytes[9].STByteASCII := StaticText9;     CtrlBytes[10].STByteASCII:= StaticText10;
    CtrlBytes[11].STByteASCII:= StaticText11;    CtrlBytes[12].STByteASCII:= StaticText12;        CtrlBytes[13].STByteASCII:= StaticText13;    CtrlBytes[14].STByteASCII:= StaticText14;       CtrlBytes[15].STByteASCII:= StaticText15;    CtrlBytes[16].STByteASCII:= StaticText16;        CtrlBytes[17].STByteASCII:= StaticText17;    CtrlBytes[18].STByteASCII:= StaticText18;
    CtrlBytes[19].STByteASCII:= StaticText19;    CtrlBytes[20].STByteASCII:= StaticText20;        CtrlBytes[21].STByteASCII:= StaticText21;    CtrlBytes[22].STByteASCII:= StaticText22;       CtrlBytes[23].STByteASCII:= StaticText23;    CtrlBytes[24].STByteASCII:= StaticText24;        CtrlBytes[25].STByteASCII:= StaticText25;    CtrlBytes[26].STByteASCII:= StaticText26;
    CtrlBytes[27].STByteASCII:= StaticText27;    CtrlBytes[28].STByteASCII:= StaticText28;        CtrlBytes[29].STByteASCII:= StaticText29;    CtrlBytes[30].STByteASCII:= StaticText30;       CtrlBytes[31].STByteASCII:= StaticText31;    CtrlBytes[32].STByteASCII:= StaticText32;        CtrlSelBytes[0] := CheckBox1;      CtrlSelBytes[1] := CheckBox2;
    CtrlSelBytes[2] := CheckBox3;      CtrlSelBytes[3] := CheckBox4;      CtrlSelBytes[4] := CheckBox5;      CtrlSelBytes[5] := CheckBox6;                                                     CtrlSelBytes[6] := CheckBox7;      CtrlSelBytes[7] := CheckBox8;         CtrlSelBytes[8] := CheckBox9;      CtrlSelBytes[9] := CheckBox10;
    CtrlSelBytes[10] := CheckBox11;    CtrlSelBytes[11] := CheckBox12;       CtrlSelBytes[12] := CheckBox13;    CtrlSelBytes[13] := CheckBox14;                                                CtrlSelBytes[14] := CheckBox15;    CtrlSelBytes[15] := CheckBox16;       CtrlSelBytes[16] := CheckBox17;    CtrlSelBytes[17] := CheckBox18;
    CtrlSelBytes[18] := CheckBox19;    CtrlSelBytes[19] := CheckBox20;       CtrlSelBytes[20] := CheckBox21;    CtrlSelBytes[21] := CheckBox22;                                                CtrlSelBytes[22] := CheckBox23;    CtrlSelBytes[23] := CheckBox24;       CtrlSelBytes[24] := CheckBox25;    CtrlSelBytes[25] := CheckBox26;
    CtrlSelBytes[26] := CheckBox27;    CtrlSelBytes[27] := CheckBox28;       CtrlSelBytes[28] := CheckBox29;    CtrlSelBytes[29] := CheckBox30;                                                CtrlSelBytes[30] := CheckBox31;    CtrlSelBytes[31] := CheckBox32;       CtrlSelBytes[32] := CheckBox33;    CtrlSelBytes[33] := CheckBox34;
    CtrlSelBytes[34] := CheckBox35;    CtrlSelBytes[35] := CheckBox36;       CtrlSelBytes[36] := CheckBox37;    CtrlSelBytes[37] := CheckBox38;                                                CtrlSelBytes[38] := CheckBox39;    CtrlSelBytes[39] := CheckBox40;       CtrlSelBytes[40] := CheckBox41;    CtrlSelBytes[41] := CheckBox42;
    CtrlSelBytes[42] := CheckBox43;    CtrlSelBytes[43] := CheckBox44;       CtrlSelBytes[44] := CheckBox45;    CtrlSelBytes[45] := CheckBox46;                                                CtrlSelBytes[46] := CheckBox47;    CtrlSelBytes[47] := CheckBox48;       CtrlSelBytes[48] := CheckBox49;    CtrlSelBytes[49] := CheckBox50;
    CtrlSelBytes[50] := CheckBox51;    CtrlSelBytes[51] := CheckBox52;       CtrlSelBytes[52] := CheckBox53;    CtrlSelBytes[53] := CheckBox54;                                                CtrlSelBytes[54] := CheckBox55;    CtrlSelBytes[55] := CheckBox56;       CtrlSelBytes[56] := CheckBox57;    CtrlSelBytes[57] := CheckBox58;
    CtrlSelBytes[58] := CheckBox59;    CtrlSelBytes[59] := CheckBox60;       CtrlSelBytes[60] := CheckBox61;    CtrlSelBytes[61] := CheckBox62;                                                CtrlSelBytes[62] := CheckBox63;    CtrlSelBytes[63] := CheckBox64;       CtrlSelBytes[64] := CheckBox65;    CtrlSelBytes[65] := CheckBox66;
    CtrlSelBytes[66] := CheckBox67;    CtrlSelBytes[67] := CheckBox68;       CtrlSelBytes[68] := CheckBox69;    CtrlSelBytes[69] := CheckBox70;                                                CtrlSelBytes[70] := CheckBox71;    CtrlSelBytes[71] := CheckBox72;       CtrlSelBytes[72] := CheckBox73;    CtrlSelBytes[73] := CheckBox74;
    CtrlSelBytes[74] := CheckBox75;    CtrlSelBytes[75] := CheckBox76;       CtrlSelBytes[76] := CheckBox77;    CtrlSelBytes[77] := CheckBox78;                                                CtrlSelBytes[78] := CheckBox79;    CtrlSelBytes[79] := CheckBox80;       CtrlSelBytes[80] := CheckBox81;    CtrlSelBytes[81] := CheckBox82;
    CtrlSelBytes[82] := CheckBox83;    CtrlSelBytes[83] := CheckBox84;       CtrlSelBytes[84] := CheckBox85;    CtrlSelBytes[85] := CheckBox86;                                                CtrlSelBytes[86] := CheckBox87;    CtrlSelBytes[87] := CheckBox88;       CtrlSelBytes[88] := CheckBox89;    CtrlSelBytes[89] := CheckBox90;
    CtrlSelBytes[90] := CheckBox91;    CtrlSelBytes[91] := CheckBox92;       CtrlSelBytes[92] := CheckBox93;    CtrlSelBytes[93] := CheckBox94;                                                CtrlSelBytes[94] := CheckBox95;    CtrlSelBytes[95] := CheckBox96;       CtrlSelBytes[96] := CheckBox97;    CtrlSelBytes[97] := CheckBox98;
    CtrlSelBytes[98] := CheckBox99;    CtrlSelBytes[99] := CheckBox100;                                         CtrlSelBytes[100] := CheckBox101;                                              CtrlSelBytes[101] := CheckBox102;    CtrlSelBytes[102] := CheckBox103;     CtrlSelBytes[103] := CheckBox104;    CtrlSelBytes[104] := CheckBox105;
    CtrlSelBytes[105] := CheckBox106;    CtrlSelBytes[106] := CheckBox107;     CtrlSelBytes[107] := CheckBox108;    CtrlSelBytes[108] := CheckBox109;                                          CtrlSelBytes[109] := CheckBox110;    CtrlSelBytes[110] := CheckBox111;     CtrlSelBytes[111] := CheckBox112;    CtrlSelBytes[112] := CheckBox113;
    CtrlSelBytes[113] := CheckBox114;    CtrlSelBytes[114] := CheckBox115;     CtrlSelBytes[115] := CheckBox116;    CtrlSelBytes[116] := CheckBox117;                                          CtrlSelBytes[117] := CheckBox118;    CtrlSelBytes[118] := CheckBox119;     CtrlSelBytes[119] := CheckBox120;    CtrlSelBytes[120] := CheckBox121;
    CtrlSelBytes[121] := CheckBox122;    CtrlSelBytes[122] := CheckBox123;     CtrlSelBytes[123] := CheckBox124;    CtrlSelBytes[124] := CheckBox125;                                          CtrlSelBytes[125] := CheckBox126;    CtrlSelBytes[126] := CheckBox127;     CtrlSelBytes[127] := CheckBox128;    CtrlSelBytes[128] := CheckBox129;
    CtrlSelBytes[129] := CheckBox130;    CtrlSelBytes[130] := CheckBox131;     CtrlSelBytes[131] := CheckBox132;    CtrlSelBytes[132] := CheckBox133;                                          CtrlSelBytes[133] := CheckBox134;    CtrlSelBytes[134] := CheckBox135;     CtrlSelBytes[135] := CheckBox136;    CtrlSelBytes[136] := CheckBox137;
    CtrlSelBytes[137] := CheckBox138;    CtrlSelBytes[138] := CheckBox139;     CtrlSelBytes[139] := CheckBox140;    CtrlSelBytes[140] := CheckBox141;                                          CtrlSelBytes[141] := CheckBox142;    CtrlSelBytes[142] := CheckBox143;     CtrlSelBytes[143] := CheckBox144;    CtrlSelBytes[144] := CheckBox145;
    CtrlSelBytes[145] := CheckBox146;    CtrlSelBytes[146] := CheckBox147;     CtrlSelBytes[147] := CheckBox148;    CtrlSelBytes[148] := CheckBox149;                                          CtrlSelBytes[149] := CheckBox150;    CtrlSelBytes[150] := CheckBox151;     CtrlSelBytes[151] := CheckBox152;    CtrlSelBytes[152] := CheckBox153;
    CtrlSelBytes[153] := CheckBox154;    CtrlSelBytes[154] := CheckBox155;     CtrlSelBytes[155] := CheckBox156;    CtrlSelBytes[156] := CheckBox157;                                          CtrlSelBytes[157] := CheckBox158;    CtrlSelBytes[158] := CheckBox159;     CtrlSelBytes[159] := CheckBox160;    CtrlSelBytes[160] := CheckBox161;
    CtrlSelBytes[161] := CheckBox162;    CtrlSelBytes[162] := CheckBox163;     CtrlSelBytes[163] := CheckBox164;    CtrlSelBytes[164] := CheckBox165;                                          CtrlSelBytes[165] := CheckBox166;    CtrlSelBytes[166] := CheckBox167;     CtrlSelBytes[167] := CheckBox168;    CtrlSelBytes[168] := CheckBox169;
    CtrlSelBytes[169] := CheckBox170;    CtrlSelBytes[170] := CheckBox171;     CtrlSelBytes[171] := CheckBox172;    CtrlSelBytes[172] := CheckBox173;                                          CtrlSelBytes[173] := CheckBox174;    CtrlSelBytes[174] := CheckBox175;     CtrlSelBytes[175] := CheckBox176;    CtrlSelBytes[176] := CheckBox177;
    CtrlSelBytes[177] := CheckBox178;    CtrlSelBytes[178] := CheckBox179;     CtrlSelBytes[179] := CheckBox180;    CtrlSelBytes[180] := CheckBox181;                                          CtrlSelBytes[181] := CheckBox182;    CtrlSelBytes[182] := CheckBox183;     CtrlSelBytes[183] := CheckBox184;    CtrlSelBytes[184] := CheckBox185;
    CtrlSelBytes[185] := CheckBox186;    CtrlSelBytes[186] := CheckBox187;     CtrlSelBytes[187] := CheckBox188;    CtrlSelBytes[188] := CheckBox189;                                          CtrlSelBytes[189] := CheckBox190;    CtrlSelBytes[190] := CheckBox191;     CtrlSelBytes[191] := CheckBox192;    CtrlSelBytes[192] := CheckBox193;
    CtrlSelBytes[193] := CheckBox194;    CtrlSelBytes[194] := CheckBox195;     CtrlSelBytes[195] := CheckBox196;    CtrlSelBytes[196] := CheckBox197;                                          CtrlSelBytes[197] := CheckBox198;    CtrlSelBytes[198] := CheckBox199;     CtrlSelBytes[199] := CheckBox200;    CtrlSelBytes[200] := CheckBox201;
    CtrlSelBytes[201] := CheckBox202;    CtrlSelBytes[202] := CheckBox203;     CtrlSelBytes[203] := CheckBox204;    CtrlSelBytes[204] := CheckBox205;                                          CtrlSelBytes[205] := CheckBox206;    CtrlSelBytes[206] := CheckBox207;     CtrlSelBytes[207] := CheckBox208;    CtrlSelBytes[208] := CheckBox209;
    CtrlSelBytes[209] := CheckBox210;    CtrlSelBytes[210] := CheckBox211;     CtrlSelBytes[211] := CheckBox212;    CtrlSelBytes[212] := CheckBox213;                                          CtrlSelBytes[213] := CheckBox214;    CtrlSelBytes[214] := CheckBox215;     CtrlSelBytes[215] := CheckBox216;    CtrlSelBytes[216] := CheckBox217;
    CtrlSelBytes[217] := CheckBox218;    CtrlSelBytes[218] := CheckBox219;     CtrlSelBytes[219] := CheckBox220;    CtrlSelBytes[220] := CheckBox221;                                          CtrlSelBytes[221] := CheckBox222;    CtrlSelBytes[222] := CheckBox223;     CtrlSelBytes[223] := CheckBox224;    CtrlSelBytes[224] := CheckBox225;
    CtrlSelBytes[225] := CheckBox226;    CtrlSelBytes[226] := CheckBox227;     CtrlSelBytes[227] := CheckBox228;    CtrlSelBytes[228] := CheckBox229;                                          CtrlSelBytes[229] := CheckBox230;    CtrlSelBytes[230] := CheckBox231;     CtrlSelBytes[231] := CheckBox232;    CtrlSelBytes[232] := CheckBox233;
    CtrlSelBytes[233] := CheckBox234;    CtrlSelBytes[234] := CheckBox235;     CtrlSelBytes[235] := CheckBox236;    CtrlSelBytes[236] := CheckBox237;                                          CtrlSelBytes[237] := CheckBox238;    CtrlSelBytes[238] := CheckBox239;     CtrlSelBytes[239] := CheckBox240;    CtrlSelBytes[240] := CheckBox241;
    CtrlSelBytes[241] := CheckBox242;    CtrlSelBytes[242] := CheckBox243;     CtrlSelBytes[243] := CheckBox244;    CtrlSelBytes[244] := CheckBox245;                                          CtrlSelBytes[245] := CheckBox246;    CtrlSelBytes[246] := CheckBox247;     CtrlSelBytes[247] := CheckBox248;    CtrlSelBytes[248] := CheckBox249;
    CtrlSelBytes[249] := CheckBox250;    CtrlSelBytes[250] := CheckBox251;     CtrlSelBytes[251] := CheckBox252;    CtrlSelBytes[252] := CheckBox253;                                          CtrlSelBytes[253] := CheckBox254;    CtrlSelBytes[254] := CheckBox255;     CtrlSelBytes[255] := CheckBox256;    CtrlSelBytesV[0]  := CheckBox257;
    CtrlSelBytesV[1]  := CheckBox258;    CtrlSelBytesV[2]  := CheckBox259;     CtrlSelBytesV[3]  := CheckBox260;    CtrlSelBytesV[4]  := CheckBox263;                                          CtrlSelBytesV[5]  := CheckBox264;    CtrlSelBytesV[6]  := CheckBox262;     CtrlSelBytesV[7]  := CheckBox261;    CtrlSelBytesV[8]  := CheckBox272;
    CtrlSelBytesV[9]  := CheckBox271;    CtrlSelBytesV[10] := CheckBox270;     CtrlSelBytesV[11] := CheckBox269;    CtrlSelBytesV[12] := CheckBox268;                                          CtrlSelBytesV[13] := CheckBox267;    CtrlSelBytesV[14] := CheckBox266;     CtrlSelBytesV[15] := CheckBox265;
    CtrlSelBytesH[0]  := CheckBox273;    CtrlSelBytesH[1]  := CheckBox274;     CtrlSelBytesH[2]  := CheckBox275;    CtrlSelBytesH[3]  := CheckBox276;                                          CtrlSelBytesH[4]  := CheckBox280;    CtrlSelBytesH[5]  := CheckBox279;     CtrlSelBytesH[6]  := CheckBox278;    CtrlSelBytesH[7]  := CheckBox277;
    CtrlSelBytesH[8]  := CheckBox284;    CtrlSelBytesH[9]  := CheckBox283;     CtrlSelBytesH[10] := CheckBox282;    CtrlSelBytesH[11] := CheckBox281;                                          CtrlSelBytesH[12] := CheckBox288;    CtrlSelBytesH[13] := CheckBox287;     CtrlSelBytesH[14] := CheckBox286;    CtrlSelBytesH[15] := CheckBox285;

    CurByte  := 1;
    CopyByte := 1;

    for numByte := 1 to 32 do
      begin
        CtrlBytes[numByte].STNumByte.Caption := '0';//IntToStr(numByte);
        CtrlBytes[numByte].STNumByte.Color   := BruteForce.Color;
        CtrlBytes[numByte].RBSelByte.OnClick := SelByteClick;
        CtrlBytes[numByte].RBSelByte.Tag     := numByte;
        for numSelByte := 0 to 255 do
          CtrlBytes[numByte].isSelByte[numSelByte] := false;
        CtrlBytes[numByte].Pos               := 0;
        CtrlBytes[numByte].isAct             := false;
        CtrlBytes[numByte].STByteHEX.Color     := BruteForce.Color;
        CtrlBytes[numByte].STByteASCII.Color   := BruteForce.Color;
        CtrlBytes[numByte].STByteHEX.Caption   := '';
        CtrlBytes[numByte].STByteASCII.Caption := '';
      end;

    for numSelByte := 0 to 255 do
      begin
        CtrlSelBytes[numSelByte].Caption := IntToHex(numSelByte, 2) + ':' + Chr(numSelByte);
        CtrlSelBytes[numSelByte].Tag     := numSelByte;
        CtrlSelBytes[numSelByte].OnClick := CtrlBytesClick;
        isSelByteBuf[numSelByte] := false;
      end;

    for nV := 0 to 15 do
      begin
        CtrlSelBytesV[nV].Caption := IntToHex(nV,1) + 'X';
        CtrlSelBytesV[nV].Color   := clWindow;
        CtrlSelBytesV[nV].OnClick := SelByteVClick;
        CtrlSelBytesV[nV].Tag     := nV;
      end;

    for nH := 0 to 15 do
      begin
        CtrlSelBytesH[nH].Caption := 'X' + IntToHex(nH,1);
        CtrlSelBytesH[nH].Color   := clWindow;
        CtrlSelBytesH[nH].OnClick := SelByteHClick;
        CtrlSelBytesH[nH].Tag     := nH;
      end;

    AssignFile(SettingFile, ExtractFilePath(Application.ExeName) + CFG_FILE_NAME);
    if FileExists(ExtractFilePath(Application.ExeName) + CFG_FILE_NAME) and (Get_File_Size(ExtractFilePath(Application.ExeName) + CFG_FILE_NAME, True) > 0) then
      begin
        //BTReadCfg.Enabled := true;
        try
          Reset(SettingFile);
          Read(SettingFile, CfgPG);
          CloseFile(SettingFile);
        except
          BTReadCfg.Enabled := false;
          isResCfg := True;
        end;
      end
    else
      isResCfg := True;

    for nList := 1 to CNT_LIST_SETT_PG do
      if CfgPG.ListSett[nList].PeriodMax < CfgPG.ListSett[nList].PeriodMin then
        CfgPG.ListSett[nList].PeriodMax := CfgPG.ListSett[nList].PeriodMin;

    if isResCfg then
      begin
        CfgPG.NumList := 1;
        CfgPG.Reserv1 := 0;
        CfgPG.Reserv2 := 0;
        CfgPG.Reserv3 := 0;
        for nList := 1 to CNT_LIST_SETT_PG do
          begin
            CfgPG.ListSett[nList].Name := 'Cfg_' + IntToStr(nList);
            CfgPG.ListSett[nList].SendMode := SendManual;
            CfgPG.ListSett[nList].ThroughMode := ThroughSequent;
            CfgPG.ListSett[nList].PeriodMin := 1000;
              for numByte := 1 to 32 do
                for numSelByte := 0 to 255 do
                  begin
                    CfgPG.ListSett[nList].isSelByte[numByte, numSelByte] := False;
                    CfgPG.ListSett[nList].isReserv1[numByte, numSelByte] := False;
                    CfgPG.ListSett[nList].Reserv4[numByte, numSelByte] := 0;
                  end;
            CfgPG.ListSett[nList].reserv2 := $FFFFFFFF;
            CfgPG.ListSett[nList].PeriodMax := 1000;
            CfgPG.ListSett[nList].LenMin := 32;
            CfgPG.ListSett[nList].LenMax := 32;
          end;
      end;

    CurNumList := CfgPG.NumList;
    UpdSett(CurNumList);

    CtrlBytes[CurByte].RBSelByte.Checked := true;

  end;

procedure TBruteForce.SelByteClick(Sender: TObject);
  var
    nByte    : integer;
    nSelByte : integer;
  begin
    nByte    := (Sender as TRadioButton).Tag;
    CurByte  := nByte;
    for nSelByte := 0 to 255 do
      begin
        CtrlSelBytes[nSelByte].Checked := CtrlBytes[nByte].isSelByte[nSelByte];
      end;
  end;

procedure TBruteForce.CtrlBytesClick(Sender: TObject);
  var
    SelByte  : integer;
    i        : integer;
    isActTmp : boolean;
    cntBytes : integer;
  begin
    SelByte := (Sender as TCheckBox).Tag;
    CtrlBytes[CurByte].isSelByte[SelByte] := (Sender as TCheckBox).Checked;
    isActTmp := false;
    cntBytes := 0;

    if CopyByte = CurByte then
      begin
        CtrlBytes[CopyByte].STNumByte.BorderStyle := sbsSunken;
        BTPaste.Enabled := false;
      end;
    i := 0;

    for i := 0 to 255 do
      begin
        if CtrlBytes[CurByte].isSelByte[i] then
          inc(cntBytes);
      end;

    isActTmp := cntBytes > 0;

    CtrlBytes[CurByte].isAct := isActTmp;
    CtrlBytes[CurByte].STNumByte.Caption := IntToStr(cntBytes);
    if isActTmp then
      CtrlBytes[CurByte].STNumByte.Color := clLime
    else
      CtrlBytes[CurByte].STNumByte.Color := BruteForce.Color;

    if (Sender as TCheckBox).Checked then
      begin
        (Sender as TCheckBox).Color := clLime
      end
    else
      begin
        (Sender as TCheckBox).Color := BruteForce.Color;
      end;

    CfgPG.ListSett[CurNumList].isSelByte[CurByte, SelByte] := (Sender as TCheckBox).Checked;
  end;

procedure TBruteForce.Button1Click(Sender: TObject);
  begin
    if CurByte > 1 then
      dec(CurByte);
    CtrlBytes[CurByte].RBSelByte.Checked := true;
  end;

procedure TBruteForce.Button2Click(Sender: TObject);
  begin
    if CurByte < 32 then
      inc(CurByte);
    CtrlBytes[CurByte].RBSelByte.Checked := true;
  end;

procedure TBruteForce.CBSelAllClick(Sender: TObject);
  var
    status : boolean;
    nByte  : integer;
  begin
    status := (Sender as TCheckBox).Checked;
    for nByte := 0 to 255 do
      CtrlSelBytes[nByte].Checked := status;

  end;

procedure TBruteForce.SelByteVClick(Sender: TObject);
  var
    nSt    : integer;
    status : boolean;
    i      : integer;
  begin
    nSt    := (Sender as TCheckBox).Tag;
    status := (Sender as TCheckBox).Checked;
    for i := 0 to 15 do
      CtrlSelBytes[nSt * 16 + i].Checked := status;
  end;




procedure TBruteForce.SelByteHClick(Sender: TObject);
  var
    nLine    : integer;
    status   : boolean;
    i        : integer;
  begin
    nLine    := (Sender as TCheckBox).Tag;
    status   := (Sender as TCheckBox).Checked;
    for i := 0 to 15 do
      CtrlSelBytes[i * 16 + nLine].Checked := status;
  end;


function NextPacket : string;
  var
    Msg       : string[128];
    iBytes    : byte;
    isSend    : boolean;
    isNextInc : boolean;
    iTemp     : word;
    numByte   : integer;
    Len : Integer;
  begin
    Msg       := '';
    isNextInc := false;
    isSend    := false;
    numByte   := 1;
    Randomize;

    Len := LenMin + Random(LenMax - LenMin + 1);


    for iBytes := 1 to 32 do
      begin
        CtrlBytes[iBytes].STByteHEX.Color     := BruteForce.Color;
        CtrlBytes[iBytes].STByteASCII.Color   := BruteForce.Color;
        CtrlBytes[iBytes].STByteHEX.Caption   := '';
        CtrlBytes[iBytes].STByteASCII.Caption := '';
      end;

    for iBytes := 1 to Len do
      begin
        if CtrlBytes[iBytes].isAct then
          begin
            if isRandomEnum then
              begin
                repeat
                  CtrlBytes[iBytes].Pos := Random(256);
                  //inc(CntPos);
                until (CtrlBytes[iBytes].isSelByte[CtrlBytes[iBytes].Pos]);
              end
            else
              begin
                while (not CtrlBytes[iBytes].isSelByte[CtrlBytes[iBytes].Pos]) do
                  begin
                    inc(CtrlBytes[iBytes].Pos);
                    //inc(CntPos);
                  end;
              end;
            CtrlBytes[numByte].STByteHEX.Caption   := IntToHex(CtrlBytes[iBytes].Pos, 2);
            CtrlBytes[numByte].STByteASCII.Caption := Chr(CtrlBytes[iBytes].Pos);
            Msg := Msg + IntToHex(CtrlBytes[iBytes].Pos, 2) + ' ';
            //CtrlBytes[numByte].STByteHEX.Color     := clLime;
            //CtrlBytes[numByte].STByteASCII.Color   := clLime;
            inc(numByte);


          end;
      end;

    iBytes := Len;

    isNextInc := true;

    while (iBytes > 0) and (isNextInc) and not isExitSendCmd do
      begin
        if not CtrlBytes[iBytes].isAct then
          begin
            dec(iBytes);
          end
        else
          begin
            while (isNextInc) and (iBytes > 0) and not isExitSendCmd do
              begin
                repeat
                  inc(CtrlBytes[iBytes].Pos);
                  isNextInc := CtrlBytes[iBytes].Pos = 0;
                until (CtrlBytes[iBytes].isSelByte[CtrlBytes[iBytes].Pos]) or (isNextInc) or isExitSendCmd;
                dec(iBytes);
             end;
          end;
      end;
    isExitSendCmd := False;
    result := Msg;
  end;

procedure TBruteForce.TimerSendTimer(Sender: TObject);
  var
    Msg : string;
  begin
    Msg := NextPacket;
    if Msg <> '' then
      begin
        if (TerminalST.Form1.SendPortData(Msg, '', SendHEX, false)) then
          begin
            inc(SendMsg);
            req1.Caption := 'Send: ' + IntToStr(SendMsg);
          end
        else
          begin
            BTStart.Caption := '>';
            (Sender as TTimer).Enabled := false;
          end;
      end;
    (Sender as TTimer).Interval := CfgPG.ListSett[CurNumList].PeriodMin + Random(CfgPG.ListSett[CurNumList].PeriodMax - CfgPG.ListSett[CurNumList].PeriodMin);
  end;

procedure TBruteForce.BTStartClick(Sender: TObject);
  var
    Msg : string;
  begin
    if isModeAuto then
      begin
        TimerSend.Enabled := not TimerSend.Enabled;
        if TimerSend.Enabled then
          (Sender as TButton).Caption := '||'
        else
          (Sender as TButton).Caption := '>'
      end
    else
      begin
        Msg := NextPacket;
        if Msg <> '' then
          begin
            TerminalST.Form1.SendPortData(Msg, '', SendHex, false);
            inc(SendMsg);
            req1.Caption := 'Send: ' + IntToStr(SendMsg);
          end;
      end;
  end;

procedure TBruteForce.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
    isModeAuto        := false;
    TimerSend.Enabled := false;
    BTStart.Caption   := '>';
    TerminalST.Form1.BrutForceBT.Font.Style := [];
    RBManual.Checked  := true;
 end;

procedure TBruteForce.SendPeriodKeyPress(Sender: TObject; var Key: Char);
  begin
    if not (Key in ['0'..'9', #8]) then
      Key := #0;
  end;

procedure TBruteForce.SendPeriodChange(Sender: TObject);
  var
    DataStr : string;
    Len     : integer;
  begin
    DataStr := (Sender as TEdit).Text;
    Len     := Length(DataStr);
    if Len = 0 then TimerSEnd.Interval := 1 else
    if Len > 8 then TimerSEnd.Interval := 100000000 else
    TimerSEnd.Interval := StrToInt(DataStr);
    try
      CfgPG.ListSett[CurNumList].PeriodMin := StrToInt(DataStr);
    except
      CfgPG.ListSett[CurNumList].PeriodMin := 1000;
    end;

    if CfgPG.ListSett[CurNumList].PeriodMin > CfgPG.ListSett[CurNumList].PeriodMax then
      begin
        CfgPG.ListSett[CurNumList].PeriodMax := CfgPG.ListSett[CurNumList].PeriodMin;
        edt3.Text := IntToStr(CfgPG.ListSett[CurNumList].PeriodMax);
      end;
  end;

procedure TBruteForce.RBAutoClick(Sender: TObject);
  begin
    isModeAuto := true;
    CfgPG.ListSett[CurNumList].SendMode := SendAuto;
  end;

procedure TBruteForce.RBManualClick(Sender: TObject);
  begin
    isModeAuto := false;
    TimerSend.Enabled := false;
    BTStart.Caption := '>';
    CfgPG.ListSett[CurNumList].SendMode := SendManual;
  end;

procedure TBruteForce.BTRestartClick(Sender: TObject);
  var
    i : integer;
  begin
    for i:= 1 to 32 do
      CtrlBytes[i].Pos := 0;
    SendMsg := 0;
    req1.Caption := 'Send: ' + IntToStr(SendMsg);
  end;

procedure TBruteForce.BTCopyClick(Sender: TObject);
  var
    i: byte;
  begin
    for i:= 0 to 255 do
      begin
        isSelByteBuf[i] := CtrlBytes[CurByte].isSelByte[i];
      end;
    BTPaste.Enabled := true;
    CtrlBytes[CopyByte].STNumByte.BorderStyle := sbsSunken;
    CtrlBytes[CurByte].STNumByte.BorderStyle  := sbsSingle;
    CopyByte := CurByte;
  end;

procedure TBruteForce.BTPasteClick(Sender: TObject);
  var
    i: byte;
  begin
    for i:= 0 to 255 do
      begin
        CtrlSelBytes[i].Checked := isSelByteBuf[i];
      end;
  end;


procedure TBruteForce.CloseFileCfgBruteForce;
  var
    numByte, numSelByte : byte;
  begin
    AssignFile(SettingFile, ExtractFilePath(Application.ExeName) + CFG_FILE_NAME);
    if not FileExists(ExtractFilePath(Application.ExeName) + CFG_FILE_NAME) or (Get_File_Size(ExtractFilePath(Application.ExeName) + CFG_FILE_NAME, True) = 0) then
      Rewrite(SettingFile);

    Reset(SettingFile);
    Write(SettingFile, CfgPG);

    CloseFile(SettingFile);
  end;

procedure TBruteForce.BTClearClick(Sender: TObject);
  var
    numByte, numSelByte : byte;
  begin
    for numByte := 1 to 32 do
      begin
        CtrlBytes[numByte].STNumByte.Caption     := '0';//IntToStr(numByte);
        CtrlBytes[numByte].STNumByte.Color       := BruteForce.Color;
        CtrlBytes[numByte].STNumByte.BorderStyle := sbsSunken;
        for numSelByte := 0 to 255 do
          CtrlBytes[numByte].isSelByte[numSelByte] := false;
        CtrlBytes[numByte].Pos                  := 0;
        CtrlBytes[numByte].isAct               := false;
        CtrlBytes[numByte].STByteHEX.Color     := BruteForce.Color;
        CtrlBytes[numByte].STByteASCII.Color   := BruteForce.Color;
        CtrlBytes[numByte].STByteHEX.Caption   := '';
        CtrlBytes[numByte].STByteASCII.Caption := '';
      end;
    CurByte := 1;

    for numSelByte := 0 to 255 do
      begin
        CtrlSelBytes[numSelByte].Checked := CtrlBytes[CurByte].isSelByte[numSelByte];
        CtrlSelBytes[numSelByte].Color   := BruteForce.Color;
      end;

    CtrlBytes[CurByte].RBSelByte.Checked := true;

  end;

procedure TBruteForce.BTReadCfgClick(Sender: TObject);
  var
    numByte, numSelByte, cnt : integer;
  begin
    AssignFile(SettingFile, ExtractFilePath(Application.ExeName) + CFG_FILE_NAME);
    if FileExists(ExtractFilePath(Application.ExeName) + CFG_FILE_NAME) and (Get_File_Size(ExtractFilePath(Application.ExeName) + CFG_FILE_NAME, True) > 0) then
      begin
        Reset(SettingFile);
        Read(SettingFile, CfgPG);
        //for numByte := 1 to 32 do
        //  begin
        //    cnt := 0;
        //    for numSelByte := 0 to 255 do
        //      begin
        //        Read(SettingFile, CtrlBytes[numByte].isSelByte[numSelByte]);
        //        if(CtrlBytes[numByte].isSelByte[numSelByte]) then
        //          inc(cnt);
        //      end;
        //    if cnt > 0 then
        //      CtrlBytes[numByte].STNumByte.Color := clLime;
        //    CtrlBytes[numByte].STNumByte.Caption := IntToStr(cnt);
        //  end;
        CloseFile(SettingFile);
      end;

    for numSelByte := 0 to 255 do
      begin
        CtrlSelBytes[numSelByte].Checked := CtrlBytes[CurByte].isSelByte[numSelByte];
      end;
  end;

procedure TBruteForce.Edt1KeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key in ['0'..'9', #8]) then
      Key := #0;
end;

procedure TBruteForce.Edt2KeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key in ['0'..'9', #8]) then
      Key := #0;
end;

procedure TBruteForce.Edt1Change(Sender: TObject);
begin
  CfgPG.ListSett[CurNumList].Name := (Sender as TEdit).Text;
end;

procedure TBruteForce.Edt2Change(Sender: TObject);
var
  Len : Integer;
begin
  Len := LenMax;
  if (Sender as TEdit).Text <> '' then
    LenMax := StrToInt((Sender as TEdit).Text)
  else
    LenMax := Len;
    if (LenMax < 1) or (LenMax > 32) or (LenMax < LenMin) then
    begin
      LenMax := Len;
      (Sender as TEdit).Color := clYellow;
    end
  else
    begin
      (Sender as TEdit).Color := clWindow;
    end;
  (Sender as TEdit).Text := IntToStr(LenMax);
end;

procedure TBruteForce.trckbr1Change(Sender: TObject);
begin
  LenMin := (Sender as TTrackBar).Position;
  if LenMin > LenMax then
    trckbr2.Position := LenMin;
  lbl3.Caption := IntToStr(LenMin);
  CfgPG.ListSett[CurNumList].LenMin := LenMin;
end;

procedure TBruteForce.trckbr2Change(Sender: TObject);
begin
  LenMax := (Sender as TTrackBar).Position;
  if LenMax < LenMin then
    trckbr1.Position := LenMax;
  lbl4.Caption := IntToStr(LenMax);
  CfgPG.ListSett[CurNumList].LenMax := LenMax;
end;

procedure TBruteForce.rb1Click(Sender: TObject);
begin
  isRandomEnum := False;
  CfgPG.ListSett[CurNumList].ThroughMode := ThroughSequent;
end;

procedure TBruteForce.rb2Click(Sender: TObject);
begin
  isRandomEnum := True;
  CfgPG.ListSett[CurNumList].ThroughMode := ThroughRandom;
end;

procedure TBruteForce.btn1Click(Sender: TObject);
begin
  if CurNumList > 1 then
    begin
      Dec(CurNumList);
      BruteForce.TimerSend.Enabled := False;
      BruteForce.tmrUpdList.Enabled := True;
      //UpdSett(CurNumList);
    end;

  if CurNumList = 1 then
    btn1.Enabled := False;

  btn2.Enabled := True;
end;

procedure TBruteForce.btn2Click(Sender: TObject);
begin
  if CurNumList < CNT_LIST_SETT_PG then
    begin
      Inc(CurNumList);
      BruteForce.TimerSend.Enabled := False;
      BruteForce.tmrUpdList.Enabled := True;

      //UpdSett(CurNumList);
    end;

  if CurNumList = CNT_LIST_SETT_PG then
    btn2.Enabled := False;

  btn1.Enabled := True;
end;

procedure TBruteForce.btn3Click(Sender: TObject);
var i : Cardinal;
begin
  lst1.Clear;
  for i := 1 to CNT_LIST_SETT_PG do
    lst1.Items.Add(Format('%03d', [i]) +'. ' + CfgPG.ListSett[i].Name);

  lst1.Visible := true;
  ActiveControl := lst1;
end;

procedure TBruteForce.lst1DblClick(Sender: TObject);
begin
  CurNumList := (Sender as TListBox).ItemIndex + 1;
  BruteForce.TimerSend.Enabled := False;
  BruteForce.tmrUpdList.Enabled := True;
  //UpdSett(CurNumList);

        if (CurNumList < CNT_LIST_SETT_PG) and (CurNumList > 1) then
        begin
          btn1.Enabled := True;
          btn2.Enabled := True;
        end;

      if CurNumList = CNT_LIST_SETT_PG then
        begin
          btn1.Enabled := True;
          btn2.Enabled := false;
        end;

      if CurNumList = 1 then
        begin
          btn1.Enabled := False;
          btn2.Enabled := True;
        end;


  (Sender as TListBox).Visible := False;
end;

procedure TBruteForce.lst1KeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) and ((Sender as TListBox).ItemIndex > -1) then
    begin
      CurNumList := (Sender as TListBox).ItemIndex + 1;
      BruteForce.TimerSend.Enabled := False;
      BruteForce.tmrUpdList.Enabled := True;

      //UpdSett(CurNumList);
      (Sender as TListBox).Visible := False;


      if (CurNumList < CNT_LIST_SETT_PG) and (CurNumList > 1) then
        begin
          btn1.Enabled := True;
          btn2.Enabled := True;
        end;

      if CurNumList = CNT_LIST_SETT_PG then
        begin
          btn1.Enabled := True;
          btn2.Enabled := false;
        end;

      if CurNumList = 1 then
        begin
          btn1.Enabled := False;
          btn2.Enabled := True;
        end;



    end;

  if Key = #27 then
    begin
     (Sender as TListBox).Visible := False;
    end;
end;

procedure TBruteForce.edt1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i: Integer;
begin
  if Key = VK_DOWN then
    begin
      lst1.Clear;
      for i := 1 to CNT_LIST_SETT_PG do
        lst1.Items.Add(Format('%03d', [i]) +'. ' + CfgPG.ListSett[i].Name);

      lst1.Visible := True;
      ActiveControl := lst1;
    end;

end;

procedure TBruteForce.lst1Exit(Sender: TObject);
begin
  ActiveControl := edt1;
  (Sender as TlistBox).Visible := False;
end;

procedure TBruteForce.tmrUpdListTimer(Sender: TObject);
begin
  UpdSett(CurNumList);
  (Sender as TTimer).Enabled := False;
end;

procedure TBruteForce.edt3Change(Sender: TObject);
  var
    DataStr : string;
    Len     : integer;
  begin
    DataStr := (Sender as TEdit).Text;
    Len     := Length(DataStr);
    if Len = 0 then TimerSEnd.Interval := 1 else
    if Len > 8 then TimerSEnd.Interval := 100000000 else
    TimerSEnd.Interval := StrToInt(DataStr);
    try
      CfgPG.ListSett[CurNumList].PeriodMax := StrToInt(DataStr);
    except
      CfgPG.ListSett[CurNumList].PeriodMax := 1000;
    end;

    if CfgPG.ListSett[CurNumList].PeriodMin > CfgPG.ListSett[CurNumList].PeriodMax then
      begin
        CfgPG.ListSett[CurNumList].PeriodMin := CfgPG.ListSett[CurNumList].PeriodMax;
        SendPeriod.Text := IntToStr(CfgPG.ListSett[CurNumList].PeriodMin);
      end;

  end;


end.


