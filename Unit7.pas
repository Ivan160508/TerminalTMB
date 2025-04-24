unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TerminalST, DateUtils, Common;


const
  CNT_CMD_IN_LIST = 32;
  CNT_LIST        = 999;
  WAIT_SEND       = 1;
type
  TCmd = record
    isUseCmd : boolean;
    CmdMain  : string[255];
    CmdAdd   : string[50];
    TimeOut  : integer;
    CntAtt   : integer;
    CmdHelp  : string[255];
    Reserv1  : string[255];
    Reserv2  : boolean;
    Reserv3  : integer;
    Reserv4  : integer;
    Reserv5  : integer;
  end;

type
  TCmdList = record
    CmdName   : string[255];
    Cmd       : array[1..CNT_CMD_IN_LIST] of TCmd;
    Marker    : integer;
    Reserv1   : string[255];
    isActive  : boolean;
    SendMode  : integer;
    Reserv4   : integer;
  end;

type
  TCfg = record
    CmdList  : array[1..CNT_LIST] of TCmdList;
    isMan    : boolean;
    isAuto   : boolean;
    isRound  : boolean;
    isAllList: boolean;
    ListStart: integer;
    ListStop : integer;
    Reserv1  : boolean;
    Reserv2  : boolean;
    Reserv3  : boolean;
    Reserv4  : integer;
    Reserv5  : integer;
    Reserv6  : integer;
    Reserv7  : integer;
    Reserv8  : string[255];
  end;

type
  TCfgOld = record
    CmdList  : array[1..100] of TCmdList;
    isMan    : boolean;
    isAuto   : boolean;
    isRound  : boolean;
    isAllList: boolean;
    ListStart: integer;
    ListStop : integer;
    Reserv1  : boolean;
    Reserv2  : boolean;
    Reserv3  : boolean;
    Reserv4  : integer;
    Reserv5  : integer;
    Reserv6  : integer;
    Reserv7  : integer;
    Reserv8  : string[255];
  end;


type
  TForm7 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    Edit58: TEdit;
    Edit59: TEdit;
    Edit60: TEdit;
    Edit61: TEdit;
    Edit62: TEdit;
    Edit63: TEdit;
    Edit64: TEdit;
    Edit65: TEdit;
    Edit66: TEdit;
    Edit67: TEdit;
    Edit68: TEdit;
    Edit69: TEdit;
    Edit70: TEdit;
    Edit71: TEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    Edit74: TEdit;
    Edit75: TEdit;
    Edit76: TEdit;
    Edit77: TEdit;
    Edit78: TEdit;
    Edit79: TEdit;
    Edit80: TEdit;
    Edit81: TEdit;
    Edit82: TEdit;
    Edit83: TEdit;
    Edit84: TEdit;
    Edit85: TEdit;
    Edit86: TEdit;
    Edit87: TEdit;
    Edit88: TEdit;
    Edit89: TEdit;
    Edit90: TEdit;
    Edit91: TEdit;
    Edit92: TEdit;
    Edit93: TEdit;
    Edit94: TEdit;
    Edit95: TEdit;
    Edit96: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
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
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    NameList: TEdit;
    CheckBox33: TCheckBox;
    ListPrev: TButton;
    ListNext: TButton;
    NumListEdit: TEdit;
    Button33: TButton;
    TimerSend: TTimer;
    GroupBox1: TGroupBox;
    RBModeAuto: TRadioButton;
    RBModeManual: TRadioButton;
    isRound: TCheckBox;
    GroupBox2: TGroupBox;
    RBASCII: TRadioButton;
    RBHEX: TRadioButton;
    isAllList: TCheckBox;
    Timeout: TEdit;
    LStart: TEdit;
    LEnd: TEdit;
    Label1: TLabel;
    EditTOAll: TEdit;
    EditTailAll: TEdit;
    BTTail: TButton;
    BT_TO: TButton;
    TimerCnt: TTimer;
    StatText: TStaticText;
    BTResetStat: TButton;
    btn1: TButton;
    ListTail: TListBox;
    ListGroup: TListBox;
    rbDEC: TRadioButton;
    grp1: TGroupBox;
    rb1: TRadioButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    chk1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure RBASCIIClick(Sender: TObject);
    procedure RBHEXClick(Sender: TObject);
    procedure VisTimeClick(Sender: TObject);
    procedure ButtonCmdClick(Sender: TObject);
    procedure CheckBoxActCmdClick(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure RBModeAutoClick(Sender: TObject);
    procedure RBModeManualClick(Sender: TObject);
    procedure CheckBox33Click(Sender: TObject);
    procedure TimerSendTimer(Sender: TObject);
    procedure SaveCfg;
    function  GetAddStr : string;
    procedure UpdateListCmd(var List : integer);
    procedure ListPrevClick(Sender: TObject);
    procedure ListNextClick(Sender: TObject);
    procedure NameListChange(Sender: TObject);
    procedure EditChangeCmd(Sender: TObject);
    procedure EditChangeAdd(Sender: TObject);
    procedure EditChangeTO(Sender: TObject);
    procedure EditMainCmdKeyPress(Sender: TObject; var Key: Char);
    procedure EditTOCmdKeyPress(Sender: TObject; var Key: Char);
    procedure EditAddCmdKeyPress(Sender: TObject; var Key: Char);
    procedure NameListKeyPress(Sender: TObject; var Key: Char);
    procedure NumListEditKeyPress(Sender: TObject; var Key: Char);
    procedure SendNextCmd;
    procedure TimeoutKeyPress(Sender: TObject; var Key: Char);
    procedure Button34Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure LStartKeyPress(Sender: TObject; var Key: Char);
    procedure LEndKeyPress(Sender: TObject; var Key: Char);
    procedure isAllListClick(Sender: TObject);
    procedure LStartExit(Sender: TObject);
    procedure LEndExit(Sender: TObject);
    procedure isRoundClick(Sender: TObject);
    procedure BMainMinClick(Sender: TObject);
    procedure CmdMainExit(Sender: TObject);
    procedure CmdAddExit(Sender: TObject);
    procedure CmdTOExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure WriteTailAll;
    procedure BTTailClick(Sender: TObject);
    procedure WriteTOAll;
    procedure BT_TOClick(Sender: TObject);
    procedure EditTOAllKeyPress(Sender: TObject; var Key: Char);
    procedure EditTailAllKeyPress(Sender: TObject; var Key: Char);
    procedure NumListEditChange(Sender: TObject);
    procedure CntBytesBoxClick(Sender: TObject);
    procedure EditCmdDblClick(Sender: TObject);
    procedure TimerCntTimer(Sender: TObject);
    procedure BTResetStatClick(Sender: TObject);
    procedure UpdListGroup;
    procedure ListGroupKeyPress(Sender: TObject; var Key: Char);
    procedure NameListKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListGroupExit(Sender: TObject);
    procedure ListGroupDblClick(Sender: TObject);
    procedure NameListDblClick(Sender: TObject);
    procedure NameListClick(Sender: TObject);
    procedure ItemClick(Sender: TObject);
    procedure LStartChange(Sender: TObject);
    procedure LEndChange(Sender: TObject);
    procedure EditTailAllChange(Sender: TObject);
    procedure EditTOAllChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormClick(Sender: TObject);
    procedure EditTailKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListTailDblClick(Sender: TObject);
    procedure ListTailExit(Sender: TObject);
    procedure ListTailKeyPress(Sender: TObject; var Key: Char);
    procedure EditTailAllKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTailDblClick(Sender: TObject);
    procedure EditTailAllDblClick(Sender: TObject);
    procedure EditTailAllClick(Sender: TObject);
    procedure EditTOAllClick(Sender: TObject);
    procedure rbDECClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function GetStrCmdTmp:string;
    function GetStrHelpTmp:string;
    procedure SetStrHelpTmp(ValStr: string);
    procedure SetStrCmdTmp(ValStr: string);
    procedure OpenList(num : integer);

    { Public declarations }
  end;



var
  Form7: TForm7;
  MainStr : string;
  TmpStrX : string;
  isAutoList : Boolean;
  EditCmdList : array[1..CNT_CMD_IN_LIST] of TEdit;
  EditAddList : array[1..CNT_CMD_IN_LIST] of TEdit;
  EditTOList  : array[1..CNT_CMD_IN_LIST] of TEdit;
  BtSendList  : array[1..CNT_CMD_IN_LIST] of TButton;
  ChBoxList   : array[1..CNT_CMD_IN_LIST] of TCheckBox;
  TimeoutCmd  : array[1..CNT_CMD_IN_LIST] of integer;
  isCopyList : Boolean;
  ListStart   : integer;
  ListStop    : integer;

  NumCmdNext  : integer;
  CmdList     : array[1..CNT_LIST] of TCmdList;
  CmdListBuf  : TCmdList;

  NumList     : integer;
  NumCmd      : integer;
  AddCmdStr    : string;
  NumCmdAuto   : integer;
  MSecStartCmd : int64;
  NumLastSC    : integer;
  MarkerCfg    : integer;
  isSaveCfg    : boolean;
  Cfg          : TCfg;
  CfgOld       : TCfgOld;

  StrCmdTmp    : string[255];
  StrHelpTmp   : string[255];

  CntTxSend    : Integer;
  FreqSend     : real;
  LastMsForFreq: integer;
  LastTxSend   : integer;

  ConfigFileAdd : File of TCfg;
  ConfigFileAddOld : File of TCfgOld;


  NListWidth     : Integer;
  CmdEdtWidth    : Integer;
  PosListOpen    : Integer;
  PosLeftBt      : Integer;
  PosRight       : Integer;
  PosTailCmd     : Integer;
  PosSendCmd     : Integer;
  PosDataMode    : Integer;
  PosEditTail    : Integer;
  PosEdtTailBt   : Integer;
  PosEdtTime     : Integer;
  PosEdtTimeBt   : Integer;
  PosCmdBtSend   : Integer;
  PosOneTime     : Integer;
  PosResCnt      : Integer;
  WidthStatText  : Integer;
  WidthListLists : Integer;
  WidthForm      : Integer;

  ActualTailCmd  : Integer;
  isOneTime      : Boolean;
  //ConfigFileAdd : File of TCmdList;

implementation

uses Unit6, Unit8;

{$R *.dfm}

procedure TForm7.FormCreate(Sender: TObject);
  var
    i : integer;
    isResetCfg : boolean;
    NumCmdTmp : integer;
    ActList   : Integer;
    isOldCfg  : Boolean;
    MaxCntList : Integer;
  begin
    isCopyList := False;
    isOldCfg := False;
    isAutoList := false;
    ListTail.Items.Clear;
    for i := 1 to TerminalST.CNT_CSUM do
      ListTail.Items.Add(TerminalST.StrCSum[i]);

    MSecStartCmd := 0;
    //ListGroup.Color := Form7.Color;
    btn1.Font.Name:='Symbol';
    btn1.Caption:=chr($AF);
    EditTailAll.Text := '$0D';
    EditTOAll.Text   := '1000';

    ActList    := 1;
    MarkerCfg  := 27061985;
    isResetCfg := false;
    ListStart       := 1;
    ListStop        := CNT_LIST;

    LStart.Enabled  := false;
    LEnd.Enabled    := false;

    LStart.Color    := Form7.Color;
    LEnd.Color      := Form7.Color;

    NumCmdNext      := 1;
    NumCmdAuto      := 1;
    NumLastSC       := 0;

    NumList         := 1;
    NumCmd          := 1;
    isSaveCfg       := false;
    TimeOut.Visible := false;


    CntTxSend    := 0;
    FreqSend     := 0;
    LastMsForFreq:= 0;
    LastTxSend   := 0;

    EditCmdList[1]  := Edit1;
    EditCmdList[2]  := Edit2;
    EditCmdList[3]  := Edit3;
    EditCmdList[4]  := Edit4;
    EditCmdList[5]  := Edit5;
    EditCmdList[6]  := Edit6;
    EditCmdList[7]  := Edit7;
    EditCmdList[8]  := Edit8;
    EditCmdList[9]  := Edit9;
    EditCmdList[10] := Edit10;
    EditCmdList[11] := Edit11;
    EditCmdList[12] := Edit12;
    EditCmdList[13] := Edit13;
    EditCmdList[14] := Edit14;
    EditCmdList[15] := Edit15;
    EditCmdList[16] := Edit16;
    EditCmdList[17] := Edit17;
    EditCmdList[18] := Edit18;
    EditCmdList[19] := Edit19;
    EditCmdList[20] := Edit20;
    EditCmdList[21] := Edit21;
    EditCmdList[22] := Edit22;
    EditCmdList[23] := Edit23;
    EditCmdList[24] := Edit24;
    EditCmdList[25] := Edit25;
    EditCmdList[26] := Edit26;
    EditCmdList[27] := Edit27;
    EditCmdList[28] := Edit28;
    EditCmdList[29] := Edit29;
    EditCmdList[30] := Edit30;
    EditCmdList[31] := Edit31;
    EditCmdList[32] := Edit32;

    ChBoxList[1]  := CheckBox1;
    ChBoxList[2]  := CheckBox2;
    ChBoxList[3]  := CheckBox3;
    ChBoxList[4]  := CheckBox4;
    ChBoxList[5]  := CheckBox5;
    ChBoxList[6]  := CheckBox6;
    ChBoxList[7]  := CheckBox7;
    ChBoxList[8]  := CheckBox8;
    ChBoxList[9]  := CheckBox9;
    ChBoxList[10] := CheckBox10;
    ChBoxList[11] := CheckBox11;
    ChBoxList[12] := CheckBox12;
    ChBoxList[13] := CheckBox13;
    ChBoxList[14] := CheckBox14;
    ChBoxList[15] := CheckBox15;
    ChBoxList[16] := CheckBox16;
    ChBoxList[17] := CheckBox17;
    ChBoxList[18] := CheckBox18;
    ChBoxList[19] := CheckBox19;
    ChBoxList[20] := CheckBox20;
    ChBoxList[21] := CheckBox21;
    ChBoxList[22] := CheckBox22;
    ChBoxList[23] := CheckBox23;
    ChBoxList[24] := CheckBox24;
    ChBoxList[25] := CheckBox25;
    ChBoxList[26] := CheckBox26;
    ChBoxList[27] := CheckBox27;
    ChBoxList[28] := CheckBox28;
    ChBoxList[29] := CheckBox29;
    ChBoxList[30] := CheckBox30;
    ChBoxList[31] := CheckBox31;
    ChBoxList[32] := CheckBox32;

    BtSendList[1]  := Button1;
    BtSendList[2]  := Button2;
    BtSendList[3]  := Button3;
    BtSendList[4]  := Button4;
    BtSendList[5]  := Button5;
    BtSendList[6]  := Button6;
    BtSendList[7]  := Button7;
    BtSendList[8]  := Button8;
    BtSendList[9]  := Button9;
    BtSendList[10] := Button10;
    BtSendList[11] := Button11;
    BtSendList[12] := Button12;
    BtSendList[13] := Button13;
    BtSendList[14] := Button14;
    BtSendList[15] := Button15;
    BtSendList[16] := Button16;
    BtSendList[17] := Button17;
    BtSendList[18] := Button18;
    BtSendList[19] := Button19;
    BtSendList[20] := Button20;
    BtSendList[21] := Button21;
    BtSendList[22] := Button22;
    BtSendList[23] := Button23;
    BtSendList[24] := Button24;
    BtSendList[25] := Button25;
    BtSendList[26] := Button26;
    BtSendList[27] := Button27;
    BtSendList[28] := Button28;
    BtSendList[29] := Button29;
    BtSendList[30] := Button30;
    BtSendList[31] := Button31;
    BtSendList[32] := Button32;

    EditAddList[1]  := Edit33;
    EditAddList[2]  := Edit34;
    EditAddList[3]  := Edit35;
    EditAddList[4]  := Edit36;
    EditAddList[5]  := Edit37;
    EditAddList[6]  := Edit38;
    EditAddList[7]  := Edit39;
    EditAddList[8]  := Edit40;
    EditAddList[9]  := Edit41;
    EditAddList[10] := Edit42;
    EditAddList[11] := Edit43;
    EditAddList[12] := Edit44;
    EditAddList[13] := Edit45;
    EditAddList[14] := Edit46;
    EditAddList[15] := Edit47;
    EditAddList[16] := Edit48;
    EditAddList[17] := Edit49;
    EditAddList[18] := Edit50;
    EditAddList[19] := Edit51;
    EditAddList[20] := Edit52;
    EditAddList[21] := Edit53;
    EditAddList[22] := Edit54;
    EditAddList[23] := Edit55;
    EditAddList[24] := Edit56;
    EditAddList[25] := Edit57;
    EditAddList[26] := Edit58;
    EditAddList[27] := Edit59;
    EditAddList[28] := Edit60;
    EditAddList[29] := Edit61;
    EditAddList[30] := Edit62;
    EditAddList[31] := Edit63;
    EditAddList[32] := Edit64;

    EditTOList[1]  := Edit65;
    EditTOList[2]  := Edit66;
    EditTOList[3]  := Edit67;
    EditTOList[4]  := Edit68;
    EditTOList[5]  := Edit69;
    EditTOList[6]  := Edit70;
    EditTOList[7]  := Edit71;
    EditTOList[8]  := Edit72;
    EditTOList[9]  := Edit73;
    EditTOList[10] := Edit74;
    EditTOList[11] := Edit75;
    EditTOList[12] := Edit76;
    EditTOList[13] := Edit77;
    EditTOList[14] := Edit78;
    EditTOList[15] := Edit79;
    EditTOList[16] := Edit80;
    EditTOList[17] := Edit81;
    EditTOList[18] := Edit82;
    EditTOList[19] := Edit83;
    EditTOList[20] := Edit84;
    EditTOList[21] := Edit85;
    EditTOList[22] := Edit86;
    EditTOList[23] := Edit87;
    EditTOList[24] := Edit88;
    EditTOList[25] := Edit89;
    EditTOList[26] := Edit90;
    EditTOList[27] := Edit91;
    EditTOList[28] := Edit92;
    EditTOList[29] := Edit93;
    EditTOList[30] := Edit94;
    EditTOList[31] := Edit95;
    EditTOList[32] := Edit96;

    for i:=1 to CNT_CMD_IN_LIST do
      begin
        EditCmdList[i].Tag               := i;
        EditAddList[i].Tag               := i;
        BtSendList[i].Tag                := i;
        ChBoxList[i].Tag                 := i;
        EditTOList[i].Tag                := i;
        BtSendList[i].OnClick            := ButtonCmdClick;
        ChBoxList[i].OnClick             := CheckBoxActCmdClick;
        EditCmdList[i].OnChange          := EditChangeCmd;
        EditAddList[i].OnChange          := EditChangeAdd;

        EditTOList[i].OnChange           := EditChangeTO;


        EditCmdList[i].OnKeyPress        := EditMainCmdKeyPress;
        EditAddList[i].OnKeyPress        := EditAddCmdKeyPress;
        EditTOList[i].OnKeyPress         := EditTOCmdKeyPress;

        EditCmdList[i].OnExit            := CmdMainExit;
        EditAddList[i].OnExit            := CmdAddExit;
        EditTOList[i].OnExit             := CmdTOExit;

        EditCmdList[i].OnDblClick        := EditCmdDblClick;

        EditCmdList[i].OnClick           := ItemClick;
        EditAddList[i].OnClick           := ItemClick;
        EditTOList[i].OnClick           := ItemClick;
        EditAddList[i].OnDblClick       := EditTailDblClick;


        EditAddList[i].OnKeyUp          := EditTailKeyUp;

      end;

      RBModeManual.Checked := true;

    AssignFile(ConfigFileAdd, ExtractFilePath(Application.ExeName) + 'AddCmd');

    if not FileExists(ExtractFilePath(Application.ExeName) + 'AddCmd') or (Get_File_Size(ExtractFilePath(Application.ExeName) + 'AddCmd', True) = 0) then
      isResetCfg := true
    else
      begin

        NumList := 1;

        try
          AssignFile(ConfigFileAdd, ExtractFilePath(Application.ExeName) + 'AddCmd');
          Reset(ConfigFileAdd);
          Read(ConfigFileAdd, Cfg);
          CloseFile(ConfigFileAdd);
        except
          AssignFile(ConfigFileAddOld, ExtractFilePath(Application.ExeName) + 'AddCmd');
          Reset(ConfigFileAddOld);
          Read(ConfigFileAddOld, CfgOld);
          CloseFile(ConfigFileAddOld);
          isOldCfg := True;
        end;



        if isOldCfg then
          MaxCntList := 100
        else
          MaxCntList := CNT_LIST;

        while (NumList <= MaxCntList) and (not isResetCfg) do
          begin
            CmdList[NumList] := Cfg.CmdList[NumList];
            isResetCfg := CmdList[NumList].Marker <> MarkerCfg;
            if CmdList[NumList].isActive then
              begin
                ActList := NumList;
              end;
            inc(NumList);
          end;

        if isOldCfg then
          for NumList := 101 to CNT_LIST do
            begin
              CmdList[NumList].Marker := MarkerCfg;
              CmdList[NumList].CmdName := 'List ' + IntToStr(NumList);
              for i:= 1 to 32 do
                begin
                  CmdList[NumList].Cmd[i].isUseCmd := False;
                  CmdList[NumList].Cmd[i].CmdMain := 'Cmd_' + IntToStr(NumList) +'_' + IntToStr(i);
                  CmdList[NumList].Cmd[i].CmdAdd := '$0D';
                  CmdList[NumList].Cmd[i].TimeOut := 1000;
                  CmdList[NumList].Cmd[i].CmdHelp := '';
                  CmdList[NumList].Cmd[i].Reserv1 := '';
                  CmdList[NumList].Cmd[i].Reserv2 := False;
                  CmdList[NumList].Cmd[i].Reserv3 := 0;
                  CmdList[NumList].Cmd[i].Reserv4 := 0;
                  CmdList[NumList].Cmd[i].Reserv5 := 0;
                end;
            end;

      end;

    NumList := ActList;

    if isResetCfg then
      begin
        ShowMessage('A new command list file has been created');
        Rewrite(ConfigFileAdd);
        for NumList := 1 to CNT_LIST do
          begin
            CmdList[NumList].CmdName   := 'List_' + IntToStr(NumList);
            CmdList[NumList].Marker    := MarkerCfg;
            CmdList[NumList].Reserv1   := '';
            CmdList[NumList].isActive  := false;
            CmdList[NumList].SendMode  := Integer(SendASCII);
            CmdList[NumList].Reserv4   := 0;
            for NumCmdTmp := 1 to CNT_CMD_IN_LIST do
              begin
                CmdList[NumList].Cmd[NumCmdTmp].CmdMain  := 'Cmd_' + IntToStr(NumList) + '_' + IntToStr(NumCmdTmp);
                CmdList[NumList].Cmd[NumCmdTmp].CmdAdd   := '$0D';
                CmdList[NumList].Cmd[NumCmdTmp].isUseCmd := false;
                CmdList[NumList].Cmd[NumCmdTmp].TimeOut  := 1000;
                CmdList[NumList].Cmd[NumCmdTmp].CntAtt   := 0;
                CmdList[NumList].Cmd[NumCmdTmp].CmdHelp  := 'Double click will open the command editing window';
                CmdList[NumList].Cmd[NumCmdTmp].Reserv1  := '';
                CmdList[NumList].Cmd[NumCmdTmp].Reserv2  := false;
                CmdList[NumList].Cmd[NumCmdTmp].Reserv3  := 0;
                CmdList[NumList].Cmd[NumCmdTmp].Reserv4  := 0;
                CmdList[NumList].Cmd[NumCmdTmp].Reserv5  := 0;
                Cfg.CmdList[NumList] := CmdList[NumList];
              end;
            Cfg.isMan     := true;
            Cfg.isAuto    := false;
            Cfg.isRound   := false;
            Cfg.isAllList := false;
            Cfg.ListStart := 1;
            Cfg.ListStop  := CNT_LIST;
            Cfg.Reserv1   := true;
            Cfg.Reserv2   := true;
            Cfg.Reserv3   := true;
            Cfg.Reserv4   := 0;
            Cfg.Reserv5   := 0;
            Cfg.Reserv6   := 0;
            Cfg.Reserv7   := 0;
            Cfg.Reserv8   := '';
          end;
        Write(ConfigFileAdd, Cfg);
        CloseFile(ConfigFileAdd);
      end;

    if Cfg.isMan then RBModeManual.Checked := true
    else if Cfg.isAuto then RBModeAuto.Checked := true;

    isRound.Checked   := Cfg.isRound;
    isAllList.Checked := Cfg.isAllList;

    LStart.Enabled    := Cfg.isAllList;
    LEnd.Enabled     := Cfg.isAllList;
    if Cfg.isAllList then
      begin
        LStart.Color := clWindow;
        LEnd.Color := clWindow;
      end;

    LStart.Text       := IntToStr(Cfg.ListStart);
    LEnd.Text         := IntToStr(Cfg.ListStop);
    ListStart         := Cfg.ListStart;
    ListStop          := Cfg.ListStop;

    UpdListGroup;

    NumList := ActList;

    EditTOAll.Enabled   := RBModeAuto.Checked;
    if EditTOAll.Enabled then
      EditTOAll.Color := clWindow
    else
      EditTOAll.Color := Form7.Color;

    BT_TO.Enabled       := RBModeAuto.Checked;
    //EditTOAll.Text      := Edit65.Text;
    //EditTailAll.Text    := Edit33.Text;

    WidthForm      := Form7.Width;
    NListWidth     := NameList.Width;
    CmdEdtWidth    := Edit1.Width;
    PosListOpen    := btn1.Left;
    PosLeftBt      := ListPrev.Left;
    PosRight       := ListNext.Left;
    PosTailCmd     := Edit33.Left;
    PosSendCmd     := Button1.Left;
    //PosDataMode    := GroupBox2.Left;
    PosEditTail    := EditTailAll.Left;
    PosEdtTailBt   := BTTail.Left;
    PosEdtTime     := EditTOAll.Left;
    PosEdtTimeBt   := BT_TO.Left;
    PosCmdBtSend   := Button33.Left;
    PosResCnt      := BtResetStat.Left;
    PosOneTime     := chk1.Left;
    WidthStatText  := StatText.Width;
    WidthListLists := ListGroup.Width;









  end;

procedure ClrGreenCmd;
begin
  if NumLastSC > 0 then
    begin
      if CmdList[NumList].Cmd[NumLastSC].isUseCmd then
        begin
          EditCmdList[NumLastSC].Color := clWindow;
          EditAddList[NumLastSC].Color := clWindow;
        end
      else
        begin
          EditCmdList[NumLastSC].Color := Form7.Color;
          EditAddList[NumLastSC].Color := Form7.Color;
        end;
    end;
end;

procedure TForm7.OpenList(num : integer);
begin
  NumList := num;
  if TimerSend.Enabled then
    begin
      Button33.Click;
      NumCmdAuto := 1;
    end;
  isAutoList := True;
  RBModeAuto.Checked := true;
  isRound.Checked := False;
  isAllList.Checked := False;
  UpdateListCmd(NumList);
end;

procedure TForm7.RBASCIIClick(Sender: TObject);
  begin
    ListGroup.Visible := false;
    ListTail.Visible := false;

    if CmdList[NumList].SendMode <> Integer(SendASCII) then
      isSaveCfg := true;
    CmdList[NumList].SendMode := Integer(SendASCII);
 end;

procedure TForm7.RBHEXClick(Sender: TObject);
  begin
    ListGroup.Visible := false;
    ListTail.Visible := false;

    if CmdList[NumList].SendMode <> Integer(SendHEX) then
      isSaveCfg := true;
    CmdList[NumList].SendMode := Integer(SendHEX);
  end;

procedure TForm7.VisTimeClick(Sender: TObject);
begin
  ListGroup.Visible := false;
  ListTail.Visible := false;
end;

procedure TForm7.ButtonCmdClick(Sender: TObject);
var
  i: integer;
  numCmd : integer;
begin
  ListGroup.Visible := false;
  ListTail.Visible := false;

  if Form1.GetIsComPort then
    begin
      if NumLastSC > 0 then
        begin
          EditCmdList[NumLastSC].Color := clWindow;
          EditAddList[NumLastSC].Color := clWindow;
        end;


      i := (Sender as TButton).Tag;
      //for numCmd := 1 to CNT_CMD_IN_LIST do
      //  BtSendList[numCmd].Enabled := false;
      //Button33.Enabled := false;
      ListPrev.Enabled := false;
      ListNext.Enabled := false;

      MainStr    := EditCmdList[i].Text;
      AddCmdStr  := EditAddList[i].Text;
      TerminalST.Form1.SendPortData(MainStr, AddCmdStr, TTypeSendMode(CmdList[NumList].SendMode), false);
      inc(CntTxSend);
      NumLastSC  := i;
      EditCmdList[NumLastSC].Color := clLime;
      EditAddList[NumLastSC].Color := clLime;
      NumCmdNext := i + 1;

      if NumCmdNext > CNT_CMD_IN_LIST then
        NumCmdNext := 1;
      //for numCmd := 1 to CNT_CMD_IN_LIST do
      //  BtSendList[numCmd].Enabled := CmdList[NumList].Cmd[numCmd].isUseCmd;

      //Button33.Enabled := true;
      ListPrev.Enabled := RBModeManual.Checked;
      ListNext.Enabled := RBModeManual.Checked;
      if isOneTime then
        begin
          ChBoxList[i].Checked := False;
          for i := 1 to CNT_CMD_IN_LIST do
            begin
              if not ChBoxList[i].Checked then
                begin
                  EditCmdList[i].Color := Form7.Color;
                  EditAddList[i].Color := Form7.Color;
                end;
            end;
        end
    end
  else
    begin
      OpenPortError.ShowModal;
    end;
end;


procedure TForm7.CheckBoxActCmdClick(Sender: TObject);
var
  i: integer;
  isTimerSend : boolean;
begin
  ListGroup.Visible := false;
  ListTail.Visible := false;
  isTimerSend := TimerSend.Enabled;
  i := (Sender as TCheckBox).Tag;
  if ChBoxList[i].Checked = true then
     begin
       EditCmdList[i].Color := clWindow;
       EditAddList[i].Color := clWindow;
       BtSendList[i].Enabled  := RBModeManual.Checked;

       if RBModeAuto.Checked then
         EditTOList[i].Color := clWindow
       else
         EditTOList[i].Color := Form7.Color;

       EditCmdList[i].Color   := clWindow;
       EditAddList[i].Color   := clWindow;
       CmdList[NumList].Cmd[i].isUseCmd := true;
     end
   else
     begin
       EditCmdList[i].Color := Form7.Color;
       EditAddList[i].Color := Form7.Color;
       BtSendList[i].Enabled  := false;
       EditTOList[i].Color    := Form7.Color;
       EditTOList[i].Color    := Form7.Color;
       EditCmdList[i].Color   := Form7.Color;
       EditAddList[i].Color   := Form7.Color;
       CmdList[NumList].Cmd[i].isUseCmd := false;
     end;
   while (Form1.GetIsSendingData) do begin sleep(WAIT_SEND); end;
   TimerSend.Enabled := isTimerSend;

   isSaveCfg := true;
end;




procedure TForm7.SendNextCmd;
var
  isSendAll : boolean;
begin
  isSendAll := false;
  while (not CmdList[NumList].Cmd[NumCmdNext].isUseCmd) and (NumCmdNext <= CNT_CMD_IN_LIST) do
    begin
      inc(NumCmdNext);
    end;

  if NumCmdNext > CNT_CMD_IN_LIST then
    begin
      ClrGreenCmd;
      NumCmdNext := 1;
      if isAllList.Checked then
        begin
         inc(NumList);
         if NumList > ListStop then
           begin
             NumList := ListStart;
             if not isRound.Checked then
               begin
                 NumList := ListStop;
                 ShowMessage('All team lists have been sent!');
                 isSendAll := true;
               end;
           end;
        end
      else if not isRound.Checked then
        begin
          ShowMessage('The entire list of teams has been sent!');
          isSendAll := true;
        end;
      if not isSendAll then
        begin
          if isAllList.Checked then
            UpdateListCmd(NumList);
        end;
    end;

  if (CmdList[NumList].Cmd[NumCmdNext].isUseCmd) and (not isSendAll) then
    begin
      ClrGreenCmd;
      MainStr      := EditCmdList[NumCmdNext].Text;
      AddCmdStr    := EditAddList[NumCmdNext].Text;
      TerminalST.Form1.SendPortData(MainStr, AddCmdStr, TTypeSendMode(CmdList[NumList].SendMode), false);
      inc(CntTxSend);
      NumLastSC    := NumCmdNext;
      EditCmdList[NumLastSC].Color := clLime;
      EditAddList[NumLastSC].Color := clLime;
      inc(NumCmdNext);
    end;
end;

procedure TForm7.Button33Click(Sender: TObject);
  begin
    ListGroup.Visible := false;
    ListTail.Visible := false;

    if Form1.GetIsComPort then
      begin
        if (isAllList.Checked) and ((NumList < ListStart) or (NumList > ListStop)) then
          begin
            NumList := ListStart;
            UpdateListCmd(NumList);
          end;

        if RBModeManual.Checked then
          begin
            SendNextCmd;
          end;
        if RBModeAuto.Checked then
          begin
            if not TimerSend.Enabled then
              begin
                while (Form1.GetIsSendingData) do begin sleep(WAIT_SEND); end;
                Button33.Caption := '||';
                TimerSend.Enabled := true;
                ListPrev.Enabled := false;
                ListNext.Enabled := false;
                NumListEdit.Enabled := false;
              end
            else
              begin
                while (Form1.GetIsSendingData) do begin sleep(WAIT_SEND); end;
                Button33.Caption := '>';
                TimerSend.Enabled := false;
                ListPrev.Enabled := true;
                ListNext.Enabled := true;
                NumListEdit.Enabled := true;
              end
          end;
      end
    else
      OpenPortError.ShowModal;
  end;

procedure TForm7.RBModeAutoClick(Sender: TObject);
var i : integer;
   isChange : Boolean;
begin
  isChange := false;
  ListGroup.Visible := false;
  ListTail.Visible := false;
  chk1.Enabled := False;

  if isAllList.Checked then
    begin
      isChange := NumList <> ListStart;
      NumList := ListStart;
    end;

  if TimerSend.Enabled then
    begin
      ListPrev.Enabled := false;
      ListNext.Enabled := false;
      NumListEdit.Enabled := false;
    end;
  TimeOut.Visible  := false;
  Button33.Caption    := '>';
  EditTOAll.Enabled   := true;
  EditTOAll.Color     := clWindow;
  BT_TO.Enabled       := true;
  isSaveCfg           := true;

  for i:= 1 to CNT_CMD_IN_LIST do
    begin
      BtSendList[i].Enabled := false;
    end;

  NumCmdNext := 1;
  MSecStartCmd := 0;
  UpdateListCmd(NumList);
  if isChange then
    begin
      NumListEdit.Color := clYellow;
      NameList.Color := clYellow;
    end;
end;

procedure TForm7.RBModeManualClick(Sender: TObject);
  var i : integer;
  isChange : Boolean;
begin
  isChange := False;
  ListGroup.Visible := false;
  ListTail.Visible := false;
  chk1.Enabled := True;

  if isAllList.Checked then
    begin
      isChange := NumList <> ListStart;
      NumList := ListStart;
    end;
    
  while (Form1.GetIsSendingData) do begin sleep(WAIT_SEND); end;
  TimerSend.Enabled := false;
  ListPrev.Enabled    := true;
  ListNext.Enabled    := true;
  TimeOut.Visible     := false;
  NumListEdit.Enabled := true;
  Button33.Caption    := '>';
  isSaveCfg           := true;
  EditTOAll.Enabled   := false;
  EditTOAll.Color     := Form7.Color;
  BT_TO.Enabled       := false;

  for i:= 1 to CNT_CMD_IN_LIST do
    begin
      BtSendList[i].Enabled := CmdList[NumList].Cmd[i].isUseCmd;
      EditTOList[i].Color   := Form7.Color;
    end;
  CheckBox33.Enabled := true;
  UpdateListCmd(NumList);
  if isChange then
    begin
      NumListEdit.Color := clYellow;
      NameList.Color := clYellow;
    end;
end;

procedure TForm7.CheckBox33Click(Sender: TObject);
  var i : integer;
begin
  for i:= 1 to CNT_CMD_IN_LIST do
    begin
      if CheckBox33.Checked = true then
        begin
          EditCmdList[i].Color := clWindow;
          EditAddList[i].Color := clWindow;
          BtSendList[i].Enabled  := true;
          EditTOList[i].Color    := clWindow;
          EditCmdList[i].Color   := clWindow;
          EditAddList[i].Color   := clWindow;
          CmdList[NumList].Cmd[i].isUseCmd := true;
          ChBoxList[i].Checked   := true;
        end
      else
        begin
          EditCmdList[i].Color := Form7.Color;
          EditAddList[i].Color := Form7.Color;
          BtSendList[i].Enabled  := false;
          EditTOList[i].Color    := Form7.Color;
          EditCmdList[i].Color   := Form7.Color;
          EditAddList[i].Color   := Form7.Color;
          CmdList[NumList].Cmd[i].isUseCmd := false;
          ChBoxList[i].Checked   := false;
        end;
     end;
end;

procedure TForm7.TimerSendTimer(Sender: TObject);
  var
    CurTime  : int64;
    isStop   : boolean;
begin
  isStop   := false;
  CurTime  := MilliSecondOfTheYear(Now);

  while (not CmdList[NumList].Cmd[NumCmdAuto].isUseCmd) and (NumCmdAuto <= CNT_CMD_IN_LIST) do
    begin
      inc(NumCmdAuto);
    end;

  if NumCmdAuto > CNT_CMD_IN_LIST then
    begin
      if CurTime > MSecStartCmd then
        begin
          TimeOut.Visible   := false;
          ClrGreenCmd;
          NumCmdAuto := 1;
          if isAllList.Checked then
            begin
             inc(NumList);
             if NumList > ListStop then
               begin
                 NumList := ListStart;
                 if not isRound.Checked then
                   begin
                     while (Form1.GetIsSendingData) do begin sleep(WAIT_SEND); end;
                     NumList := ListStop;
                     TimerSend.Enabled := false;
                     TimeOut.Visible   := false;
                     Button33.Caption  := '>';
                     ShowMessage('All lists of the commands have been sent!');
                     isStop := true;
                   end;
               end;
            end
          else if not isRound.Checked then
            begin
              while (Form1.GetIsSendingData) do begin sleep(WAIT_SEND); end;
              TimerSend.Enabled := false;
              TimeOut.Visible   := false;
              Button33.Caption  := '>';
              if not isAutoList then
                ShowMessage('The whole list of the commands has been sent!');
              isAutoList := False;
              isStop := true;
            end;
          if (not isStop) and (isAllList.Checked) then
            begin
              UpdateListCmd(NumList);
            end;
        end;
    end;

  if not isStop then
    begin
     if (CurTime > MSecStartCmd) and (CmdList[NumList].Cmd[NumCmdAuto].isUseCmd) then
        begin
          TimeOut.Visible := true;
          TimeOut.Text    := '';
          TimeOut.Left    := EditTOList[NumCmdAuto].Left;
          TimeOut.Top     := EditTOList[NumCmdAuto].Top;

          if NumLastSC > 0 then
            begin
              if CmdList[NumList].Cmd[NumLastSC].isUseCmd then
                begin
                  EditCmdList[NumLastSC].Color := clWindow;
                  EditAddList[NumLastSC].Color := clWindow;
                end
              else
                begin
                  EditCmdList[NumLastSC].Color := Form7.Color;
                  EditAddList[NumLastSC].Color := Form7.Color;
                end;
            end;
          MainStr      := EditCmdList[NumCmdAuto].Text;
          AddCmdStr    := EditAddList[NumCmdAuto].Text;
          EditCmdList[NumCmdAuto].Color := clYellow;
          EditAddList[NumCmdAuto].Color := clYellow;
          TimerSend.Enabled := false;
          TerminalST.Form1.SendPortData(MainStr, AddCmdStr, TTypeSendMode(CmdList[NumList].SendMode), false);
          inc(CntTxSend);
          TimerSend.Enabled := true;
          NumLastSC := NumCmdAuto;
          EditCmdList[NumLastSC].Color := clLime;
          EditAddList[NumLastSC].Color := clLime;
          MSecStartCmd := MilliSecondOfTheYear(Now) + StrToInt(EditTOList[NumLastSC].Text);
          inc(NumCmdAuto);
        end
      else
        begin
          TimeOut.Text := IntToStr(MSecStartCmd - CurTime);
        end;
    end;
end;

procedure TForm7.SaveCfg;
var
  List : integer;
  isWrite : boolean;
  numCmd  : integer;
begin
  while (Form1.GetIsSendingData) do begin sleep(WAIT_SEND); end;
  TimerSend.Enabled := false;
  isWrite := false;
  if isSaveCfg then
    begin
      for List := 1 to CNT_LIST do
        begin
        if (Cfg.CmdList[List].CmdName    <> CmdList[List].CmdName)  or
           (Cfg.CmdList[List].Marker     <> CmdList[List].Marker)   or
           (Cfg.CmdList[List].Reserv1    <> CmdList[List].Reserv1)  or
           (Cfg.CmdList[List].isActive   <> CmdList[List].isActive) or
           (Cfg.CmdList[List].SendMode   <> CmdList[List].SendMode)  or
           (Cfg.CmdList[List].Reserv4    <> CmdList[List].Reserv4) then
          isWrite := true;

        if not isWrite then
          begin
            for numCmd := 1 to CNT_CMD_IN_LIST do
              if (Cfg.CmdList[List].Cmd[numCmd].isUseCmd <> CmdList[List].Cmd[numCmd].isUseCmd) or
                 (Cfg.CmdList[List].Cmd[numCmd].CmdMain  <> CmdList[List].Cmd[numCmd].CmdMain)  or
                 (Cfg.CmdList[List].Cmd[numCmd].CmdAdd   <> CmdList[List].Cmd[numCmd].CmdAdd)   or
                 (Cfg.CmdList[List].Cmd[numCmd].TimeOut  <> CmdList[List].Cmd[numCmd].TimeOut)  or
                 (Cfg.CmdList[List].Cmd[numCmd].CntAtt   <> CmdList[List].Cmd[numCmd].CntAtt)   or
                 (Cfg.CmdList[List].Cmd[numCmd].CmdHelp  <> CmdList[List].Cmd[numCmd].CmdHelp)  or
                 (Cfg.CmdList[List].Cmd[numCmd].Reserv1  <> CmdList[List].Cmd[numCmd].Reserv1)  or
                 (Cfg.CmdList[List].Cmd[numCmd].Reserv2  <> CmdList[List].Cmd[numCmd].Reserv2)  or
                 (Cfg.CmdList[List].Cmd[numCmd].Reserv3  <> CmdList[List].Cmd[numCmd].Reserv3)  or
                 (Cfg.CmdList[List].Cmd[numCmd].Reserv4  <> CmdList[List].Cmd[numCmd].Reserv4)  or
                 (Cfg.CmdList[List].Cmd[numCmd].Reserv5  <> CmdList[List].Cmd[numCmd].Reserv5)  then
                isWrite := true;
          end;
        end;


      if not isWrite then
        begin
          if      Cfg.isMan     <> RBModeManual.Checked then isWrite := true
          else if Cfg.isAuto    <> RBModeAuto.Checked   then isWrite := true
          else if Cfg.isRound   <> isRound.Checked      then isWrite := true
          else if Cfg.isAllList <> isAllList.Checked    then isWrite := true
          else if Cfg.ListStart <> ListStart            then isWrite := true
          else if Cfg.ListStop  <> ListStop             then isWrite := true;
        end;

      if isWrite then
        begin
          AssignFile(ConfigFileAdd, ExtractFilePath(Application.ExeName) + 'AddCmd');
          ReWrite(ConfigFileAdd);
          for List := 1 to CNT_LIST do
            Cfg.CmdList[List] := CmdList[List];

          Cfg.isMan     := RBModeManual.Checked;
          Cfg.isAuto    := RBModeAuto.Checked  ;
          Cfg.isRound   := isRound.Checked     ;
          Cfg.isAllList := isAllList.Checked   ;
          Cfg.ListStart := ListStart           ;
          Cfg.ListStop  := ListStop            ;

          Write(ConfigFileAdd, Cfg);
          CloseFile(ConfigFileAdd);
        end;  
    end;
    if Form1.WindowState = wsMinimized then
      Form1.WindowState := wsMaximized;
end;

function TForm7.GetAddStr : string;
  begin
    result := AddCmdStr;
  end;

procedure TForm7.UpdateListCmd(var List : integer);
  var
    NumCmd  : integer;
    TmpList : integer;

  begin
    NameList.Text          := CmdList[List].CmdName;
    NumListEdit.Text       := IntToStr(List);
    NumListEdit.Font.Style := [];
    NameList.Font.Style    := [];
    NumListEdit.Color      := clWindow;
    NameList.Color         := clWindow;
    for TmpList := 1 to CNT_LIST do
      begin
        if (CmdList[TmpList].isActive) and (TmpList <> List) then
          begin
            isSaveCfg := true;
          end;
        CmdList[TmpList].isActive := false;

      end;

    CmdList[List].isActive := true;



    if CmdList[List].SendMode = Integer(SendHEX) then
      begin
        RBASCII.Checked := false;
        RBHEX.Checked := true;
        rbDEC.Checked := False;
      end
    else if CmdList[List].SendMode = Integer(SendASCII) then
      begin
        RBASCII.Checked := true;
        RBHEX.Checked := false;
        rbDEC.Checked := False;
      end
    else if CmdList[List].SendMode = Integer(SendDEC) then
      begin
        RBASCII.Checked := false;
        RBHEX.Checked := false;
        rbDEC.Checked := true;
      end;

    for NumCmd := 1 to CNT_CMD_IN_LIST do
      begin
        EditCmdList[NumCmd].Text   := CmdList[List].Cmd[NumCmd].CmdMain;
        EditAddList[NumCmd].Text   := CmdList[List].Cmd[NumCmd].CmdAdd;
        EditCmdList[NumCmd].Hint   := CmdList[List].Cmd[NumCmd].CmdHelp;
        EditAddList[NumCmd].Hint   := CmdList[List].Cmd[NumCmd].CmdAdd + ' To display the templates of checksums, click the down arrow or double-click';

        EditTOList[NumCmd].Text    := IntToStr(CmdList[List].Cmd[NumCmd].TimeOut);

        ChBoxList[NumCmd].Checked  := CmdList[List].Cmd[NumCmd].isUseCmd;

        if CmdList[List].Cmd[NumCmd].isUseCmd then
          begin
            EditCmdList[NumCmd].Color := clWindow;
            EditAddList[NumCmd].Color := clWindow;
          end
        else
          begin
            EditCmdList[NumCmd].Color := Form7.Color;
            EditAddList[NumCmd].Color := Form7.Color;
          end;

        BtSendList[NumCmd].Enabled := CmdList[List].Cmd[NumCmd].isUseCmd and RBModeManual.Checked;

        if CmdList[List].Cmd[NumCmd].isUseCmd and RBModeAuto.Checked then
          EditTOList[NumCmd].Color := clWindow
        else
          EditTOList[NumCmd].Color := Form7.Color;

        if CmdList[List].Cmd[NumCmd].isUseCmd then
          begin
            EditCmdList[NumCmd].Color:= clWindow;
            EditAddList[NumCmd].Color:= clWindow;

            if RBModeAuto.Checked then
              begin
                EditTOList[NumCmd].Color:= clWindow;
              end;
            if RBModeManual.Checked then
              begin
                EditTOList[NumCmd].Color:= Form7.Color;
              end;
          end
        else
          begin
            EditCmdList[NumCmd].Color:= Form7.Color;
            EditAddList[NumCmd].Color:= Form7.Color;
            EditTOList[NumCmd].Color:= Form7.Color;
          end;
        EditTOList[NumCmd].Font.Style := [];
        EditCmdList[NumCmd].Font.Style := [];
        EditAddList[NumCmd].Font.Style := [];
       end;
  end;

procedure TForm7.ListPrevClick(Sender: TObject);
begin
  isAutoList := False;
  dec(NumList);
  if NumList < 1 then
    begin
      NumList := CNT_LIST;
    end;
  UpdateListCmd(NumList);
  TimeOut.Visible := false;
  NumCmdNext := 1;
end;

procedure TForm7.ListNextClick(Sender: TObject);
begin
  isAutoList := False;
  inc(NumList);
  if NumList > CNT_LIST then
    begin
      NumList := 1;
    end;
  UpdateListCmd(NumList);
  TimeOut.Visible := false;
  NumCmdNext := 1;
end;

procedure TForm7.NameListChange(Sender: TObject);
  begin
    CmdList[NumList].CmdName := (Sender as TEdit).Text;
    isSaveCfg := true;
  end;

procedure TForm7.EditChangeCmd(Sender: TObject);
  var
    i: integer;
  begin
    i := (Sender as TEdit).Tag;
    CmdList[NumList].Cmd[i].CmdMain := (Sender as TEdit).Text;
    ListTail.Visible := false;
  end;

procedure TForm7.EditChangeAdd(Sender: TObject);
  var
    i: integer;
  begin
    i := (Sender as TEdit).Tag;
    CmdList[NumList].Cmd[i].CmdAdd := (Sender as TEdit).Text;
    ListTail.Visible := false;
  end;

procedure TForm7.EditChangeTO(Sender: TObject);
  var
    i: integer;
  begin
    i := (Sender as TEdit).Tag;
    if (Sender as TEdit).Text <> '' then
      CmdList[NumList].Cmd[i].TimeOut := StrToInt((Sender as TEdit).Text);
    ListTail.Visible := false;
  end;


procedure TForm7.EditMainCmdKeyPress(Sender: TObject; var Key: Char);
  var
    i: integer;
  begin
    i := (Sender as TEdit).Tag;

    if CmdList[NumList].Cmd[i].isUseCmd then
      EditCmdList[i].Color := clWindow
    else
      EditCmdList[i].Color := Form7.Color;

    if Key = #13 then
      begin
        if (Length(EditCmdList[i].Text) <= 255) then
          begin
            EditCmdList[i].Font.Style := [];
            CmdList[NumList].Cmd[i].CmdMain := EditCmdList[i].Text;
            isSaveCfg := true;
          end
        else
          begin
            EditCmdList[i].Color := clRed;
          end;
        Key := #0;
      end;
  end;

procedure TForm7.EditAddCmdKeyPress(Sender: TObject; var Key: Char);
  var
    i: integer;
  begin
    i := (Sender as TEdit).Tag;

    if CmdList[NumList].Cmd[i].isUseCmd then
      EditCmdList[i].Color := clWindow
    else
      EditCmdList[i].Color := Form7.Color;

    if Key = #13 then
      begin
        if (Length(EditAddList[i].Text) <= 50) then
          begin
            EditAddList[i].Font.Style := [];
            CmdList[NumList].Cmd[i].CmdAdd := EditAddList[i].Text;
            EditAddList[i].Hint := CmdList[NumList].Cmd[i].CmdAdd + ' To display the templates of checksums, click the down arrow or double-click the mouse';
            isSaveCfg := true;
          end
        else
          begin
            EditAddList[i].Color := clRed;
          end;
        Key := #0;
      end;
  end;


procedure TForm7.EditTOCmdKeyPress(Sender: TObject; var Key: Char);
  var
    i: integer;
  begin
    i := (Sender as TEdit).Tag;

    if Key = #13 then
      begin
        EditTOList[i].Font.Style := [];
        if EditTOList[i].Text = '' then EditTOList[i].Text := IntToStr(CmdList[NumList].Cmd[i].TimeOut);
        CmdList[NumList].Cmd[i].TimeOut := StrToInt(EditTOList[i].Text);
        isSaveCfg := true;
        Key := #0;
      end;

    if (Key >= '0') and (Key <= '9')  then
      begin
        if length(EditTOList[i].Text) > 5 then
          Key := #0;
      end
    else if ((Key <> #8) and (Key <> #46)) or (Key = '.') then
      Key := #0;
  end;

procedure TForm7.ItemClick(Sender: TObject);
  begin
    ListGroup.Visible := false;
    ListTail.Visible := false;
  end;



procedure TForm7.NameListKeyPress(Sender: TObject; var Key: Char);
  begin
    NameList.Color := clWindow;
    if Key = #13 then
      begin
        if (Length(NameList.Text) <= 255) then
          begin
            NameList.Font.Style := [];
            CmdList[NumList].CmdName := NameList.Text;
            UpdListGroup;
            isSaveCfg := true;
          end
        else
          begin
            NameList.Color := clRed;
          end;
        Key := #0;
      end;
    if Key = #27 then
      begin
        ListGroup.Visible := false;
        ListTail.Visible := false;
        Key := #0;
      end;
  end;

procedure TForm7.NumListEditKeyPress(Sender: TObject; var Key: Char);
  begin
    if (Key = #13) and (NumListEdit.Text <> '') then
      begin
        ListGroup.Visible := false;
        ListTail.Visible := false;

        NumList := StrToInt(NumListEdit.Text);
        if NumListEdit.Text = '' then NumListEdit.Text := IntToStr(NumList);
        NumList := StrToInt(NumListEdit.Text);
        if (NumList > CNT_LIST) or (NumList < 1) then
          begin
            NumList := 1;
            NumListEdit.Text := '1';
          end;
        Key := #0;
        TimeOut.Visible := false;
        NumListEdit.Font.Style := [];
        UpdateListCmd(NumList);
      end;

    if (Key >= #48) and (Key <= #57)  then
      begin
        if length(NumListEdit.Text) > 3 then
          Key := #0;
      end
    else if ((Key <> #8) and (Key <> #46)) or (Key = '.') then
      Key := #0;
  end;

procedure TForm7.TimeoutKeyPress(Sender: TObject; var Key: Char);
  var CurTime : integer;
  begin
    CurTime  := MilliSecondOfTheYear(Now);

    if Key = #13 then
      begin
        if TimeOut.Text = '' then TimeOut.Text := IntToStr(MSecStartCmd - CurTime)
          else
        MSecStartCmd := StrToInt(TimeOut.Text) + CurTime;
        Key := #0;
      end;

    if (Key >= #48) and (Key <= #57)  then
      begin
        if length(TimeOut.Text) > 5 then
          Key := #0;
      end
    else if (Key <> #8) and (Key <> #46) then
      Key := #0;
  end;


procedure TForm7.Button34Click(Sender: TObject);
var
  Num : integer;
begin
  CmdList[NumList].CmdName := NameList.Text;
  NameList.Font.Style := [];
  for Num := 1 to CNT_CMD_IN_LIST do
    begin
      CmdList[NumList].Cmd[Num].CmdMain := EditCmdList[Num].Text;
      CmdList[NumList].Cmd[Num].CmdAdd  := EditAddList[Num].Text;
      if EditTOList[Num].Text <> '' then
        CmdList[NumList].Cmd[Num].TimeOut := StrToInt(EditTOList[Num].Text);
      CmdList[NumList].Cmd[Num].isUseCmd := ChBoxList[Num].Checked;
      EditCmdList[Num].Font.Style := [];
      EditAddList[Num].Font.Style := [];
      EditTOList[Num].Font.Style  := [];
    end;
  isSaveCfg := true;
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
  UpdateListCmd(NumList);
  RBASCII.Checked     := CmdList[NumList].SendMode = Integer(SendASCII);
  RBHEX.Checked       := CmdList[NumList].SendMode = Integer(SendHEX);
  RBDEC.Checked       := CmdList[NumList].SendMode = Integer(SendDEC);
  TimerCnt.Enabled    := true;
end;

procedure TForm7.LStartKeyPress(Sender: TObject; var Key: Char);
  begin
    if ((Key < '0') or (Key > '9')) and (Key <> #8) then
      begin
        Key := #0;
      end;
  end;

procedure TForm7.LEndKeyPress(Sender: TObject; var Key: Char);
  var
  CurList : integer;
  begin
    begin
      if ((Key < '0') or (Key > '9')) and (Key <> #8) then
        begin
          Key := #0;
        end;
    end;
  end;


procedure TForm7.isAllListClick(Sender: TObject);
begin
  ListGroup.Visible := false;
  ListTail.Visible := false;

  if isAllList.Checked then
    begin
      LStart.Enabled := true;
      LStart.Color   := clWindow;
      LEnd.Enabled   := true;
      LEnd.Color     := clWindow;
    end
  else
    begin
      LStart.Enabled := false;
      LStart.Color   := Form7.Color;
      LEnd.Enabled   := false;
      LEnd.Color     := Form7.Color;
    end;
  LStart.Text   :=  IntToStr(ListStart);
  LEnd.Text     :=  IntToStr(ListStop);
  isSaveCfg     := true;
end;

procedure TForm7.LStartExit(Sender: TObject);
begin
LStart.Text  := IntToStr(ListStart);
LStart.Color := clWindow;

end;

procedure TForm7.LEndExit(Sender: TObject);
begin
LEnd.Text  := IntToStr(ListStop);
end;

procedure TForm7.isRoundClick(Sender: TObject);
begin
  ListGroup.Visible := false;
  ListTail.Visible := false;
  isSaveCfg   := true;
end;

procedure TForm7.BMainMinClick(Sender: TObject);
begin
Form1.WindowState :=   wsMinimized;
end;

procedure TForm7.CmdMainExit(Sender: TObject);
  var
    i: integer;
  begin
    i := (Sender as TEdit).Tag;
    EditCmdList[i].Font.Style := [];
    CmdList[NumList].Cmd[i].CmdMain := EditCmdList[i].Text;
    isSaveCfg := true;
  end;

procedure TForm7.CmdAddExit(Sender: TObject);
  var
    i: integer;
  begin
    i := (Sender as TEdit).Tag;
    EditAddList[i].Font.Style := [];
    CmdList[NumList].Cmd[i].CmdAdd := EditAddList[i].Text;
    EditAddList[i].Hint := CmdList[NumList].Cmd[i].CmdAdd + ' To display the templates of checksums, click the down arrow or double-click';
    isSaveCfg := true;
  end;

procedure TForm7.CmdTOExit(Sender: TObject);
  var
    i: integer;
  begin
    i := (Sender as TEdit).Tag;
    EditTOList[i].Font.Style := [];
    if EditTOList[i].Text = '' then EditTOList[i].Text := IntToStr(CmdList[NumList].Cmd[i].TimeOut);
    CmdList[NumList].Cmd[i].TimeOut := StrToInt(EditTOList[i].Text);
    isSaveCfg := true;
  end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  while (Form1.GetIsSendingData) do begin sleep(WAIT_SEND); end;
  TimerSend.Enabled := false;
  TimerCnt.Enabled := false;
  Button33.Caption := '>';
  TerminalST.isAddListCmd := False;
  TerminalST.Form1.BtListCmd.Font.Style := [];
  SaveCfg;
end;

procedure TForm7.WriteTailAll;
var
  i : integer;
begin
  for i := 1 to CNT_CMD_IN_LIST do
    begin
      if (EditAddList[i].Enabled) and (length(EditTailAll.Text) <= 50) then
        begin
          EditAddList[i].Text := EditTailAll.Text;
          EditAddList[i].Font.Style := [];
          CmdList[NumList].Cmd[i].CmdAdd := EditTailAll.Text;
        end;
    end;
  isSaveCfg := true;
end;


procedure TForm7.WriteTOAll;
var
  i : integer;
begin
  for i := 1 to CNT_CMD_IN_LIST do
    begin       
      if ChBoxList[i].Checked then
        begin
          EditTOList[i].Text := EditTOAll.Text;
          EditTOList[i].Font.Style := [];
          CmdList[NumList].Cmd[i].TimeOut := StrToInt(EditTOAll.Text);
        end;
    end;
  isSaveCfg := true;
end;



procedure TForm7.BTTailClick(Sender: TObject);
begin
  ListGroup.Visible := false;
  ListTail.Visible := false;
  WriteTailAll;
end;

procedure TForm7.BT_TOClick(Sender: TObject);
begin
  ListGroup.Visible := false;
  ListTail.Visible := false;
  WriteTOAll;
end;

procedure TForm7.EditTOAllKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      if EditTOAll.Text = '' then EditTOAll.Text := '0';
      WriteTOAll;
      isSaveCfg := true;
      Key := #0;
    end;
  if (Key >= '0') and (Key <= '9')  then
    begin
      if length(EditTOAll.Text) > 5 then
        Key := #0;
    end
  else if ((Key <> #8) and (Key <> #46)) or (Key = '.') then
    Key := #0;
end;

procedure TForm7.EditTailAllKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      WriteTailAll;
      Key := #0;
    end;
end;

procedure TForm7.NumListEditChange(Sender: TObject);
begin
  NumListEdit.Font.Style := [fsBold];
end;

procedure TForm7.CntBytesBoxClick(Sender: TObject);
begin
  ListGroup.Visible := false;
  ListTail.Visible := false;
end;

procedure TForm7.EditCmdDblClick(Sender: TObject);
  var
    i:Integer;

begin
  i:= (Sender as TEdit).Tag;
  ListGroup.Visible := false;
  ListTail.Visible := false;
  while (Form1.GetIsSendingData) do begin sleep(WAIT_SEND); end;
  TimerSend.Enabled               := False;
  Button33.Caption                := '>';
  Timeout.Visible                 := False;
  EditCmdList[i].Color            := clLime;
  StrCmdTmp                       := EditCmdList[i].Text;
  StrHelpTmp                      := EditCmdList[i].Hint;
  EditAddList[i].Color            := clWindow;
  Form8.ShowModal;
  EditCmdList[i].Text             := StrCmdTmp;
  EditCmdList[i].Hint             := StrHelpTmp;
  CmdList[NumList].Cmd[i].CmdMain := StrCmdTmp;
  CmdList[NumList].Cmd[i].CmdHelp := StrHelpTmp;

  if CmdList[NumList].Cmd[i].isUseCmd then
    begin
      EditCmdList[i].Color := clWindow;
      EditAddList[i].Color := clWindow;
    end
  else
    begin
      EditCmdList[i].Color := Form7.Color;
      EditAddList[i].Color := Form7.Color;
    end;
  isSaveCfg := true;
end;

function TForm7.GetStrCmdTmp:string;
  begin
    result := StrCmdTmp;
  end;

function TForm7.GetStrHelpTmp:string;
  begin
    result := StrHelpTmp;
  end;

procedure TForm7.SetStrHelpTmp(ValStr: string);
  begin
    StrHelpTmp := ValStr;
  end;

procedure TForm7.SetStrCmdTmp(ValStr: string);
  begin
    StrCmdTmp := ValStr;
  end;

procedure TForm7.TimerCntTimer(Sender: TObject);
  var
    CurMsTime : integer;
begin
  CurMsTime := MilliSecondOfTheYear(Now);
  FreqSend  := 1000 * (CntTxSend - LastTxSend)/(CurMsTime - LastMsForFreq);
  LastMsForFreq    := CurMsTime;
  LastTxSend       := CntTxSend;
  Str(FreqSend:5:3, TmpStrX);
  StatText.Caption := 'SendPacket: ' + IntToStr(CntTxSend) + ', FreqPacket: ' + TmpStrX;
end;

procedure TForm7.UpdListGroup;
var i : integer;
begin
 ListGroup.Items.Clear;
 i := 1;
 while i <= CNT_LIST do
   begin
     ListGroup.Items.Add('' + Format('%03d', [i]) + '.' + CmdList[i].CmdName);
     inc(i);
   end;
end;

procedure TForm7.BTResetStatClick(Sender: TObject);
begin
  ListGroup.Visible := false;
  ListTail.Visible := false;
  CntTxSend  := 0;
  LastTxSend := 0;
end;

procedure TForm7.ListGroupKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    NumList := ListGroup.ItemIndex + 1;
    ListGroup.Visible := false;
    ListTail.Visible := false;
    UpdateListCmd(NumList);
    ActiveControl := NameList;
    end
  else if Key = #27 then begin
    ListGroup.Visible := false;
    ListTail.Visible := false;
    ActiveControl := NameList;
  end;
  Key := #0;

end;

procedure TForm7.NameListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    begin
      UpdListGroup;
      ListGroup.Visible := true;
      ActiveControl := ListGroup;
    end;
end;

procedure TForm7.ListGroupExit(Sender: TObject);
begin
  (Sender as TListBox).Visible := false;
end;

procedure TForm7.ListGroupDblClick(Sender: TObject);
begin
  isAutoList := False;
  NumList := ListGroup.ItemIndex + 1;
  ListGroup.Visible := false;
  ListTail.Visible := false;
  UpdateListCmd(NumList);
  ActiveControl := NameList;
end;

procedure TForm7.NameListDblClick(Sender: TObject);
begin
  ListGroup.Visible := true;
end;

procedure TForm7.NameListClick(Sender: TObject);
begin
  ListGroup.Visible := false;
  ListTail.Visible := false;
end;

procedure TForm7.LStartChange(Sender: TObject);
var
  str : string;
  CurList : integer;
begin
 ListGroup.Visible := false;
 ListTail.Visible := false;
 str := (Sender as TEdit).Text;
 if str <> '' then
   begin
     CurList := StrToInt(LStart.Text);
     if CurList > CNT_LIST then
       CurList := CNT_LIST;
     if CurList > ListStop then
       CurList := ListStop;
     if CurList < 1 then
       CurList := 1;
     ListStart   := CurList;
     isSaveCfg   := true;
   end;
end;

procedure TForm7.LEndChange(Sender: TObject);
var
  str: string;
  CurList : Integer;
begin
 ListGroup.Visible := false;
 str := (Sender as TEdit).Text;
 if str <> '' then
   begin
     CurList := StrToInt(str);
     if CurList < 1 then
       CurList := 1;
     if CurList < ListStart then
       CurList := ListStart;
     if CurList > CNT_LIST then
       CurList := CNT_LIST;
     ListStop := CurList;
     isSaveCfg     := true;
   end;

end;

procedure TForm7.EditTailAllChange(Sender: TObject);
begin
  ListGroup.Visible := false;
end;

procedure TForm7.EditTOAllChange(Sender: TObject);
begin
 ListGroup.Visible := false;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
  UpdListGroup;
  ListGroup.Visible := True;
  ListGroup.ItemIndex := 0;
  ActiveControl := ListGroup;
end;

procedure TForm7.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
  var
    deltaWidth : Integer;
    i          : Integer;

begin
  deltaWidth := Form7.Width - WidthForm;


  for i := 1 to CNT_CMD_IN_LIST do
    begin
      EditCmdList[i].Width := CmdEdtWidth    + deltaWidth;
      EditAddList[i].Left  := PosTailCmd     + deltaWidth;
      EditTOList[i].Left   := PosEdtTime     + deltaWidth;
      BtSendList[i].Left   := PosCmdBtSend   + deltaWidth;
    end;

  NameList.Width   := NListWidth     + deltaWidth;
  Edit1.Width      := CmdEdtWidth    + deltaWidth;
  btn1.Left        := PosListOpen    + deltaWidth;
  ListPrev.Left    := PosLeftBt      + deltaWidth;
  ListNext.Left    := PosRight       + deltaWidth;
  Button33.Left    := PosCmdBtSend   + deltaWidth;
  Button1.Left     := PosSendCmd     + deltaWidth;
  //GroupBox2.Left   := PosDataMode    + deltaWidth;
  EditTailAll.Left := PosEditTail    + deltaWidth;
  BTTail.Left      := PosEdtTailBt   + deltaWidth;
  EditTOAll.Left   := PosEdtTime     + deltaWidth;
  BT_TO.Left       := PosEdtTimeBt   + deltaWidth;

  BtResetStat.Left := PosResCnt      + deltaWidth;
  StatText.Width   := WidthStatText  + deltaWidth;
  ListGroup.Width  := WidthListLists + deltaWidth;
  ListTail.Left    := EditTailAll.Left;
  chk1.Left        := PosOneTime     + deltaWidth;
  end;

procedure TForm7.FormClick(Sender: TObject);
begin
  ListGroup.Visible := false;
end;

procedure TForm7.EditTailKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var NumCmd : Integer;
begin
  if Key = VK_DOWN then
    begin
      NumCmd := (Sender as TEdit).Tag;
      ListTail.ItemIndex := 0;
      ListTail.Top     := EditAddList[NumCmd].Top + EditAddList[NumCmd].Height;
      ListTail.Left    := EditAddList[NumCmd].Left;
      ListTail.Visible := True;
      ActiveControl    := ListTail;
      ActualTailCmd    := NumCmd;
    end;
end;

procedure TForm7.ListTailDblClick(Sender: TObject);
begin
  EditAddList[ActualTailCmd].Text := ListTail.Items[ListTail.ItemIndex];
  ListTail.Visible := false;
  ActiveControl := EditAddList[ActualTailCmd];
end;

procedure TForm7.ListTailExit(Sender: TObject);
begin
  ListTail.Visible := false;
end;

procedure TForm7.ListTailKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and ((Sender as TListBox).ItemIndex > -1) then
    begin
      if ActualTailCmd > 0 then
        begin
          EditAddList[ActualTailCmd].Text := ListTail.Items[ListTail.ItemIndex];
          ListTail.Visible := false;
          ActiveControl := EditAddList[ActualTailCmd];
        end
      else
        begin
          EditTailAll.Text := ListTail.Items[ListTail.ItemIndex];
          ListTail.Visible := false;
          ActiveControl    := EditTailAll;
        end;
    end;

  if Key = #27 then
    begin
      ListTail.Visible := false;
      if ActualTailCmd > 0 then
        begin
          ActiveControl := EditAddList[ActualTailCmd];
        end
      else
        begin
          ActiveControl := EditTailAll;
        end;
    end;
end;

procedure TForm7.EditTailAllKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    begin
      ActualTailCmd      := 0;
      ListTail.ItemIndex := 0;
      ListTail.Top       := EditTailAll.Top + EditTailAll.Height;
      ListTail.Visible   := True;
      ActiveControl      := ListTail;
    end;
end;

procedure TForm7.EditTailDblClick(Sender: TObject);
begin
  NumCmd := (Sender as TEdit).Tag;
  ListTail.ItemIndex := 0;
  ListTail.Top     := EditAddList[NumCmd].Top + EditAddList[NumCmd].Height;
  ListTail.Left    := EditAddList[NumCmd].Left;
  ListTail.Visible := True;
  ActiveControl    := ListTail;
  ActualTailCmd    := NumCmd;
end;

procedure TForm7.EditTailAllDblClick(Sender: TObject);
begin
      ActualTailCmd      := 0;
      ListTail.ItemIndex := 0;
      ListTail.Top       := EditTailAll.Top + EditTailAll.Height;
      ListTail.Visible   := True;
      ActiveControl      := ListTail;
end;

procedure TForm7.EditTailAllClick(Sender: TObject);
begin
  ListGroup.Visible := false;
  ListTail.Visible := false;
end;

procedure TForm7.EditTOAllClick(Sender: TObject);
begin
  ListGroup.Visible := false;
  ListTail.Visible := false;
end;




procedure TForm7.rbDECClick(Sender: TObject);
begin
  ListGroup.Visible := false;
  ListTail.Visible := false;

  if CmdList[NumList].SendMode <> Integer(SendDEC) then
    isSaveCfg := true;
  CmdList[NumList].SendMode := Integer(SendDEC);
end;


procedure TForm7.btn2Click(Sender: TObject);
var
  i: Integer;
begin
  CmdList[NumList].CmdName := 'Cleared ' + IntToStr(NumList);
  for i:= 1 to 32 do
    begin
      CmdList[NumList].Cmd[i].isUseCmd := False;
      CmdList[NumList].Cmd[i].CmdMain := '';
      CmdList[NumList].Cmd[i].CmdAdd := '';
      CmdList[NumList].Cmd[i].TimeOut := 1000;
      CmdList[NumList].Cmd[i].CmdHelp := '';
      CmdList[NumList].Cmd[i].Reserv1 := '';
      CmdList[NumList].Cmd[i].Reserv2 := False;
      CmdList[NumList].Cmd[i].Reserv3 := 0;
      CmdList[NumList].Cmd[i].Reserv4 := 0;
      CmdList[NumList].Cmd[i].Reserv5 := 0;
    end;
  UpdateListCmd(NumList);
  rb1.Checked := False;
  btn2.Enabled := False;
  btn4.Enabled := False;
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
  CmdListBuf := CmdList[NumList];
  btn4.Hint := IntToStr(NumList) + '.' + CmdListBuf.CmdName;
  isCopyList := True;
  btn4.Enabled := True;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
  CmdList[NumList] := CmdListBuf;
  UpdateListCmd(NumList);
    rb1.Checked := False;
  btn2.Enabled := False;
  btn4.Enabled := False;
end;

procedure TForm7.rb1Click(Sender: TObject);
begin
  btn2.Enabled := True;
  btn4.Enabled := isCopyList;
end;

procedure TForm7.chk1Click(Sender: TObject);
begin
  isOneTime := (Sender as TCheckBox).Checked;
end;

end.


