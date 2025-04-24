unit TerminalST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Registry, Clipbrd, DateUtils, ShellApi, Math, mmsystem, Common;


type TTypeFilterLog = (TFLCapt = 1, TFLOut = 2, TFLNoFilter = 3, TFLNoOut = 4);

type
  TShrift = record
    size : integer;
    color: TColor;
    style: TFontStyles;
  end;

type
  TSettJ = record
    numJ : Byte;
    Key1 : Byte;
    Key2 : Byte;
    SendMode : Byte;
    isUse: Boolean;
  end;

type
  TListCmd = record
    NameList    : string[151];
    CmdData     : array[1..48] of string[251];
    CmdName     : array[1..48] of string[51];
    NameHelp    : array[1..48,1..12] of string[151];
    TailStr     : string[101];
    reserv2     : string[101];
    Options     : array[1..20] of integer;
    //Options[1] - marker;
    //Options[2] - isHexSend
    //reserv3
  end;

  TListCmd2 = record
    NameList       : string[151];
    CmdData        : array[1..48] of string[251];
    CmdName        : array[1..48] of string[51];
    NameHelp       : array[1..48,1..12] of string[151];
    TailStr        : string[101];
    CmdStr         : string[251];
    FiltrStr       : array[1..20] of string[251];
    AutoClrStrHEX  : string[251];
    AutoClrStrASCII: string[251];
    AutoExpStr     : string[251];
    NStr4       : string[251];
    NStr5       : string[251];
    NStr6       : string[251];
    NStr7       : string[251];
    NStr8       : string[251];
    NStr9       : string[251];
    NStr10      : string[251];
    NStr11      : string[251];
    NStr12      : string[251];
    NStr13      : string[251];
    NStr14      : string[251];
    NStr15      : string[251];
    NStr16      : string[251];
    NStr17      : string[251];
    NStr18      : string[251];
    NStr19      : string[251];
    NStr20      : string[251];

    Marker               : Cardinal;
    TimeOutAnsRX         : Cardinal;
    CntExpBytes          : Cardinal;
    SepBytes             : Cardinal;
    SepSymbol            : Cardinal;
    TimeAutoExpanNoData  : Cardinal;
    CntClrBytesLog       : Cardinal;

    SepBefSymbol1     : Cardinal;

    SepBefSymbol2     : Cardinal;

    HK1_4      : Cardinal;
    HK5_8      : Cardinal;
    HK9_12     : Cardinal;
    HK13_16    : Cardinal;
    HK17_20    : Cardinal;
    HK21_24    : Cardinal;
    HK25_28    : Cardinal;
    HK29_32    : Cardinal;
    HK33_36    : Cardinal;
    HK37_40    : Cardinal;
    HK41_44    : Cardinal;
    HK45_48    : Cardinal;
    J01_02     : Cardinal;
    J03_04     : Cardinal;
    J05_06     : Cardinal;
    J07_08     : Cardinal;
    J09_10     : Cardinal;
    J11_12     : Cardinal;
    J13_14     : Cardinal;
    J15_16     : Cardinal;
    J17_18     : Cardinal;
    J19_20     : Cardinal;
    J21_22     : Cardinal;
    J23_24     : Cardinal;
    J25_26    : Cardinal;
    J27_28    : Cardinal;
    J29_30    : Cardinal;
    J31_32    : Cardinal;
    J33_34    : Cardinal;
    J35_36    : Cardinal;
    J37_38    : Cardinal;
    J39_40    : Cardinal;
    J41_42    : Cardinal;
    J43_44    : Cardinal;
    J45_46    : Cardinal;
    J47_48    : Cardinal;

    SepSymbol2  : Cardinal;
    SeqSymbols1_4  : Cardinal;
    SeqSymbols1_3  : Cardinal;
    SeqSymbols1_2  : Cardinal;
    SeqSymbols2_4  : Cardinal;
    SeqSymbols2_3  : Cardinal;
    SeqSymbols2_2  : Cardinal;
    NParam53     : Cardinal;
    NParam54     : Cardinal;
    NParam55     : Cardinal;
    NParam56    : Cardinal;
    NParam57    : Cardinal;
    NParam58    : Cardinal;
    NParam59    : Cardinal;
    NParam60    : Cardinal;

    SendMode    : TTypeSendMode;
    ReadMode    : TTypeReadMode;
    isVisTime   : Boolean;
    isVisCnt    : Boolean;

    isSep0D              : Boolean;
    isSep0A              : Boolean;
    isSep00              : Boolean;
    isSep0D0A            : Boolean;
    isSepTime            : Boolean;
    isSepBytes           : Boolean;
    isSepSymbol          : Boolean;
    isResetFifo          : Boolean;
    isAutoExpandNoInData : Boolean;
    isAutoExpStr         : Boolean;
    isCntExpBytes        : Boolean;
    isExpWin             : Boolean;
    isFileSendOK         : Boolean;
    isAutoClrStrHEX      : Boolean;
    isAutoClrStrASCII    : Boolean;
    isClrLogWhSend       : Boolean;

    isAddASCII           : Boolean;
    isAddHEX             : Boolean;
    isADDTX              : Boolean;
    isAddRX              : Boolean;
    isAddIgnFlt          : Boolean;
    isShowMode           : Boolean;

    isSepBefSymbol1    : Boolean;
    isSepBefSymbol2    : Boolean;
    isUseHotKey          : Boolean;
    isSepSymbol2         : Boolean;
    isSepAftSeq1_4         : Boolean;
    isSepAftSeq1_3         : Boolean;
    isSepAftSeq1_2         : Boolean;
    isSepAftSeq2_4         : Boolean;
    isSepAftSeq2_3         : Boolean;
    isSepAftSeq2_2         : Boolean;
    isVisPort   : Boolean;
    isVisDir    : Boolean;
    isAddDec    : Boolean;
    isAddCust   : Boolean;
    isFlag41    : Boolean;
    isFlag42    : Boolean;
    isFlag43    : Boolean;
    isFlag44    : Boolean;
    isFlag45    : Boolean;
    isFlag46    : Boolean;
    isFlag47    : Boolean;
    isFlag48    : Boolean;
    isFlag49    : Boolean;
    isFlag50    : Boolean;
    isFlag51    : Boolean;
    isFlag52    : Boolean;
    isFlag53    : Boolean;
    isFlag54    : Boolean;
    isFlag55    : Boolean;
    isFlag56    : Boolean;
    isFlag57    : Boolean;
    isFlag58    : Boolean;
    isFlag59    : Boolean;
    isFlag60    : Boolean;
  end;




type
  TRxBuf = record
    Buf            : array[0..$7FFFF] of byte;
    Shift          : Integer;
  end;

  TOldCmd = record
    OldCmd      : string[255];
  end;


  TStats = record
    DataSend    : integer;
    DataRead    : integer;
    MinTimeWait : integer;
    MaxTimeWait : integer;
    OldTimeRead : integer;
    CurTimeRead : integer;
    HitCounter  : integer;
  end;

  TCfgTerminal = record
    NameCOM         : string[10];
    BRate           : byte;
    Bits            : byte;
    SBits           : byte;
    AConn           : boolean;
    TimeRx          : integer;
    Filtr           : string[250];
    fonColor        : TColor;
    textColor       : TColor;
    addTime         : boolean;
    DataMode        : byte;
    SendMode        : byte;
    Period          : integer;
    SendConn        : boolean;
    MainStr         : string[250];
    AddStr          : string[250];
    ModeMacros      : boolean;
    NumList         : dword;
    addCntBytes     : Boolean;
    RbCapt          : Boolean;
    BRateStr        : string[255];
    ShowStat        : Integer;
    isShowModeLSC   : Integer;
    TimeNoInputData : Integer;
    isModeDialog    : Integer;
    LogDir          : string[250];
    CmdDir          : string[250];
    FileDir         : string[250];
    ExeLogFile      : string[250];
    StrExp          : string[250];
    AutoClrStrHEX   : string[250];
    AutoClrStrASCII : string[250];
    NameLogEvents   : string[250];
    r15             : string[250];
    r16             : string[250];
    r17             : string[250];
    r18             : string[250];
    r19             : string[250];
    r20             : string[250];
    r21             : string[250];
    r22             : string[250];
    FiltrCh         : Integer;
    ModeEmulAuto    : Integer;
    OnlyThisOneEmul : Integer;
    EmulList        : Integer;
    CaptCh          : Integer;
    SkippingReps    : Integer;
    AddWinBits      : Integer;
    LineSeparators  : Integer;
    AutoClearBits   : Integer;
    CntBytesAutoClr : Integer;
    CntBytesSep     : Integer;
    SepSymbolCfg    : Integer;
    ParityCom       : Integer;
    TimeAutoExpan   : Integer;
    CntExpBytes     : Integer;
    SepSymbol2Cfg   : Integer;
    r40             : Integer;
    ColorSend       : TColor;
    ColorRead       : TColor;
    ColorInputData  : TColor;
    ColorForm       : TColor;
    ColorReserv3    : TColor;
    ColorReserv4    : TColor;
    HandsHakingPort : Integer;
    r2              : Integer;
    r3              : Integer;
    r4              : Integer;
    r55             : Cardinal;
    r66             : Cardinal;
    r77             : Cardinal;
    PozMainWindow   : Cardinal;
    isFontBold      : Boolean;
    isColorInputData: Boolean;
    isAddDate       : Boolean;
    isNoOutNonPrint : Boolean;
    isFullScreen    : Boolean;
    FontSize        : Cardinal;
  end;




  TForm1 = class(TForm)
    Panel1: TPanel;
    BTConnect: TButton;
    MainPanel: TPanel;
    STLog: TStaticText;
    MainStrCmd: TEdit;
    AddStrCmd: TEdit;
    StaticText3: TStaticText;
    STH1: TStaticText;
    STH2: TStaticText;
    STH3: TStaticText;
    STH4: TStaticText;
    STH5: TStaticText;
    STH6: TStaticText;
    STH7: TStaticText;
    STH8: TStaticText;
    STH9: TStaticText;
    STH10: TStaticText;
    STH11: TStaticText;
    STH12: TStaticText;
    STListName: TStaticText;
    ListNameEDT: TEdit;
    CheckConnect: TTimer;
    RBName: TRadioButton;
    RbData: TRadioButton;
    SecondWindow: TMemo;
    RxTimer: TTimer;
    TimerPeriod: TTimer;
    LogPanel: TPanel;
    OutMode: TPanel;
    InputMode: TPanel;
    PeriodTX: TEdit;
    SendAsReconn: TCheckBox;
    VisTime: TCheckBox;
    LPlus: TLabel;
    StaticText1: TStaticText;
    Label1: TLabel;
    CustomFunctions: TTimer;
    CiklSend: TCheckBox;
    FiltrLog: TEdit;
    SecondWindowAdd: TMemo;
    CntBytesBox: TCheckBox;
    BTResetCnt: TButton;
    PStats: TPanel;
    LSend: TLabel;
    LRead: TLabel;
    MinTimeWait: TLabel;
    MaxTimeWait: TLabel;
    BTClrStat: TButton;
    TextTime: TStaticText;
    lbl1: TLabel;
    FontMemo: TFontDialog;
    SendFileDialog: TOpenDialog;
    TimerSendFile: TTimer;
    SendFileLavel: TLabel;
    EventLog: TMemo;
    OpenFileCmdDialog: TOpenDialog;
    OpenLogFileDialog: TOpenDialog;
    ButtonReadFile: TButton;
    BtOptConn: TButton;
    StartLog: TButton;
    AddWindow: TButton;
    BtAddFunctions: TButton;
    BtInfo: TButton;
    ClrColorTimer: TTimer;
    OpenBinFileDialog: TOpenDialog;
    OpenBinBT: TButton;
    OpenLogBT: TButton;
    CntCmpLvl: TLabel;
    TabEditCmd: TTabControl;
    Edit1: TEdit;
    Edit9: TEdit;
    Edit17: TEdit;
    Edit2: TEdit;
    Edit10: TEdit;
    Edit18: TEdit;
    Edit3: TEdit;
    Edit11: TEdit;
    Edit19: TEdit;
    Edit4: TEdit;
    Edit12: TEdit;
    Edit20: TEdit;
    Edit5: TEdit;
    Edit13: TEdit;
    Edit21: TEdit;
    Edit6: TEdit;
    Edit14: TEdit;
    Edit22: TEdit;
    Edit7: TEdit;
    Edit15: TEdit;
    Edit23: TEdit;
    Edit8: TEdit;
    Edit16: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit33: TEdit;
    Edit41: TEdit;
    Edit26: TEdit;
    Edit34: TEdit;
    Edit42: TEdit;
    Edit27: TEdit;
    Edit35: TEdit;
    Edit43: TEdit;
    Edit28: TEdit;
    Edit36: TEdit;
    Edit44: TEdit;
    Edit29: TEdit;
    Edit37: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit38: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit39: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit40: TEdit;
    Edit32: TEdit;
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
    Button25: TButton;
    Button33: TButton;
    Button41: TButton;
    Button18: TButton;
    Button26: TButton;
    Button34: TButton;
    Button42: TButton;
    Button19: TButton;
    Button27: TButton;
    Button35: TButton;
    Button43: TButton;
    Button20: TButton;
    Button28: TButton;
    Button36: TButton;
    Button44: TButton;
    Button21: TButton;
    Button29: TButton;
    Button37: TButton;
    Button45: TButton;
    Button22: TButton;
    Button30: TButton;
    Button38: TButton;
    Button46: TButton;
    Button23: TButton;
    Button31: TButton;
    Button39: TButton;
    Button47: TButton;
    Button24: TButton;
    Button32: TButton;
    Button40: TButton;
    Button48: TButton;
    OldCmdList: TListBox;
    Button50: TButton;
    Button51: TButton;
    SendStart: TButton;
    SetEnHideTimer: TTimer;
    FonColor: TColorDialog;
    AScroll: TCheckBox;
    sendAnsBTBTLog: TButton;
    sendAnsBTStartStop: TButton;
    SendFilePause: TButton;
    Button49: TButton;
    tmrReadFileForSend: TTimer;
    lblLostData: TLabel;
    tmrAutoConnect: TTimer;
    pnl1: TPanel;
    pnlSend: TPanel;
    CBModeSend: TComboBox;
    lstFastOldCmd: TListBox;
    Edt1: TEdit;
    Edt3: TEdit;
    Edt4: TEdit;
    Edt5: TEdit;
    Edt6: TEdit;
    Edt7: TEdit;
    Edt8: TEdit;
    Edt9: TEdit;
    Edt10: TEdit;
    Edt11: TEdit;
    Edt12: TEdit;
    Edt13: TEdit;
    Edt14: TEdit;
    Edt15: TEdit;
    Edt16: TEdit;
    Edt17: TEdit;
    Edt18: TEdit;
    Edt19: TEdit;
    Edt20: TEdit;
    Edt21: TEdit;
    Edt22: TEdit;
    Edt23: TEdit;
    Edt24: TEdit;
    Edt25: TEdit;
    Edt26: TEdit;
    Edt27: TEdit;
    Edt28: TEdit;
    Edt29: TEdit;
    Edt30: TEdit;
    Edt31: TEdit;
    Edt32: TEdit;
    Edt33: TEdit;
    Edt34: TEdit;
    Edt35: TEdit;
    Edt36: TEdit;
    Edt37: TEdit;
    Edt38: TEdit;
    Edt39: TEdit;
    Edt40: TEdit;
    Edt41: TEdit;
    Edt42: TEdit;
    Edt43: TEdit;
    Edt44: TEdit;
    Edt45: TEdit;
    Edt46: TEdit;
    Edt47: TEdit;
    Edt48: TEdit;
    Edt49: TEdit;
    tmrCheckHK: TTimer;
    tmr1: TTimer;
    Edt50: TEdit;
    Edt51: TEdit;
    Edt52: TEdit;
    Edt53: TEdit;
    Edt54: TEdit;
    Edt55: TEdit;
    Edt56: TEdit;
    Edt57: TEdit;
    Edt58: TEdit;
    Edt59: TEdit;
    Edt60: TEdit;
    Edt61: TEdit;
    Edt62: TEdit;
    Edt63: TEdit;
    Edt64: TEdit;
    Edt65: TEdit;
    Edt66: TEdit;
    Edt67: TEdit;
    Edt68: TEdit;
    Edt69: TEdit;
    Edt70: TEdit;
    Edt71: TEdit;
    Edt72: TEdit;
    Edt73: TEdit;
    Edt74: TEdit;
    Edt75: TEdit;
    Edt76: TEdit;
    Edt77: TEdit;
    Edt78: TEdit;
    Edt79: TEdit;
    Edt80: TEdit;
    Edt81: TEdit;
    Edt82: TEdit;
    Edt83: TEdit;
    Edt84: TEdit;
    Edt85: TEdit;
    Edt86: TEdit;
    Edt87: TEdit;
    Edt88: TEdit;
    Edt89: TEdit;
    Edt90: TEdit;
    Edt91: TEdit;
    Edt92: TEdit;
    Edt93: TEdit;
    Edt94: TEdit;
    Edt95: TEdit;
    Edt96: TEdit;
    Edt97: TEdit;
    tmr2: TTimer;
    tmrCheckJ: TTimer;
    ChHK: TCheckBox;
    BtHSBt: TButton;
    BtSend: TButton;
    tmrAutoResetFIFO: TTimer;
    CMainWindow: TRichEdit;
    ConnOpt: TPanel;
    ComPort: TComboBox;
    BaudRate: TComboBox;
    ComBits: TComboBox;
    ComStopBits: TComboBox;
    AutoConnect: TCheckBox;
    ParityBox: TComboBox;
    ChAconnPort: TCheckBox;
    grp6: TGroupBox;
    ChInv: TCheckBox;
    Chchk2: TCheckBox;
    CMainWindowAdd: TRichEdit;
    pnlAddWin: TPanel;
    BtAddClose: TButton;
    grp1: TGroupBox;
    ChAddRX: TCheckBox;
    ChAddTX: TCheckBox;
    CheckBox1: TCheckBox;
    BtAddClear: TButton;
    CheckBox2: TCheckBox;
    pnlSep: TPanel;
    grpLineSeparator: TGroupBox;
    lbl5: TLabel;
    ChSepTime: TCheckBox;
    grp3: TGroupBox;
    ChSep0D0A: TCheckBox;
    ChSep00: TCheckBox;
    ChSep0A: TCheckBox;
    ChSep0D: TCheckBox;
    EdtPauseRx: TEdit;
    ud1: TUpDown;
    ChSepCnt: TCheckBox;
    EdtCntSep: TEdit;
    ud2: TUpDown;
    grp7: TGroupBox;
    edt100: TEdit;
    edt101: TEdit;
    edt102: TEdit;
    edt103: TEdit;
    chk1: TCheckBox;
    chk2: TCheckBox;
    edt2: TEdit;
    edt99: TEdit;
    edt104: TEdit;
    CheckBox4: TCheckBox;
    edt105: TEdit;
    edt106: TEdit;
    EdtSymAdd: TEdit;
    ChSepSymbol: TCheckBox;
    Edt98: TEdit;
    CheckBox3: TCheckBox;
    chk3: TCheckBox;
    edt107: TEdit;
    edt108: TEdit;
    edt109: TEdit;
    edt110: TEdit;
    chk4: TCheckBox;
    edt111: TEdit;
    edt112: TEdit;
    edt113: TEdit;
    chk5: TCheckBox;
    edt114: TEdit;
    edt115: TEdit;
    grp8: TGroupBox;
    Label2: TLabel;
    ChCBBefByte2: TCheckBox;
    EdtBefSym2: TEdit;
    ChCBBefByte1: TCheckBox;
    EdtBefSym1: TEdit;
    grp2: TGroupBox;
    lbl2: TLabel;
    lbl10: TLabel;
    EdtCntClr: TEdit;
    ChWhSendClr: TCheckBox;
    EdtAutoClrStrHex: TEdit;
    ChClrLogStrHex: TCheckBox;
    ChClrLogStrAscii: TCheckBox;
    EdtAutoClrStrAscii: TEdit;
    Fifo: TGroupBox;
    ResRingBuf: TButton;
    ResetFIFO: TCheckBox;
    chk6: TCheckBox;
    GroupBox1: TGroupBox;
    ChExpOnly: TCheckBox;
    grp4: TGroupBox;
    lbl9: TLabel;
    lbl8: TLabel;
    EdtNoData: TEdit;
    ChCBNoData: TCheckBox;
    ChAexpStr: TCheckBox;
    EdtAExpStr: TEdit;
    ChCntExpBytes: TCheckBox;
    EdtCntExpBytes: TEdit;
    ChFileSendEv: TCheckBox;
    BtLineSep: TButton;
    BtAutoClear: TButton;
    BtFIFO: TButton;
    BtAutoExpand: TButton;
    BtEventLive: TButton;
    btnLOG: TButton;
    grpEventLog: TGroupBox;
    ChEventWriteInLog: TCheckBox;
    BtOpenLogEvents: TButton;
    BTFont: TButton;
    BTPalitra: TButton;
    MonDialog: TButton;
    BtAnsList: TButton;
    BtListCmd: TButton;
    FSmodeBt: TButton;
    SettBt: TButton;
    CSLbt: TButton;
    BrutForceBT: TButton;
    btnBtShowStat: TButton;
    BtAddPorts: TButton;
    cbbSendMode: TComboBox;
    cbbReadMode: TComboBox;
    ChVisPort: TCheckBox;
    cbbHandsHaking: TComboBox;
    lbl6: TLabel;
    lbl7: TLabel;
    ChDir: TCheckBox;
    lbl3: TLabel;
    btnPacketStats: TButton;
    BtMultiPort: TButton;
    grp5: TGroupBox;
    chkAddDec: TCheckBox;
    ChAddHEX: TCheckBox;
    ChAddCustom: TCheckBox;
    ChAddASCII: TCheckBox;
    Bt1: TButton;
    Bt2: TButton;
    BtAddPortsSend: TButton;
    pnlSendInAdd: TPanel;
    LBTail: TListBox;
    grp9: TGroupBox;
    Bt4: TButton;
    Bt5: TButton;
    Bt6: TButton;
    Bt7: TButton;
    Bt8: TButton;
    Bt9: TButton;
    Bt10: TButton;
    Bt11: TButton;
    Bt12: TButton;
    Bt13: TButton;
    Bt14: TButton;
    Bt15: TButton;
    Bt16: TButton;
    Bt17: TButton;
    Bt18: TButton;
    Bt19: TButton;
    Bt20: TButton;
    Bt21: TButton;
    Bt3: TButton;
    grpLog: TGroupBox;
    tmr3: TTimer;
    tmr4: TTimer;
    tmr5: TTimer;
    grp10: TGroupBox;
    chkAddDate: TCheckBox;
    chkOutNonPrintASCII: TCheckBox;
    grp11: TGroupBox;
    chk7: TCheckBox;
    ctxt1: TStaticText;
    tmrOpenList: TTimer;
    tmrSendList: TTimer;
    BtParser: TButton;
    btnParserASCII: TButton;
    BtTableCustom: TButton;
    BtAddMacros: TButton;
    BtBTASCIITABLE: TButton;
    Bt23: TButton;
    BtUtilites: TButton;
    btnBt24: TButton;
    ctxt2: TStaticText;
    tmrMinutes: TTimer;
    cbbFilterLOg: TComboBox;
    Bt22: TButton;
    SelTerm: TPanel;
    CBLists: TComboBox;
    ListDec: TButton;
    ListInc: TButton;
    grp12: TGroupBox;
    rb1: TRadioButton;
    DelList: TButton;
    BtCopyList: TButton;
    BtPasteList: TButton;
    tmrDelay: TTimer;



    procedure FormCanResize(Sender: TObject; var NewWidth,
    NewHeight: Integer; var Resize: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure ButtonCmdClick(Sender: TObject);
    procedure ButtonCmdHelp(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure EditCmdHelp(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ReadListCmd(NumList : integer);
    procedure SaveEditTextCmd(Sender: TObject);
    function  SendPortData(Data: string; AddData: string; SendMode : TTypeSendMode; isSaveSend : boolean) : boolean;
    function  ConvAddStr(Data: string; Tail : string; SendMode : TTypeSendMode) : string;
    procedure ReadOldCmd;
    procedure ClearHelp;
    function  ReadComInBufRx(Cnt: DWORD) : integer;
    procedure ReadBufRxInLog;

    function  CalcCsum(Cmd: string; NumCsum : integer; SendMode : TTypeSendMode) : integer;

    procedure ButtonCmdAddMacrosClick(Cmd : string);



    procedure OutHelpHelp;

    procedure OutHelpConnect;
    procedure OutHelpRescan;
    procedure OutHelpAutoConnect;
    procedure OutHelpTimeRX;
    procedure OutHelpFiltr;
    procedure OutHelpModeManual;
    procedure OutHelpModeSel;
    procedure OutHelpModeAfterAns;
    procedure OutHelpModePeriod;
    procedure OutHelpForConnect;
    procedure OutHelpConsol;
    procedure OutHelpAddConsol;
    procedure OutHelpCiklSend;
    procedure ByteByByteSelSelect;











    procedure WriteLogSendData(Log : string; SendMode : TTypeSendMode);
    procedure WriteListCmd(NumList : integer);
    procedure CheckSendDataAftConnect;
    procedure StartSendCommands;
    procedure ClrListCmd(NumList : integer);
    procedure ShowHelpAsFocus(Sender: TObject);
    procedure BTRescanClick(Sender: TObject);
    procedure ShowWindowEdtHelp(Sender: TObject);
    procedure OldCommandsBTClick(Sender: TObject);
    procedure BTConnectClick(Sender: TObject);
    procedure CheckConnectTimer(Sender: TObject);
    procedure ListIncClick(Sender: TObject);
    procedure ListDecClick(Sender: TObject);
    procedure DelListClick(Sender: TObject);
    procedure RBNameClick(Sender: TObject);
    procedure RbDataClick(Sender: TObject);
    procedure CBListsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtSendClick(Sender: TObject);
    procedure MainStrCmdKeyPress(Sender: TObject; var Key: Char);
    procedure OldCmdListClick(Sender: TObject);
    procedure ButtonReadFileClick(Sender: TObject);
    procedure sendAnsBTBTLogClick(Sender: TObject);
    procedure sendAnsBTStartStopClick(Sender: TObject);
    procedure StartLogClick(Sender: TObject);
    procedure RxTimerTimer(Sender: TObject);
    procedure RBManualClick(Sender: TObject);
    procedure RBAfterAnsClick(Sender: TObject);
    procedure RBPeriodClick(Sender: TObject);
    procedure RBSelClick(Sender: TObject);
    procedure RBFirstClick(Sender: TObject);
    procedure SendStartClick(Sender: TObject);
    procedure TimerPeriodTimer(Sender: TObject);
    procedure PeriodTXKeyPress(Sender: TObject; var Key: Char);
    procedure rbSASCIIClick(Sender: TObject);
    procedure rbSHEXClick(Sender: TObject);

    procedure BTPalitraClick(Sender: TObject);
    procedure SriftClick(Sender: TObject; Button: TUDBtnType);
    procedure EditAllCmdMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DelListMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OldCommandsBTMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ListIncMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListDecMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ButtonReadFileMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SendStartMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtSendMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MainStrCmdMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AddStrCmdMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LogPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SecondWindowMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MainWindowMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MainPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtInfoClick(Sender: TObject);
    procedure SaveFClick(Sender: TObject);
    procedure lstFastOldCmdKeyPress(Sender: TObject; var Key: Char);
    procedure lstFastOldCmdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MainStrCmdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustomFunctionsTimer(Sender: TObject);
    procedure lstFastOldCmdExit(Sender: TObject);
    procedure CBListsDblClick(Sender: TObject);
    procedure STListNameDblClick(Sender: TObject);
    procedure BTClrStatClick(Sender: TObject);
    procedure AddStrCmdKeyPress(Sender: TObject; var Key: Char);
    procedure AddStrCmdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LBTailExit(Sender: TObject);
    procedure LBTailKeyPress(Sender: TObject; var Key: Char);
    procedure Str1Click(Sender: TObject);
    procedure Str2Click(Sender: TObject);
    procedure FiltrLogClick(Sender: TObject);
    procedure FiltrLogExit(Sender: TObject);
    procedure BTConnectMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BTRescanMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AutoConnectMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TimeOutAnsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FiltrLogMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RBManualMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RBSelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RBAfterAnsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RBPeriodMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SendAsReconnMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CiklSendMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AutoConnectClick(Sender: TObject);
    procedure MonDialogClick(Sender: TObject);
    procedure lstFastOldCmdDblClick(Sender: TObject);
    procedure LBTailDblClick(Sender: TObject);
    procedure MainWindowDblClick(Sender: TObject);
    procedure SecondWindowDblClick(Sender: TObject);
    procedure AddStrCmdExit(Sender: TObject);
    procedure AddWindowClick(Sender: TObject);
    procedure BtListCmdClick(Sender: TObject);
    procedure BTResetCntClick(Sender: TObject);
    procedure MemoUpd(DT : TDateTime; BeginStr: string;  LogStr : string; LogStrASCII : string; LogStrHEX : string; LogStrDec: string; LogStrCUST: string; isRx : boolean; ColorText : TColor);
    procedure PauseLog;

    procedure ManualSelect;
    procedure WhChSelect;
    procedure AftAnsSelect;
    procedure PerSelSelect;
    //procedure SendModeSelect(Sender: TObject);
    procedure BtHSBtClick(Sender: TObject);
    procedure BaudRateKeyPress(Sender: TObject; var Key: Char);
    procedure BaudRateClick(Sender: TObject);
    procedure BTFontClick(Sender: TObject);
    procedure SetFontStyle();
    procedure Button49Click(Sender: TObject);
    procedure TimerSendFileTimer(Sender: TObject);
    procedure ListNameEDTChange(Sender: TObject);
    procedure CSLbtClick(Sender: TObject);
    procedure SettBtClick(Sender: TObject);
    procedure OpenLogBTClick(Sender: TObject);
    procedure RBCaptClick(Sender: TObject);
    procedure RBOutClick(Sender: TObject);
    procedure RbNoFilterClick(Sender: TObject);
    procedure BtOptConnClick(Sender: TObject);
    procedure BtAddFunctionsClick(Sender: TObject);
    procedure MainWindowClick(Sender: TObject);
    procedure BtAnsListClick(Sender: TObject);
    procedure SecondWindowClick(Sender: TObject);
    procedure SecondWindowAddClick(Sender: TObject);
    procedure MainWindowAddClick(Sender: TObject);
    procedure ClrColorTimerTimer(Sender: TObject);
    procedure FSmodeBtClick(Sender: TObject);
    procedure OpenBinBTClick(Sender: TObject);
    procedure FiltrLogChange(Sender: TObject);
    procedure TabEditCmdDrawTab(Control: TCustomTabControl;
      TabIndex: Integer; const Rect: TRect; Active: Boolean);
    procedure TabEditCmdChange(Sender: TObject);
    procedure EditCmdSetIsReqSave(Sender: TObject; var Key: Char);
    procedure Button50Click(Sender: TObject);
    procedure MainPanelClick(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure InputModeClick(Sender: TObject);
    procedure OutModeClick(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure ListNameEDTKeyPress(Sender: TObject; var Key: Char);
    procedure AddStrCmdChange(Sender: TObject);
    procedure btnBtShowStatClick(Sender: TObject);
    procedure SetEnHideTimerTimer(Sender: TObject);
    procedure AScrollClick(Sender: TObject);
    procedure ChAddASCIIClick(Sender: TObject);
    procedure ChAddHEXClick(Sender: TObject);
    procedure ChAddTXClick(Sender: TObject);
    procedure ChAddRXClick(Sender: TObject);
    procedure BtAddClearClick(Sender: TObject);
    procedure BtAddCloseClick(Sender: TObject);
    procedure MainWindowAddDblClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    function  ReadRingBuf(isHex : boolean) : Integer;
    procedure WriteRingBuf(cnt : INTEGER);
    procedure SendFilePauseClick(Sender: TObject);
    procedure ChSep0DClick(Sender: TObject);
    procedure ChSep0AClick(Sender: TObject);
    procedure ChSep00Click(Sender: TObject);
    procedure ChSep0D0AClick(Sender: TObject);
    procedure ChSepTimeClick(Sender: TObject);
    procedure ChWhSendClrClick(Sender: TObject);
    procedure EdtCntClrKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCntClrChange(Sender: TObject);
    procedure EdtPauseRxChange(Sender: TObject);
    procedure EdtPauseRxKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPauseRxExit(Sender: TObject);
    procedure EdtCntClrExit(Sender: TObject);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure ChSepCntClick(Sender: TObject);
    procedure EdtCntSepKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCntSepChange(Sender: TObject);
    procedure ud2Click(Sender: TObject; Button: TUDBtnType);
    procedure ChSepSymbolClick(Sender: TObject);
    procedure EdtCaptSymbolKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCaptSymbolChange(Sender: TObject);
    procedure EdtCaptSymbolExit(Sender: TObject);
    procedure EdtSymAddKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSymAddChange(Sender: TObject);
    procedure btnLOGClick(Sender: TObject);
    procedure ResRingBufClick(Sender: TObject);
    procedure ParityBoxChange(Sender: TObject);
    procedure ResetFIFOClick(Sender: TObject);
    procedure ChCBNoDataClick(Sender: TObject);
    procedure EdtNoDataKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNoDataChange(Sender: TObject);
    procedure BtLineSepClick(Sender: TObject);
    procedure BtAutoClearClick(Sender: TObject);
    procedure BtFIFOClick(Sender: TObject);
    procedure BtAutoExpandClick(Sender: TObject);
    procedure ChAexpStrClick(Sender: TObject);
    procedure EdtAExpStrChange(Sender: TObject);
    procedure ChCntExpBytesClick(Sender: TObject);
    procedure EdtCntExpBytesKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCntExpBytesChange(Sender: TObject);
    procedure ChExpOnlyClick(Sender: TObject);
    procedure ChFileSendEvClick(Sender: TObject);
    procedure ChClrLogStrAsciiClick(Sender: TObject);
    procedure ChClrLogStrHexClick(Sender: TObject);
    procedure EdtAutoClrStrHexKeyPress(Sender: TObject; var Key: Char);
    procedure EdtAutoClrStrHexChange(Sender: TObject);
    procedure EdtAutoClrStrAsciiChange(Sender: TObject);
    procedure EventLogClick(Sender: TObject);
    procedure BtEventLiveClick(Sender: TObject);
    procedure ChEventWriteInLogClick(Sender: TObject);
    procedure BtOpenLogEventsClick(Sender: TObject);
    procedure WriteLogEvent(DateTime: TDateTime; Msg: string);
    procedure ChAconnPortClick(Sender: TObject);
    procedure tmrAutoConnectTimer(Sender: TObject);
    procedure ComPortChange(Sender: TObject);
    procedure rbRASCIIClick(Sender: TObject);
    procedure rbRHEXClick(Sender: TObject);
    procedure CBModeSendChange(Sender: TObject);
    procedure CBModeChange;
    procedure RBNoOutClick(Sender: TObject);
    procedure PeriodTXChange(Sender: TObject);
    procedure MainStrCmdChange(Sender: TObject);
    procedure VisTimeClick(Sender: TObject);
    procedure CntBytesBoxClick(Sender: TObject);
    procedure BtCopyListClick(Sender: TObject);
    procedure BtPasteListClick(Sender: TObject);
    procedure BrutForceBTClick(Sender: TObject);
    procedure BtBTASCIITABLEClick(Sender: TObject);
    procedure ChCBBefByte1Click(Sender: TObject);
    procedure ChCBBefByte2Click(Sender: TObject);
    procedure EdtBefSymbol1DecChange(Sender: TObject);
    procedure Edt2Change(Sender: TObject);
    procedure EdtBefSym1Change(Sender: TObject);
    procedure EdtBefSym2Change(Sender: TObject);
    procedure EdtBefSymbol1DecExit(Sender: TObject);
    procedure Edt2Exit(Sender: TObject);
    procedure EdtBefSymbol1DecKeyPress(Sender: TObject; var Key: Char);
    procedure Edt2KeyPress(Sender: TObject; var Key: Char);
    procedure EdtBefSym1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtBefSym2KeyPress(Sender: TObject; var Key: Char);
    procedure BtSendKeyPress(Sender: TObject; var Key: Char);
    procedure ChHKClick(Sender: TObject);
    procedure ChHKMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure HKChange(Sender: TObject);
    procedure tmrCheckHKTimer(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MainWindowKeyPress(Sender: TObject; var Key: Char);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure EdtJDblClick(Sender: TObject);
    procedure tmrCheckJTimer(Sender: TObject);
    procedure EdtJMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtParserClick(Sender: TObject);
    procedure BtAddMacrosClick(Sender: TObject);
    procedure BtUtilitesClick(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Edt99Change(Sender: TObject);
    procedure Edt99Exit(Sender: TObject);
    procedure Edt99KeyPress(Sender: TObject; var Key: Char);
    procedure Edt98Change(Sender: TObject);
    procedure Edt98KeyPress(Sender: TObject; var Key: Char);
    procedure chk1Click(Sender: TObject);
    procedure edt100KeyPress(Sender: TObject; var Key: Char);
    procedure edt101KeyPress(Sender: TObject; var Key: Char);
    procedure edt102KeyPress(Sender: TObject; var Key: Char);
    procedure edt103KeyPress(Sender: TObject; var Key: Char);
    procedure edt100Change(Sender: TObject);
    procedure edt101Change(Sender: TObject);
    procedure edt102Change(Sender: TObject);
    procedure edt103Change(Sender: TObject);
    procedure ChInvClick(Sender: TObject);
    procedure Chchk2Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure edt104KeyPress(Sender: TObject; var Key: Char);
    procedure edt105KeyPress(Sender: TObject; var Key: Char);
    procedure edt106KeyPress(Sender: TObject; var Key: Char);
    procedure edt105Change(Sender: TObject);
    procedure edt106Change(Sender: TObject);
    procedure edt104Change(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure chk4Click(Sender: TObject);
    procedure chk5Click(Sender: TObject);
    procedure edt107Change(Sender: TObject);
    procedure edt108Change(Sender: TObject);
    procedure edt109Change(Sender: TObject);
    procedure edt110Change(Sender: TObject);
    procedure edt111Change(Sender: TObject);
    procedure edt112Change(Sender: TObject);
    procedure edt113Change(Sender: TObject);
    procedure edt114Change(Sender: TObject);
    procedure edt115Change(Sender: TObject);
    procedure chk6Click(Sender: TObject);
    procedure tmrAutoResetFIFOTimer(Sender: TObject);
    procedure CMainWindowMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CMainWindowKeyPress(Sender: TObject; var Key: Char);
    procedure CMainWindowMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure CMainWindowAddMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cbbSendModeChange(Sender: TObject);
    procedure cbbReadModeChange(Sender: TObject);
    procedure BtAddPortsClick(Sender: TObject);
    procedure ChVisPortClick(Sender: TObject);
    procedure cbbHandsHakingChange(Sender: TObject);
    procedure ChDirClick(Sender: TObject);
    procedure chkAddDecClick(Sender: TObject);
    procedure BtTableCustomClick(Sender: TObject);
    procedure ChAddCustomClick(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure btnPacketStatsClick(Sender: TObject);
    procedure BtMultiPortClick(Sender: TObject);
    procedure BtAddPortsSendClick(Sender: TObject);
    procedure SendInAddClick(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure chkAddDateClick(Sender: TObject);
    procedure chkOutNonPrintASCIIClick(Sender: TObject);
    procedure tmr3Timer(Sender: TObject);
    procedure tmr4Timer(Sender: TObject);
    procedure tmr5Timer(Sender: TObject);
    procedure chk7Click(Sender: TObject);
    procedure btnParserASCIIClick(Sender: TObject);
    procedure tmrOpenListTimer(Sender: TObject);
    procedure tmrSendListTimer(Sender: TObject);
    procedure edtSepEnter(Sender: TObject);
    procedure edtSepExit(Sender: TObject);
    procedure tmrMinutesTimer(Sender: TObject);
    procedure cbbFilterLOgChange(Sender: TObject);
    procedure Bt22Click(Sender: TObject);
    procedure SecondWindowAddChange(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure tmrDelayTimer(Sender: TObject);

  private
    { Private declarations }
  public
    STH         : array[1..12] of TStaticText;
    VersionInfo : string;
    DateInfo    : string;
    EMail       : string;

    URL         : string;
    IsClearList : boolean;
    isMielta    : Integer;
    isShowHotKey: Boolean;
    BufCntBytesRead : array[0..255] of Cardinal;
    BufCntBytesSend : array[0..255] of Cardinal;
    ColorInputData : TColor;
  isColorInputData : Boolean;
  isUseParserHEX    : Boolean;
  isUseCustomTable : Boolean;
  isUseParserASCII : Boolean;

    isSaveFileAddPortsA : Boolean;
    isSaveFileAddPortsB : Boolean;
    isSaveFileIncSubstr : Boolean;

    ActualCellListCmd : integer;
    FontSize : Cardinal;
    isAddDate : Boolean;
    isNoOutNonPrint : Boolean;
    isFormAnsSensors : Boolean;


    procedure EditCmdData(NumList, NumCmd : integer; Data : string);
    procedure SetActBtSendInAdd(nPort : Integer; isActiv : Boolean; Name : String; Hint : string);
    procedure EditCmdName(NumList, NumCmd : integer; Data : string);
    function GetCmdData(NumList, NumCmd : integer) : string;
    function GetCmdName(NumList, NumCmd : integer) : string;
    function GetNumList : integer;
    procedure SaveCmdListsInFile;
    procedure NoClose;
    function GetIsComPort : boolean;
    function GetIsSendingData : boolean;
    function GetFontMain : TFont;
    procedure SetHexMode(isNewStatus : boolean);
    procedure SetSASCII;
    procedure SetSHEX;
    procedure SetSDEC;


    procedure SetRASCII;
    procedure SetRHEX;
    procedure SetRDEC;
    procedure SetRCUSTOM;

   { Public declarations }
  end;



const
  CNT_LIST_CMD        = 100;
  CNT_LIST_OLDCMD     = 500;
  MAX_CNT_CMD_IN_FILE = 500000000;
  MAX_SHIFT_BUF_RX    = $40000;
  TIMEOUT_STOP_MOUSE  = 20;
  IS_MIELTA           = 1;
  MAX_SIZE_FILE_DATA  = 1048576 * 16;
  MAX_PART_SEND_FILE  = 20480;
  BUF_TMP_SIZE        = 8192;
  MAX_LINES_LOG_SEND  = 500;
  CNT_CSUM            = 11;
  RX_BUF_SIZE         = 65536;
  RX_RING_BUF_SIZE    = $1000000;
  MARKER              = 12345;

  //LEN_CMD_STR     = 255;
var
  BufSendCmd :array[0..MAX_SIZE_FILE_DATA-1] of Byte;
  BufPartSendCmd : array[0..MAX_PART_SEND_FILE-1] of Byte;
  BufTmp         : array[0..BUF_TMP_SIZE-1] of Byte;
  isSavePos      : Boolean;
  BtSendAddPort  : array[1..18] of TButton;
  NumSendList    : Integer;
  BStrTmp        : string;
  LastReadLogTime : TDateTime;
  isOpenMsgEventNoIncomingDataEn : array[1..CNT_LIST_CMD] of Boolean;
  isOpenMsgEventBytesRecDataEn :array[1..CNT_LIST_CMD] of Boolean;
  isOpenMsgEventFileSentEn :array[1..CNT_LIST_CMD] of Boolean;
  isOpenMsgEventRecSubstrEn :array[1..CNT_LIST_CMD] of Boolean;
  StartTime : TDateTime;
  TimeOutColorStat : Cardinal;
  myjoy1: tjoyinfo;
  myjoy2: tjoyinfo;
  LastKeyJ: Cardinal;

  TypeFilterLog : TTypeFilterLog;
  TimeNoInputData         : Integer;

  RxBufData               : array[0..RX_BUF_SIZE-1] of byte;
  BufDataRB               : array[0..RX_RING_BUF_SIZE-1] of byte;
  BufDataTmp              : array[0..RX_RING_BUF_SIZE-1] of byte;

  BufDateTime             : array[0..RX_RING_BUF_SIZE - 1] of TDateTime;
  CurTimeRB               : TDateTime;
  TxDataSend              : array[0..65535] of byte;

  CopyListCmdBuf          : TListCmd2;
  isCopyListCmdBuf        : Boolean;
  CntExpBytes             : Integer;
  isCntExpBytes           : Boolean;
  isFileSendOK            : Boolean;
  CntExpBytesREF          : Integer;

  isModeDialog            : Boolean;

  ParityCOM               : integer;
  isAConnectPort          : Boolean;
  iReadBuf                : Cardinal;
  iWriteBuf               : Cardinal;
  CntDataReadBufAv        : Cardinal; //число доступных байтов для чтения из кольцевого буфера;
  CntDataReadBufAll       : Cardinal;

  FileLogName             : string;
  FileSendName            : string;
  isLogBin                : boolean;
  isLogText               : boolean;
  isSkippingReps          : boolean;
  isLogBinTx              : boolean;
  isLogBinRx              : boolean;
  isAutoExpandNoInData    : Boolean;

  isDisSleepEv            : Boolean;

  isClrLogWhSend          : Boolean;
  CntClrBytesLog          : Integer;
  DeltaRXOld              : integer;
  CntOF                   : cardinal;
  TimeAutoExpanNoData     : Integer;
  isExpWin                : Boolean;

  isOpenPort              : Boolean;
  TimeLastRead            : Integer;

  isLogTextTx             : boolean;
  isLogTextRx             : boolean;
  isSaveDelay             : Boolean;
  isReqSaveCmdList        : boolean;

  isResetFifo             : boolean;
  CurHotKey               : Byte;
  Form1: TForm1;
  CfgTerminal             : TCfgTerminal;
  isOpenListCmd           : boolean;
  isOpenComPort           : boolean;
  isSaveListCmd           : boolean;
  SendMode                : TTypeSendMode;
  ReadMode                : TTypeReadMode;

  isHK                   : boolean;

  isListSendCmd           : boolean;

  isAddListCmd            : boolean;
  isInvert                : Boolean;
  isRevers                : Boolean;

  isAutoExpStr            : Boolean;
    AutoExpStr            : string[250];


  periodSend              : Integer;

  AutoClrStrHEX           : string[250];
  AutoClrStrASCII         : string[250];

  isAutoClrStrHEX         : boolean;
  isAutoClrStrASCII       : boolean;


  TimeOutHelpConnect      : byte;
  TimeOutHelpRescan       : byte;
  TimeOutHelpAutoConnect  : byte;
  TimeOutHelpTimeRX       : byte;
  TimeOutHelpFiltr        : byte;
  TimeOutHelpModeManual   : byte;
  TimeOutHelpModeSel      : byte;
  TimeOutHelpModeAfterAns : byte;
  TimeOutHelpModePeriod   : byte;
  TimeOutHelpForConnect   : byte;
  TimeOutHelpConsol       : byte;
  TimeOutHelpAddConsol    : byte;
  TimeOutHelpCiklSend     : byte;
  HandsHakingPort         : Byte;


  CoordMouseCur           : TPoint;

  CoordMouseRefHelpConnect      : TPoint;
  CoordMouseRefHelpRescan       : TPoint;
  CoordMouseRefHelpAutoConnect  : TPoint;
  CoordMouseRefHelpTimeRX       : TPoint;
  CoordMouseRefHelpFiltr        : TPoint;
  CoordMouseRefHelpModeManual   : TPoint;
  CoordMouseRefHelpModeSel      : TPoint;
  CoordMouseRefHelpModeAfterAns : TPoint;
  CoordMouseRefHelpModePeriod   : TPoint;
  CoordMouseRefHelpForConnect   : TPoint;
  CoordMouseRefHelpConsol       : TPoint;
  CoordMouseRefHelpAddConsol    : TPoint;
  CoordMouseRefHelpCiklSend     : TPoint;

  CntBytesAdd           : Integer;


  ActualCellListCmd     : integer;
  StartWidthForm        : integer;
  StartWidthMainPCC     : integer;
  StartWidthMainStrCmd  : integer;
  StartLeftAddStrCmd    : integer;
  StartLeftSriftText    : integer;
  StartWidthSTLog       : integer;
  StartWidthST1         : integer;
  StartWidthST2         : integer;
  StartWidthST3         : integer;
  StartLeftST1          : integer;
  StartLeftST2          : integer;
  StartLeftST3          : integer;
  StartLeftSrift        : integer;
  StartWidthHexData     : integer;
  StartLeftBtListCmd    : integer;
  StartLeftBtFont       : integer;
  StartLeftBtSendFile   : integer;
  StartFSmodeBT         : Integer;
  StartLeftOpenBinFile  : Integer;
  StartLeftAScroll      : Integer;
  StartLeftAddPanel     : Integer;
  StartPanelSeparator   : Integer;
  StartPosHotKey        : Integer;

  StartBTResetLeft      : integer;
  StartBTOldCmd        : integer;

  StartLeftSendFile    : integer;
  StartLeftPlus        : integer;
  StartLeftSaveF       : integer;
  //StartLeftBtCopyList  : Integer;
  //StartLeftBtPasteList : Integer;

  StartWidthFiltrLog    : integer;

  StartLeftListInc     : integer;
  StartLeftListDec     : integer;
  StartLeftListAddList : integer;
  //StartLeftListDelLIst : integer;
  StartLeftListEdAC    : integer;
  StartLeftListEdCC    : integer;
  StartLeftListOCmd    : integer;
  StartLeftListRF      : integer;
  StartLeftListBS      : integer;
  StartLeftListOldCmd  : integer;
  StartWidthListName   : integer;
  StartWidthListNameEdt: integer;
  StartLeftNumList     : integer;
  StartLeftSniffer     : integer;


  StartRightPanels     : integer;

  StartLeftStartStop   : integer;
  StartLeftStartLog    : integer;
  StartLeftBTLog       : integer;

  StartLeftInputMode   : integer;

  StartLeftBTPalitra   : integer;
  StartLeftMD          : integer;

  StartLeftBTAddMacros : integer;
  StartLeftBTUtilites  : integer;
  StartLeftBTAddPorts  : integer;

  StartLeftBTCustomMode: integer;
  StartLeftBTAddPortsSend: integer;
  StartLeftBTRes1      : integer;
  StartLeftBTRes2      : integer;

  StartLeftbtnParserASCII      : Integer;
  StartLeftBTRes4      : Integer;
  StartLeftBTRes5      : Integer;

  StartLeftAddW        : integer;



  StartLeftRbName      : integer;
  StartLeftRbData      : integer;

  StartLeftBtInfo      : integer;
  StartWidthCBLists    : integer;

  StartLeftStr1        : integer;
  StartLeftStr2        : integer;
  StartCBBFilter       : integer;

  StartLeftHSBt        : integer;
  StartLeftStatPanel   : integer;

  StartLeftCSL         : integer;
  StartLeftSett        : integer;
  StartLeftOpenLog     : integer;
  StartLeftPnlSendInAdd: integer;
  StartLeftBtAdd       : integer;
  StartLeftAnsSens     : integer;
  StartWidthPanelCmd   : integer;
  StartLeftBrutForceBT : integer;
  StartLeftBT53        : integer;
  StartLeftBT54        : integer;


  MainWindowWidth      : integer;
  PauseSendFile        : integer;


  NoActionClose        : boolean;
  CntMs                : integer;

  MSecRefRX            : integer;
  FontSizeWindow       : integer;
  TimeOutAnsRX         : integer;

  MAXSendDataFile      : integer;
  IndexInSendFile      : integer;
  MaxOF                : Real;

  isOldCmdMode : boolean;
  isFileCmdMode : boolean;
  isManualClose : boolean;

  isManualSend  : boolean;
  isWhChSend    : boolean;
  isAftAnsSend  : boolean;
  isPeriodSend  : boolean;
  isStatsPanel  : boolean;
  isSendFile    : Boolean;
  isByteByByte  : boolean;

  isAddASCII  : Boolean;
  isAddHEX    : Boolean;
  isADDTX     : Boolean;
  isAddRX     : Boolean;
  isAddIgnFlt : Boolean;
  isShowMode  : Boolean;


  isEnHide   : boolean;

  isSep0D     : Boolean;
  isSep0A     : Boolean;
  isSep00     : Boolean;
  isSep0D0A   : Boolean;
  isSepTime   : Boolean;
  isSepBytes  : Boolean;
  isSepSymbol : Boolean;
  isSepSymbol2 : Boolean;
  isAddDEC     : Boolean;
  isAddCUST   : Boolean;


  isSepBefSymbol1 : Boolean;
  isSepBefSymbol2 : Boolean;
  isSepAftSeq1_4     : Boolean;
  isSepAftSeq1_3     : Boolean;
  isSepAftSeq1_2     : Boolean;

  isSepAftSeq2_4     : Boolean;
  isSepAftSeq2_3     : Boolean;
  isSepAftSeq2_2     : Boolean;


  SepAftByte1_4_1,SepAftByte1_4_2,SepAftByte1_4_3,SepAftByte1_4_4 : Byte;
  SepAftByte1_3_1,SepAftByte1_3_2,SepAftByte1_3_3                 : Byte;
  SepAftByte1_2_1,SepAftByte1_2_2                                 : Byte;

  SepAftByte2_4_1,SepAftByte2_4_2,SepAftByte2_4_3,SepAftByte2_4_4 : Byte;
  SepAftByte2_3_1,SepAftByte2_3_2,SepAftByte2_3_3                 : Byte;
  SepAftByte2_2_1,SepAftByte2_2_2                                 : Byte;



  SepBefSymbol1 : integer;
  SepBefSymbol2 : integer;

  isWriteEvent : Boolean;
  isModeEditHK : Boolean;
  SepBytes   : Integer;
  SepSymbol  : Integer;
  SepSymbol2 : Integer;
  Stats      : TStats;

  BTCmd      : array[1..48] of TButton;
  EDTCmd     : array[1..48] of TEdit;
  EDTHotKey  : array[1..48] of TEdit;
  EDTJKey    : array[1..48] of TEdit;
  SettJ      : array[1..48] of TSettJ;

  HotKey     : array[1..48] of byte;




  BTCmdLeft  : array[1..48] of integer;
  BTCmdWidth : array[1..48] of integer;
  STHLeft    : array[1..12] of integer;
  ListsCmd   : array[1..CNT_LIST_CMD] of TListCmd;
  ListsCmd2  : array[1..CNT_LIST_CMD] of TListCmd2;
  OldCommand : array[1..CNT_LIST_OLDCMD] of TOldCmd;
  CmdStr     : string;
  NamePort   : string;
  //AddStr     : string;

  StrCSum    : array[1..CNT_CSUM] of string;

  BufFile    : array[1..MAX_SIZE_FILE_DATA] of byte;



  isFirstScanPort : boolean;
  hCom           : tHandle;

  DCB            : tDCB;
  Stat           : tComStat;
  CurrentComPort : Pchar;
  ComBoudRate    : DWord;
  Bits           : byte;
  StopBitsCur    : byte;

  CntRXRead      : Cardinal;  //Общее число прочитанных байтов
  CntRXOut       : Cardinal;  //Общее число отображённых в логе байтов
  CntTX          : Cardinal;  //Общее число отправленных байтов
  RXRead         : Cardinal;  //Используется для подсчёта процента заполнения буфера(число прочитанных байтов)
  RXOut          : Cardinal;  //Используется для подсчёта процента заполнения буфера(число отображённых байтов)
  indexCmdInFile : dWord;
  LostData       : Cardinal;
  //isSendCmdReconn : boolean;
  isShowMsgSendCmdFiles : boolean;


  ConfigFile      : File of TListCmd;
  ConfigFile2     : File of TListCmd2;

  OldCmdFile      : File of TOldCmd;
  CfgTerminalFile : File of TCfgTerminal;
  SendFileData    : File of byte;



  LogBinFile      : File of byte;
  isLogBinFile    : boolean;

  LogFile    : TextFile;
  isLogFile  : boolean;

  NameLogFile   : string;
  NameLogBinFile: string;

  LogBinFileTail: string;
  LogTxtFileTail: string;


  LogEvent      : TextFile;
  NameLogEvent  : string;


  isSendComProcess : boolean;
  isReadComProcess : boolean;
  isAddWindow      : boolean;
  isCreateFormMain : boolean;

  GlBufRx    : TRxBuf;

  NumListCmd : integer;
  CntDataLog : integer;

  FontColorSend, FontColorRead : TColor;



  isFontBold : Boolean;

  RxDataLogOld : string;

  implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit9, Unit11, Unit12,
  Unit13, Unit14, Unit15, Unit16, Unit17, Unit18, Unit10, Unit19, Unit20,
  Unit22, Unit23, FormJ, Unit24, Unit27, Unit29, Unit30, Unit31, Unit32,
  Unit35, Unit37, Unit41, Unit42;

{$R *.dfm}


procedure TForm1.WriteLogEvent(DateTime: TDateTime; Msg: string);
  begin
    if EventLog.Lines.Count > 1000 then EventLog.Clear;
      EventLog.Lines.Add(SetTimeStamp(true, false, DateTime)  +': ' + Msg);
    if isWriteEvent then
      Writeln(LogEvent, SetTimeStamp(true, true, DateTime)  +': ' + Msg);
  end;


procedure TForm1.ManualSelect;
begin
  isManualSend := true;
  isWhChSend   := false;
  isAftAnsSend := false;
  isPeriodSend := false;
  isByteByByte := false;

  OldCmdList.Enabled := true;
  SendStart.Enabled  := true;
  CiklSend.Enabled   := false;
end;

procedure TForm1.WhChSelect;
begin
  isManualSend := false;
  isWhChSend   := true;
  isAftAnsSend := false;
  isPeriodSend := false;
  isByteByByte := false;

  OldCmdList.Enabled := true;
  SendStart.Enabled  := false;
  CiklSend.Enabled   := false;
end;

procedure TForm1.AftAnsSelect;
begin
  isManualSend := false;
  isWhChSend   := false;
  isAftAnsSend := true;
  isPeriodSend := false;
  isByteByByte := false;

  if isOldCmdMode = true then
    OldCmdList.Enabled := false
  else
    OldCmdList.Enabled := true;

  CiklSend.Enabled   := true;
  SendStart.Enabled  := true;
end;

procedure TForm1.PerSelSelect;
begin
  isManualSend := false;
  isWhChSend   := false;
  isAftAnsSend := false;
  isPeriodSend := true;
  isByteByByte := false;

  TimerPeriod.Enabled := true;

  if isOldCmdMode = true then
    OldCmdList.Enabled := false
  else
    OldCmdList.Enabled := true;

  SendStart.Enabled  := true;
  CiklSend.Enabled   := true;
end;

procedure TForm1.ByteByByteSelSelect;
begin
  isManualSend := false;
  isWhChSend   := false;
  isAftAnsSend := false;
  isPeriodSend := false;
  isByteByByte := True;

  if isOldCmdMode = true then
    OldCmdList.Enabled := false
  else
    OldCmdList.Enabled := true;

  SendStart.Enabled  := true;
  CiklSend.Enabled   := true;
end;




procedure TForm1.MemoUpd(DT : TDateTime; BeginStr: string; LogStr : string; LogStrASCII : string; LogStrHEX : string; LogStrDec: string; LogStrCUST: string; isRx : boolean; ColorText : TColor);
var
  lst         : TStringList;
  isOutLog    : boolean;
  isPauseLog  : boolean;
  TmpStr      : string;
  StrASCII, StrHEX, StrDEC, StrCUST : string;
  LenFiltr    : Integer;
  Index       : Integer;
  DeltaMS     : Integer;
begin

  //////////////////////////////////////////////////////////////////////////////For AddPORTS
  if (BeginStr = '') and (LogStrASCII = '') and (LogStrHEX <> '') then
    begin
      CMainWindowAdd.SelAttributes.Color := ColorText;
      CMainWindowAdd.Lines.Add(LogStrHEX);
      CntBytesAdd := CntBytesAdd + Length(LogStrHEX);
      if CntBytesAdd > CntClrBytesLog then
        begin
          CMainWindowAdd.Clear;
          CntBytesAdd := 0;
        end;
      Exit;
    end;
  ///////////////////////////////////////////////////////////////////////////////

  if (isSkippingReps and (LogStr = RxDataLogOld)) then Exit;
  RxDataLogOld := LogStr;
  ///////////////////////////////////////////////////////////////////////////////

  StrASCII := '';
  StrHEX   := '';
  StrDEC   := '';
  StrCUST  := '';


  if (isADDTX or isADDRX) and isAddWindow then
    begin
      if isAddASCII then StrASCII := LogStrASCII;
      if isAddHEX   then StrHEX   := LogStrHEX;
      if isAddDEC   then StrDEC   := LogStrDEC;
      if isAddCUST  then StrCUST   := LogStrCUST;
    end;

  isOutLog   := false;
  isPauseLog := false;

  if (isAutoExpStr) and (AutoExpStr <> '') and (isRx) then
    begin
      if Pos(AutoExpStr, LogStr) > 0 then
        begin
          WriteLogEvent(CurTimeRB, 'Rec substring ( ' + AutoExpStr +' )');
          if (isExpWin) and (not IsIconic(Form1.Handle)) then
            begin
              Application.Restore;
            end;
          if isOpenMsgEventRecSubstrEn[NumListCmd] then
            begin
              FormEvent.SrcEvent := SrcEventMain;
              FormEvent.EventMSG := 'Rec substring ( ' + AutoExpStr +' )';
              FormEvent.ShowModal;
              isOpenMsgEventRecSubstrEn[NumListCmd] := not FormEvent.isNotShowEvent;
            end;
        end;
    end;

  if(isAutoClrStrASCII) and (AutoClrStrASCII <> '') and (isRx) and (ReadMode = ReadASCII) then
    begin
      if Pos(AutoClrStrASCII, LogStr) > 0 then
        begin
          WriteLogEvent(CurTimeRB, 'AutoClrASCII ( ' + AutoClrStrASCII + ' )');
          CMainWindow.Clear;
          CMainWindowAdd.Clear;
          CntDataLog := 0;
          CntBytesAdd := 0;
        end;
    end;

  if(isAutoClrStrHEX) and (AutoClrStrHEX <> '') and (isRx) and (ReadMode = ReadHEX) then
    begin
      if Pos(AutoClrStrHEX, LogStr) > 0 then
        begin
          WriteLogEvent(CurTimeRB, 'AutoClrHEX ( ' + AutoClrStrHEX + ' )');
          CMainWindow.Clear;
          CMainWindowAdd.Clear;
          CntDataLog := 0;
          CntBytesAdd := 0;
        end;
    end;



  if FiltrLog.Text <> '' then
    begin
      TmpStr     := LogStr;
      LenFiltr   := Length(FiltrLog.Text);

      Index := Pos(FiltrLog.Text, TmpStr);

      while Index > 0 do
        begin
          Delete(TmpStr, Index, LenFiltr);
          Index := Pos(FiltrLog.Text, TmpStr);
          inc(Stats.HitCounter);
        end;
      CntCmpLvl.Caption := 'Match cnt ' + '"' + FiltrLog.Text + '" : ' + IntToStr(Stats.HitCounter);
    end;




  if FiltrLog.Text <> '' then
    begin
      if TypeFilterLog = TFLOut then
        begin
          if Pos(FiltrLog.Text, LogStr) > 0 then
            isOutLog := true;
        end
      else if TypeFilterLog = TFLCapt then
        begin
          isOutLog := true;
          if Pos(FiltrLog.Text, LogStr) > 0 then
            isPauseLog := true;
        end
      else if TypeFilterLog = TFLNoFilter then
        begin
          isOutLog := true;
        end
      else if TypeFilterLog = TFLNoOut then
        begin
          if Pos(FiltrLog.Text, LogStr) = 0 then
            isOutLog := true;
        end;
    end
  else
    isOutLog := true;

  if isAddWindow then
    begin
      if isADDTX and not isRx then
        begin
          if isShowMode and (StrASCII <> '') then StrASCII := '[A] ' + StrASCII;
          if isShowMode and (StrHEX <> '')   then StrHEX   := '[H] ' + StrHEX;
          if isShowMode and (StrDEC <> '')   then StrDEC   := '[D] ' + StrDEC;
          if isShowMode and (StrCUST <> '')  then StrCUST   := '[C] ' + StrCUST;
        end;
      if isADDRX and isRx then
        begin
          if isShowMode and (StrASCII <> '') then StrASCII := '[A] ' + StrASCII;
          if isShowMode and (StrHEX <> '')   then StrHEX   := '[H] ' + StrHEX;
          if isShowMode and (StrDEC <> '')   then StrDEC   := '[D] ' + StrDEC;
          if isShowMode and (StrCUST <> '')  then StrCUST   := '[C] ' + StrCUST;
        end;
    end;

  if ((isADDRX and isRx) or (isADDTX and not isRx)) and (isAddIgnFlt or isOutLog) then
    begin
      CMainWindowAdd.SelAttributes.Color := ColorText;
      if StrASCII <> '' then
        begin
          CMainWindowAdd.SelAttributes.Color := ColorText;
          CMainWindowAdd.Lines.Add(BeginStr + StrASCII);
        end;

      if StrHEX   <> '' then
        begin
          CMainWindowAdd.SelAttributes.Color := ColorText;
          CMainWindowAdd.Lines.Add(BeginStr + StrHEX);
        end;

      if StrDEC   <> '' then
        begin
          CMainWindowAdd.SelAttributes.Color := ColorText;
          CMainWindowAdd.Lines.Add(BeginStr + StrDEC);
        end;

      if StrCUST   <> '' then
        begin
          CMainWindowAdd.SelAttributes.Color := ColorText;
          CMainWindowAdd.Lines.Add(BeginStr + StrCUST);
        end;

      CntBytesAdd := CntBytesAdd + Length(BeginStr + StrASCII) +
                                   Length(BeginStr + StrHEX) +
                                   Length(BeginStr + StrDEC) +
                                   Length(BeginStr + StrCUST);
      StrASCII := '';
      StrHEX := '';
      StrDEC := '';
      StrCUST := '';
    end;

  if isOutLog then
    begin
      CMainWindow.SelAttributes.Color := ColorText;
      CMainWindow.Lines.Add(BeginStr + LogStr);
      CntDataLog := CntDataLog + length(BeginStr + LogStr);
      if isLogFile and ((isRx and isLogTextRx) or (not isRx and isLogTextTx)) then
        begin
          if not isSaveDelay then
            WriteLn(LogFile, BeginStr + LogStr)
          else
            begin
              DeltaMS := MilliSecondsBetween(LastReadLogTime, DT);

              if (DeltaMS < 1000000000) and (DeltaMS >= 0) then
                begin
                  if DeltaMS > 99999999 then DeltaMS := 99999999;

                  WriteLn(LogFile,  '[delay:]' + intToStr(DeltaMS) );

                end;
              LastReadLogTime := DT;
              WriteLn(LogFile, LogStr);
            end;
        end;
    end;

  if isPauseLog then
    begin
       PauseLog;
    end;
end;



procedure TForm1.NoClose;
begin
  NoActionClose := true;
end;

procedure TForm1.EditCmdData(NumList, NumCmd : integer; Data : string);
begin
  ListsCmd2[NumList].CmdData[NumCmd] := Data;
end;

procedure TForm1.EditCmdName(NumList, NumCmd : integer; Data : string);
begin
  ListsCmd2[NumList].CmdName[NumCmd] := Data;
end;

function TForm1.GetCmdData(NumList, NumCmd : integer) : string;
begin
  result := ListsCmd2[NumList].CmdData[NumCmd];
end;

function TForm1.GetCmdName(NumList, NumCmd : integer) : string;
begin
  result := ListsCmd2[NumList].CmdName[NumCmd];
end;

function TForm1.GetNumList : integer;
begin
  result := NumListCmd;
end;

procedure TForm1.SaveCmdListsInFile;
var
  NumList : integer;
begin
  if isReqSaveCmdList then
    begin
      isReqSaveCmdList := false;
      AssignFile(ConfigFile2, ExtractFilePath(Application.ExeName) + 'ListConfig');
      WriteListCmd(NumListCmd);
      ReWrite(ConfigFile2);
      for NumList := 1 to CNT_LIST_CMD do
        begin
          Write(ConfigFile2, ListsCmd2[NumList]);
        end;
      CloseFile(ConfigFile2);
    end;
end;

Procedure ScanComPorts;
var reg  : TRegistry;
    l    : TStringList;
    i    : integer;
    isSearch : boolean;
    port     : integer;

begin
  l := TStringList.Create;
  reg:=TRegistry.Create;
  Form1.ComPort.Clear;
  isSearch := false;

  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    reg.OpenKeyReadOnly('HARDWARE\DEVICEMAP\SERIALCOMM');
    reg.GetValueNames(l);
    if l.Count > 0 then
      isSearch := true
    else if not isFirstScanPort then
      begin
        ShowMessage(':-(');
        ShowMessage('Run the program from the name of the administrator, or select the port manually');
      end;


    for i:=0 to l.Count-1 do
      if reg.ReadString(l[i]) = CfgTerminal.NameCOM then
        begin
         Form1.ComPort.Items.Add(reg.ReadString(l[i]));
        end;

    for i:=0 to l.Count-1 do
      if reg.ReadString(l[i]) <> CfgTerminal.NameCOM then
        Form1.ComPort.Items.Add(reg.ReadString(l[i]));

  finally
    reg.Free;
    l.Free;
    if isSearch = false then
      begin
        for port := 1 to 256 do
          begin
            Form1.ComPort.Items.Add('COM' + IntToStr(port));
          end;
      end
    else
      Form1.ComPort.ItemIndex := 0;
  end;

end;

Function OpenComPort : boolean;
  begin
    OpenComPort    := false;
    if Length(Form1.ComPort.Text) = 4 then
      CurrentComPort := PChar(Form1.ComPort.Text);//(Form1.ComPort.Items[Form1.ComPort.ItemIndex]);
    if Length(Form1.ComPort.Text) > 4 then
      CurrentComPort := PChar('\\.\' + Form1.ComPort.Text);//(Form1.ComPort.Items[Form1.ComPort.ItemIndex]);

    if Length(Form1.BaudRate.Text) < 8 then
      begin
        ComBoudRate    := StrToInt(Form1.BaudRate.Text);
      end
    else
      begin
        Form1.BaudRate.Color := clRed;
        ComBoudRate          := 1200;
      end;



    Bits           := StrToInt(Form1.ComBits.Items[Form1.ComBits.ItemIndex]);

    if Form1.ComStopBits.ItemIndex = 0 then
      StopBitsCur := ONESTOPBIT
    else if Form1.ComStopBits.ItemIndex = 2 then
      StopBitsCur := ONE5STOPBITS
    else if Form1.ComStopBits.ItemIndex = 3 then
      StopBitsCur := TWOSTOPBITS;



    if Form1.ComPort.Text = '' then
      ShowMessage('Choose your port!');



    if SetCommState(hCom,DCB) then CloseHandle(hCom);
    Sleep(5);

    hCom:=CreateFile(CurrentComPort,Generic_Read or Generic_Write,0,nil,Open_Existing,File_Attribute_Normal,0);
    if hCom=INVALID_HANDLE_VALUE then
      begin

      end
    else
      begin
        OpenComPort := true;
        SetupComm(hCom,65536,65536); //30,30);//60,60);

        with DCB do begin
          BaudRate := ComBoudRate;
          ByteSize := Bits;
          Parity   := ParityCom;
          StopBits := StopBitsCur;
        end;

        if HandsHakingPort = 1 then
          DCB.Flags := (RTS_CONTROL_ENABLE shl 12);

        isOpenComPort := true;

        if not SetCommState(hCom,DCB) then
          begin
            OpenComPort   := false;
            isOpenComPort := false;
          end;
      end;
  end;


procedure CloseComPort;
  var
    Cnt, Errors : Dword;
  begin
    if (isOpenComPort = true) then
      begin
        repeat
          ClearCommError(hCom, Errors ,@Stat);
          Cnt := Stat.cbOutQue;
          Sleep(1);
        until Cnt = 0;


        PurgeComm(hCom, PURGE_TXABORT or PURGE_RXABORT or PURGE_TXCLEAR or PURGE_RXCLEAR);
        CloseHandle(hCom);
        isOpenComPort := false;
        if isAddListCmd then
          begin
            Form7.TimerSend.Enabled := False;
            Form7.Button33.Caption := '>';
            Form7.TimerSend.Enabled := false;
            Form7.ListPrev.Enabled := true;
            Form7.ListNext.Enabled := true;
            Form7.NumListEdit.Enabled := true;
          end;
      end;

     if isResetFIFO then
       begin
        LostData         := LostData + CntDataReadBufAv;
        iReadBuf         := 0;

        iWriteBuf        := 0;
        CntDataReadBufAv := 0; //число доступных байтов для чтения из кольцевого буфера;
       end;
  end;

procedure TForm1.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
var i : integer;
    deltaWidth : integer;
    DeltaWidthForButtonsCmd    : integer;
    DeltaWidthForStText        : integer;
    isVisWinMain               : boolean;
    isVisWinAdd                : boolean;
    isVisWinMainCpy            : boolean;
    isVisWinAddCpy             : boolean;
    isVisPanel                 : boolean;
begin
  deltaWidth := Form1.Width - StartWidthForm;
  if isEnHide then
  begin
  //isVisWinMain     := MainWindow.Visible;
  //isVisWinAdd      := MainWindowAdd.Visible;
  //isVisWinMainCpy  := SecondWindow.Visible;
  //isVisWinAddCpy   := SecondWindowAdd.Visible;
  //isVisPanel       := MainPanel.Visible;

  //MainWindow.Visible      := false;
  //MainWindowAdd.Visible   := false;
  //SecondWindow.Visible    := false;
  //SecondWindowAdd.Visible := false;
  //MainPanel.Visible       := false;

  deltaWidth := Form1.Width - StartWidthForm;
  DeltaWidthForButtonsCmd := Trunc(deltaWidth / 7);
  DeltaWidthForStText := Trunc(deltaWidth / 4);

  LogPanel.Top        := MainPanel.Top - LogPanel.Height;
  STLog.Width         := StartWidthSTLog + deltaWidth;
  StaticText3.Width   := StartWidthST3   + 0;
  StaticText3.Left    := StartLeftST3    + DeltaWidthForStText * 4;
  //LogPanel.Top        := MainWindow.Top  - MainWindow.Height;

  CSLbt.Left          := StartLeftCSL + deltaWidth;
  SettBt.Left         := StartLeftSett + deltaWidth;

  OpenLogBT.Left      := StartLeftOpenLog + deltaWidth;
  pnlSendInAdd.Left   := StartLeftPnlSendInAdd + deltaWidth;
  FiltrLog.Width      := StartWidthFiltrLog + deltaWidth;
  SendStart.Left      := StartLeftSendFile + deltaWidth;
  LPlus.Left          := StartLeftPlus     + deltaWidth;

  Panel1.Width        := StartRightPanels  + deltaWidth;
  LogPanel.Width      := StartRightPanels  + deltaWidth;
  MainPanel.Width     := StartRightPanels  + deltaWidth;
  BtListCmd.Left      := StartLeftBtListCmd + deltaWidth;
  cbbFilterLOg.Left   := StartCBBFilter     + deltaWidth;



  BtHSBt.Left           := StartLeftHSBt      + deltaWidth;
  PStats.Left         := StartLeftStatPanel + deltaWidth;
  BTFont.Left         := StartLeftBtFont    + deltaWidth;
  BtAddFunctions.Left := StartLeftBtAdd     + deltaWidth;
  BtAnsList.Left      := StartLeftAnsSens   + deltaWidth;
  FSmodeBT.Left       := StartFSmodeBT      + deltaWidth;
  OpenBinBT.Left      := StartLeftOpenBinFile + deltaWidth;
  TabEditCmd.Width    := StartWidthPanelCmd + deltaWidth;
  BTResetCnt.Left     := StartBTResetLeft + deltaWidth;
  Button50.Left       := StartBTOldCmd    + deltaWidth;
  btnBtShowStat.Left  := StartLeftSniffer + deltaWidth;
  AScroll.Left        := StartLeftAScroll + deltaWidth;
  pnlAddWin.Left      := StartLeftAddPanel + deltaWidth;
  SendFilePause.Left  := PauseSendFile     + deltaWidth;
  pnlSep.Left         := StartPanelSeparator + deltaWidth;
  ChHK.Left           := StartPosHotKey + deltaWidth;

  BrutForceBT.Left    := StartLeftBrutForceBT  + deltaWidth;
  BtBTASCIITABLE.Left := StartLeftBT53 + deltaWidth;
  BtParser.Left       := StartLeftBT54 + deltaWidth;

  //BTResetCnt.Top      := StartBTResetTop     ;

  if isAddWindow = true then
    begin
      CMainWindow.Width    := Trunc((StartRightPanels + deltaWidth) / 2);
      SecondWindow.Width  := Trunc((StartRightPanels + deltaWidth) / 2);
    end
  else
    begin
      CMainWindow.Width    := StartRightPanels + deltaWidth;
      SecondWindow.Width  := StartRightPanels + deltaWidth;
    end;

  CMainWindowAdd.Left  := Trunc((StartRightPanels + deltaWidth) / 2) + 4;
  CMainWindowAdd.Width := Trunc((StartRightPanels + deltaWidth) / 2);

  SecondWindowAdd.Left  := Trunc((StartRightPanels + deltaWidth) / 2) + 4;
  SecondWindowAdd.Width := Trunc((StartRightPanels + deltaWidth) / 2);



  MonDialog.Left      := StartLeftMD       + deltaWidth;

  StaticText1.Width   := StLog.Width - OpenLogBT.Width - 2;
  lstFastOldCmd.Width    := MainStrCmd.Width + Button50.Width + 1;

  Button51.Left           := StartLeftStr2     + deltaWidth;



  //InputMode.Left      := StartLeftInputMode   + deltaWidth;
  sendAnsBTStartStop.Left := StartLeftStartStop   + deltaWidth;

  StartLog.Left           := StartLeftStartLog    + deltaWidth;
 


  MainStrCmd.Width    := StartWidthMainStrCmd + deltaWidth;
  AddStrCmd.Left      := StartLeftAddStrCmd   + deltaWidth;
  BTPalitra.Left      := StartLeftBTPalitra   + deltaWidth;
  //ListInc.Left        := StartLeftListInc     + deltaWidth;
  //ListDec.Left        := StartLeftListDec     + deltaWidth;
  ButtonReadFile.Left := StartLeftListRF      + deltaWidth;
  BtSend.Left     := StartLeftListBS      + deltaWidth;
  AddWindow.Left      := StartLeftAddW        + deltaWidth;
  Button49.Left       := StartLeftBtSendFile  + deltaWidth;

  OldCmdList.Left     := MainStrCmd.Left;

  BtAddMacros.Left    := StartLeftBTAddMacros + deltaWidth;
  BtUtilites.Left      := StartLeftBTUtilites + deltaWidth;
  BtAddPorts.Left      := StartLeftBTAddPorts + deltaWidth;

  BtTableCustom.Left   := StartLeftBTCustomMode   + deltaWidth;
  btnPacketStats.Left  := StartLeftBTRes1         + deltaWidth;
  BtMultiPort.Left     := StartLeftBTRes2         + deltaWidth;
  BtAddPortsSend.Left  := StartLeftBTAddPortsSend + deltaWidth;

  btnParserASCII.Left     := StartLeftbtnParserASCII         + deltaWidth;
  Bt23.Left     := StartLeftBTRes4         + deltaWidth;
  btnBt24.Left     := StartLeftBTRes5         + deltaWidth;





  OldCmdList.Width    := MainStrCmd.Width;// AddStrCmd.Left + AddStrCmd.Width;//  MainWindow.Width;

  STListName.Width    := StartWidthListName    + deltaWidth;
  ListNameEDT.Width   := StartWidthListNameEdt + deltaWidth;



  RBName.Left         := StartLeftRbName       + deltaWidth;
  RBData.Left         := StartLeftRbData       + deltaWidth;

  BtInfo.Left         := StartLeftBtInfo       + deltaWidth;

  //CBLists.Width       := StartWidthCBLists      + deltaWidth;

  LBTail.Left         := AddStrCmd.Left;


  if isFileCmdMode then
    StListName.Width := MainStrCmd.Width;

    //StListName.Width := StListName.Left + ButtonReadFile.Left - 20;



  for i:= 1 to 12 do
    STH[i].Left := STHLeft[i] + deltaWidth;

  for i:= 1 to 40 do
    BTCmd[i].Width := BTCmdWidth[i] + DeltaWidthForButtonsCmd;

  for i:= 9 to 16 do
    BTCmd[i].Left := BTCmdLeft[i] + 1 * DeltaWidthForButtonsCmd;

  for i:= 17 to 24 do
    BTCmd[i].Left := BTCmdLeft[i] + 2 * DeltaWidthForButtonsCmd;

  for i:= 25 to 32 do
    BTCmd[i].Left := BTCmdLeft[i] + 3 * DeltaWidthForButtonsCmd;

  for i:= 33 to 40 do
    BTCmd[i].Left := BTCmdLeft[i] + 4 * DeltaWidthForButtonsCmd;

  for i:= 41 to 48 do
    begin
    BTCmd[i].Left := BTCmdLeft[i] + 5 * DeltaWidthForButtonsCmd;
    BTCmd[i].Width := BTCmdWidth[i] + 2 * DeltaWidthForButtonsCmd;
    end;

  for i:= 1 to 48 do
    begin
    EDTCmd[i].Left := BTCmd[i].Left;
    EDTCmd[i].Width := BTCmd[i].Width;
    EDTHotKey[i].Left := BTCmd[i].Left;
    EDTJKey[i].Left := BTCmd[i].Left;
    end;

  //MainStrCmd.Width  := MainStrCmd.Left + Button41.Left + Button41.Width;
  StaticText1.Left  := STLog.Left;
  StaticText1.Width := STLog.Width;// Button41.Left + Button41.Width - OpenLogBT.Width - 2;
  StaticText3.Left  := AddStrCmd.Left;


//  MainWindow.Visible      := isVisWinMain;
//  MainWindowAdd.Visible   := isVisWinAdd;
//  SecondWindow.Visible    := isVisWinMainCpy;
//  SecondWindowAdd.Visible := isVisWinAddCpy;
//  MainPanel.Visible       := isVisPanel;
  end;




  //PCCmdList.Width := StartWidthMainPCC + (MainWindow.Width - StartWidthMainForm)


  //TestLabel.Caption := IntToStr(DeltaWidthMainForm);
end;


procedure ResetListCmd;
  var NumList, i, j : Cardinal;

begin
  for NumList:= 1 to CNT_LIST_CMD do
    begin
      ListsCmd2[NumList].NameList  := 'Terminal ' + IntToStr(NumList);
        for i := 1 to 48 do
          begin
            ListsCmd2[NumList].CmdData[i]  := '';
            ListsCmd2[NumList].CmdName[i]  := '';
            for j := 1 to 12 do
              ListsCmd2[NumList].NameHelp[i, j] := '';
          end;
      ListsCmd2[NumList].TailStr   := '$0D';
      ListsCmd2[NumList].CmdStr    := '';
      ListsCmd2[NumList].SendMode  := SendASCII;
      ListsCmd2[NumList].ReadMode  := ReadASCII;

      for i := 1 to 20 do
        ListsCmd2[NumList].FiltrStr[i] := '';

      ListsCmd2[NumList].AutoClrStrHEX   := '';
      ListsCmd2[NumList].AutoClrStrASCII := '';
      ListsCmd2[NumList].AutoExpStr      := '';

      ListsCmd2[NumList].NStr4    := '';
      ListsCmd2[NumList].NStr5    := '';
      ListsCmd2[NumList].NStr6    := '';
      ListsCmd2[NumList].NStr7    := '';
      ListsCmd2[NumList].NStr8    := '';
      ListsCmd2[NumList].NStr9    := '';
      ListsCmd2[NumList].NStr10   := '';
      ListsCmd2[NumList].NStr11   := '';
      ListsCmd2[NumList].NStr12   := '';
      ListsCmd2[NumList].NStr13   := '';
      ListsCmd2[NumList].NStr14   := '';
      ListsCmd2[NumList].NStr15   := '';
      ListsCmd2[NumList].NStr16   := '';
      ListsCmd2[NumList].NStr17   := '';
      ListsCmd2[NumList].NStr18   := '';
      ListsCmd2[NumList].NStr19   := '';
      ListsCmd2[NumList].NStr20   := '';

      ListsCmd2[NumList].marker               := MARKER;
      ListsCmd2[NumList].TimeOutAnsRX         := 100;
      ListsCmd2[NumList].CntExpBytes          := 100;
      ListsCmd2[NumList].SepBytes             := 10;
      ListsCmd2[NumList].SepSymbol            := $0D;
      ListsCmd2[NumList].TimeAutoExpanNoData  := 10000;
      ListsCmd2[NumList].CntClrBytesLog       := 100000;

      ListsCmd2[NumList].SepBefSymbol1  := 0;
      ListsCmd2[NumList].SepBefSymbol2  := 0;
      ListsCmd2[NumList].HK1_4  := 0;
      ListsCmd2[NumList].HK5_8  := 0;
      ListsCmd2[NumList].HK9_12  := 0;
      ListsCmd2[NumList].HK13_16  := 0;
      ListsCmd2[NumList].HK17_20  := 0;
      ListsCmd2[NumList].HK21_24  := 0;
      ListsCmd2[NumList].HK25_28  := 0;
      ListsCmd2[NumList].HK29_32  := 0;
      ListsCmd2[NumList].HK33_36  := 0;
      ListsCmd2[NumList].HK37_40  := 0;
      ListsCmd2[NumList].HK41_44  := 0;
      ListsCmd2[NumList].HK45_48  := 0;
      ListsCmd2[NumList].J01_02   := 0;
      ListsCmd2[NumList].J03_04   := 0;
      ListsCmd2[NumList].J05_06   := 0;
      ListsCmd2[NumList].J07_08   := 0;
      ListsCmd2[NumList].J09_10   := 0;
      ListsCmd2[NumList].J11_12   := 0;
      ListsCmd2[NumList].J13_14   := 0;
      ListsCmd2[NumList].J15_16   := 0;
      ListsCmd2[NumList].J17_18   := 0;
      ListsCmd2[NumList].J19_20   := 0;
      ListsCmd2[NumList].J21_22   := 0;
      ListsCmd2[NumList].J23_24   := 0;
      ListsCmd2[NumList].J25_26   := 0;
      ListsCmd2[NumList].J27_28   := 0;
      ListsCmd2[NumList].J29_30   := 0;
      ListsCmd2[NumList].J31_32   := 0;
      ListsCmd2[NumList].J33_34   := 0;
      ListsCmd2[NumList].J35_36   := 0;
      ListsCmd2[NumList].J37_38   := 0;
      ListsCmd2[NumList].J39_40   := 0;
      ListsCmd2[NumList].J41_42   := 0;
      ListsCmd2[NumList].J43_44   := 0;
      ListsCmd2[NumList].J45_46   := 0;
      ListsCmd2[NumList].J47_48   := 0;
      ListsCmd2[NumList].SepSymbol2  := 0;
      ListsCmd2[NumList].SeqSymbols1_4  := 0;
      ListsCmd2[NumList].SeqSymbols1_3  := 0;
      ListsCmd2[NumList].SeqSymbols1_2  := 0;
      ListsCmd2[NumList].SeqSymbols2_4  := 0;
      ListsCmd2[NumList].SeqSymbols2_3  := 0;
      ListsCmd2[NumList].SeqSymbols2_2  := 0;
      ListsCmd2[NumList].NParam53  := 0;
      ListsCmd2[NumList].NParam54  := 0;
      ListsCmd2[NumList].NParam55  := 0;
      ListsCmd2[NumList].NParam56  := 0;
      ListsCmd2[NumList].NParam57  := 0;
      ListsCmd2[NumList].NParam58  := 0;
      ListsCmd2[NumList].NParam59  := 0;
      ListsCmd2[NumList].NParam60  := 0;

      ListsCmd2[NumList].isVisTime := False;
      ListsCmd2[NumList].isVisCnt  := False;

      ListsCmd2[NumList].isSep0D              := true;
      ListsCmd2[NumList].isSep0A              := true;
      ListsCmd2[NumList].isSep00              := true;
      ListsCmd2[NumList].isSep0D0A            := true;
      ListsCmd2[NumList].isSepTime            := true;
      ListsCmd2[NumList].isSepBytes           := false;
      ListsCmd2[NumList].isSepSymbol          := false;
      ListsCmd2[NumList].isResetFifo          := False;
      ListsCmd2[NumList].isAutoExpandNoInData := False;
      ListsCmd2[NumList].isAutoExpStr         := False;
      ListsCmd2[NumList].isCntExpBytes        := False;
      ListsCmd2[NumList].isExpWin             := true;
      ListsCmd2[NumList].isFileSendOK         := False;
      ListsCmd2[NumList].isAutoClrStrHEX      := False;
      ListsCmd2[NumList].isAutoClrStrASCII    := False;
      ListsCmd2[NumList].isClrLogWhSend       := False;

      ListsCmd2[NumList].isAddASCII           := false;
      ListsCmd2[NumList].isAddHEX             := true;
      ListsCmd2[NumList].isADDTX              := true;
      ListsCmd2[NumList].isAddRX              := true;
      ListsCmd2[NumList].isAddIgnFlt          := False;
      ListsCmd2[NumList].isShowMode           := False;

      ListsCmd2[NumList].isSepBefSymbol1  := False;
      ListsCmd2[NumList].isSepBefSymbol2  := False;
      ListsCmd2[NumList].isUseHotKey        := False;
      ListsCmd2[NumList].isSepSymbol2       := false;
      ListsCmd2[NumList].isSepAftSeq1_4        := False;
      ListsCmd2[NumList].isSepAftSeq1_3  := False;
      ListsCmd2[NumList].isSepAftSeq1_2  := False;
      ListsCmd2[NumList].isSepAftSeq2_4        := False;
      ListsCmd2[NumList].isSepAftSeq2_3  := False;
      ListsCmd2[NumList].isSepAftSeq2_2  := False;
      ListsCmd2[NumList].isVisPort := False;
      ListsCmd2[NumList].isVisDir  := False;
      ListsCmd2[NumList].isAddDec  := False;
      ListsCmd2[NumList].isAddCust  := False;
      ListsCmd2[NumList].isFlag41  := False;
      ListsCmd2[NumList].isFlag42  := False;
      ListsCmd2[NumList].isFlag43  := False;
      ListsCmd2[NumList].isFlag44  := False;
      ListsCmd2[NumList].isFlag45  := False;
      ListsCmd2[NumList].isFlag46  := False;
      ListsCmd2[NumList].isFlag47  := False;
      ListsCmd2[NumList].isFlag48  := False;
      ListsCmd2[NumList].isFlag49  := False;
      ListsCmd2[NumList].isFlag50  := False;
      ListsCmd2[NumList].isFlag51  := False;
      ListsCmd2[NumList].isFlag52  := False;
      ListsCmd2[NumList].isFlag53  := False;
      ListsCmd2[NumList].isFlag54  := False;
      ListsCmd2[NumList].isFlag55  := False;
      ListsCmd2[NumList].isFlag56  := False;
      ListsCmd2[NumList].isFlag57  := False;
      ListsCmd2[NumList].isFlag58  := False;
      ListsCmd2[NumList].isFlag59  := False;
      ListsCmd2[NumList].isFlag60  := False;
    end;
  end;



procedure TForm1.FormCreate(Sender: TObject);
var
  i,j : integer;
  isResetCfg  : boolean;
  NumList, NumCmd, NumStrHelp : integer;
  TmpTime : TDateTime;
  isEventFile : Boolean;
  errIO : integer;
  cntAtt : integer;

  isCmdCfg_1 : Boolean;
  isCmdCfg_2 : Boolean;
begin
  VersionInfo := 'TerminalTMB v7.137b';
  DateInfo    := '11.04.2025';
  //URL         := 'https://zen.yandex.ru/tehnozet2';
  //DateInfo    := 'Em@il: Ivan160508@yandex.ru, MCard: 5586 2000 8623 2177';
  EMail       := 'Ivan160508@yandex.ru';
  //EMail       := 'Ivan160508@yandex.ru, MIR: 2202 2062 7669 8490';
  isFormAnsSensors := False;
  isUseParserHEX := False;
  isUseParserASCII := False;
  isCopyListCmdBuf := False;
  TypeFilterLog := TFLNoFilter;

  isUseCustomTable := False;
  isModeDialog := True;
  URL         := 'https://alex-exe.ru/';
  isRevers    := False;
  NumSendList := 0;
  StartTime := Now;
  TimeNoInputData := 20;
  HandsHakingPort := 0;

  isOpenPort := False;
  isSkippingReps := False;
  FontSize := 8;
  FontColorRead := clBlue;
  FontColorSend := clRed;
  ColorInputData:= clYellow;

  LastReadLogTime := 0;

  FormParser.SetSaveCfgDis;
  //URL         := 'https://electronix.ru/';
  isCreateFormMain := false;
  isModeEditHK     := False;
  CurHotKey        := $FF;

  for i := 0 to 255 do
    BufCntBytesRead[i] := 0;
  for i := 0 to 255 do
    BufCntBytesSend[i] := 0;

  isSaveFileAddPortsA := False;
  isSaveFileAddPortsB := False;
  isSaveFileIncSubstr := False;

  isShowHotKey     := False;
  DeltaRXOld := 0;

  isCmdCfg_1 := false;
  isCmdCfg_2 := false;


  isMielta := IS_MIELTA;

  Form1.Caption := VersionInfo;
  isEventFile := true;
  CntExpBytesREF := 0;

  Fifo.Top  := grpLineSeparator.Top;
  Fifo.Left := grpLineSeparator.Left;
  grpLog.Top := grpLineSeparator.Top;
  grpLog.Left := grpLineSeparator.Left;

  grpLog.Width := grpLineSeparator.Width;
  grpLog.Height := grpLineSeparator.Height;


  pnlSep.Left  := 612;
  pnlSep.Width := 301;
  pnlSep.Top   := 174 + 25;
  pnlAddWin.Left := 712;
  pnlAddWin.Top  := 28;


  Fifo.Height        := grpLineSeparator.Height;
  grp2.Height        := grpLineSeparator.Height;
  GroupBox1.Height   := grpLineSeparator.Height;
  grpEventLog.Height := grpLineSeparator.Height;

  pnlSep.Height := 50;

  BtLineSep.Font.Style     := [];
  BtAutoClear.Font.Style   := [];
  BtFIFO.Font.Style        := [];
  BtAutoExpand.Font.Style  := [];
  BtEventLive.Font.Style   := [];

  grpLineSeparator.Visible := False;
  grp2.Visible             := False;
  Fifo.Visible             := False;
  GroupBox1.Visible        := False;
  grpEventLog.Visible      := False;

  LastKeyJ                 := 0;


  MaxOF                   := 0;

  CurTimeRB               := Now;

  EventLog.Clear;
  EventLog.Color := Form1.Color;



  StrCSum[1]  := '[SUM_8(0..n)]';
  StrCSum[2]  := '[SUM_8(1..n)]';
  StrCSum[3]  := '[SUM_8(2..n)]';
  StrCSum[4]  := '[XOR_8 (0..n)]';
  StrCSum[5]  := '[XOR_8 (1..n)]';
  StrCSum[6]  := '[XOR_8 (2..n)]';
  StrCSum[7]  := '[FF - SUM_8(0..n)]';
  StrCSum[8]  := '[FF - SUM_8(1..n)]';
  StrCSum[9]  := '[FF - SUM_8(2..n)]';
  StrCSum[10] := '[SUM_MBUS]';
  StrCSum[11] := '[SUM_LLS]';



  LBTail.Items.Clear;
  for i := 1 to CNT_CSUM do
    LBTail.Items.Add(StrCSum[i]);


  isListSendCmd     := false;
  isAddListCmd      := false;
  isSaveListCmd     := false;

  Stats.MinTimeWait := $7FFFFFFF;
  Stats.MaxTimeWait := 0;
  Stats.DataSend    := 0;
  Stats.DataRead    := 0;
  CntDataLog        := 0;

  MinTimeWait.Caption := 'MIN_T_W:  NA';
  MaxTimeWait.Caption := 'MAX_T_W: NA';
  LRead.Caption := 'Read: 0';
  LSend.Caption := 'Send: 0';
  CntCmpLvl.Caption := 'Hit counter: 0';

  Button51.Font.Name:='Symbol';
  Button51.Caption:=chr($AF);

  Button50.Font.Name:='Symbol';
  Button50.Caption:=chr($AF);

  iReadBuf                := 0;
  iWriteBuf               := 0;
  CntDataReadBufAv        := 0;
  CntDataReadBufAll       := 0;
  LostData                := 0;

  StartLeftStr2        := Button51.Left;
  FiltrLog.Color       := Form1.Color;

  GlBufRx.Shift    := 0;
  indexCmdInFile   := 0;
  CntMs            := 0;


  MSecRefRX        := 0;

  TimeOutAnsRX     := 0;

  CntRXRead := 0;
  RXRead := 0;
  RXOut  := 0;
  CntRXOut  := 0;
  CntTX := 0;
  Stats.HitCounter := 0;

  CntBytesAdd := 0;

  FontSizeWindow   := CMainWindow.Font.Size;
  isShowMsgSendCmdFiles := false;
  //isSendCmdReconn  := false;
  CMainWindow.Clear;
  CMainWindowAdd.Clear;
  SecondWindow.Clear;
  SecondWindowAdd.Clear;
  isSendFile := False;


  CMainWindow.Color := Form1.Color;
  CMainWindowAdd.Color := Form1.Color;

  MainStrCmd.Color := Form1.Color;
  AddStrCmd.Color := Form1.Color;
  lstFastOldCmd.Color := Form1.Color;

  StartRightPanels := Panel1.Width;
  StartLeftSendFile    := SendStart.Left;
  StartLeftPlus        := LPlus.Left;
  StartWidthFiltrLog   := FiltrLog.Width;

  LBTail.Color         := Form1.Color;

  CBLists.Color         := Form1.Color;
  NoActionClose         := false;
  StartWidthForm        := Form1.Width;
  StartWidthMainStrCmd  := MainStrCmd.Width;
  StartLeftAddStrCmd    := AddStrCmd.Left;

  StartLeftBTAddMacros  := BtAddMacros.Left;
  StartLeftBTUtilites       := BtUtilites.Left;
  StartLeftBTAddPOrts       := BtAddPorts.Left;
  StartLeftPnlSendInAdd := pnlSendInAdd.Left;


  StartLeftBTCustomMode := BtTableCustom.Left;
  StartLeftBTRes1       := btnPacketStats.Left;
  StartLeftBTRes2       := BtMultiPort.Left;
  StartLeftBTAddPortsSend := BtAddPortsSend.Left;

  StartLeftbtnParserASCII       := btnParserASCII.Left;
  StartLeftBTRes4       := Bt23.Left;
  StartLeftBTRes5       := btnBt24.Left;



  StartLeftStartStop    := sendAnsBTStartStop.Left;
  StartLeftStartLog     := StartLog.Left;
  //StartLeftBTLog        := BTLog.Left;
  StartBTOldCmd         := Button50.Left;

  StartWidthSTLog       := STLog.Width;
  StartWidthST3         := StaticText3.Width;
  StartLeftST3          := StaticText3.Left;
  //StartLeftListInc     := ListInc.Left;
  //StartLeftListDec     := ListDec.Left;
  StartLeftListRF      := ButtonReadFile.Left;
  StartLeftListBS      := BtSend.Left;
  StartLeftBtFont      := BTFont.Left;
  StartLeftBtSendFile  := Button49.Left;


  StartLeftListOldCmd  := OldCmdList.Left;

  StartLeftMD          := MonDialog.Left;

  StartLeftInputMode   := InputMode.Left;

  StartWidthListName   := STListName.Width;
  StartWidthListNameEdt:= ListNameEDT.Width;

  StartLeftRbName      := RBName.Left;
  StartLeftRbData      := RBData.Left;

  StartLeftBtInfo      := BtInfo.Left;

  //StartWidthCBLists    := CBLists.Width;

  StartLeftBTPalitra   := BTPalitra.Left;

  StartLeftAddW        := AddWindow.Left;
  StartLeftBtListCmd   := BtListCmd.Left;
  StartLeftBtAdd       := BtAddFunctions.Left;
  StartLeftSniffer     := btnBtShowStat.Left;

  MainWindowWidth      := CMainWindow.Width;

  StartBTResetLeft     := BTResetCnt.Left;
  StartCBBFilter       := cbbFilterLOg.Left;

  StartLeftHSBt        := BtHSBt.Left;
  StartLeftStatPanel   := PStats.Left;

  StartLeftCSL         := CSLbt.Left;
  StartLeftSett        := SettBt.Left;
  StartLeftOpenLog     := OpenLogBT.Left;
  StartLeftAnsSens     := BtAnsList.Left;
  StartFSmodeBT        := FSmodeBT.Left;
  StartLeftOpenBinFile := OpenBinBT.Left;
  StartWidthPanelCmd   := TabEditCmd.Width;
  StartLeftAScroll     := AScroll.Left;
  StartLeftAddPanel    := pnlAddWin.Left;
  StartPanelSeparator  := pnlSep.Left;
  StartPosHotKey       := ChHK.Left;


  StartLeftBrutForceBT := BrutForceBT.Left;
  StartLeftBT53        := BtBTASCIITABLE.Left;
  StartLeftBT54        := BtParser.Left;



  PauseSendFile        := SendFilePause.Left;

  isSendComProcess     := false;
  isReadComProcess     := false;
  isAddWindow          := false;
  isOpenListCmd        := false;
  isReqSaveCmdList     := false;

  isEnHide             := true;

  BtSendAddPort[1]  := Bt4;
  BtSendAddPort[2]  := Bt5;
  BtSendAddPort[3]  := Bt6;
  BtSendAddPort[4]  := Bt7;
  BtSendAddPort[5]  := Bt8;
  BtSendAddPort[6]  := Bt9;
  BtSendAddPort[7]  := Bt10;
  BtSendAddPort[8]  := Bt11;
  BtSendAddPort[9]  := Bt12;
  BtSendAddPort[10] := Bt13;
  BtSendAddPort[11] := Bt14;
  BtSendAddPort[12] := Bt15;
  BtSendAddPort[13] := Bt16;
  BtSendAddPort[14] := Bt17;
  BtSendAddPort[15] := Bt18;
  BtSendAddPort[16] := Bt19;
  BtSendAddPort[17] := Bt20;
  BtSendAddPort[18] := Bt21;

  for i := 1 to 18 do
    begin
      BtSendAddPort[i].OnClick := SendInAddClick;
      BtSendAddPort[i].Tag := i;
    end;



  BTCmd[1]  := Button1;
  BTCmd[2]  := Button2;
  BTCmd[3]  := Button3;
  BTCmd[4]  := Button4;
  BTCmd[5]  := Button5;
  BTCmd[6]  := Button6;
  BTCmd[7]  := Button7;
  BTCmd[8]  := Button8;
  BTCmd[9]  := Button9;
  BTCmd[10] := Button10;
  BTCmd[11] := Button11;
  BTCmd[12] := Button12;
  BTCmd[13] := Button13;
  BTCmd[14] := Button14;
  BTCmd[15] := Button15;
  BTCmd[16] := Button16;
  BTCmd[17] := Button17;
  BTCmd[18] := Button18;
  BTCmd[19] := Button19;
  BTCmd[20] := Button20;
  BTCmd[21] := Button21;
  BTCmd[22] := Button22;
  BTCmd[23] := Button23;
  BTCmd[24] := Button24;
  BTCmd[25] := Button25;
  BTCmd[26] := Button26;
  BTCmd[27] := Button27;
  BTCmd[28] := Button28;
  BTCmd[29] := Button29;
  BTCmd[30] := Button30;
  BTCmd[31] := Button31;
  BTCmd[32] := Button32;
  BTCmd[33] := Button33;
  BTCmd[34] := Button34;
  BTCmd[35] := Button35;
  BTCmd[36] := Button36;
  BTCmd[37] := Button37;
  BTCmd[38] := Button38;
  BTCmd[39] := Button39;
  BTCmd[40] := Button40;
  BTCmd[41] := Button41;
  BTCmd[42] := Button42;
  BTCmd[43] := Button43;
  BTCmd[44] := Button44;
  BTCmd[45] := Button45;
  BTCmd[46] := Button46;
  BTCmd[47] := Button47;
  BTCmd[48] := Button48;

  EDTCmd[1]  := Edit1;
  EDTCmd[2]  := Edit2;
  EDTCmd[3]  := Edit3;
  EDTCmd[4]  := Edit4;
  EDTCmd[5]  := Edit5;
  EDTCmd[6]  := Edit6;
  EDTCmd[7]  := Edit7;
  EDTCmd[8]  := Edit8;
  EDTCmd[9]  := Edit9;
  EDTCmd[10] := Edit10;
  EDTCmd[11] := Edit11;
  EDTCmd[12] := Edit12;
  EDTCmd[13] := Edit13;
  EDTCmd[14] := Edit14;
  EDTCmd[15] := Edit15;
  EDTCmd[16] := Edit16;
  EDTCmd[17] := Edit17;
  EDTCmd[18] := Edit18;
  EDTCmd[19] := Edit19;
  EDTCmd[20] := Edit20;
  EDTCmd[21] := Edit21;
  EDTCmd[22] := Edit22;
  EDTCmd[23] := Edit23;
  EDTCmd[24] := Edit24;
  EDTCmd[25] := Edit25;
  EDTCmd[26] := Edit26;
  EDTCmd[27] := Edit27;
  EDTCmd[28] := Edit28;
  EDTCmd[29] := Edit29;
  EDTCmd[30] := Edit30;
  EDTCmd[31] := Edit31;
  EDTCmd[32] := Edit32;
  EDTCmd[33] := Edit33;
  EDTCmd[34] := Edit34;
  EDTCmd[35] := Edit35;
  EDTCmd[36] := Edit36;
  EDTCmd[37] := Edit37;
  EDTCmd[38] := Edit38;
  EDTCmd[39] := Edit39;
  EDTCmd[40] := Edit40;
  EDTCmd[41] := Edit41;
  EDTCmd[42] := Edit42;
  EDTCmd[43] := Edit43;
  EDTCmd[44] := Edit44;
  EDTCmd[45] := Edit45;
  EDTCmd[46] := Edit46;
  EDTCmd[47] := Edit47;
  EDTCmd[48] := Edit48;

  EDTHotKey[1]  := Edt1;
  EDTHotKey[2]  := Edt3;
  EDTHotKey[3]  := Edt4;
  EDTHotKey[4]  := Edt5;
  EDTHotKey[5]  := Edt6;
  EDTHotKey[6]  := Edt7;
  EDTHotKey[7]  := Edt8;
  EDTHotKey[8]  := Edt9;
  EDTHotKey[9]  := Edt10;
  EDTHotKey[10] := Edt11;
  EDTHotKey[11] := Edt12;
  EDTHotKey[12] := Edt13;
  EDTHotKey[13] := Edt14;
  EDTHotKey[14] := Edt15;
  EDTHotKey[15] := Edt16;
  EDTHotKey[16] := Edt17;
  EDTHotKey[17] := Edt18;
  EDTHotKey[18] := Edt19;
  EDTHotKey[19] := Edt20;
  EDTHotKey[20] := Edt21;
  EDTHotKey[21] := Edt22;
  EDTHotKey[22] := Edt23;
  EDTHotKey[23] := Edt24;
  EDTHotKey[24] := Edt25;
  EDTHotKey[25] := Edt26;
  EDTHotKey[26] := Edt27;
  EDTHotKey[27] := Edt28;
  EDTHotKey[28] := Edt29;
  EDTHotKey[29] := Edt30;
  EDTHotKey[30] := Edt31;
  EDTHotKey[31] := Edt32;
  EDTHotKey[32] := Edt33;
  EDTHotKey[33] := Edt34;
  EDTHotKey[34] := Edt35;
  EDTHotKey[35] := Edt36;
  EDTHotKey[36] := Edt37;
  EDTHotKey[37] := Edt38;
  EDTHotKey[38] := Edt39;
  EDTHotKey[39] := Edt40;
  EDTHotKey[40] := Edt41;
  EDTHotKey[41] := Edt42;
  EDTHotKey[42] := Edt43;
  EDTHotKey[43] := Edt44;
  EDTHotKey[44] := Edt45;
  EDTHotKey[45] := Edt46;
  EDTHotKey[46] := Edt47;
  EDTHotKey[47] := Edt48;
  EDTHotKey[48] := Edt49;

  EDTJKey[1]  := Edt50;
  EDTJKey[2]  := Edt51;
  EDTJKey[3]  := Edt52;
  EDTJKey[4]  := Edt53;
  EDTJKey[5]  := Edt54;
  EDTJKey[6]  := Edt55;
  EDTJKey[7]  := Edt56;
  EDTJKey[8]  := Edt57;
  EDTJKey[9]  := Edt58;
  EDTJKey[10] := Edt59;
  EDTJKey[11] := Edt60;
  EDTJKey[12] := Edt61;
  EDTJKey[13] := Edt62;
  EDTJKey[14] := Edt63;
  EDTJKey[15] := Edt64;
  EDTJKey[16] := Edt65;
  EDTJKey[17] := Edt66;
  EDTJKey[18] := Edt67;
  EDTJKey[19] := Edt68;
  EDTJKey[20] := Edt69;
  EDTJKey[21] := Edt70;
  EDTJKey[22] := Edt71;
  EDTJKey[23] := Edt72;
  EDTJKey[24] := Edt73;
  EDTJKey[25] := Edt74;
  EDTJKey[26] := Edt75;
  EDTJKey[27] := Edt76;
  EDTJKey[28] := Edt77;
  EDTJKey[29] := Edt78;
  EDTJKey[30] := Edt79;
  EDTJKey[31] := Edt80;
  EDTJKey[32] := Edt81;
  EDTJKey[33] := Edt82;
  EDTJKey[34] := Edt83;
  EDTJKey[35] := Edt84;
  EDTJKey[36] := Edt85;
  EDTJKey[37] := Edt86;
  EDTJKey[38] := Edt87;
  EDTJKey[39] := Edt88;
  EDTJKey[40] := Edt89;
  EDTJKey[41] := Edt90;
  EDTJKey[42] := Edt91;
  EDTJKey[43] := Edt92;
  EDTJKey[44] := Edt93;
  EDTJKey[45] := Edt94;
  EDTJKey[46] := Edt95;
  EDTJKey[47] := Edt96;
  EDTJKey[48] := Edt97;




  STH[1] := STH1;
  STH[2] := STH2;
  STH[3] := STH3;
  STH[4] := STH4;
  STH[5] := STH5;
  STH[6] := STH6;
  STH[7] := STH7;
  STH[8] := STH8;
  STH[9] := STH9;
  STH[10] := STH10;
  STH[11] := STH11;
  STH[12] := STH12;

  ActiveControl       := BTConnect;

  isOldCmdMode  := false;
  isFileCmdMode := false;

  isLogFile     := false;
  isLogBinFile  := false;

  isLogBinTx    := false;
  isLogBinRx    := false;


  isLogTextTx   := false;
  isLogTextRx   := false;
  isSaveDelay   := false;


  for i:= 1 to 12 do
    begin
      STHLeft[i]    := STH[i].Left;
      STH[i].Tag    := i;
    end;



  AssignFile(ConfigFile2, ExtractFilePath(Application.ExeName) + 'ListConfig');
  isCmdCfg_2 := FileExists(ExtractFilePath(Application.ExeName) + 'ListConfig');

  isCmdCfg_2 := isCmdCfg_2 and (Get_File_Size(ExtractFilePath(Application.ExeName) + 'ListConfig', True) > 0);

  AssignFile(ConfigFile, ExtractFilePath(Application.ExeName) + 'CmdConfig');
  isCmdCfg_1 := FileExists(ExtractFilePath(Application.ExeName) + 'CmdConfig');

  isCmdCfg_1 := isCmdCfg_1 and (Get_File_Size(ExtractFilePath(Application.ExeName) + 'CmdConfig', True) > 0);


  if isCmdCfg_1 then
    begin
      Reset(ConfigFile);
      NumList := 1;
      while (NumList <= CNT_LIST_CMD) and (isCmdCfg_1) do
        begin
          if not eof(ConfigFile) then
            begin
              Read(ConfigFile, ListsCmd[NumList]);
              if ListsCmd[NumList].TailStr = '' then
                ListsCmd[NumList].TailStr := '$0D';
              if ListsCmd[NumList].Options[1] <> MARKER then
                isCmdCfg_1 := false;
              if ((ListsCmd[NumList].Options[2] and $8000000) = 0) then
                begin
                  if ((ListsCmd[NumList].Options[2] and $1) = $1) then
                    ListsCmd[NumList].Options[2] := ListsCmd[NumList].Options[2] or $2;

                  ListsCmd[NumList].Options[2] := ListsCmd[NumList].Options[2] or $8000000;
                  isReqSaveCmdList := True;
                end;
            end
          else
            isCmdCfg_1 := false;

          inc(NumList);
        end;
      CloseFile(ConfigFile);

      if isCmdCfg_1 then
        begin
          ResetListCmd;
          for NumList:= 1 to CNT_LIST_CMD do
            begin
              ListsCmd2[NumList].NameList  := ListsCmd[NumList].NameList;
              for i := 1 to 48 do
                begin
                  ListsCmd2[NumList].CmdData[i]  := ListsCmd[NumList].CmdData[i];
                  ListsCmd2[NumList].CmdName[i]  := ListsCmd[NumList].CmdName[i];
                  for j := 1 to 12 do
                  ListsCmd2[NumList].NameHelp[i, j] := ListsCmd[NumList].NameHelp[i, j];
                end;
              ListsCmd2[NumList].Marker    := MARKER;
              ListsCmd2[NumList].TailStr   := ListsCmd[NumList].TailStr;
              ListsCmd2[NumList].CmdStr    := ListsCmd[NumList].reserv2;
              if (ListsCmd[NumList].Options[2] and $1) = $1 then ListsCmd2[NumList].SendMode := SendHEX else ListsCmd2[NumList].SendMode := SendASCII;
              if (ListsCmd[NumList].Options[2] and $2) = $2 then ListsCmd2[NumList].ReadMode := ReadHEX else ListsCmd2[NumList].ReadMode := ReadASCII;
            end;
        end;
        RenameFile(ExtractFilePath(Application.ExeName) + 'CmdConfig', ExtractFilePath(Application.ExeName) + 'CmdConfigOld');
      //удаление старого файла
    end;

  if isCmdCfg_2 then
    begin
      Reset(ConfigFile2);
      NumList := 1;
      while (NumList <= CNT_LIST_CMD) and (isCmdCfg_2) do
        begin
          if not eof(ConfigFile2) then
            begin
              Read(ConfigFile2, ListsCmd2[NumList]);
              isCmdCfg_2 := ListsCmd2[NumList].Marker = MARKER;
             end
          else
            isCmdCfg_2 := false;
          inc(NumList);
        end;
      CloseFile(ConfigFile2);
    end;

  if (not isCmdCfg_1) and (not isCmdCfg_2) then
    begin
      ShowMessage('A new configuration file has been created');
      ResetListCmd;
      //создание нового файла конфигурации
    end;


  ////////



  AssignFile(OldCmdFile, ExtractFilePath(Application.ExeName) + 'OldCmdList');
  if not FileExists(ExtractFilePath(Application.ExeName) + 'OldCmdList') or (Get_File_Size(ExtractFilePath(Application.ExeName) + 'OldCmdList', True) = 0) then
    begin
      ReWrite(OldCmdFile);
      for NumCmd := 1 to CNT_LIST_OLDCMD do
        Write(OldCmdFile, OldCommand[NumCmd]);
      CloseFile(OldCmdFile);
    end
  else
    begin
      Reset(OldCmdFile);
      for NumCmd := 1 to CNT_LIST_OLDCMD do
        begin
          Read(OldCmdFile, OldCommand[NumCmd]);
          if Length(OldCommand[NumCmd].OldCmd) > 0 then
            begin
              OldCmdList.Items.Add(OldCommand[NumCmd].OldCmd);
              lstFastOldCmd.Items.Add(OldCommand[NumCmd].OldCmd);
            end;
        end;
      CloseFile(OldCmdFile);
    end;
  for i:=1 to CNT_LIST_CMD do
    begin
      isOpenMsgEventNoIncomingDataEn[NumListCmd] := true;
      isOpenMsgEventBytesRecDataEn[NumListCmd]   := True;
      isOpenMsgEventFileSentEn[NumListCmd]       := True;
      isOpenMsgEventRecSubstrEn[NumListCmd]      := True;
    end;

  isFirstScanPort := true;
  ScanComPorts;
  isFirstScanPort := false;
  isOpenComPort := false;

  OutHelpHelp;
  NumListCmd := 1;
  isAddDate := False;
  isNoOutNonPrint := False;
  SetOffNonPrintCh(isNoOutNonPrint);

  AssignFile(CfgTerminalFile, ExtractFilePath(Application.ExeName) + 'CnfgTMB');
  if not FileExists(ExtractFilePath(Application.ExeName) + 'CnfgTMB') or (Get_File_Size(ExtractFilePath(Application.ExeName) + 'CnfgTMB', True) = 0)  then
    begin
      ReWrite(CfgTerminalFile);
      //Write(CfgTerminalFile, CfgTerminal);
      //CloseFile(CfgTerminalFile);
    end
  else
    begin
     Reset(CfgTerminalFile);
     Read(CfgTerminalFile, CfgTerminal);

     //CloseFile(CfgTerminalFile);
     ComPort.Text := CfgTerminal.NameCOM;
     CfgTerminal.NameCOM[Length(CfgTerminal.NameCOM) + 1] := #0;

     isAddDate := CfgTerminal.isAddDate;
     isNoOutNonPrint := CfgTerminal.isNoOutNonPrint;
     SetOffNonPrintCh(isNoOutNonPrint);

     if (CfgTerminal.TimeNoInputData = 0) or (CfgTerminal.TimeNoInputData > 60) then
       TimeNoInputData := 20
     else
       TimeNoInputData := CfgTerminal.TimeNoInputData * 10;

     BaudRate.ItemIndex    := CfgTerminal.BRate;
     if CfgTerminal.BRateStr <> '' then
       BaudRate.Text := CfgTerminal.BRateStr;

     ComBits.ItemIndex     := CfgTerminal.Bits;
     ComStopBits.ItemIndex := CfgTerminal.SBits;
     AutoConnect.Checked   := CfgTerminal.AConn;

     TimeOutAnsRX          := CfgTerminal.TimeRx;
     FiltrLog.Text         := CfgTerminal.Filtr;

     MainStrCmd.Color      := CfgTerminal.fonColor;
     lstFastOldCmd.Color      := CfgTerminal.fonColor;
     AddStrCmd.Color       := CfgTerminal.fonColor;
     OldCmdList.Color      := CfgTerminal.fonColor;
     LBTail.Color          := CfgTerminal.fonColor;
     CMainWindow.Color      := CfgTerminal.fonColor;
     CMainWindowAdd.Color   := CfgTerminal.fonColor;


     MainStrCmd.Font.Color    := CfgTerminal.textColor;
     lstFastOldCmd.Font.Color    := CfgTerminal.textColor;
     AddStrCmd.Font.Color     := CfgTerminal.textColor;
     OldCmdList.Font.Color    := CfgTerminal.textColor;
     LBTail.Font.Color        := CfgTerminal.textColor;
     //CMainWindow.Font.Color    := CfgTerminal.textColor;
     //CMainWindowAdd.Font.Color := CfgTerminal.textColor;
     //isSkippingReps            := CfgTerminal.SkippingReps = 1;
     CMainWindow.Font.Size     := CfgTerminal.FontSize;
     CMainWindowAdd.Font.Size  := CfgTerminal.FontSize;
     SecondWindow.Font.Size    := CfgTerminal.FontSize;
     SecondWindowAdd.Font.Size := CfgTerminal.FontSize;
     cbbHandsHaking.ItemIndex  := CfgTerminal.HandsHakingPort;
     HandsHakingPort := CfgTerminal.HandsHakingPort;
     if CfgTerminal.ColorForm = 0 then
       CfgTerminal.ColorForm := clBtnFace;
     Form1.Color := CfgTerminal.ColorForm;

     ColorInputData := CfgTerminal.ColorInputData;
     isColorInputData := CfgTerminal.isColorInputData;

     FontSize := CfgTerminal.FontSize;
     FontColorRead := CfgTerminal.ColorRead;
     FontColorSend := CfgTerminal.ColorSend;
     isFontBold := CfgTerminal.isFontBold;
     SetFontStyle();


     if (CfgTerminal.ParityCom <= 4) and (CfgTerminal.ParityCom >= 0) then
       ParityCom := CfgTerminal.ParityCom
     else
       ParityCom := 0;

      if CfgTerminal.SendMode = 1 then
        begin
          isManualSend := true;
          CBModeSend.ItemIndex := 0;
          PeriodTX.Color := Form1.Color;
        end
      else if CfgTerminal.SendMode = 2 then
        begin
          isWhChSend := true;
          CBModeSend.ItemIndex := 1;
          PeriodTX.Color := Form1.Color;
        end
      else if CfgTerminal.SendMode = 3 then
        begin
          isAftAnsSend := true;
          CBModeSend.ItemIndex := 2;
          PeriodTX.Color := Form1.Color;
        end
      else if CfgTerminal.SendMode = 4 then
        begin
          isPeriodSend := true;
          CBModeSend.ItemIndex := 3;
          PeriodTX.Color := clWindow;
        end
      else if CfgTerminal.SendMode = 5 then
        begin
          isByteByByte := true;
          CBModeSend.ItemIndex := 4;
          PeriodTX.Color := Form1.Color;
        end
      else
        begin
          isManualSend := true;
          CBModeSend.ItemIndex := 0;
          PeriodTX.Color := Form1.Color;
        end;

      if CfgTerminal.ShowStat = 0 then
        begin
          BtHSBt.Caption   := 'S';
          isStatsPanel   := false;
        end
      else
        begin
          BtHSBt.Caption   := 'H';
          isStatsPanel   := true;
        end;
      PStats.Visible := isStatsPanel;

      RBName.Checked := CfgTerminal.ModeMacros;
      RBData.Checked := not CfgTerminal.ModeMacros;

      AScroll.Checked  := isSkippingReps;

      if CfgTerminal.FiltrCh = 0 then
        begin
          if CfgTerminal.RbCapt then
            TypeFilterLog := TFLCapt;
        end
      else if (CfgTerminal.FiltrCh > 0) and (CfgTerminal.FiltrCh < 5) then
        begin
          TypeFilterLog := TTypeFilterLog(CfgTerminal.FiltrCh);
        end;

      cbbFilterLOg.ItemIndex := Integer(TypeFilterLog) - 1;

      periodSend := CfgTerminal.Period;
      SendAsReconn.Checked := CfgTerminal.SendConn;

      NumListCmd := CfgTerminal.NumList;
      if NumListCmd < 1 then NumListCmd := 1;

      if FiltrLog.Text <> '' then begin
         if TypeFilterLog <> TFLNoFilter then FiltrLog.Color := clYellow;
      end;

        isSavePos := CfgTerminal.PozMainWindow <> 0;

      isModeDialog := CfgTerminal.isModeDialog = 0;
    ///////////////////////////////////////////
    end;



    for i:= 1 to 48 do
      begin
        BTCmdWidth[i]         := BTCmd[i].Width;
        BTCmdLeft[i]          := BTCmd[i].Left;
        BTCmd[i].OnClick      := ButtonCmdClick;
        BTCmd[i].OnMouseMove  := ButtonCmdHelp;
        BTCmd[i].Tag          := i;
        BTCmd[i].ShowHint     := true;
        EDTCmd[i].Tag         := i;
        EDTCmd[i].OnDblClick  := ShowWindowEdtHelp;
        EDTCmd[i].OnEnter     := ShowHelpAsFocus;
        EDTCmd[i].OnMouseMove := EditCmdHelp;
        EDTCmd[i].OnChange    := SaveEditTextCmd;
        EDTCmd[i].ShowHint    := true;
        EDTCmd[i].OnKeyPress  := EditCmdSetIsReqSave;

        EDTHotKey[i].Text := IntToStr(i);
        EDTHotKey[i].Left := BTCmdLeft[i];
        EDTHotKey[i].Visible := False;
        EDTHotKey[i].OnChange := HKChange;
        EDTHotKey[i].Tag      := i;

        EDTJKey[i].OnMouseMove := EdtJMouseMove;
        EDTJKey[i].ReadOnly := True;
        EDTJKey[i].Visible := False;
        EDTJKey[i].Tag   := i;
        EDTJKey[i].OnDblClick := EdtJDblClick;
      end;

    if NumListCmd = 1 then
      begin
        ListDec.Enabled := false;
        ListInc.Enabled := true;
      end
    else if NumListCmd = CNT_LIST_CMD then
      begin
        ListDec.Enabled := true;
        ListInc.Enabled := false;
      end
    else
      begin
        ListDec.Enabled := true;
        ListInc.Enabled := true;
      end;

    if (FontSize > 100) or (FontSize < 2) then
      FontSize := CMainWindow.Font.Size;


    if Form1.Width > Screen.Width then
      Form1.Width := Screen.Width;

    if Form1.Height > Screen.Height then
      Form1.Height := Screen.Height;

    BtOptConn.Hint := Form1.ComPort.Text       + ' '
                    + Form1.BaudRate.Text    + ' '
                    + Form1.ComBits.Text     + ' '
                    + Form1.ParityBox.Text   + ' '
                    + Form1.ComStopBits.Text;

/////////////////////////////////////////////////////////////////////////
  if CfgTerminal.AddWinBits = 0 then
    begin
      isAddASCII  := SendMode = SendHEX;
      isAddHEX    := SendMode = SendASCII;
      isAddDEC    := False;
      isAddCUST    := False;
      isADDTX     := True;
      isAddRX     := True;
      isAddIgnFlt := False;
      isShowMode  := False;
    end
  else
    begin
      isAddASCII := (CfgTerminal.AddWinBits and $01) > 0;
      isAddHEX   := (CfgTerminal.AddWinBits and $02) > 0;
      isAddTX    := (CfgTerminal.AddWinBits and $04) > 0;
      isAddRX    := (CfgTerminal.AddWinBits and $08) > 0;
      isAddIgnFlt:= (CfgTerminal.AddWinBits and $10) > 0;
      isShowMode := (CfgTerminal.AddWinBits and $40) > 0;
      isAddDec    := (CfgTerminal.AddWinBits and $80) > 0;
      isAddCUST    := (CfgTerminal.AddWinBits and $100) > 0;
    end;

    if isAddASCII  then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $01;
    if isAddHEX    then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $02;
    if isAddTX     then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $04;
    if isAddRX     then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $08;
    if isAddIgnFlt then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $10;
    if isShowMode  then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $40;
    if isAddDec    then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $80;
    if isAddCUST    then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $100;
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
    if CfgTerminal.LineSeparators = 0 then
      begin
        isSep0D           := True;
        isSep0A           := True;
        isSep00           := True;
        isSep0D0A         := True;

        isSepTime         := True;
                                   //empt
        isSepBytes        := False;
        isSepSymbol       := False;
        isSepSymbol2       := False;
        isResetFifo       := False;

        isAutoExpandNoInData := False;
        isAutoExpStr      := False;
        isCntExpBytes     := False;
        isExpWin          := True;
        isFileSendOK      := false;
        isAutoClrStrHEX   := False;
        isAutoClrStrASCII := False;

        isSepBefSymbol1 := false;
        isSepBefSymbol2 := False;

        isWriteEvent   := False;
        isAConnectPort := False;

        CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $01;
        CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $02;
        CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $04;
        CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $08;
        CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $10;
        CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $20; //empt
        //40 isSepBytes
        //80 isSepSymbol
        //100 isResetFifo
        //200 isAutoExpand
        //400 isAutoExpStr
        //800 isCntExpBytes
        CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $1000;   //isExpWin
        //2000 isFileSendOK
        //4000 isAutoClrStrHEX         : boolean;
        //8000 isAutoClrStrASCII       : boolean;
        //10000 isWriteEvent
        //20000 isAConnectPort
        TimeOutAnsRX := 100;

      end
    else
      begin
        isSep0D            := (CfgTerminal.LineSeparators and $000001) > 0;
        isSep0A            := (CfgTerminal.LineSeparators and $000002) > 0;
        isSep00            := (CfgTerminal.LineSeparators and $000004) > 0;
        isSep0D0A          := (CfgTerminal.LineSeparators and $000008) > 0;
        isSepTime          := (CfgTerminal.LineSeparators and $000010) > 0;
        isSepBytes         := (CfgTerminal.LineSeparators and $000040) > 0;
        isSepSymbol        := (CfgTerminal.LineSeparators and $000080) > 0;
        isResetFifo        := (CfgTerminal.LineSeparators and $000100) > 0;
        isAutoExpandNoInData := (CfgTerminal.LineSeparators and $000200) > 0;
        isAutoExpStr       := (CfgTerminal.LineSeparators and $000400) > 0;
        isCntExpBytes      := (CfgTerminal.LineSeparators and $000800) > 0;
        isExpWin           := (CfgTerminal.LineSeparators and $001000) > 0;
        isFileSendOK       := (CfgTerminal.LineSeparators and $002000) > 0;
        isAutoClrStrHEX    := (CfgTerminal.LineSeparators and $004000) > 0;
        isAutoClrStrASCII  := (CfgTerminal.LineSeparators and $008000) > 0;
        isWriteEvent       := (CfgTerminal.LineSeparators and $010000) > 0;
        isAConnectPort     := (CfgTerminal.LineSeparators and $020000) > 0;
        isSepBefSymbol1    := (CfgTerminal.LineSeparators and $040000) > 0;
        isSepBefSymbol2    := (CfgTerminal.LineSeparators and $080000) > 0;
        isSepSymbol2       := (CfgTerminal.LineSeparators and $100000) > 0;

      end;

    CfgTerminal.LineSeparators := CfgTerminal.LineSeparators and $0FFFF;
    AutoClrStrHEX              := CfgTerminal.AutoClrStrHEX;
    AutoClrStrASCII            := CfgTerminal.AutoClrStrASCII;
    CntExpBytes                := CfgTerminal.CntExpBytes;
    AutoExpStr                 := CfgTerminal.StrExp;
    if (CfgTerminal.CaptCh = 1) then
      begin
        CfgTerminal.CaptCh := CfgTerminal.CaptCh and $FFFFFFE;
        isAutoExpStr := True;
        AutoExpStr   := CfgTerminal.Filtr;
      end;

    SepBytes             := CfgTerminal.CntBytesSep;
    SepSymbol            := CfgTerminal.SepSymbolCfg;
    SepSymbol2            := CfgTerminal.SepSymbol2Cfg;
    TimeAutoExpanNoData  := CfgTerminal.TimeAutoExpan;
    isClrLogWhSend       := (CfgTerminal.AutoClearBits and $01) > 0;



  if CfgTerminal.CntBytesAutoClr <= 0 then
    begin
      CntClrBytesLog := 1500000;
    end
  else
    begin
      CntClrBytesLog := CfgTerminal.CntBytesAutoClr;
    end;
/////////////////////////////////////////////////////////

  if not isCmdCfg_2 then
    begin
      for i := 1 to CNT_LIST_CMD do
        begin
          ListsCmd2[i].CmdStr      := CfgTerminal.MainStr;
          ListsCmd2[i].FiltrStr[1] := CfgTerminal.Filtr;
          ListsCmd2[i].isVisTime   := CfgTerminal.addTime;
          ListsCmd2[i].isVisCnt    := CfgTerminal.addCntBytes;

          ListsCmd2[i].isSep0D              := isSep0D;
          ListsCmd2[i].isSep0A              := isSep0A;
          ListsCmd2[i].isSep00              := isSep00;
          ListsCmd2[i].isSep0D0A            := isSep0D0A;
          ListsCmd2[i].isSepTime            := isSepTime;
          ListsCmd2[i].isSepBytes           := isSepBytes;
          ListsCmd2[i].isSepSymbol          := isSepSymbol;
          ListsCmd2[i].isResetFifo          := isResetFifo;
          ListsCmd2[i].isAutoExpandNoInData := isAutoExpandNoInData;
          ListsCmd2[i].isAutoExpStr         := isAutoExpStr;
          ListsCmd2[i].isCntExpBytes        := isCntExpBytes;
          ListsCmd2[i].isExpWin             := isExpWin;
          ListsCmd2[i].isFileSendOK         := isFileSendOK;
          ListsCmd2[i].isAutoClrStrHEX      := isAutoClrStrHEX;
          ListsCmd2[i].isAutoClrStrASCII    := isAutoClrStrASCII;
          ListsCmd2[i].isClrLogWhSend       := isClrLogWhSend;
          ListsCmd2[i].isAddASCII           := isAddASCII;
          ListsCmd2[i].isAddHEX             := isAddHEX;
          ListsCmd2[i].isADDTX              := isADDTX;
          ListsCmd2[i].isAddRX              := isAddRX;
          ListsCmd2[i].isAddIgnFlt          := isAddIgnFlt;
          ListsCmd2[i].isShowMode           := isShowMode;

          ListsCmd2[i].AutoClrStrHEX        := AutoClrStrHEX;
          ListsCmd2[i].AutoClrStrASCII      := AutoClrStrASCII;
          ListsCmd2[i].AutoExpStr           := AutoExpStr;

          ListsCmd2[i].TimeOutAnsRX         := TimeOutAnsRX;
          ListsCmd2[i].CntExpBytes          := CntExpBytes;
          ListsCmd2[i].SepBytes             := SepBytes;
          ListsCmd2[i].SepSymbol            := SepSymbol;
          ListsCmd2[i].TimeAutoExpanNoData  := TimeAutoExpanNoData;
          ListsCmd2[i].CntClrBytesLog       := CntClrBytesLog;

          ListsCmd2[i].isSepBefSymbol1    := isSepBefSymbol1;
          ListsCmd2[i].isSepBefSymbol2    := isSepBefSymbol2;
          ListsCmd2[i].isSepSymbol2       := isSepSymbol2;
          ListsCmd2[i].isAddDec           := isAddDEC;
          ListsCmd2[i].isAddCUST          := isAddCUST;
       end;
    end;

  ReadListCmd(NumListCmd);

/////////////////////////////////////////////////////////////////////////////////
  ParityBox.ItemIndex     := ParityCOM;

  chkAddDate.Checked := isAddDate;
  chkOutNonPrintASCII.Checked := isNoOutNonPrint;
  SetOffNonPrintCh(isNoOutNonPrint);

  grp2.Top                := grpLineSeparator.Top;
  grp2.Left               := grpLineSeparator.Left;
  GroupBox1.Top           := grpLineSeparator.Top;
  GroupBox1.Left          := grpLineSeparator.Left;
  grpEventLog.Top         := grpLineSeparator.Top;
  grpEventLog.Left        := grpLineSeparator.Left;

  PeriodTX.Text           := IntToStr(periodSend);


  if isWriteEvent then
    begin
      CntAtt := 5;
      {$IOChecks off}
      repeat
        NameLogEvent := CfgTerminal.LogDir;
        if (NameLogEvent = '') or (not isEventFile) then
          NameLogEvent := ExtractFilePath(Application.ExeName);

        NameLogEvent := NameLogEvent + 'Events.txt';
        AssignFile(LogEvent, NameLogEvent);
        isEventFile := FileExists(NameLogEvent);
        if not isEventFile then
          Rewrite(LogEvent)
        else
          Append(LogEvent);

        errIO := IOResult;

        if errIO = 0 then
          isEventFile := True;

        Dec(CntAtt);
      until (isEventFile and (errIO = 0)) or (CntAtt = 0);

      if CntAtt = 0 then
        begin
          isWriteEvent := false;
          ShowMessage('Error accessing the log file "Events.txt": ' + IntToStr(errIO));
          WriteLogEvent(Now, 'Error start write log event');
        end;

      {$IOChecks on}
      if CfgTerminal.NameLogEvents = '' then
        WriteLogEvent(Now, 'The log file was created in the program ' + VersionInfo);

      CfgTerminal.NameLogEvents := NameLogEvent;
    end;

  isDisSleepEv := False;
  ChEventWriteInLog.Checked := isWriteEvent;

  BtOpenLogEvents.Enabled := CfgTerminal.NameLogEvents <> '';

  WriteLogEvent(Now, '=====================================');
  WriteLogEvent(Now, 'Start terminal');

  if isWriteEvent then
    EventLog.BorderStyle := bsSingle
  else
    EventLog.BorderStyle := bsNone;

  ChAconnPort.Checked := isAConnectPort;


  Reset(CfgTerminalFile);
  Write(CfgTerminalFile, CfgTerminal);
  CloseFile(CfgTerminalFile);
  tmrAutoConnect.Enabled := isAConnectPort;

  CBModeChange;
  SetFontStyle();

  chk7.Checked := isSavePos;
  tmr3.Enabled := isSavePos;
  tmr4.Enabled := isSavePos;
  tmr5.Enabled := isSavePos;

  if Not isModeDialog then
    begin
      LogPanel.Visible            := false;
      MainPanel.Visible           := false;
      CMainWindow.Height           := CMainWindow.Height + LogPanel.Height + MainPanel.Height;
      SecondWindow.Height         := SecondWindow.Height + LogPanel.Height + MainPanel.Height;
      CMainWindowAdd.Height        := CMainWindowAdd.Height + LogPanel.Height + MainPanel.Height;
      SecondWindowAdd.Height      := SecondWindowAdd.Height + LogPanel.Height + MainPanel.Height;
      MonDialog.Caption := 'Dialog mode';
      MonDialog.Tag     := 1;
    end
  else if isModeDialog then
    begin
      LogPanel.Visible  := true;
      MainPanel.Visible := true;
      CMainWindow.Height   := CMainWindow.Height  ;
      SecondWindow.Height := SecondWindow.Height  ;
      CMainWindowAdd.Height   := CMainWindowAdd.Height  ;
      SecondWindowAdd.Height := SecondWindowAdd.Height ;
      MonDialog.Caption := 'Monitor mode';
      MonDialog.Tag := 0;
    end;


  isCreateFormMain := True;

end;




function TForm1.CalcCsum(Cmd: string; NumCsum : integer; SendMode : TTypeSendMode) : integer;
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
    TmpStr    := Cmd;
    len       := Length(TmpStr);

    iData     := 1;

    if SendMode = SendASCII then
      for i := 1 to len do
        TmpBuf[i] := Ord(TmpStr[i]);

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






function TForm1.ConvAddStr(Data : string; Tail : string; SendMode : TTypeSendMode) : string;
  var
    i      : integer;
    posit  : integer;
    sum    : integer;
    TmpStr : string;
  begin

    if SendMode < SendDEC then
      begin
        for i := 1 to CNT_CSUM do
          begin
            repeat
              posit  := Pos(StrCSum[i], Tail);
              if posit > 0 then
                begin
                  Delete(Tail, posit, Length(StrCSum[i]));
                  Sum := CalcCsum(Data, i, SendMode);
                  if i <> 10 then
                    Insert(IntToHex(Sum, 2), Tail, posit);
                  if i = 10 then //MODBUS
                    begin
                      TmpStr := IntToHex((Sum and $FF), 2) + ' ' +  IntToHex(((Sum shr 8) and $FF), 2);
                      Insert(TmpStr, Tail, posit);
                    end;
                end;
            until posit = 0;
          end;
      end
    else
      Tail := ' ' + Tail;
    result := Tail;
  end;


procedure TForm1.WriteLogSendData(Log : string; SendMode : TTypeSendMode);
begin
  if CfgTerminal.isShowModeLSC = 1 then
    begin
      if SendMode = SendHex then
        begin
          Log := '[H] ' + Log;
        end
      else if SendMode = SendASCII then
        begin
          Log := '[A] ' + Log;
        end
      else if SendMode = SendDEC then
        begin
          Log := '[D] ' + Log;
        end;
    end;
  DataSendLog.WindowLog.Lines.Add(Log);
end;

////////////////////////////////////////////////////////////
procedure SendAddPortData(Data: string; AddData : string; SendMode : TTypeSendMode; port : Integer);
var
  iStrData   : Integer;
  iTxData    : Dword;

  TxDataLog     : string;

  TxDataLogASCII: string;
  TxDataLogHEX: string;
  TxDataLogDEC: string;
  TxDataLogCUST: string;

  DateTimeStr       : string;
  CntBytesStr       : string;
  PortStr, DirStr   : string;
  BeginStr          : string;
  CntBytes          : Dword;
  SymbolCod  : integer;
  LenTxLog   : Dword;
  LenTxSend  : Dword;
  LenData    : Dword;
  i          : Dword;
  LenMain    : Dword;
  strtmp     : string;
  TimeSend   : TDateTime;
  NamePort   : string;
  StrInAddLog: string;
  ColorInAddLog : TColor;
begin
  TxDataLogASCII := '';
  TxDataLogHEX := '';
  TxDataLogDEC := '';
  TxDataLogCUST:= '';
  TimeSend := now;


  case port of
    1..2: NamePort := FormAddPorts.GetNamePort(port - 1);
    3..18: NamePort := FormMultiPort.GetNamePort(port - 2);
  end;

  if SendMode = SendHEX then
    begin
      while ((Length(Data) mod 3) > 0) do
        Data := Data + ' ';
      if (Length(AddData) > 0) then
        if (AddData[1] = ' ') then
          Delete(AddData, 1, 1);
    end;
  LenMain := Length(Data);
  Data   := Data + Form1.ConvAddStr(Data, AddData, SendMode);
  LenData := Length(Data);

  iTxData  := 0;
  iStrData := 1;

  if SendMode = SendASCII then
    begin
      while (iStrData < Lendata + 1) and (iTxData < 65000) do
        begin
          if (Data[iStrData] = '$') and (iStrData > LenMain) then
            begin
              SymbolCod := HexToInt(Data[iStrData + 1]) * 16 + HexToInt(Data[iStrData + 2]);
              TxDataSend[iTxData] := SymbolCod;
              TxDataLog      := TxDataLog      + ChrZ(SymbolCod);
              TxDataLogHEX   := TxDataLogHEX   + IntToHex(TxDataSend[iTxData],2) + ' ';
              TxDataLogASCII := TxDataLogASCII + ChrZ(TxDataSend[iTxData]);
              TxDataLogDEC   := TxDataLogDEC   + IntToStr(TxDataSend[iTxData]) + ' ';
              TxDataLogCUST  := TxDataLogCUST  + ChrCustom(TxDataSend[iTxData]);

              iStrData := iStrData + 3;
            end
          else
            begin
              TxDataSend[iTxData] := Ord(Data[iStrData]);
              TxDataLog := TxDataLog + Data[iStrData];
              TxDataLogHEX   := TxDataLogHEX   + IntToHex(TxDataSend[iTxData],2) + ' ';
              TxDataLogASCII := TxDataLogASCII + ChrZ(TxDataSend[iTxData]);
              TxDataLogDEC   := TxDataLogDEC   + IntToStr(TxDataSend[iTxData]) + ' ';
              TxDataLogCUST  := TxDataLogCUST  + ChrCustom(TxDataSend[iTxData]);
              inc(iStrData);
            end;
          inc(iTxData);
        end;
    end
  else if SendMode = SendHEX then
    begin
      while (iStrData < Lendata + 1) and (iTxData < 65000) do
        begin
          TxDataSend[iTxData] := HexToInt(Data[iStrData]) * 16 + HexToInt(Data[iStrData + 1]);
          TxDataLogHEX   := TxDataLogHEX   + IntToHex(TxDataSend[iTxData],2) + ' ';
          TxDataLogASCII := TxDataLogASCII + ChrZ(TxDataSend[iTxData]);
          TxDataLogDEC   := TxDataLogDEC   + IntToStr(TxDataSend[iTxData]) + ' ';
          TxDataLogCUST  := TxDataLogCUST  + ChrCustom(TxDataSend[iTxData]);

          iStrData := iStrData + 3;
          inc(iTxData);
        end;
      TxDataLog := Data;
    end
  else if SendMode = SendDEC then
    begin
      while (iStrData < Lendata + 1) and (iTxData < 65000) do
        begin
          while(Data[iStrData] = ' ') and (iStrData < Lendata + 1) do
            Inc(iStrData);
          strtmp := '';
          while(Data[iStrData] <> ' ') and (iStrData < Lendata + 1) do
            begin
              strtmp := strtmp + Data[iStrData];
              Inc(iStrData);
            end;
          if strtmp <> '' then
            begin
              try
                TxDataSend[iTxData] := Byte(StrToInt(strtmp)) and $FF;
              Except
                TxDataSend[iTxData] := 0;
              end;
              TxDataLogHEX   := TxDataLogHEX   + IntToHex(TxDataSend[iTxData],2) + ' ';
              TxDataLogASCII := TxDataLogASCII + ChrZ(TxDataSend[iTxData]);
              TxDataLogDEC   := TxDataLogDEC   + IntToStr(TxDataSend[iTxData]) + ' ';
              TxDataLogCUST  := TxDataLogCUST  + ChrCustom(TxDataSend[iTxData]);
              inc(iTxData);
            end;
        end;
      TxDataLog := Data;
    end;

  if (iTxData < 65000) and (iTxData > 0)  then
    begin


      BeginStr := '';

      if ListsCmd2[NumListCmd].isVisPort then
        PortStr  := '[' + Format('%08s', [NamePort])+ ']'
      else
        PortStr := '';

      DateTimeStr := SetTimeStamp(ListsCmd2[NumListCmd].isVisTime, TerminalST.Form1.isAddDate, TimeSend);


      if ListsCmd2[NumListCmd].isVisCnt then
        CntBytesStr := '[' + Format('%03d', [iTxData]) + ']'
      else
        CntBytesStr := '';

      if ListsCmd2[NumListCmd].isVisDir then
        DirStr := '> '
      else
        DirStr := '';

      BeginStr     := PortStr + DateTimeStr + CntBytesStr + DirStr;
      Form1.MemoUpd(Now, BeginStr, TxDataLog, TxDataLogASCII, TxDataLogHEX, TxDataLogDEC, TxDataLogCUST, false, FontColorSend);

      FormPacketsCNT.CheckSubString(TTypeSrcData(port), BeginStr, TxDataLog, DirTx);

      case SendMode of
        SendASCII : StrInAddLog := BeginStr + TxDataLogASCII;
        SendHEX   : StrInAddLog := BeginStr + TxDataLogHEX;
        SendDEC   : StrInAddLog := BeginStr + TxDataLogDEC;
      end;
      ColorInAddLog := FontColorSend;


      case port of
        1 : FormAddPorts.SetSendFromMainForm(@TxDataSend[0],   0, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        2 : FormAddPorts.SetSendFromMainForm(@TxDataSend[0],   1, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        3 : FormMultiPort.SetSendFromMainForm(@TxDataSend[0],  1, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        4 : FormMultiPort.SetSendFromMainForm(@TxDataSend[0],  2, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        5 : FormMultiPort.SetSendFromMainForm(@TxDataSend[0],  3, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        6 : FormMultiPort.SetSendFromMainForm(@TxDataSend[0],  4, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        7 : FormMultiPort.SetSendFromMainForm(@TxDataSend[0],  5, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        8 : FormMultiPort.SetSendFromMainForm(@TxDataSend[0],  6, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        9 : FormMultiPort.SetSendFromMainForm(@TxDataSend[0],  7, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        10: FormMultiPort.SetSendFromMainForm(@TxDataSend[0],  8, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        11: FormMultiPort.SetSendFromMainForm(@TxDataSend[0],  9, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        12: FormMultiPort.SetSendFromMainForm(@TxDataSend[0], 10, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        13: FormMultiPort.SetSendFromMainForm(@TxDataSend[0], 11, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        14: FormMultiPort.SetSendFromMainForm(@TxDataSend[0], 12, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        15: FormMultiPort.SetSendFromMainForm(@TxDataSend[0], 13, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        16: FormMultiPort.SetSendFromMainForm(@TxDataSend[0], 14, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        17: FormMultiPort.SetSendFromMainForm(@TxDataSend[0], 15, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
        18: FormMultiPort.SetSendFromMainForm(@TxDataSend[0], 16, TimeSend, iTxData, StrInAddLog, ColorInAddLog);
      end;



      //
      //for i := 0 to iTxData - 1 do
      //TxDataSend[i]

      //PurgeComm(hCom, PURGE_TXABORT or PURGE_RXABORT or PURGE_TXCLEAR or PURGE_RXCLEAR);
      //for i := 0 to iTxData - 1 do
      //  Inc(BufCntBytesSend[TxDataSend[i]]);
      //  repeat
      //    ClearCommError(hCom, Errors ,@Stat);
      //    if Stat.cbOutQue > 0 then Sleep(1);
      //
      //    until Stat.cbOutQue = 0;
      //      WriteFile(hCom,TxDataSend,iTxData,CntBytes,nil);
      //      if isLogBinFile and isLogBinTx then
      //        for i := 0 to iTxData - 1 do
      //          Write(LogBinFile, TxDataSend[i]);
      //      CntTX := CntTX + iTxData;
      //      if ListsCmd2[NumListCmd].isVisPort then
      //        PortStr  := '[' + Format('%07s', [NamePort])+ ']'
      //      else
      //        PortStr := '';
      //

      //      BeginStr := '';
      //      if ListsCmd2[NumListCmd].isVisTime then
      //        DateTimeStr  := '[' + FormatDateTime('hh:mm:ss:zzz', Now)+ ']'
      //      else
      //        DateTimeStr := '';

      //      if ListsCmd2[NumListCmd].isVisCnt then
      //        CntBytesStr := '[' + Format('%03d', [iTxData]) + ']'
      //      else
      //        CntBytesStr := '';

      //      if ListsCmd2[NumListCmd].isVisDir then
      //        DirStr := '> '
      //      else
      //        DirStr := '';

      //      BeginStr     := PortStr + DateTimeStr + CntBytesStr + DirStr;

      //      MemoUpd(BeginStr, TxDataLog, TxDataLogASCII, TxDataLogHEX, TxDataLogDEC, TxDataLogCUST, false, FontColorSend);
      //      if isListSendCmd then
      //        begin
      //          WriteLogSendData(TxDataLog, SendMode);
      //        end;
      //      inc(Stats.DataSend);
      //      LSend.Caption := 'Send: ' + IntToStr(Stats.DataSend);
    end
  else
    begin
      ShowMessage('Error packet');
    end;
end;
////////////////////////////////////////////////////////////



function SendFile(nameFile: string) : Boolean;
var
//  BufSendCmd :array[0..MAX_SIZE_FILE_DATA-1] of Byte;
//  BufPartSendCmd : array[0..MAX_PART_SEND_FILE-1] of Byte;


  DateTimeStr, CntBytesStr, TxDataLog, PortStr, DirStr : string;
  i, iTmp, numPart, sizeFile : cardinal;
  CntBytes, Errors: DWord;
  FileData : File of byte;
  TmpPart  : cardinal;
  cntRead  : Cardinal;

begin

  AssignFile(FileData, nameFile);
  try
  Reset(FileData);
  i := 0;

  if ListsCmd2[NumListCmd].isVisPort then
    PortStr  := '[' + Format('%08s', [NamePort])+ ']'
  else
    PortStr := '';


  DateTimeStr := SetTimeStamp(ListsCmd2[NumListCmd].isVisTime, TerminalST.Form1.isAddDate, Now);


  if ListsCmd2[NumListCmd].isVisDir then
    DirStr := '> '
  else
    DirStr := '';

  TxDataLog    :='Read file: ' + nameFile + '...';

  Form1.MemoUpd(Now, PortStr + DateTimeStr + DirStr, TxDataLog, '', '', '', '', false, FontColorSend);

  cntRead := 0;
  i := 0;
  repeat
    BlockRead(FileData, BufTmp, BUF_TMP_SIZE, cntRead);
    if cntRead > 0 then
      begin
        iTmp := 0;
        while (iTmp < cntRead) and (i < MAX_SIZE_FILE_DATA) do
          begin
            BufSendCmd[i] := BufTmp[iTmp];
            inc(i);
            inc(iTmp);
          end;
      end
  until (Eof(FileData)) or (cntRead < BUF_TMP_SIZE) or (i = MAX_SIZE_FILE_DATA);

  sizeFile := i;

  CloseFile(FileData);


  if ListsCmd2[NumListCmd].isVisPort then
    PortStr  := '[' + Format('%08s', [NamePort])+ ']'
  else
    PortStr := '';

  DateTimeStr := SetTimeStamp(ListsCmd2[NumListCmd].isVisTime, TerminalST.Form1.isAddDate, Now);


  if ListsCmd2[NumListCmd].isVisCnt then
    CntBytesStr := '[' + Format('%d', [sizeFile]) + ']'
  else
    CntBytesStr := '';

  if ListsCmd2[NumListCmd].isVisDir then
    DirStr := '> '
  else
    DirStr := '';


  if sizeFile = MAX_SIZE_FILE_DATA then
    begin
      TxDataLog    := 'File size exceeded 16 MB ';
      Form1.MemoUpd(Now, PortStr + DateTimeStr + CntBytesStr + DirStr, TxDataLog, '', '', '', '', false, FontColorSend);
    end;


  TxDataLog    := 'Sending file: ' + nameFile + '...';
  Form1.MemoUpd(Now, PortStr + DateTimeStr + CntBytesStr + DirStr, TxDataLog, '', '', '', '', false, FontColorSend);

  PurgeComm(hCom, PURGE_TXABORT or PURGE_RXABORT or PURGE_TXCLEAR or PURGE_RXCLEAR);

  repeat
    ClearCommError(hCom, Errors,@Stat);
    if Stat.cbOutQue > 0 then Sleep(1);
  until Stat.cbOutQue = 0;

  i := 0;
  iTmp := 0;
  while (i < sizeFile) do
    begin
      BufPartSendCmd[iTmp] := BufSendCmd[i];
      inc(i);
      inc(iTmp);
      if (iTmp = MAX_PART_SEND_FILE) or (i = sizeFile) then
        begin
          WriteFile(hCom,BufPartSendCmd,iTmp,CntBytes,nil);
          CntTX := CntTX + iTmp;
          iTmp := 0;
        end;
    end;

 if ListsCmd2[NumListCmd].isVisPort then
    PortStr  := '[' + Format('%08s', [NamePort])+ ']'
  else
    PortStr := '';

 DateTimeStr := SetTimeStamp(ListsCmd2[NumListCmd].isVisTime, TerminalST.Form1.isAddDate, Now);

 if ListsCmd2[NumListCmd].isVisCnt then
    CntBytesStr := '[' + Format('%d', [sizeFile]) + ']'
 else
    CntBytesStr := '';

  if ListsCmd2[NumListCmd].isVisDir then
    DirStr := '> '
  else
    DirStr := '';


  TxDataLog    := 'File send OK ';
  Form1.MemoUpd(Now, PortStr + DateTimeStr + CntBytesStr + DirStr, TxDataLog, '', '', '', '', false, FontColorSend);

  Except
    DateTimeStr := SetTimeStamp(ListsCmd2[NumListCmd].isVisTime, TerminalST.Form1.isAddDate, Now);


    if ListsCmd2[NumListCmd].isVisDir then
    DirStr := '> '
      else
    DirStr := '';

    TxDataLog    := 'File access error or file does not exist';
    Form1.MemoUpd(Now, DateTimeStr + DirStr, TxDataLog, '', '', '', '', false, FontColorSend);
  end;
  Result := True;
end;


function TForm1.SendPortData(Data: string; AddData : string; SendMode : TTypeSendMode; isSaveSend : boolean) : boolean;
var
  iStrData   : Integer;
  iTxData    : Dword;

  indexScip  : integer;
  TxDataLog     : string;
  TxDataLogASCII: string;
  TxDataLogHEX: string;
  TxDataLogDEC: string;
  TxDataLogCUST: string;

  DateTimeStr   : string;
  CntBytesStr   : string;
  PortStr, DirStr       : string;
  BeginStr      : string;
  CntBytes   : Dword;
  SymbolCod  : integer;
  Errors     : DWORD;
  LenTxLog   : Dword;
  LenTxSend  : Dword;
  LenData    : Dword;
  i          : Dword;
  LenMain    : Dword;
  rev        : Byte;
  strtmp     : string;
  listNum    : Integer;
  delay      : Integer;
  lenDelay, len   : Integer;
  strdelay   : string;
begin
  if isSendComProcess = false then
    begin
      if SendMode = SendHEX then
        begin
          Data := Trim(Data);
          AddData := Trim(AddData);
        end;

      TxDataLogASCII := '';
      TxDataLogHEX := '';
      TxDataLogDEC := '';
      TxDataLogCUST:= '';


      if isClrLogWhSend then
        begin
          CMainWindow.Clear;
          CMainWindowAdd.Clear;
          CntDataLog := 0;
          CntBytesAdd := 0;
        end;
      isSendComProcess := true;

      delay := 0;

     if isPeriodSend and (Pos('[delay:]', Data) = 1) then
       begin
         lendelay := Length(Data);
         strdelay := '';
         len := 9;
         while (len <= lendelay) do
           begin
             strdelay := strdelay + Data[len];
             Inc(len);
           end;
         try
           delay := StrToInt(strdelay);
         except
           delay := 0;
         end;
           TimerPeriod.Enabled := False;
           tmrDelay.Enabled := False;
           if delay > 35 then
             tmrDelay.Interval := delay - 32
           else
             tmrDelay.Interval := 2;
           tmrDelay.Enabled  := True;
           //PeriodTX.Text := IntToStr(delay);
           //CntMs := MilliSecondOfTheWeek(Now) + delay;     q
           //Sleep(delay);                        a
           PeriodTX.Text := '0';
         end
       else


      if (isOpenComPort = true) and (Length(Data + AddData) > 0) then
        begin
          indexScip := CNT_LIST_OLDCMD;
          if (Length(Data) < 255) and (isAddListCmd = false) and (not isSendFile) and (isSaveSend) and (not isByteByByte) then
            begin
              for i:= 1 to CNT_LIST_OLDCMD do
                if OldCommand[i].OldCmd = Data then
                  indexScip := i;

                for i:= indexScip downto 2 do
                  OldCommand[i].OldCmd := OldCommand[i-1].OldCmd;
                OldCommand[1].OldCmd := Data;

                if isOldCmdMode = true then
                  ReadOldCmd();
            end;




          if Pos('[sendcmdlist:]', Data) = 1 then
            begin
              try
                listNum := StrToInt(Data[15] + Data[16] + Data[17]);
              except
                listNum := 0;
              end;
            end;

          if listNum > 0 then
            begin
              NumSendList := listNum;
              tmrOpenList.Enabled := True;
            end
          else if Pos('[sendfile:]', Data) = 1 then
            begin
              DateTimeStr := SetTimeStamp(ListsCmd2[NumListCmd].isVisTime, TerminalST.Form1.isAddDate, Now);


              if ListsCmd2[NumListCmd].isVisDir then
                DirStr := '> '
              else
                DirStr := '';

              TxDataLog    := Data;
              Form1.MemoUpd(Now, DateTimeStr + DirStr, TxDataLog, TxDataLog, TxDataLog, TxDataLog , TxDataLog, false, FontColorSend);
              Delete(Data, 1, 11);
              SendFile(Data);
            end
          else
            begin
              if SendMode = SendHEX then
                begin
                  while ((Length(Data) mod 3) > 0) do
                    Data := Data + ' ';
                end;
              LenMain := Length(Data);


              Data   := Data + ConvAddStr(Data, AddData, SendMode);
              LenData := Length(Data);

              iTxData  := 0;
              iStrData := 1;

              if SendMode = SendASCII then
                begin
                  while (iStrData < Lendata + 1) and (iTxData < 65000) do
                    begin
                      if (Data[iStrData] = '$') and (iStrData > LenMain) then
                        begin
                          SymbolCod := HexToInt(Data[iStrData + 1]) * 16 + HexToInt(Data[iStrData + 2]);
                          TxDataSend[iTxData] := SymbolCod;
                          if isInvert then
                            TxDataSend[iTxData] := TxDataSend[iTxData] xor $FF;
                          if isRevers then
                            begin
                              rev := TxDataSend[iTxData];
                              rev := ((rev and $55) shl 1) or ((rev and $AA) shr 1);
                              rev := ((rev and $CC) shr 2) or ((rev and $33) shl 2);
                              rev := (rev shr 4) or (rev shl 4);
                              TxDataSend[iTxData] := rev;
                            end;

                          TxDataLog      := TxDataLog      + ChrZ(SymbolCod);
                          TxDataLogHEX   := TxDataLogHEX   + IntToHex(TxDataSend[iTxData],2) + ' ';
                          TxDataLogASCII := TxDataLogASCII + ChrZ(TxDataSend[iTxData]);
                          TxDataLogDEC   := TxDataLogDEC   + IntToStr(TxDataSend[iTxData]) + ' ';
                          TxDataLogCUST  := TxDataLogCUST  + ChrCustom(TxDataSend[iTxData]);

                          iStrData := iStrData + 3;
                        end
                      else
                        begin
                          TxDataSend[iTxData] := Ord(Data[iStrData]);
                          if isInvert then
                            TxDataSend[iTxData] := TxDataSend[iTxData] xor $FF;
                          if isRevers then
                            begin
                              rev := TxDataSend[iTxData];
                              rev := ((rev and $55) shl 1) or ((rev and $AA) shr 1);
                              rev := ((rev and $CC) shr 2) or ((rev and $33) shl 2);
                              rev := (rev shr 4) or (rev shl 4);
                              TxDataSend[iTxData] := rev;
                            end;
                          TxDataLog := TxDataLog + ChrZ(Ord(Data[iStrData]));
                          TxDataLogHEX   := TxDataLogHEX   + IntToHex(TxDataSend[iTxData],2) + ' ';
                          TxDataLogASCII := TxDataLogASCII + ChrZ(TxDataSend[iTxData]);
                          TxDataLogDEC   := TxDataLogDEC   + IntToStr(TxDataSend[iTxData]) + ' ';
                          TxDataLogCUST  := TxDataLogCUST  + ChrCustom(TxDataSend[iTxData]);

                          inc(iStrData);
                        end;
                      inc(iTxData);
                    end;
                end
              else if SendMode = SendHEX then
                begin
                  while (iStrData < Lendata + 1) and (iTxData < 65000) do
                    begin
                      TxDataSend[iTxData] := HexToInt(Data[iStrData]) * 16 + HexToInt(Data[iStrData + 1]);
                      if isInvert then
                        TxDataSend[iTxData] := TxDataSend[iTxData] xor $FF;
                      if isRevers then
                        begin
                          rev := TxDataSend[iTxData];
                          rev := ((rev and $55) shl 1) or ((rev and $AA) shr 1);
                          rev := ((rev and $CC) shr 2) or ((rev and $33) shl 2);
                          rev := (rev shr 4) or (rev shl 4);
                          TxDataSend[iTxData] := rev;
                        end;

                      TxDataLogHEX   := TxDataLogHEX   + IntToHex(TxDataSend[iTxData],2) + ' ';
                      TxDataLogASCII := TxDataLogASCII + ChrZ(TxDataSend[iTxData]);
                      TxDataLogDEC   := TxDataLogDEC   + IntToStr(TxDataSend[iTxData]) + ' ';
                      TxDataLogCUST  := TxDataLogCUST  + ChrCustom(TxDataSend[iTxData]);

                      iStrData := iStrData + 3;
                      inc(iTxData);
                    end;
                  TxDataLog := Data;
                end
              else if SendMode = SendDEC then
                begin
                  while (iStrData < Lendata + 1) and (iTxData < 65000) do
                    begin
                      while(Data[iStrData] = ' ') and (iStrData < Lendata + 1) do
                        Inc(iStrData);
                      strtmp := '';
                      while(Data[iStrData] <> ' ') and (iStrData < Lendata + 1) do
                        begin
                          strtmp := strtmp + Data[iStrData];
                          Inc(iStrData);
                        end;
                      if strtmp <> '' then
                        begin
                          try
                            TxDataSend[iTxData] := Byte(StrToInt(strtmp)) and $FF;
                          Except
                            TxDataSend[iTxData] := 0;
                          end;
                          if isInvert then
                            TxDataSend[iTxData] := TxDataSend[iTxData] xor $FF;
                          if isRevers then
                            begin
                              rev := TxDataSend[iTxData];
                              rev := ((rev and $55) shl 1) or ((rev and $AA) shr 1);
                              rev := ((rev and $CC) shr 2) or ((rev and $33) shl 2);
                              rev := (rev shr 4) or (rev shl 4);
                              TxDataSend[iTxData] := rev;
                            end;

                          TxDataLogHEX   := TxDataLogHEX   + IntToHex(TxDataSend[iTxData],2) + ' ';
                          TxDataLogASCII := TxDataLogASCII + ChrZ(TxDataSend[iTxData]);
                          TxDataLogDEC   := TxDataLogDEC   + IntToStr(TxDataSend[iTxData]) + ' ';
                          TxDataLogCUST  := TxDataLogCUST  + ChrCustom(TxDataSend[iTxData]);
                          inc(iTxData);
                        end;
                    end;
                  TxDataLog := Data;
                end;




              if (iTxData < 65000) and (iTxData > 0)  then
                begin
                  PurgeComm(hCom, PURGE_TXABORT or PURGE_RXABORT or PURGE_TXCLEAR or PURGE_RXCLEAR);

                  for i := 0 to iTxData - 1 do
                    Inc(BufCntBytesSend[TxDataSend[i]]);

                  repeat
                    ClearCommError(hCom, Errors ,@Stat);
                    if Stat.cbOutQue > 0 then Sleep(1);
                  until Stat.cbOutQue = 0;

                  WriteFile(hCom,TxDataSend,iTxData,CntBytes,nil);

                  if isLogBinFile and isLogBinTx then
                    for i := 0 to iTxData - 1 do
                      Write(LogBinFile, TxDataSend[i]);

                  CntTX := CntTX + iTxData;
              //StaticText3.Caption := 'Tx: '+IntToStr(CntTX)+' Rec: '+IntToStr(CntRXRead) + ' Out: ' + IntToStr(CntRXOut);
                  if ListsCmd2[NumListCmd].isVisPort then
                    PortStr  := '[' + Format('%08s', [NamePort])+ ']'
                  else
                    PortStr := '';


                  BeginStr := '';
                  DateTimeStr := SetTimeStamp(ListsCmd2[NumListCmd].isVisTime, TerminalST.Form1.isAddDate, Now);


                  if ListsCmd2[NumListCmd].isVisCnt then
                    CntBytesStr := '[' + Format('%03d', [iTxData]) + ']'
                  else
                    CntBytesStr := '';

                  if ListsCmd2[NumListCmd].isVisDir then
                    DirStr := '> '
                  else
                    DirStr := '';

                  BeginStr     := PortStr + DateTimeStr + CntBytesStr + DirStr;

                  MemoUpd(Now, BeginStr, TxDataLog, TxDataLogASCII, TxDataLogHEX, TxDataLogDEC, TxDataLogCUST, false, FontColorSend);
                  FormPacketsCNT.CheckSubString(SrcPortMain, BeginStr, TxDataLog, DirTx);
                  if isListSendCmd then
                    begin
                      WriteLogSendData(TxDataLog, SendMode);
                    end;
                  inc(Stats.DataSend);
                  LSend.Caption := 'Send: ' + IntToStr(Stats.DataSend);
                end
              else
                begin
                  ShowMessage('Error packet');
                end;
            end;
        end
      else if not isOpenComPort then
        begin
          OpenPortError.ShowModal;
          BruteForce.TimerSend.Enabled := false;
          BruteForce.BTStart.Caption   := '>';
          //ShowMessage('Открой порт!');
        end;
    isSendComProcess := false;
  end;
  result := true;
end;







procedure TForm1.ButtonCmdAddMacrosClick(Cmd : string);
begin
  CmdStr := Cmd;

  if isWhChSend = true then
    begin
      SendPortData(CmdStr, AddStrCmd.Text, SendMode, true);
      if isModeDialog then
        ActiveControl := BtSend;
    end
  else
    begin
      MainStrCmd.Text := CmdStr;
      if isModeDialog then
        ActiveControl := MainStrCmd;
    end;
end;


procedure TForm1.ButtonCmdClick(Sender: TObject);
begin
  CmdStr := ListsCmd2[NumListCmd].CmdData[(Sender as TButton).Tag];

  if isWhChSend = true then
    begin
      SendPortData(CmdStr, AddStrCmd.Text, SendMode, true);
      if isModeDialog then
        ActiveControl := BtSend;
    end
  else
    begin
      MainStrCmd.Text := CmdStr;
      if isModeDialog then
        ActiveControl := MainStrCmd;
    end;  
end;

procedure TForm1.ButtonCmdHelp(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var numButton : integer;
    i         : integer;
begin
  numButton := (Sender as TButton).Tag;
  for i := 1 to 12 do
    STH[i].Caption := ListsCmd2[NumListCmd].NameHelp[numButton, i];
end;

procedure TForm1.EditCmdHelp(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var numButton : integer;
    i         : integer;
begin
  numButton := (Sender as TEdit).Tag;
  for i := 1 to 12 do
    STH[i].Caption := ListsCmd2[NumListCmd].NameHelp[numButton, i];
end;

procedure TForm1.ReadListCmd(NumList : integer);
var
  i : integer;
  Jtmp : array[1..48] of Word;
begin

  SendMode := ListsCmd2[NumList].SendMode;
  ReadMode := ListsCmd2[NumList].ReadMode;

  cbbSendMode.ItemIndex := Integer(SendMode);
  cbbReadMode.ItemIndex := Integer(ReadMode);


  ChVisPort.Checked        := ListsCmd2[NumList].isVisPort;
  VisTime.Checked          := ListsCmd2[NumList].isVisTime;
  CntBytesBox.Checked      := ListsCmd2[NumList].isVisCnt;
  ChHK.Checked             := ListsCmd2[NumList].isUseHotKey;


  isSep0D               := ListsCmd2[NumList].isSep0D;
  isSep0A               := ListsCmd2[NumList].isSep0A;
  isSep00               := ListsCmd2[NumList].isSep00;
  isSep0D0A             := ListsCmd2[NumList].isSep0D0A;
  isSepTime             := ListsCmd2[NumList].isSepTime;
  isSepBytes            := ListsCmd2[NumList].isSepBytes;
  isSepSymbol           := ListsCmd2[NumList].isSepSymbol;

  isSepBefSymbol1     := ListsCmd2[NumList].isSepBefSymbol1;
  isSepBefSymbol2     := ListsCmd2[NumList].isSepBefSymbol2;

  isResetFifo           := ListsCmd2[NumList].isResetFifo;
  isAutoExpandNoInData  := ListsCmd2[NumList].isAutoExpandNoInData;
  isAutoExpStr          := ListsCmd2[NumList].isAutoExpStr;
  isCntExpBytes         := ListsCmd2[NumList].isCntExpBytes;
  isExpWin              := ListsCmd2[NumList].isExpWin;
  isFileSendOK          := ListsCmd2[NumList].isFileSendOK;
  isAutoClrStrHEX       := ListsCmd2[NumList].isAutoClrStrHEX;
  isAutoClrStrASCII     := ListsCmd2[NumList].isAutoClrStrASCII;
  AutoClrStrHEX         := ListsCmd2[NumList].AutoClrStrHEX;
  AutoClrStrASCII       := ListsCmd2[NumList].AutoClrStrASCII;

  isClrLogWhSend        := ListsCmd2[NumList].isClrLogWhSend;
  isAddASCII            := ListsCmd2[NumList].isAddASCII;
  isAddHEX              := ListsCmd2[NumList].isAddHEX;
  isADDTX               := ListsCmd2[NumList].isADDTX;
  isAddRX               := ListsCmd2[NumList].isAddRX;
  isAddIgnFlt           := ListsCmd2[NumList].isAddIgnFlt;
  isShowMode            := ListsCmd2[NumList].isShowMode;
  isAddDec              := ListsCmd2[NumList].isAddDec;
  isAddCUST             := ListsCmd2[NumList].isAddCUST;


  AutoExpStr            := ListsCmd2[NumList].AutoExpStr;

  TimeOutAnsRX          := ListsCmd2[NumList].TimeOutAnsRX;
  CntExpBytes           := ListsCmd2[NumList].CntExpBytes;
  SepBytes              := ListsCmd2[NumList].SepBytes;
  SepSymbol             := ListsCmd2[NumList].SepSymbol;
  SepSymbol2             := ListsCmd2[NumList].SepSymbol2;
  TimeAutoExpanNoData   := ListsCmd2[NumList].TimeAutoExpanNoData;
  CntClrBytesLog        := ListsCmd2[NumList].CntClrBytesLog;

  SepBefSymbol1       := ListsCmd2[NumList].SepBefSymbol1;
  SepBefSymbol2       := ListsCmd2[NumList].SepBefSymbol2;
   isSepSymbol2         := ListsCmd2[NumList].isSepSymbol2;

  isSepAftSeq1_4         := ListsCmd2[NumList].isSepAftSeq1_4;
  isSepAftSeq1_3         := ListsCmd2[NumList].isSepAftSeq1_3;
  isSepAftSeq1_2         := ListsCmd2[NumList].isSepAftSeq1_2;

  isSepAftSeq2_4         := ListsCmd2[NumList].isSepAftSeq2_4;
  isSepAftSeq2_3         := ListsCmd2[NumList].isSepAftSeq2_3;
  isSepAftSeq2_2         := ListsCmd2[NumList].isSepAftSeq2_2;




  SepAftByte1_4_1 := (ListsCmd2[NumList].SeqSymbols1_4 shr 24) and $FF;
  SepAftByte1_4_2 := (ListsCmd2[NumList].SeqSymbols1_4 shr 16) and $FF;
  SepAftByte1_4_3 := (ListsCmd2[NumList].SeqSymbols1_4 shr 8) and $FF;
  SepAftByte1_4_4 := (ListsCmd2[NumList].SeqSymbols1_4 shr 0) and $FF;

  SepAftByte1_3_1 := (ListsCmd2[NumList].SeqSymbols1_3 shr 24) and $FF;
  SepAftByte1_3_2 := (ListsCmd2[NumList].SeqSymbols1_3 shr 16) and $FF;
  SepAftByte1_3_3 := (ListsCmd2[NumList].SeqSymbols1_3 shr 8) and $FF;
  //SepAftByte4_4 := (ListsCmd2[NumList].SeqSymbols4 shr 0) and $FF;

  SepAftByte1_2_1 := (ListsCmd2[NumList].SeqSymbols1_2 shr 24) and $FF;
  SepAftByte1_2_2 := (ListsCmd2[NumList].SeqSymbols1_2 shr 16) and $FF;
  //SepAftByte4_3 := (ListsCmd2[NumList].SeqSymbols4 shr 8) and $FF;
  //SepAftByte4_4 := (ListsCmd2[NumList].SeqSymbols4 shr 0) and $FF;

  SepAftByte2_4_1 := (ListsCmd2[NumList].SeqSymbols2_4 shr 24) and $FF;
  SepAftByte2_4_2 := (ListsCmd2[NumList].SeqSymbols2_4 shr 16) and $FF;
  SepAftByte2_4_3 := (ListsCmd2[NumList].SeqSymbols2_4 shr 8) and $FF;
  SepAftByte2_4_4 := (ListsCmd2[NumList].SeqSymbols2_4 shr 0) and $FF;

  SepAftByte2_3_1 := (ListsCmd2[NumList].SeqSymbols2_3 shr 24) and $FF;
  SepAftByte2_3_2 := (ListsCmd2[NumList].SeqSymbols2_3 shr 16) and $FF;
  SepAftByte2_3_3 := (ListsCmd2[NumList].SeqSymbols2_3 shr 8) and $FF;
  //SepAftByte4_4 := (ListsCmd2[NumList].SeqSymbols4 shr 0) and $FF;

  SepAftByte2_2_1 := (ListsCmd2[NumList].SeqSymbols2_2 shr 24) and $FF;
  SepAftByte2_2_2 := (ListsCmd2[NumList].SeqSymbols2_2 shr 16) and $FF;
  //SepAftByte4_3 := (ListsCmd2[NumList].SeqSymbols4 shr 8) and $FF;
  //SepAftByte4_4 := (ListsCmd2[NumList].SeqSymbols4 shr 0) and $FF;



  edt100.Text := IntToHex(SepAftByte1_4_1, 2);
  edt101.Text := IntToHex(SepAftByte1_4_2, 2);
  edt102.Text := IntToHex(SepAftByte1_4_3, 2);
  edt103.Text := IntToHex(SepAftByte1_4_4, 2);

  edt2.Text := IntToHex(SepAftByte1_3_1, 2);
  edt99.Text := IntToHex(SepAftByte1_3_2, 2);
  edt104.Text := IntToHex(SepAftByte1_3_3, 2);


  edt105.Text := IntToHex(SepAftByte1_2_1, 2);
  edt106.Text := IntToHex(SepAftByte1_2_2, 2);


  chk1.Checked             := isSepAftSeq1_4;
  chk2.Checked             := isSepAftSeq1_3;
  CheckBox4.Checked        := isSepAftSeq1_2;

  ////////////
  edt107.Text := IntToHex(SepAftByte2_4_1, 2);
  edt108.Text := IntToHex(SepAftByte2_4_2, 2);
  edt109.Text := IntToHex(SepAftByte2_4_3, 2);
  edt110.Text := IntToHex(SepAftByte2_4_4, 2);

  edt111.Text := IntToHex(SepAftByte2_3_1, 2);
  edt112.Text := IntToHex(SepAftByte2_3_2, 2);
  edt113.Text := IntToHex(SepAftByte2_3_3, 2);


  edt114.Text := IntToHex(SepAftByte2_2_1, 2);
  edt115.Text := IntToHex(SepAftByte2_2_2, 2);


  chk3.Checked        := isSepAftSeq2_4;
  chk4.Checked        := isSepAftSeq2_3;
  chk5.Checked        := isSepAftSeq2_2;

  /////////////







  ChSep0D.Checked          := isSep0D;
  ChSep0A.Checked          := isSep0A;
  ChSep00.Checked          := isSep00;
  ChSep0D0A.Checked        := isSep0D0A;
  ChSepTime.Checked        := isSepTime;
  ChSepCnt.Checked         := isSepBytes;
  ChSepSymbol.Checked      := isSepSymbol;        //ddddddddd
  CheckBox3.Checked        := isSepSymbol2;
  ResetFIFO.Checked        := isResetFifo;
  ChCBNoData.Checked       := isAutoExpandNoInData;
  ChAexpStr.Checked        := isAutoExpStr;
  ChCntExpBytes.Checked    := isCntExpBytes;
  ChExpOnly.Checked        := isExpWin;
  ChFileSendEv.Checked     := isFileSendOK;

  ChCBBefByte1.Checked     := isSepBefSymbol1;
  ChCBBefByte2.Checked     := isSepBefSymbol2;

  EdtAutoClrStrHex.Text    := AutoClrStrHEX;
  EdtAutoClrStrAscii.Text  := AutoClrStrASCII;
  ChClrLogStrHex.Checked   := isAutoClrStrHEX;
  ChClrLogStrAscii.Checked := isAutoClrStrASCII;
  ChWhSendClr.Checked     := isClrLogWhSend;
  ChAddASCII.Checked      := isAddASCII;
  ChAddHEX.Checked        := isAddHEX;
  ChAddTX.Checked         := isAddTX;
  ChAddRX.Checked         := isAddRX;
  CheckBox1.Checked       := isAddIgnFlt;
  CheckBox2.Checked       := isShowMode;
  chkAddDec.Checked       := isAddDEC;
  chAddCustom.Checked     := isAddCUST;
  EdtAExpStr.Text         := AutoExpStr;
  EdtPauseRx.Text         := IntToStr(TimeOutAnsRX);
  EdtCntExpBytes.Text     := IntToStr(CntExpBytes);
  EdtCntSep.Text          := IntToStr(SepBytes);
  ud2.Position            := SepBytes;
  EdtSymAdd.Text          := IntToHex(SepSymbol, 2);
  Edt98.Text              := IntToHex(SepSymbol2, 2);

  EdtNoData.Text          := IntToStr(TimeAutoExpanNoData);
  EdtCntClr.Text          := IntToStr(CntClrBytesLog);

  EdtBefSym1.Text         := IntToHex(SepBefSymbol1, 2);


  EdtBefSym2.Text         := IntToHex(SepBefSymbol2, 2);

  CntCmpLvl.Caption       := 'Match cnt ' + '"' + FiltrLog.Text + '" : 0';

  HotKey[1] := (ListsCmd2[NumList].HK1_4 shr 0) and $FF;
  HotKey[2] := (ListsCmd2[NumList].HK1_4 shr 8) and $FF;
  HotKey[3] := (ListsCmd2[NumList].HK1_4 shr 16) and $FF;
  HotKey[4] := (ListsCmd2[NumList].HK1_4 shr 24) and $FF;

  HotKey[5] := (ListsCmd2[NumList].HK5_8 shr 0) and $FF;
  HotKey[6] := (ListsCmd2[NumList].HK5_8 shr 8) and $FF;
  HotKey[7] := (ListsCmd2[NumList].HK5_8 shr 16) and $FF;
  HotKey[8] := (ListsCmd2[NumList].HK5_8 shr 24) and $FF;

  HotKey[9] := (ListsCmd2[NumList].HK9_12 shr 0) and $FF;
  HotKey[10] := (ListsCmd2[NumList].HK9_12 shr 8) and $FF;
  HotKey[11] := (ListsCmd2[NumList].HK9_12 shr 16) and $FF;
  HotKey[12] := (ListsCmd2[NumList].HK9_12 shr 24) and $FF;

  HotKey[13] := (ListsCmd2[NumList].HK13_16 shr 0) and $FF;
  HotKey[14] := (ListsCmd2[NumList].HK13_16 shr 8) and $FF;
  HotKey[15] := (ListsCmd2[NumList].HK13_16 shr 16) and $FF;
  HotKey[16] := (ListsCmd2[NumList].HK13_16 shr 24) and $FF;

  HotKey[17] := (ListsCmd2[NumList].HK17_20 shr 0) and $FF;
  HotKey[18] := (ListsCmd2[NumList].HK17_20 shr 8) and $FF;
  HotKey[19] := (ListsCmd2[NumList].HK17_20 shr 16) and $FF;
  HotKey[20] := (ListsCmd2[NumList].HK17_20 shr 24) and $FF;

  HotKey[21] := (ListsCmd2[NumList].HK21_24 shr 0) and $FF;
  HotKey[22] := (ListsCmd2[NumList].HK21_24 shr 8) and $FF;
  HotKey[23] := (ListsCmd2[NumList].HK21_24 shr 16) and $FF;
  HotKey[24] := (ListsCmd2[NumList].HK21_24 shr 24) and $FF;

  HotKey[25] := (ListsCmd2[NumList].HK25_28 shr 0) and $FF;
  HotKey[26] := (ListsCmd2[NumList].HK25_28 shr 8) and $FF;
  HotKey[27] := (ListsCmd2[NumList].HK25_28 shr 16) and $FF;
  HotKey[28] := (ListsCmd2[NumList].HK25_28 shr 24) and $FF;

  HotKey[29] := (ListsCmd2[NumList].HK29_32 shr 0) and $FF;
  HotKey[30] := (ListsCmd2[NumList].HK29_32 shr 8) and $FF;
  HotKey[31] := (ListsCmd2[NumList].HK29_32 shr 16) and $FF;
  HotKey[32] := (ListsCmd2[NumList].HK29_32 shr 24) and $FF;

  HotKey[33] := (ListsCmd2[NumList].HK33_36 shr 0) and $FF;
  HotKey[34] := (ListsCmd2[NumList].HK33_36 shr 8) and $FF;
  HotKey[35] := (ListsCmd2[NumList].HK33_36 shr 16) and $FF;
  HotKey[36] := (ListsCmd2[NumList].HK33_36 shr 24) and $FF;

  HotKey[37] := (ListsCmd2[NumList].HK37_40 shr 0) and $FF;
  HotKey[38] := (ListsCmd2[NumList].HK37_40 shr 8) and $FF;
  HotKey[39] := (ListsCmd2[NumList].HK37_40 shr 16) and $FF;
  HotKey[40] := (ListsCmd2[NumList].HK37_40 shr 24) and $FF;

  HotKey[41] := (ListsCmd2[NumList].HK41_44 shr 0) and $FF;
  HotKey[42] := (ListsCmd2[NumList].HK41_44 shr 8) and $FF;
  HotKey[43] := (ListsCmd2[NumList].HK41_44 shr 16) and $FF;
  HotKey[44] := (ListsCmd2[NumList].HK41_44 shr 24) and $FF;

  HotKey[45] := (ListsCmd2[NumList].HK45_48 shr 0) and $FF;
  HotKey[46] := (ListsCmd2[NumList].HK45_48 shr 8) and $FF;
  HotKey[47] := (ListsCmd2[NumList].HK45_48 shr 16) and $FF;
  HotKey[48] := (ListsCmd2[NumList].HK45_48 shr 24) and $FF;

  Jtmp[ 1] := (ListsCmd2[NumList].J01_02 shr  0) and $FFFF;
  Jtmp[ 2] := (ListsCmd2[NumList].J01_02 shr 16) and $FFFF;
  Jtmp[ 3] := (ListsCmd2[NumList].J03_04 shr  0) and $FFFF;
  Jtmp[ 4] := (ListsCmd2[NumList].J03_04 shr 16) and $FFFF;
  Jtmp[ 5] := (ListsCmd2[NumList].J05_06 shr  0) and $FFFF;
  Jtmp[ 6] := (ListsCmd2[NumList].J05_06 shr 16) and $FFFF;
  Jtmp[ 7] := (ListsCmd2[NumList].J07_08 shr  0) and $FFFF;
  Jtmp[ 8] := (ListsCmd2[NumList].J07_08 shr 16) and $FFFF;
  Jtmp[ 9] := (ListsCmd2[NumList].J09_10 shr  0) and $FFFF;
  Jtmp[10] := (ListsCmd2[NumList].J09_10 shr 16) and $FFFF;
  Jtmp[11] := (ListsCmd2[NumList].J11_12 shr  0) and $FFFF;
  Jtmp[12] := (ListsCmd2[NumList].J11_12 shr 16) and $FFFF;
  Jtmp[13] := (ListsCmd2[NumList].J13_14 shr  0) and $FFFF;
  Jtmp[14] := (ListsCmd2[NumList].J13_14 shr 16) and $FFFF;
  Jtmp[15] := (ListsCmd2[NumList].J15_16 shr  0) and $FFFF;
  Jtmp[16] := (ListsCmd2[NumList].J15_16 shr 16) and $FFFF;
  Jtmp[17] := (ListsCmd2[NumList].J17_18 shr  0) and $FFFF;
  Jtmp[18] := (ListsCmd2[NumList].J17_18 shr 16) and $FFFF;
  Jtmp[19] := (ListsCmd2[NumList].J19_20 shr  0) and $FFFF;
  Jtmp[20] := (ListsCmd2[NumList].J19_20 shr 16) and $FFFF;
  Jtmp[21] := (ListsCmd2[NumList].J21_22 shr  0) and $FFFF;
  Jtmp[22] := (ListsCmd2[NumList].J21_22 shr 16) and $FFFF;
  Jtmp[23] := (ListsCmd2[NumList].J23_24 shr  0) and $FFFF;
  Jtmp[24] := (ListsCmd2[NumList].J23_24 shr 16) and $FFFF;
  Jtmp[25] := (ListsCmd2[NumList].J25_26 shr  0) and $FFFF;
  Jtmp[26] := (ListsCmd2[NumList].J25_26 shr 16) and $FFFF;
  Jtmp[27] := (ListsCmd2[NumList].J27_28 shr  0) and $FFFF;
  Jtmp[28] := (ListsCmd2[NumList].J27_28 shr 16) and $FFFF;
  Jtmp[29] := (ListsCmd2[NumList].J29_30 shr  0) and $FFFF;
  Jtmp[30] := (ListsCmd2[NumList].J29_30 shr 16) and $FFFF;
  Jtmp[31] := (ListsCmd2[NumList].J31_32 shr  0) and $FFFF;
  Jtmp[32] := (ListsCmd2[NumList].J31_32 shr 16) and $FFFF;
  Jtmp[33] := (ListsCmd2[NumList].J33_34 shr  0) and $FFFF;
  Jtmp[34] := (ListsCmd2[NumList].J33_34 shr 16) and $FFFF;
  Jtmp[35] := (ListsCmd2[NumList].J35_36 shr  0) and $FFFF;
  Jtmp[36] := (ListsCmd2[NumList].J35_36 shr 16) and $FFFF;
  Jtmp[37] := (ListsCmd2[NumList].J37_38 shr  0) and $FFFF;
  Jtmp[38] := (ListsCmd2[NumList].J37_38 shr 16) and $FFFF;
  Jtmp[39] := (ListsCmd2[NumList].J39_40 shr  0) and $FFFF;
  Jtmp[40] := (ListsCmd2[NumList].J39_40 shr 16) and $FFFF;
  Jtmp[41] := (ListsCmd2[NumList].J41_42 shr  0) and $FFFF;
  Jtmp[42] := (ListsCmd2[NumList].J41_42 shr 16) and $FFFF;
  Jtmp[43] := (ListsCmd2[NumList].J43_44 shr  0) and $FFFF;
  Jtmp[44] := (ListsCmd2[NumList].J43_44 shr 16) and $FFFF;
  Jtmp[45] := (ListsCmd2[NumList].J45_46 shr  0) and $FFFF;
  Jtmp[46] := (ListsCmd2[NumList].J45_46 shr 16) and $FFFF;
  Jtmp[47] := (ListsCmd2[NumList].J47_48 shr  0) and $FFFF;
  Jtmp[48] := (ListsCmd2[NumList].J47_48 shr 16) and $FFFF;



  for i:= 1 to 48 do
    begin
    if ( Jtmp[i] shr 15 ) = 0 then
       SettJ[i].numJ := 1
    else
       SettJ[i].numJ := 2;
    SettJ[i].Key1 := (Jtmp[i] shr 9) and $3F;
    SettJ[i].Key2 := (Jtmp[i] shr 3) and $3F;
    SettJ[i].SendMode := ((Jtmp[i] shr 2) and $1) + 1;
    SettJ[i].isUse := (Jtmp[i] and 2) = 2;

    EDTHotKey[i].Text := Chr(HotKey[i]);
    CurHotKey := 0;
    EDTHotKey[i].Color := clWindow;

    EDTJKey[i].Text := IntToStr(SettJ[i].numJ) + ':' + IntToStr(SettJ[i].Key1) + ',' + IntToStr(SettJ[i].Key2)+' ' + IntToStr(SettJ[i].SendMode);

    if SettJ[i].isUse then
      EDTJKey[i].Color := clLime
    else
      EDTJKey[i].Color := Form1.Color;


    BTCmd[i].Enabled := (not (ListsCmd2[NumList].CmdData[i] = '')) and (not isModeEditHK);
    if RBName.Checked = true then
      begin
        BTCmd[i].Font.Style  := BTCmd[i].Font.Style + [fsBold];
        EDTCmd[i].Font.Style := EDTCmd[i].Font.Style + [fsBold];
        BTCmd[i].Caption     := ListsCmd2[NumList].CmdName[i];
        EDTCmd[i].Text       := ListsCmd2[NumList].CmdName[i];
        BTCmd[i].Hint        := ListsCmd2[NumList].CmdData[i];
        EDTCmd[i].Hint       := ListsCmd2[NumList].CmdData[i];
      end;

    if RbData.Checked = true then
      begin
        BTCmd[i].Font.Style  := BTCmd[i].Font.Style - [fsBold];
        EDTCmd[i].Font.Style := EDTCmd[i].Font.Style - [fsBold];
        BTCmd[i].Caption     := ListsCmd2[NumList].CmdData[i];
        EDTCmd[i].Text       := ListsCmd2[NumList].CmdData[i];
        BTCmd[i].Hint        := ListsCmd2[NumList].CmdName[i];
        EDTCmd[i].Hint       := ListsCmd2[NumList].CmdName[i];
      end;

      if HotKey[i] <> 0 then
        begin
          BTCmd[i].Hint := BTCmd[i].Hint + ' ' + '   [ Hot key:' + ' ' + Chr(HotKey[i])+' '+']';
          EDTCmd[i].Hint := EDTCmd[i].Hint + ' ' + '   [ Hot key:' + ' ' + Chr(HotKey[i])+' '+']';
        end;
   end;


  if ListsCmd2[NumList].NameList = '' then
    begin
      ListsCmd2[NumList].NameList := '['+IntToStr(NumList)+']';
    end;
  STListName.Caption := ListsCmd2[NumList].NameList;
  ListNameEdt.Text   := ListsCmd2[NumList].NameList;
  AddStrCmd.Text     := ListsCmd2[NumList].TailStr;


  if isManualSend or isWhChSend then
    MainStrCmd.Text := ListsCmd2[NumList].CmdStr;

  if TypeFilterLog = TFLNoFilter then
    FiltrLog.Text := ListsCmd2[NumList].FiltrStr[1];

  CBLists.Items.Clear;
  for i := 1 to CNT_LIST_CMD do
    CBLists.Items.Add(ListsCmd2[i].NameList);
  CBLists.ItemIndex := NumList - 1;

  ChDir.Checked := ListsCmd2[NumList].isVisDir;

  FormAddMacros.UpdateList(NumList);
  ////////////////////////////////////////////////////
  if isSepTime then
    begin
      EdtPauseRx.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtPauseRx.Color := Form1.Color;
    end;

  if isSepBytes then
    begin
      EdtCntSep.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtCntSep.Color := Form1.Color;
    end;

  if isSepAftSeq1_4 then
    begin
      edt100.Color := COLOR_LINE_SEP;
      edt101.Color := COLOR_LINE_SEP;
      edt102.Color := COLOR_LINE_SEP;
      edt103.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt100.Color := Form1.Color;
      edt101.Color := Form1.Color;
      edt102.Color := Form1.Color;
      edt103.Color := Form1.Color;
    end;

  if isSepAftSeq2_4 then
    begin
      edt107.Color := COLOR_LINE_SEP;
      edt108.Color := COLOR_LINE_SEP;
      edt109.Color := COLOR_LINE_SEP;
      edt110.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt107.Color := Form1.Color;
      edt108.Color := Form1.Color;
      edt109.Color := Form1.Color;
      edt110.Color := Form1.Color;
    end;

  if isSepAftSeq1_3 then
    begin
      edt2.Color := COLOR_LINE_SEP;
      edt99.Color := COLOR_LINE_SEP;
      edt104.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt2.Color := Form1.Color;
      edt99.Color := Form1.Color;
      edt104.Color := Form1.Color;
    end;

  if isSepAftSeq2_3 then
    begin
      edt111.Color := COLOR_LINE_SEP;
      edt112.Color := COLOR_LINE_SEP;
      edt113.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt111.Color := Form1.Color;
      edt112.Color := Form1.Color;
      edt113.Color := Form1.Color;
    end;

  if isSepAftSeq1_2 then
    begin
      edt105.Color := COLOR_LINE_SEP;
      edt106.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt105.Color := Form1.Color;
      edt106.Color := Form1.Color;
    end;

  if isSepAftSeq2_2 then
    begin
      edt114.Color := COLOR_LINE_SEP;
      edt115.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt114.Color := Form1.Color;
      edt115.Color := Form1.Color;
    end;

  if isSepSymbol then
    begin
      EdtSymAdd.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtSymAdd.Color := Form1.Color;
    end;

  if isSepSymbol2 then
    begin
      Edt98.Color := COLOR_LINE_SEP;
    end
  else
    begin
      Edt98.Color := Form1.Color;
    end;

  if isSepBefSymbol2 then
    begin
      EdtBefSym2.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtBefSym2.Color := Form1.Color;
    end;

  if isSepBefSymbol1 then
    begin
      EdtBefSym1.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtBefSym1.Color := Form1.Color;
    end;

  if isSep0D then
    ChSep0D.Color := COLOR_LINE_SEP
  else
    ChSep0D.Color := Form1.Color;

  if isSep0A then
    ChSep0A.Color := COLOR_LINE_SEP
  else
    ChSep0A.Color := Form1.Color;

  if isSep00 then
    ChSep00.Color := COLOR_LINE_SEP
  else
    ChSep00.Color := Form1.Color;

  if isSep0D0A then
    ChSep0D0A.Color := COLOR_LINE_SEP
  else
    ChSep0D0A.Color := Form1.Color;
  ////////////////////////////////////////////////////


end;

procedure TForm1.WriteListCmd(NumList : integer);
var
  i : integer;
begin
  ListsCmd2[NumListCmd].NameList := ListNameEdt.Text;
  ListsCmd2[NumList].TailStr     := AddStrCmd.Text;

  for i:= 1 to 48 do
    begin
      if RBName.Checked = true then
        ListsCmd2[NumListCmd].CmdName[i] := EDTCmd[i].Text;

      if RbData.Checked = true then
        ListsCmd2[NumListCmd].CmdData[i] := EDTCmd[i].Text;
    end;
end;



procedure TForm1.ClrListCmd(NumList : integer);
var
  i, j          : integer;
begin
      ListsCmd2[NumList].NameList  := 'Terminal ' + IntToStr(NumList);
        for i := 1 to 48 do
          begin
            ListsCmd2[NumList].CmdData[i]  := '';
            ListsCmd2[NumList].CmdName[i]  := '';
            for j := 1 to 12 do
              ListsCmd2[NumList].NameHelp[i, j] := '';
          end;
      ListsCmd2[NumList].TailStr   := '$0D';
      ListsCmd2[NumList].CmdStr    := '';
      ListsCmd2[NumList].SendMode  := SendASCII;
      ListsCmd2[NumList].ReadMode  := ReadASCII;

      for i := 1 to 20 do
        ListsCmd2[NumList].FiltrStr[i] := '';

      ListsCmd2[NumList].AutoClrStrHEX   := '';
      ListsCmd2[NumList].AutoClrStrASCII := '';
      ListsCmd2[NumList].AutoExpStr      := '';

      ListsCmd2[NumList].NStr4    := '';
      ListsCmd2[NumList].NStr5    := '';
      ListsCmd2[NumList].NStr6    := '';
      ListsCmd2[NumList].NStr7    := '';
      ListsCmd2[NumList].NStr8    := '';
      ListsCmd2[NumList].NStr9    := '';
      ListsCmd2[NumList].NStr10   := '';
      ListsCmd2[NumList].NStr11   := '';
      ListsCmd2[NumList].NStr12   := '';
      ListsCmd2[NumList].NStr13   := '';
      ListsCmd2[NumList].NStr14   := '';
      ListsCmd2[NumList].NStr15   := '';
      ListsCmd2[NumList].NStr16   := '';
      ListsCmd2[NumList].NStr17   := '';
      ListsCmd2[NumList].NStr18   := '';
      ListsCmd2[NumList].NStr19   := '';
      ListsCmd2[NumList].NStr20   := '';

      ListsCmd2[NumList].marker               := MARKER;
      ListsCmd2[NumList].TimeOutAnsRX         := 100;
      ListsCmd2[NumList].CntExpBytes          := 100;
      ListsCmd2[NumList].SepBytes             := 10;
      ListsCmd2[NumList].SepSymbol            := $0D;
      ListsCmd2[NumList].TimeAutoExpanNoData  := 10000;
      ListsCmd2[NumList].CntClrBytesLog       := 100000;

      ListsCmd2[NumList].SepBefSymbol1  := 0;
      ListsCmd2[NumList].SepBefSymbol2  := 0;
      ListsCmd2[NumList].HK1_4  := 0;
      ListsCmd2[NumList].HK5_8  := 0;
      ListsCmd2[NumList].HK9_12  := 0;
      ListsCmd2[NumList].HK13_16  := 0;
      ListsCmd2[NumList].HK17_20  := 0;
      ListsCmd2[NumList].HK21_24  := 0;
      ListsCmd2[NumList].HK25_28  := 0;
      ListsCmd2[NumList].HK29_32  := 0;
      ListsCmd2[NumList].HK33_36  := 0;
      ListsCmd2[NumList].HK37_40  := 0;
      ListsCmd2[NumList].HK41_44  := 0;
      ListsCmd2[NumList].HK45_48  := 0;
      ListsCmd2[NumList].J01_02   := 0;
      ListsCmd2[NumList].J03_04   := 0;
      ListsCmd2[NumList].J05_06   := 0;
      ListsCmd2[NumList].J07_08   := 0;
      ListsCmd2[NumList].J09_10   := 0;
      ListsCmd2[NumList].J11_12   := 0;
      ListsCmd2[NumList].J13_14   := 0;
      ListsCmd2[NumList].J15_16   := 0;
      ListsCmd2[NumList].J17_18   := 0;
      ListsCmd2[NumList].J19_20   := 0;
      ListsCmd2[NumList].J21_22   := 0;
      ListsCmd2[NumList].J23_24   := 0;
      ListsCmd2[NumList].J25_26   := 0;
      ListsCmd2[NumList].J27_28   := 0;
      ListsCmd2[NumList].J29_30   := 0;
      ListsCmd2[NumList].J31_32   := 0;
      ListsCmd2[NumList].J33_34   := 0;
      ListsCmd2[NumList].J35_36   := 0;
      ListsCmd2[NumList].J37_38   := 0;
      ListsCmd2[NumList].J39_40   := 0;
      ListsCmd2[NumList].J41_42   := 0;
      ListsCmd2[NumList].J43_44   := 0;
      ListsCmd2[NumList].J45_46   := 0;
      ListsCmd2[NumList].J47_48   := 0;
      ListsCmd2[NumList].SepSymbol2  := 0;
      ListsCmd2[NumList].SeqSymbols1_4  := 0;
      ListsCmd2[NumList].SeqSymbols1_3  := 0;
      ListsCmd2[NumList].SeqSymbols1_2  := 0;
      ListsCmd2[NumList].SeqSymbols2_4  := 0;
      ListsCmd2[NumList].SeqSymbols2_3  := 0;
      ListsCmd2[NumList].SeqSymbols2_2  := 0;
      ListsCmd2[NumList].NParam53  := 0;
      ListsCmd2[NumList].NParam54  := 0;
      ListsCmd2[NumList].NParam55  := 0;
      ListsCmd2[NumList].NParam56  := 0;
      ListsCmd2[NumList].NParam57  := 0;
      ListsCmd2[NumList].NParam58  := 0;
      ListsCmd2[NumList].NParam59  := 0;
      ListsCmd2[NumList].NParam60  := 0;

      ListsCmd2[NumList].isVisTime := False;
      ListsCmd2[NumList].isVisCnt  := False;

      ListsCmd2[NumList].isSep0D              := true;
      ListsCmd2[NumList].isSep0A              := true;
      ListsCmd2[NumList].isSep00              := true;
      ListsCmd2[NumList].isSep0D0A            := true;
      ListsCmd2[NumList].isSepTime            := true;
      ListsCmd2[NumList].isSepBytes           := false;
      ListsCmd2[NumList].isSepSymbol          := false;
      ListsCmd2[NumList].isResetFifo          := False;
      ListsCmd2[NumList].isAutoExpandNoInData := False;
      ListsCmd2[NumList].isAutoExpStr         := False;
      ListsCmd2[NumList].isCntExpBytes        := False;
      ListsCmd2[NumList].isExpWin             := true;
      ListsCmd2[NumList].isFileSendOK         := False;
      ListsCmd2[NumList].isAutoClrStrHEX      := False;
      ListsCmd2[NumList].isAutoClrStrASCII    := False;
      ListsCmd2[NumList].isClrLogWhSend       := False;

      ListsCmd2[NumList].isAddASCII           := false;
      ListsCmd2[NumList].isAddHEX             := true;
      ListsCmd2[NumList].isADDTX              := true;
      ListsCmd2[NumList].isAddRX              := true;
      ListsCmd2[NumList].isAddIgnFlt          := False;
      ListsCmd2[NumList].isShowMode           := False;

      ListsCmd2[NumList].isSepBefSymbol1  := False;
      ListsCmd2[NumList].isSepBefSymbol2  := False;
      ListsCmd2[NumList].isUseHotKey        := False;
      ListsCmd2[NumList].isSepSymbol2       := false;
      ListsCmd2[NumList].isSepAftSeq1_4        := False;
      ListsCmd2[NumList].isSepAftSeq1_3  := False;
      ListsCmd2[NumList].isSepAftSeq1_2  := False;
      ListsCmd2[NumList].isSepAftSeq2_4        := False;
      ListsCmd2[NumList].isSepAftSeq2_3  := False;
      ListsCmd2[NumList].isSepAftSeq2_2  := False;
      ListsCmd2[NumList].isVisPort := False;
      ListsCmd2[NumList].isVisDir  := False;
      ListsCmd2[NumList].isAddDec  := False;
      ListsCmd2[NumList].isAddCust  := False;
      ListsCmd2[NumList].isFlag41  := False;
      ListsCmd2[NumList].isFlag42  := False;
      ListsCmd2[NumList].isFlag43  := False;
      ListsCmd2[NumList].isFlag44  := False;
      ListsCmd2[NumList].isFlag45  := False;
      ListsCmd2[NumList].isFlag46  := False;
      ListsCmd2[NumList].isFlag47  := False;
      ListsCmd2[NumList].isFlag48  := False;
      ListsCmd2[NumList].isFlag49  := False;
      ListsCmd2[NumList].isFlag50  := False;
      ListsCmd2[NumList].isFlag51  := False;
      ListsCmd2[NumList].isFlag52  := False;
      ListsCmd2[NumList].isFlag53  := False;
      ListsCmd2[NumList].isFlag54  := False;
      ListsCmd2[NumList].isFlag55  := False;
      ListsCmd2[NumList].isFlag56  := False;
      ListsCmd2[NumList].isFlag57  := False;
      ListsCmd2[NumList].isFlag58  := False;
      ListsCmd2[NumList].isFlag59  := False;
      ListsCmd2[NumList].isFlag60  := False;
end;


procedure TForm1.SaveEditTextCmd(Sender: TObject);
begin
  ActualCellListCmd               := (Sender as TEdit).Tag;
  if RBName.Checked = true then
    ListsCmd2[NumListCmd].CmdName[ActualCellListCmd] := EDTCmd[ActualCellListCmd].Text;
  if RbData.Checked = true then
    ListsCmd2[NumListCmd].CmdData[ActualCellListCmd] := EDTCmd[ActualCellListCmd].Text;
  isReqSaveCmdList := true;
end;

procedure TForm1.ShowWindowEdtHelp(Sender: TObject);
var
  i : integer;
begin
  ActualCellListCmd               := (Sender as TEdit).Tag;
  EDTCmd[ActualCellListCmd].Color := clLime;
  PStats.Visible := false;
  pnlSendInAdd.Visible := False;
  WriteListCmd(NumListCmd);
  FormEditHelpCmd.ShowModal;
  ReadListCmd(NumListCmd);
  PStats.Visible := isStatsPanel;
  for i := 1 to 12 do
    ListsCmd2[NumListCmd].NameHelp[ActualCellListCmd, i] := STH[i].Caption;

  isReqSaveCmdList := true;
  EDTCmd[ActualCellListCmd].Color := clWindow;
end;


procedure TForm1.ShowHelpAsFocus(Sender: TObject);
var numButton : integer;
    i         : integer;
begin
  numButton := (Sender as TEdit).Tag;
  for i := 1 to 12 do
    STH[i].Caption := ListsCmd2[NumListCmd].NameHelp[numButton, i];
end;

procedure TForm1.ClearHelp;
var
  i : integer;
begin
  for i := 1 to 12 do
    STH[i].Caption := '';
end;



procedure TForm1.BTRescanClick(Sender: TObject);

begin
  (Sender as TButton).Enabled := false;
  ScanComPorts;
  (Sender as TButton).Enabled := true;
end;



procedure TForm1.ReadOldCmd;
var
  NumCmd : integer;
begin
  //OldCmdList.Clear;
  lstFastOldCmd.Clear;
  for NumCmd := 1 to CNT_LIST_OLDCMD do
    begin
      if (Length(OldCommand[NumCmd].OldCmd) > 0) then
        begin
          if (Pos(MainStrCmd.Text, OldCommand[NumCmd].OldCmd) = 1) or (MainStrCmd.Text = '') then
            begin
              //OldCmdList.Items.Add(OldCommand[NumCmd].OldCmd);
              lstFastOldCmd.Items.Add(OldCommand[NumCmd].OldCmd);
            end;
        End;
      end;
end;

procedure TForm1.OldCommandsBTClick(Sender: TObject);
var NumCmd : integer;

begin
 if (Sender as TButton).Tag = 0 then
   begin

     isOldCmdMode  := true;
     isFileCmdMode := false;
     //CBLists.Visible    := false;
     ButtonReadFile.Visible := false;
     RbName.Visible := false;
     RbData.Visible := false;

     OldCmdList.Left    := StaticText3.Left;
     ReadOldCmd();
     OldCmdList.Visible := true;
     (Sender as TButton).Tag := 1;

   end
 else
   begin

     isOldCmdMode  := false;
     isFileCmdMode := false;


     //CBLists.Visible    := true;
     OldCmdList.Visible := false;

     ButtonReadFile.Visible := true;
     RbName.Visible := true;
     RbData.Visible := true;

     (Sender as TButton).Tag  := 0;

   end;

end;


procedure TForm1.BTConnectClick(Sender: TObject);
  var i : Integer;
      Cnt : DWORD;
      Errors :  DWORD;
begin
  SetEnHideTimer.Enabled := true;
  isEnHide := false;

  (Sender as TButton).Enabled := false;


  if (Sender as TButton).Tag = 0 then
    begin
      if OpenComPort = true then
        begin
          WriteLogEvent(Now, 'Port open OK ' + ComPort.Text);

          repeat
            ClearCommError(hCom, Errors ,@Stat);
            Cnt := Stat.cbInQue;
            ReadFile(hCom,BufDataTmp,Cnt,Cnt,nil);
          until Cnt = 0;

          BTConnect.Caption       := 'Disconnect';
          (Sender as TButton).Tag := 1;
          ComPort.Color           := clLime;
          if SendAsReconn.Checked then
            CheckSendDataAftConnect;
          CfgTerminal.NameCOM     := ComPort.Text;
          NamePort := ComPort.Text;
          isOpenPort := True;
        end
      else
        begin
          if Form1.ComPort.Text <> '' then
            ShowMessage('Port open error');

          WriteLogEvent(Now, 'Port open ERROR ' + ComPort.Text);
        end;
    end
  else
    begin
      CloseComPort;

      WriteLogEvent(Now, 'Port close OK ' + ComPort.Text);

      BTConnect.Caption       := 'Connect';
      (Sender as TButton).Tag := 0;
      ComPort.Color           := clWindow;
      isOpenPort := False;
    end;

  ComPort.Enabled         := not isOpenPort;
  BaudRate.Enabled        := not isOpenPort;
  ParityBox.Enabled       := not isOpenPort;
  ComBits.Enabled         := not isOpenPort;
  ComStopBits.Enabled     := not isOpenPort;
  cbbHandsHaking.Enabled  := not isOpenPort;


  (Sender as TButton).Enabled := true;
end;

procedure TForm1.CheckSendDataAftConnect;
begin
  if not isFileCmdMode then
    SendPortData(MainStrCmd.Text, AddStrCmd.Text, SendMode, true)
  else
    StartSendCommands;
end;

procedure TForm1.CheckConnectTimer(Sender: TObject);
  var
    isStateCom : boolean;
  begin
    isStateCom := SetCommState(hCom,DCB);

    if (AutoConnect.Checked = false) and (not isStateCom) and (isOpenComPort = true) then
      ComPort.Color := clRed;

    if (BTConnect.Tag = 1) and (isOpenComPort = false) and (AutoConnect.Checked = false) then
      ComPort.Color := clRed;

    if not isStateCom then
      CloseComPort;


    if (AutoConnect.Checked = true) then
      begin
        if (BTConnect.Tag = 1) then
          begin
          if (not isStateCom) then
            begin
              if (OpenComPort = false) then
                ComPort.Color := clYellow
              else
                begin
                  ComPort.Color := clLime;
                  sleep(2000);
                  if SendAsReconn.Checked then
                    CheckSendDataAftConnect;
                end;
            end;
          end
        else
          ComPort.Color := clWindow;
      end;
  end;

procedure TForm1.ListIncClick(Sender: TObject);
var
  i : integer;
begin
  ListDec.Enabled := true;

  if NumListCmd < CNT_LIST_CMD then
    begin
      inc(NumListCmd);
      ReadListCmd(NumListCmd);
      if NumListCmd = CNT_LIST_CMD then
        ListInc.Enabled := false;
    end;

  if isUseParserHEX then
    FormParser.SetNumParser(NumListCmd);

  if isUseParserASCII then
    FormParserASCII.SetNumParser(NumListCmd);
end;

procedure TForm1.ListDecClick(Sender: TObject);
var
  i : integer;
begin
  ListInc.Enabled := true;

  if NumListCmd > 1 then
    begin
      dec(NumListCmd);
      ReadListCmd(NumListCmd);
      if NumListCmd = 1 then
        ListDec.Enabled := false;
    end;

  if isUseParserHEX then
    FormParser.SetNumParser(NumListCmd);

  if isUseParserASCII then
    FormParserASCII.SetNumParser(NumListCmd);
end;

procedure TForm1.DelListClick(Sender: TObject);
begin
  DelList.Enabled := false;
  BtCopyList.Enabled := false;
  BtPasteList.Enabled := false;
  rb1.Checked := False;
  grp12.Color := form1.Color;
  IsClearList := true;
  //Form15.ShowModal;
  if IsClearList then
    begin
      isReqSaveCmdList := true;
      ClrListCmd(NumListCmd);
      ReadListCmd(NumListCmd);
    end;
end;

procedure TForm1.RBNameClick(Sender: TObject);
var
  i : integer;
begin
  for i := 1 to 48 do
    EDTCmd[i].MaxLength := 50;
  ReadListCmd(NumListCmd);
end;

procedure TForm1.RbDataClick(Sender: TObject);
var
  i : integer;
begin
  for i := 1 to 48 do
    EDTCmd[i].MaxLength := 250;
  ReadListCmd(NumListCmd);
end;

procedure TForm1.CBListsClick(Sender: TObject);
begin
  NumListCmd := CBLists.ItemIndex + 1;
  ReadListCmd(NumListCmd);
  if (NumListCmd > 1) and (NumListCmd < CNT_LIST_CMD) then
    begin
    ListDec.Enabled := true;
    ListInc.Enabled := true;
    end;

  if NumListCmd = 1 then
    begin
      ListDec.Enabled := false;
      ListInc.Enabled := true;
    end;

  if NumListCmd = CNT_LIST_CMD then
    begin
      ListDec.Enabled := true;
      ListInc.Enabled := false;
    end;

  if isUseParserHEX then
    FormParser.SetNumParser(NumListCmd);

  if isUseParserASCII then
    FormParserASCII.SetNumParser(NumListCmd);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  NList         : integer;
  CellList      : TListCmd;
  NumCmd        : integer;
  NumStrHelp    : integer;
  PozWX, PozWY  : Integer;
begin
  CloseComPort;
  if FormParser.GetSaveCfgEn then
    FormParser.SaveCfg;
  //if isChangeCfgFile = true then
  //  Save.ShowModal;
  FormAnsSensor.SaveCfgEmul;

  BruteForce.CloseFileCfgBruteForce;

  FormAddMacros.SaveCfgInFile;


  FormParserASCII.SaveCfg;

  if isAddListCmd then
    Form7.SaveCfg;

  isReqSaveCmdList := true;
  SaveCmdListsInFile;

  if NoActionClose = true then
    Action := caNone
  else
    begin
      AssignFile(OldCmdFile, ExtractFilePath(Application.ExeName) + 'OldCmdList');
      ReWrite(OldCmdFile);
      ReSet(OldCmdFile);
      for NList := 1 to CNT_LIST_OLDCMD do
        Write(OldCmdFile, OldCommand[NList]);
      CloseFile(OldCmdFile);

///////////////////////////////////////////
      CfgTerminal.NameCOM   := ComPort.Text;
      CfgTerminal.NameCOM[Length(ComPort.Text) + 1] := #0;
      CfgTerminal.BRate     := BaudRate.ItemIndex;
      CfgTerminal.BRateStr  := BaudRate.Text;
      CfgTerminal.Bits      := ComBits.ItemIndex;
      CfgTerminal.SBits     := ComStopBits.ItemIndex;
      CfgTerminal.ParityCom := ParityCom;
      CfgTerminal.AConn     := AutoConnect.Checked;
      CfgTerminal.TimeRx    := TimeOutAnsRX;
      CfgTerminal.Filtr     := FiltrLog.Text;
      CfgTerminal.FontSize  := FontSizeWindow;
      CfgTerminal.fonColor  := MainStrCmd.Color;
      CfgTerminal.textColor := MainStrCmd.Font.Color;
      CfgTerminal.addTime   := VisTime.Checked;
      CfgTerminal.RbCapt    := TypeFilterLog = TFLCapt;
      CfgTerminal.ColorForm := Form1.Color;

      CfgTerminal.FontSize   := FontSize;
      CfgTerminal.ColorSend  := FontColorSend;
      CfgTerminal.ColorRead  := FontColorRead;
      CfgTerminal.HandsHakingPort := HandsHakingPort;
      //CfgTerminal.addCntBytes := CntBytesBox.Checked;

      CfgTerminal.TimeNoInputData := Round(TimeNoInputData / 10);

      if isManualSend = true then
        CfgTerminal.SendMode := 1
      else if isWhChSend = true then
        CfgTerminal.SendMode := 2
      else if isAftAnsSend = true then
        CfgTerminal.SendMode := 3
      else if isPeriodSend = true then
        CfgTerminal.SendMode := 4
      else if isByteByByte = true then
        CfgTerminal.SendMode := 5;


      CfgTerminal.Period := periodSend;

      CfgTerminal.SendConn := SendAsReconn.Checked;

//      if Length(MainStrCmd.Text) < 250 then
//        CfgTerminal.MainStr := MainStrCmd.Text;

//      if Length(AddStrCmd.Text) < 250 then
//        CfgTerminal.AddStr  := AddStrCmd.Text;

      CfgTerminal.ModeMacros := RBName.Checked;
      CfgTerminal.NumList    := NumListCmd;
      CfgTerminal.addCntBytes := CntBytesBox.Checked;
      CfgTerminal.RbCapt     := TypeFilterLog = TFLCapt;

      //if isSkippingReps then
      //  CfgTerminal.SkippingReps := 1
      //else
      //  CfgTerminal.SkippingReps := 0;

      CfgTerminal.FiltrCh := cbbFilterLOg.ItemIndex + 1;


      if isStatsPanel then
        CfgTerminal.ShowStat := 1
      else
        CfgTerminal.ShowStat := 0;

      CfgTerminal.AddWinBits := $20;
      if isAddASCII  then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $01;
      if isAddHEX    then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $02;
      if isAddTX     then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $04;
      if isAddRX     then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $08;
      if isAddIgnFlt then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $10;
      if isShowMode  then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $40;
      if isAddDec    then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $80;
      if isAddCUST   then CfgTerminal.AddWinBits := CfgTerminal.AddWinBits or $100;


      CfgTerminal.LineSeparators := $20;
      if isSep0D           then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $00001;
      if isSep0A           then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $00002;
      if isSep00           then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $00004;
      if isSep0D0A         then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $00008;
      if isSepTime         then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $00010;
      if isSepBytes        then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $00040;
      if isSepSymbol       then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $00080;
      if isResetFifo       then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $00100;
      if isAutoExpandNoInData      then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $00200;
      if isAutoExpStr      then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $00400;
      if isCntExpBytes     then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $00800;
      if isExpWin          then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $01000;
      if isFileSendOK      then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $02000;
      if isAutoClrStrHEX   then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $04000;
      if isAutoClrStrASCII then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $08000;
      if isWriteEvent      then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $10000;
      if isAConnectPort    then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $20000;

      if isSepBefSymbol1   then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $40000;
      if isSepBefSymbol2   then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or  $080000;
      if isSepSymbol2       then CfgTerminal.LineSeparators := CfgTerminal.LineSeparators or $100000;

      CfgTerminal.AutoClrStrHEX   := AutoClrStrHEX;
      CfgTerminal.AutoClrStrASCII := AutoClrStrASCII;

      if isSavePos then
        begin

      if Form1.Left < 0 then
        PozWX := 1
      else
        PozWX := Form1.Left;

      if Form1.Top < 0 then
        PozWY := 1
      else
        PozWY := Form1.Top;


      CfgTerminal.isFullScreen := Form1.WindowState = wsMaximized;


      CfgTerminal.PozMainWindow   := (PozWX shl 16) or PozWY;
        end
      else
        begin
          CfgTerminal.PozMainWindow := 0;
          CfgTerminal.isFullScreen  := False;
        end;

      CfgTerminal.CntExpBytes := CntExpBytes;

      if isClrLogWhSend then CfgTerminal.AutoClearBits := $01;

      CfgTerminal.CntBytesAutoClr := CntClrBytesLog;

      CfgTerminal.CntBytesSep     := SepBytes;

      CfgTerminal.SepSymbolCfg    := SepSymbol;
      CfgTerminal.SepSymbol2Cfg    := SepSymbol2;
      CfgTerminal.TimeAutoExpan   := TimeAutoExpanNoData;

      CfgTerminal.StrExp          := AutoExpStr;
      CfgTerminal.isAddDate       := isAddDate;
      CfgTerminal.isNoOutNonPrint := isNoOutNonPrint;

      if isModeDialog then
        CfgTerminal.isModeDialog := 0
      else
        CfgTerminal.isModeDialog := 1;

      SetOffNonPrintCh(isNoOutNonPrint);

      AssignFile(CfgTerminalFile, ExtractFilePath(Application.ExeName) + 'CnfgTMB');
      Rewrite(CfgTerminalFile);
      Reset(CfgTerminalFile);
      Write(CfgTerminalFile, CfgTerminal);
      CloseFile(CfgTerminalFile);

      SaveCmdListsInFile;
      /////////////////////////////////////

    end;

  if isLogBinFile then
    begin
      CloseFile(LogBinFile);
      WriteLogEvent(Now, 'Stop write text file '+NameLogFile);
    end;

  if isLogFile then
    begin
      CloseFile(LogFile);
      WriteLogEvent(Now, 'Stop write bin file '+NameLogBinFile);
    end;



  if isSaveFileAddPortsA then
    FormAddPorts.Close;

  if isSaveFileAddPortsB then
    FormMultiPort.Close;

  if isSaveFileIncSubstr then
    FormPacketsCNT.Close;  


  WriteLogEvent(Now, 'Stop terminal');
  WriteLogEvent(Now, '*************************************');


  if isWriteEvent then
    begin
      CloseFile(LogEvent);
    end;

  if isUseCustomTable then
    begin
      frmCustomTable.SaveTable(true);
    end;

  NoActionClose := false;
end;

procedure TForm1.BtSendClick(Sender: TObject);
var
  SendStr, StrTmp, SendTail, str : string;
  Len : Integer;
  i : Integer;
  isExit : boolean;
begin
  SendStr := MainStrCmd.Text;
  StrTmp  := MainStrCmd.Text;
  SendTail := AddStrCmd.Text;
  Len := Length(StrTmp);

  if isByteByByte and isOpenComPort then
    begin
      if (SendMode = SendASCII) and (Len > 0) then
        begin
          SendStr := SendStr[1];
          Delete(StrTmp, 1, 1);
          SendTail := '';
        end;
      if (SendMode = SendHEX) and (Len > 2) then
        begin
          SendStr := SendStr[1] + SendStr[2] + SendStr[3];
          Delete(StrTmp, 1, 3);
          SendTail := '';
        end;

      if (SendMode = SendDEC) and (Len > 1) then
        begin
          i := 1;
          while (SendStr[i] <> ' ') and (i < Len) do
            begin
              Str := Str + StrTmp[i];
              inc(i);
            end;
          Delete(StrTmp, 1, Length(Str));
          SendTail := '';
          isExit := false;
          while (Length(StrTmp) > 0) and not isExit do
            if (StrTmp[1] = ' ') then
              Delete(StrTmp, 1, 1)
            else
              isExit := true;

          SendStr := Str;
        end;
      MainStrCmd.Text := StrTmp;
    end;

  SendPortData(SendStr, SendTail, SendMode, true);
end;

procedure TForm1.MainStrCmdKeyPress(Sender: TObject; var Key: Char);
var
  SendStr, StrTmp,   SendTail, str : string;
  Len : Cardinal;
  isExit : Boolean;
begin
  SendStr := MainStrCmd.Text;
  StrTmp  := MainStrCmd.Text;
  SendTail := AddStrCmd.Text;
  Len := Length(StrTmp);

  if Key = #10 then
    begin
      if isByteByByte and isOpenComPort then
        begin
          if (SendMode = SendASCII) and (Len > 0) then
            begin
              SendStr := SendStr[1];
              Delete(StrTmp, 1, 1);
              SendTail := '';
            end;
          if (SendMode = SendHEX) and (Len > 2) then
            begin
              SendStr := SendStr[1] + SendStr[2] + SendStr[3];
              Delete(StrTmp, 1, 3);
              SendTail := '';
            end;

          if (SendMode = SendDEC) and (Len > 1) then
            begin
              i := 1;
              while (SendStr[i] <> ' ') and (i < Len) do
                begin
                  Str := Str + StrTmp[i];
                  inc(i);
                end;
              Delete(StrTmp, 1, Length(Str));
              SendTail := '';
              isExit := false;
              while (Length(StrTmp) > 0) and not isExit do
                if (StrTmp[1] = ' ') then
                  Delete(StrTmp, 1, 1)
                else
                  isExit := true;
              SendStr := Str;
            end;

          MainStrCmd.Text := StrTmp;
        end;
      SendPortData(SendStr, SendTail, SendMode, true);
      Key := #0;
    end;
  if Key = #13 then
    begin
      SendPortData(MainStrCmd.Text, AddStrCmd.Text, SendMode, true);
      if isOpenComPort then MainStrCmd.Text :='';
      Key := #0;
    end;
  if Key = #27 then
    begin
      MainStrCmd.Text :='';
      Key := #0;
    end;
end;

procedure TForm1.OldCmdListClick(Sender: TObject);
begin

  OldCmdList.Enabled := false;
  CmdStr := OldCmdList.Items[OldCmdList.ItemIndex];

  if isWhChSend = true then
    SendPortData(CmdStr, AddStrCmd.Text, SendMode, true)
  else
    MainStrCmd.Text := CmdStr;

  OldCmdList.Enabled := true;

  if isModeDialog then
    ActiveControl := MainStrCmd;

  indexCmdInFile := (Sender as TListBox).ItemIndex;
end;

procedure TForm1.ButtonReadFileClick(Sender: TObject);
var
  FileCmd  : TextFile;
  TmpString: string;
  indexStr : integer;
  isOpenFile : Boolean;
begin
  SetEnHideTimer.Enabled := true;
  SelTerm.Visible := False;
  isEnHide := false;
  (Sender as TButton).Enabled := false;

  if (Sender as TButton).Tag = 0 then
    begin
      if DirectoryExists(CfgTerminal.CmdDir) then
        begin
          OpenFileCmdDialog.InitialDir := CfgTerminal.CmdDir;
        end;
      Sleep(10);
      if OpenFileCmdDialog.Execute then
        begin
           SetEnHideTimer.Enabled := true;
           isEnHide := false;

          (Sender as TButton).Tag := 1;
          (Sender as TButton).Caption := 'Macros';
          (Sender as TButton).Font.Style := [fsbold,fsUnderline];
          TabEditCmd.Visible := false;
          isOldCmdMode  := false;
          isFileCmdMode := true;


          indexCmdInFile     := 0;
          //CBLists.Visible    := false;
          StListName.ShowHint   := false;

          //ListInc.Visible     := false;
          //ListDec.Visible     := false;

          StListName.Width := MainStrCmd.Width;
          OldCmdList.Width := MainStrCmd.Width;

          CiklSend.Visible   := true;
          if isAftAnsSend or isPeriodSend then
            CiklSend.Enabled := true
          else
            CiklSend.Enabled := false;




          StListName.Visible := true;
          OldCmdList.Visible := true;
          OldCmdList.Enabled := true;
          SendStart.Visible := true;

          RbName.Visible := false;
          RbData.Visible := false;

          indexStr  := 0;
          TmpString := OpenFileCmdDialog.FileName;
          StListName.Caption := TmpString;
          try
            AssignFile(FileCmd, TmpString);
            Reset(FileCmd);
            OldCmdList.Clear;
            while (not Eof(FileCmd)) and (indexStr < MAX_CNT_CMD_IN_FILE)  do
              begin;
                ReadLn(FileCmd, TmpString); //OldCmdList.Items[indexStr]);
                if Length(TmpString) < 255 then
                  OldCmdList.Items.Add(TmpString);
                inc(indexStr);
              end;
            CloseFile(FileCmd);

            isOpenFile := indexStr > 0;
            if indexStr >= MAX_CNT_CMD_IN_FILE then
              ShowMessage('Large file!');
          except
            isOpenFile := False;
          end;

          if not isOpenFile then
            ShowMessage('Invalid command file');
        end
      else
       (Sender as TButton).Tag := 0;
    end;

  if not isOpenFile then
    begin
      (Sender as TButton).Tag := 0;
      (Sender as TButton).Caption := 'Cmd file';
      (Sender as TButton).Font.Style := [];
      TabEditCmd.Visible := true;
      isOldCmdMode  := true;
      isFileCmdMode := false;

      StListName.Caption := ListsCmd2[NumListCmd].NameList;

      OldCmdList.Clear;
      StListName.ShowHint   := true;

      //ListInc.Visible     := true;
      //ListDec.Visible     := true;
      CiklSend.Visible   := false;

      OldCmdList.Visible := false;
      //StListName.Visible := false;
      StListName.Width := MainStrCmd.Width - 114;
      SendStart.Visible := false;
      //CBLists.Visible    := true;
      RbName.Visible := true;
      RbData.Visible := true;
      //OldCommandsBT.Visible := true;
      //ReadListCmd(NumListCmd);
    end;
   (Sender as TButton).Enabled := true;
end;

procedure TForm1.sendAnsBTBTLogClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;
  CMainWindow.Clear;
  SecondWindow.Clear;
  SecondWindowAdd.Clear;
  CntDataLog := 0;
  CntBytesAdd := 0;
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.PauseLog;
begin
  if sendAnsBTStartStop.Tag = 0 then
    sendAnsBTStartStop.Click;
  {
  AddWindow.Enabled       := false;
  MainWindow.Visible      := false;
  SecondWindow.Visible    := true;
  MainWindowAdd.Visible   := false;
  SecondWindowAdd.Visible := isAddWindow;

  MainWindow.Lines.BeginUpdate;
  lst := TStringList.Create;
  try
    lst.Text := MainWindow.Lines.Text;
    SecondWindow.Lines.Text := lst.Text;
  finally
    lst.Free;
  end;
  MainWindow.Lines.EndUpdate;

  MainWindowAdd.Lines.BeginUpdate;
  lst := TStringList.Create;
  try
    lst.Text := MainWindowAdd.Lines.Text;
    SecondWindowAdd.Lines.Text := lst.Text;
  finally
    lst.Free;
  end;
  MainWindowAdd.Lines.EndUpdate;


  SecondWindow.lines.Add('');
  SecondWindow.lines.Add('>>>>>>>>>> STOP <<<<<<<<<<');
  SecondWindowAdd.lines.Add('');
  SecondWindowAdd.lines.Add('>>>>>>>>>> STOP <<<<<<<<<<');
}
end;



procedure TForm1.sendAnsBTStartStopClick(Sender: TObject);
  var  i : integer;
     lst : TStringList;
begin
  (Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;

  sendAnsBTStartStop.Enabled := false;

  if (Sender as TButton).Tag = 0 then
    begin
      (Sender as TButton).Tag := 1;
      (Sender as TButton).Caption := '>';
      AddWindow.Enabled       := false;
      CMainWindow.Visible      := false;
      SecondWindow.Visible    := true;
      CMainWindowAdd.Visible   := false;
      SecondWindowAdd.Visible := isAddWindow;
      pnlAddWin.Visible       := false;


      CMainWindow.Lines.BeginUpdate;
      lst := TStringList.Create;
      try
        lst.Text := CMainWindow.Lines.Text;
        SecondWindow.Lines.Text := lst.Text;
      finally
        lst.Free;
      end;
      CMainWindow.Lines.EndUpdate;

      CMainWindowAdd.Lines.BeginUpdate;
      lst := TStringList.Create;
      try
        lst.Text := CMainWindowAdd.Lines.Text;
        SecondWindowAdd.Lines.Text := lst.Text;
      finally
        lst.Free;
      end;
      CMainWindowAdd.Lines.EndUpdate;

      SecondWindow.lines.Add('');
      SecondWindow.lines.Add('>>>>>>>>>> STOP <<<<<<<<<<');
      SecondWindowAdd.lines.Add('');
      SecondWindowAdd.lines.Add('>>>>>>>>>> STOP <<<<<<<<<<');
    end
  else
    begin
      (Sender as TButton).Tag := 0;
      (Sender as TButton).Caption := '||';
      AddWindow.Enabled := true;
      SecondWindow.Visible := false;
      CMainWindow.Visible := true;
      SecondWindowAdd.Visible := false;
      CMainWindowAdd.Visible := isAddWindow;
    end;
  sendAnsBTStartStop.Enabled := true;
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.StartLogClick(Sender: TObject);
var
  D: TDateTime;
  Hour, Min, Sec, MSec: Word;
  Year, Month, Day: Word;


begin
  SetEnHideTimer.Enabled := true;
  isEnHide := false;


  (Sender as TButton).Enabled := False;
  if (Sender as TButton).Tag = 0 then
    begin
      FileLogName := '';
      FormLogName.ShowModal;


      if not FormLogName.isCancelWriteLog then
        begin
          (Sender as TButton).Tag :=1;
          (Sender as TButton).Caption := 'Stop log';
          if isLogFile = false then
            begin
              D:= Now;
              DecodeDate(D, Year, Month, Day);
              DecodeTime(D, Hour, Min, Sec, MSec);
              if CfgTerminal.LogDir <> '' then
                if not DirectoryExists(CfgTerminal.LogDir) then
                  begin
                    ShowMessage('Wrong directory to save log files!');
                    CfgTerminal.LogDir := ExtractFilePath(Application.ExeName) + '\';
                  end;


              NameLogBinFile := '';
              NameLogFile    := '';

              if isLogBin then
                begin
                  NameLogBinFile := CfgTerminal.LogDir;
                  NameLogBinFile := NameLogBinFile + FileLogName;



                  NameLogBinFile := NameLogBinFile + LogBinFileTail;


                  AssignFile(LogBinFile, NameLogBinFile);
                  ReWrite(LogBinFile);
                  isLogBinFile := true;
                  WriteLogEvent(Now, 'Start write bin file '+NameLogBinFile);
                end;

              if isLogText then
                begin
                 NameLogFile := CfgTerminal.LogDir;
                 NameLogFile := NameLogFile + FileLogName;

                 NameLogFile := NameLogFile + LogTxtFileTail;

                 AssignFile(LogFile, NameLogFile);
                 ReWrite(LogFile);
                 isLogFile     := true;
                 WriteLogEvent(Now, 'Start write text file '+NameLogFile);
                end;

              StaticText1.Color := clYellow;
              ClrColorTimer.Enabled := true;
            end;
          STLog.Caption := 'Log is written to file ' + NameLogFile + ' ' + NameLogBinFile;
          STLog.Hint := STLog.Caption;
          STLog.ShowHint := True;
        end;
     end
   else
     begin
       LastReadLogTime := 0;
       (Sender as TButton).Tag := 0;
       (Sender as TButton).Caption := 'Start log';
       STLog.Caption := 'Logging stop ( '+NameLogFile+' ' + NameLogBinFile + ' )';
       STLog.Hint := STLog.Caption;
       if isLogFile then
         begin
           isLogFile := false;
           CloseFile(LogFile);
           WriteLogEvent(Now, 'Stop write text file '+NameLogFile);

         end;
       if isLogBinFile then
         begin
           isLogBinFile := false;
           CloseFile(LogBinFile);
           WriteLogEvent(Now, 'Stop write bin file '+NameLogBinFile);
         end;
       OpenLogFile.ShowModal;
     end;
   (Sender as TButton).Enabled := true;
end;


 //iReadBuf
 //iWriteBuf
 //CntDataReadBuf

 //if(not isHex) then

//function TForm1.ReadRingBuf(isHex : boolean) : Integer;
//  var i      : integer;
//      res    : integer;
//      isTail : boolean;
//      TimeRead : TDateTime;

//      iReadBufTmp : integer;
//      BefByteSeq : array[0..3] of Byte;

//begin
//  i      := 0;
//  res    := 0;
//  isTail := false;

//  if CntDataReadBufAv > 0 then
//    begin
//      repeat
//        RxBufData[i] := BufDataRB[iReadBuf];
//        TimeRead     := BufDateTime[iReadBuf];

//        inc(i);
//        inc(iReadBuf);
//        iReadBuf := iReadBuf and (RX_RING_BUF_SIZE-1);
//        iReadBufTmp := iReadBuf;

//        inc(res);
//        dec(CntDataReadBufAv);
//        Dec(CntDataReadBufAll);

//        if (not IsHex) then
//         isTail := ((RxBufData[i-1] = $0A) and isSep0A)                                           or
//                    ((RxBufData[i-1] = $00) and isSep00)                                           or
//                    ((i > 1) and  (RxBufData[i-2] = $0D) and (RxBufData[i-1] = $0A) and isSep0D0A) or
//                    ((RxBufData[i-1] = $0D) and (BufDataRB[iReadBuf] <> $0A) and isSep0D);

//        isTail := isTail or (isSepBytes and (GlBufRx.Shift + i >= SepBytes)) or (i > MAX_SHIFT_BUF_RX);
//        isTail := isTail or (isSepSymbol and (RxBufData[i-1] = SepSymbol));
//        isTail := isTail or (isSepSymbol2 and (RxBufData[i-1] = SepSymbol2));

//        if (isSepBefSymbol1 and (BufDataRB[iReadBufTmp and (RX_RING_BUF_SIZE-1)] = SepBefSymbol1) and (CntDataReadBufAv > 0)) or
//           (isSepBefSymbol2 and (BufDataRB[iReadBufTmp and (RX_RING_BUF_SIZE-1)] = SepBefSymbol2) and (CntDataReadBufAv > 0)) or
//           ((CntDataReadBufAv = 0) and ((isSepBefSymbol1 and (RxBufData[0] = SepBefSymbol1)) or (isSepBefSymbol2 and (RxBufData[0] = SepBefSymbol2))  ))
//           then
//          begin
//            isTail := true;
//            res := res or $10000000; //дополнительный признак для принудительного вывода строки
//          end;

//      until (CntDataReadBufAv = 0) or (isTail = true);
//      CurTimeRB := TimeRead;
//    end;
//  result := res;
//end;


function TForm1.ReadRingBuf(isHex : boolean) : Integer;
  var i      : integer;
      res    : integer;
      isTail : boolean;
      TimeRead : TDateTime;

      iReadBufTmp : integer;

begin
  i      := 0;
  res    := 0;
  isTail := false;
  if CntDataReadBufAv > 0 then
    begin
      repeat
        RxBufData[i] := BufDataRB[iReadBuf];
        TimeRead     := BufDateTime[iReadBuf];

        inc(i);
        inc(iReadBuf);
        iReadBuf := iReadBuf and (RX_RING_BUF_SIZE-1);
        iReadBufTmp := iReadBuf;


        inc(res);
        dec(CntDataReadBufAv);
        Dec(CntDataReadBufAll);

        if (not IsHex) then
          isTail := ((RxBufData[i-1] = $0A) and isSep0A)                                           or
                    ((RxBufData[i-1] = $00) and isSep00)                                           or
                    ((i > 1) and  (RxBufData[i-2] = $0D) and (RxBufData[i-1] = $0A) and isSep0D0A) or
                    ((RxBufData[i-1] = $0D) and (BufDataRB[iReadBuf] <> $0A) and isSep0D);


        isTail := isTail or (isSepBytes and (GlBufRx.Shift + i >= SepBytes)) or (i > MAX_SHIFT_BUF_RX);



        isTail := isTail or (isSepAftSeq1_4 and (i > 3) and (SepAftByte1_4_1 = RxBufData[i-4])
                                                        and (SepAftByte1_4_2 = RxBufData[i-3])
                                                        and (SepAftByte1_4_3 = RxBufData[i-2])
                                                        and (SepAftByte1_4_4 = RxBufData[i-1]));

        isTail := isTail or (isSepAftSeq1_3 and (i > 2) and (SepAftByte1_3_1 = RxBufData[i-3])
                                                        and (SepAftByte1_3_2 = RxBufData[i-2])
                                                        and (SepAftByte1_3_3 = RxBufData[i-1]));

        isTail := isTail or (isSepAftSeq1_2 and (i > 1) and (SepAftByte1_2_1 = RxBufData[i-2])
                                                        and (SepAftByte1_2_2 = RxBufData[i-1]));

        isTail := isTail or (isSepSymbol and (RxBufData[i-1] = SepSymbol));


////

        isTail := isTail or (isSepAftSeq2_4 and (i > 3) and (SepAftByte2_4_1 = RxBufData[i-4])
                                                        and (SepAftByte2_4_2 = RxBufData[i-3])
                                                        and (SepAftByte2_4_3 = RxBufData[i-2])
                                                        and (SepAftByte2_4_4 = RxBufData[i-1]));

        isTail := isTail or (isSepAftSeq2_3 and (i > 2) and (SepAftByte2_3_1 = RxBufData[i-3])
                                                        and (SepAftByte2_3_2 = RxBufData[i-2])
                                                        and (SepAftByte2_3_3 = RxBufData[i-1]));

        isTail := isTail or (isSepAftSeq2_2 and (i > 1) and (SepAftByte2_2_1 = RxBufData[i-2])
                                                        and (SepAftByte2_2_2 = RxBufData[i-1]));


        isTail := isTail or (isSepSymbol2 and (RxBufData[i-1] = SepSymbol2));


        if (isSepBefSymbol1 and (BufDataRB[iReadBufTmp] = SepBefSymbol1)) or
           (isSepBefSymbol2 and (BufDataRB[iReadBufTmp] = SepBefSymbol2)) or
           ((CntDataReadBufAv = 0) and ((isSepBefSymbol1 and (RxBufData[0] = SepBefSymbol1)) or (isSepBefSymbol2 and (RxBufData[0] = SepBefSymbol2))  ))
           then
          begin
            isTail := true;
            res := res or $10000000; //дополнительный признак для принудительного вывода строки
          end;

      until (CntDataReadBufAv = 0) or (isTail = true);
      CurTimeRB := TimeRead;
    end;
  result := res;
end;





procedure TForm1.WriteRingBuf(cnt : integer);
  var
    i : integer;
    DTime : TDateTime;
    rev : Byte;
  begin
    if cnt > 0 then
      begin
        i := 0;
        DTime := Now;
        repeat


          if isInvert then
            BufDataRB[iWriteBuf] := BufDataTmp[i] xor $FF
          else
            BufDataRB[iWriteBuf] := BufDataTmp[i];


          if isRevers then
            begin
              rev := BufDataRB[iWriteBuf];
              rev := ((rev and $55) shl 1) or ((rev and $AA) shr 1);
              rev := ((rev and $CC) shr 2) or ((rev and $33) shl 2);
              rev := (rev shr 4) or (rev shl 4);
              BufDataRB[iWriteBuf] := rev;
            end;

          Inc(BufCntBytesRead[BufDataRB[iWriteBuf]]);



          BufDateTime[iWriteBuf] := DTime;
          inc(CntDataReadBufAv);

          inc(iWriteBuf);
          iWriteBuf        := iWriteBuf and (RX_RING_BUF_SIZE-1);

          inc(i);


          if (iWriteBuf = iReadBuf) and (CntDataReadBufAv = RX_RING_BUF_SIZE) then
            begin
              inc(iReadBuf);
              iReadBuf := iReadBuf and (RX_RING_BUF_SIZE-1);
              Dec(CntDataReadBufAv);
              inc(LostData);
            end;

          CntDataReadBufAv := CntDataReadBufAv and (RX_RING_BUF_SIZE-1);
          inc(CntDataReadBufAll);
        until i = cnt;
      end;
  end;





  //BufDateTime             : array[0..BUF_SIZE_LVL_TIME - 1] of TDateTime;
  //MaxPosLvlTime           : array[0..BUF_SIZE_LVL_TIME - 1] of Integer;
  //cntLvlTime              : integer;   d
  //iLvlTimeWrite           : Integer;
  //iLvlTimeRead            : Integer;
  //posLvlTime






function TForm1.ReadComInBufRx(Cnt: dword) : Integer;
var
  iRxData      : Dword;
  CntFree      : integer;
  isRes        : Boolean;
  Errors       : Dword;
begin
  isRes     := false;
  iRxData   := 0;

  CntFree := $1000000 - GlBufRx.Shift;

  if Cnt > CntFree then
    Cnt := CntFree;

  ReadFile(hCom,BufDataTmp,Cnt,Cnt,nil);
  WriteRingBuf(Cnt);
  result := Cnt;
end;


procedure TForm1.SetHexMode(isNewStatus : boolean);
begin
  if Form7.Active then
    if isNewStatus then SendMode := SendHEX else SendMode := SendASCII;
end;


procedure TForm1.ReadBufRxInLog;

var
  RxDataLogASCII  : string;
  RxDataLogHEX    : string;
  RxDataLogDEC    : string;
  RxDataLogCUSTOM : string;

  RxDataLog : string;

  iStrData     : Dword;
  i            : Dword;

  Errors       : Dword;
  isEnSend     : boolean;

  MSec         : integer;
  deltaTime    : integer;
  RxBytes      : Integer;
  CntBytesStr  : string;
  DateTimeStr  : string;
  PortStr      : string;
  DirStr       : string;
  BeginStr     : string;
  SumStr       : string;
  CntWriteForAns : integer;
  isBefSymbol : Boolean;
  tmp : TPBuf;

begin
  isEnSend       := true;
  RxDataLogASCII := '';
  RxDataLogHEX   := '';
  RxDataLogDEC   := '';
  RxDataLogCUSTOM:= '';

  if GlBufRx.Shift > 0 then
    begin
      i := 0;
      RxBytes := GlBufRx.Shift;
      tmp := @GlBufRx.Buf[0];

      if isFormAnsSensors then
        FormAnsSensor.WriteDataEmul(tmp, RxBytes);

      if isLogBinFile and isLogBinRx then
        for i := 0 to RxBytes - 1 do
          Write(LogBinFile, GlBufRx.Buf[i]);

      i := 0;

      while i < GlBufRx.Shift do
        begin
          RxDataLogHEX   := RxDataLogHEX    + IntToHex(GlBufRx.Buf[i],2) + ' ';
          RxDataLogDec   := RxDataLogDec    + Format('%3d', [GlBufRx.Buf[i]]) + ' ';
          RxDataLogASCII := RxDataLogASCII  + ChrZ(GlBufRx.Buf[i]);
          RxDataLogCUSTOM:= RxDataLogCUSTOM + ChrCustom(GlBufRx.Buf[i]);
          inc(i);
        end;
      GlBufRx.Shift := 0;

      case ReadMode of
        ReadASCII    : RxDataLog := RxDataLogASCII;
        ReadHEX      : RxDataLog := RxDataLogHEX;
        ReadDEC      : RxDataLog := RxDataLogDEC;
        ReadCUSTOM   : RxDataLog := RxDataLogCUSTOM;
      end;

      BeginStr := '';
      if ListsCmd2[NumListCmd].isVisPort then
        PortStr  := '[' + Format('%08s', [NamePort])+ ']'
      else
        PortStr := '';

      DateTimeStr := SetTimeStamp(ListsCmd2[NumListCmd].isVisTime, TerminalST.Form1.isAddDate, CurTimeRB);


      if ListsCmd2[NumListCmd].isVisCnt then
        CntBytesStr := '[' + Format('%03d', [RxBytes]) + ']'
      else
        CntBytesStr := '';


      if ListsCmd2[NumListCmd].isVisDir then
        DirStr := '< '
      else
        DirStr := '';

      BeginStr := PortStr + DateTimeStr + CntBytesStr + DirStr;
                  //RxDataLog[LenStr] := #0;
      MSec := MilliSecondOfTheWeek(CurTimeRB);

      inc(Stats.DataRead);

      LRead.Caption := 'Read: ' + IntToStr(Stats.DataRead);
      Stats.OldTimeRead := Stats.CurTimeRead;
      Stats.CurTimeRead := MSec;
      deltaTime := Stats.CurTimeRead - Stats.OldTimeRead;

      if (deltaTime > 0) and (Stats.OldTimeRead > 0) then
        begin
          if Stats.MinTimeWait > deltaTime then
            Stats.MinTimeWait := deltaTime;

            if Stats.MaxTimeWait < deltaTime then
              Stats.MaxTimeWait := deltaTime;

            MinTimeWait.Caption := 'MIN_T_W:  ' + IntToStr(Stats.MinTimeWait);
            MaxTimeWait.Caption := 'MAX_T_W: ' + IntToStr(Stats.MaxTimeWait);
        end;

      FormPacketsCNT.CheckSubString(SrcPortMain, BeginStr, RxDataLog, DirRx);

      MemoUpd(CurTimeRB, BeginStr, RxDataLog, RxDataLogASCII, RxDataLogHEX, RxDataLogDec, RxDataLogCUSTOM, true, FontColorRead);



      SumStr := BeginStr + RxDataLog;
      if isFormAnsSensors then
        FormAnsSensor.SetIncPacket(SumStr, ReadMode);


      if isUseParserHEX then
        begin
          FormParser.SetNewStr(SrcPortMain, RxDataLogHEX, ReadMode = ReadHEX, CurTimeRB);
        end;

      if isUseParserASCII then
        FormParserASCII.SetNewStr1(SrcPortMain, RxDataLog, ReadMode = ReadHEX, CurTimeRB,  RxBytes);


      if(isAftAnsSend = true) then
        ClearCommError(hCom, Errors ,@Stat);

      if (isAftAnsSend = true) and (Stat.cbInQue = 0) then
        begin
          if isFileCmdMode = true then
            begin
              if (indexCmdInFile = OldCmdList.Count) then
                begin
                  if CiklSend.Checked = false then
                    begin
                      isEnSend := false;
                      if not isShowMsgSendCmdFiles then
                        begin
                          ShowMessage('All commands sent');
                          isShowMsgSendCmdFiles := false;
                        end;
                    end;
                  indexCmdInFile := 0;
                end;

              if (indexCmdInFile < OldCmdList.Count) and (isEnSend = true) then
                begin
                  SendPortData(OldCmdList.Items[indexCmdInFile], AddStrCmd.Text, SendMode, true);
                  inc(indexCmdInFile);
                  if indexCmdInFile >= OldCmdList.Count then
                    OldCmdList.ItemIndex := 0
                  else
                    OldCmdList.ItemIndex := indexCmdInFile;
                end;
            end
          else
            begin
              SendPortData(MainStrCmd.Text, AddStrCmd.Text, SendMode, true);
            end;
        end;
    end;
end;





procedure TForm1.RxTimerTimer(Sender: TObject);
var
  Errors    : Dword;
  MSec      : integer;
  isTimeOut : boolean;
  deltaTime : integer;
  isOut     : boolean;
  isSendMemo : boolean;
  iRxData   : Integer;
  Cnt : Integer;
  Time : TDateTime;
begin
  RxTimer.Enabled := False;

  if isReadComProcess = false then
    begin
      isReadComProcess := true;
      if isOpenComPort = true then
        begin
          repeat
            ClearCommError(hCom, Errors ,@Stat);
            if Stat.cbOutQue > 0 then Sleep(1);
          until Stat.cbOutQue = 0;

          isOut := false;
          if Stat.cbInQue > 0 then                              //TimeLastRead := MilliSecondOfTheWeek(Now);
            begin
              if ReadComInBufRx(Stat.cbInQue) > 0 then
                begin
                  CntRXRead    := CntRXRead + Stat.cbInQue;
                  RXRead       := RXRead + Stat.cbInQue;
                  MSecRefRX    := MilliSecondOfTheWeek(Now);
                  TimeLastRead := MSecRefRX;
                  TimeOutColorStat := TimeNoInputData;
                end;
            end;
        end
      else
        begin
          TimeLastRead := MilliSecondOfTheWeek(Now);
        end;

      if isCntExpBytes then
        begin
          if RXRead - CntExpBytesREF > CntExpBytes then
            begin
              WriteLogEvent(Now, 'Read more ' + IntToStr(CntExpBytes) + ' bytes');

              CntExpBytesREF := RXRead;
              if (isExpWin) and (not IsIconic(Form1.Handle)) then
                begin
                  Application.Restore;
                end;
                if isOpenMsgEventBytesRecDataEn[NumListCmd] then
                  begin
                    FormEvent.SrcEvent := SrcEventMain;
                    FormEvent.EventMSG := 'Read more ' + IntToStr(CntExpBytes) + ' bytes';
                    FormEvent.ShowModal;
                    isOpenMsgEventBytesRecDataEn[NumListCmd] := not FormEvent.isNotShowEvent;
                  end;
            end;
        end
      else
        begin
          CntExpBytesREF := RXRead;
        end;


      Cnt   := ReadRingBuf(ReadMode <> ReadASCII);

      if (Cnt and $10000000) > 0 then
        begin
          isOut := True;
          Cnt := Cnt - $10000000;
        end;


      if ((Cnt > 0) and (ReadMode = ReadASCII)) then
        isOut := (((RxBufData[Cnt - 1] = $0A) and                                              isSep0A) or
                  ((RxBufData[Cnt - 1] = $0D) and                                              isSep0D) or
                  ((RxBufData[Cnt - 1] = $00) and                                              isSep00) or
                  ((RxBufData[Cnt - 2] = $0D) and (RxBufData[Cnt - 1] = $0A) and (Cnt > 1) and isSep0D0A));


      isOut := (isOut) or (isSepAftSeq1_4 and (Cnt > 3) and (SepAftByte1_4_1 = RxBufData[Cnt-4])
                                                        and (SepAftByte1_4_2 = RxBufData[Cnt-3])
                                                        and (SepAftByte1_4_3 = RxBufData[Cnt-2])
                                                        and (SepAftByte1_4_4 = RxBufData[Cnt-1]));

      isOut := (isOut) or (isSepAftSeq1_3 and (Cnt > 2) and (SepAftByte1_3_1 = RxBufData[Cnt-3])
                                                        and (SepAftByte1_3_2 = RxBufData[Cnt-2])
                                                        and (SepAftByte1_3_3 = RxBufData[Cnt-1]));

      isOut := (isOut) or (isSepAftSeq1_2 and (Cnt > 1) and (SepAftByte1_2_1 = RxBufData[Cnt-2])
                                                        and (SepAftByte1_2_2 = RxBufData[Cnt-1]));

      isOut := (isOut) or ((Cnt > 0) and (isSepSymbol) and (RxBufData[Cnt - 1] = SepSymbol));

////
      isOut := (isOut) or (isSepAftSeq2_4 and (Cnt > 3) and (SepAftByte2_4_1 = RxBufData[Cnt-4])
                                                        and (SepAftByte2_4_2 = RxBufData[Cnt-3])
                                                        and (SepAftByte2_4_3 = RxBufData[Cnt-2])
                                                        and (SepAftByte2_4_4 = RxBufData[Cnt-1]));

      isOut := (isOut) or (isSepAftSeq2_3 and (Cnt > 2) and (SepAftByte2_3_1 = RxBufData[Cnt-3])
                                                        and (SepAftByte2_3_2 = RxBufData[Cnt-2])
                                                        and (SepAftByte2_3_3 = RxBufData[Cnt-1]));

      isOut := (isOut) or (isSepAftSeq2_2 and (Cnt > 1) and (SepAftByte2_2_1 = RxBufData[Cnt-2])
                                                        and (SepAftByte2_2_2 = RxBufData[Cnt-1]));

      isOut := (isOut) or ((Cnt > 0) and (isSepSymbol2) and (RxBufData[Cnt - 1] = SepSymbol2));


      isOut := (isOut) and (Cnt > 0);

      for iRxData := 0 to Cnt - 1 do
        begin
          GlBufRx.Buf[GlBufRx.Shift] := RxBufData[iRxData];
          inc(GlBufRx.Shift);
        end;

      MSec := MilliSecondOfTheWeek(Now);
      if MSec < MSecRefRX then
        MSecRefRX := MSec;

      if isAutoExpandNoInData then
        begin
          if (MSec - TimeLastRead > TimeAutoExpanNoData) and (isOpenComPort) then
            begin
              WriteLogEvent(Now, 'No read data ' + IntToStr(TimeAutoExpanNoData) +' ms');
              TimeLastRead := MSec;
              if (isExpWin) and (not IsIconic(Form1.Handle)) then
                begin
                  Application.Restore;
                end;
              if isOpenMsgEventNoIncomingDataEn[NumListCmd] then
                begin
                  FormEvent.SrcEvent := SrcEventMain;
                  FormEvent.EventMSG := 'No read data ' + IntToStr(TimeAutoExpanNoData) +' ms';
                  FormEvent.ShowModal;
                  isOpenMsgEventNoIncomingDataEn[NumListCmd] := not FormEvent.isNotShowEvent;
                end;
            end;
        end
      else
        begin
          TimeLastRead := MSec;
        end;

      isSendMemo := (isOut) or ((MSec - MSecRefRX > TimeOutAnsRX) and isSepTime and (GlBufRx.Shift > 0));

      isSendMemo := (isSendMemo) or (GlBufRx.Shift > MAX_SHIFT_BUF_RX);

      isSendMemo := (isSendMemo) or ((GlBufRx.Shift >= SepBytes) and isSepBytes);


      if isSendMemo then
        begin
          Time := BufDateTime[(iReadBuf - 1) and (RX_RING_BUF_SIZE-1)];
          CntRXOut  := CntRXOut + GlBufRx.Shift;
          RXOut     := RXOut    + GlBufRx.Shift;
          ReadBufRxInLog;
        end;

    end;

  isReadComProcess := false;
  RxTimer.Enabled  := true;
end;

procedure TForm1.RBManualClick(Sender: TObject);
begin
  ManualSelect;
end;



procedure TForm1.RBAfterAnsClick(Sender: TObject);
begin
  AftAnsSelect;
end;

procedure TForm1.RBPeriodClick(Sender: TObject);
begin
  PerSelSelect;
end;

procedure TForm1.RBSelClick(Sender: TObject);
begin
  WhChSelect;
end;

procedure TForm1.RBFirstClick(Sender: TObject);
begin
  OldCmdList.Enabled := true;
end;

procedure TForm1.StartSendCommands;
begin
  if (isManualSend = true) or (isAftAnsSend = true) then
    begin
      if (indexCmdInFile < OldCmdList.Count) then
        begin
          SendPortData(OldCmdList.Items[indexCmdInFile], AddStrCmd.Text, SendMode, true);
          inc(indexCmdInFile);
          if (indexCmdInFile = OldCmdList.Count) then
            begin
              indexCmdInFile := 0;
              if not CiklSend.Checked then
                ShowMessage('All commands sent');
            end;
        end;
     end;
  if isWhChSend = true then
    begin
    end;
  if isPeriodSend = true then
    begin
      TimerPeriod.Enabled := true;
    end;
  if isAftAnsSend = true then
    begin
    end;
  if indexCmdInFile >= OldCmdList.Count then
    OldCmdList.ItemIndex := 0
  else
    OldCmdList.ItemIndex := indexCmdInFile;
end;


procedure TForm1.SendStartClick(Sender: TObject);

begin
  SetEnHideTimer.Enabled := true;
  isEnHide := false;
  (Sender as TButton).Enabled := false;
  StartSendCommands;
  (Sender as TButton).Enabled := true;
  if indexCmdInFile >= OldCmdList.Count then
    OldCmdList.ItemIndex := 0
  else
    OldCmdList.ItemIndex := indexCmdInFile;
  //OldCmdList.SetFocus;
end;

procedure TForm1.TimerPeriodTimer(Sender: TObject);
var
  TmpMS : integer;
begin
  isShowMsgSendCmdFiles := true;
  if (isPeriodSend) and (isOpenComPort) then
    begin
      TmpMS := MilliSecondOfTheWeek(Now) ;
      if TmpMS < CntMs then CntMs := periodSend;
      if (TmpMS - CntMs) > periodSend then
        begin
          CntMs := TmpMS;
          if isFileCmdMode = true then
            begin
              if (indexCmdInFile < OldCmdList.Count) then
                begin
                  SendPortData(OldCmdList.Items[indexCmdInFile], AddStrCmd.Text, SendMode, true);
                  inc(indexCmdInFile);
                  if indexCmdInFile >= OldCmdList.Count then
                    OldCmdList.ItemIndex := 0
                  else
                    OldCmdList.ItemIndex := indexCmdInFile;
                end
              else if CiklSend.Checked = false then
                begin
                  (Sender as TTimer).Enabled := false;
                  indexCmdInFile := 0;
                  if isShowMsgSendCmdFiles then
                    begin
                      isShowMsgSendCmdFiles := false;
                      if not CiklSend.Checked then
                        ShowMessage('All commands sent');
                    end;
                end
              else
                indexCmdInFile := 0
            end
          else
            SendPortData(MainStrCmd.Text, AddStrCmd.Text, SendMode, true);
        end;
    end;
end;

procedure TForm1.PeriodTXKeyPress(Sender: TObject; var Key: Char);
  begin
    if not (Key in ['0'..'9', #8]) then
      Key := #0;
  end;

procedure TForm1.SetSASCII;
begin
  if NumListCmd > 0 then
    ListsCmd2[NumListCmd].SendMode := SendASCII;
  SendMode := SendASCII;
end;

procedure TForm1.SetSHEX;
begin
  if NumListCmd > 0 then
    ListsCmd2[NumListCmd].SendMode := SendHEX;
  SendMode := SendHex;
end;

procedure TForm1.SetSDEC;
begin
  if NumListCmd > 0 then
    ListsCmd2[NumListCmd].SendMode := SendDEC;
  SendMode := SendDEC;
end;


procedure TForm1.SetRASCII;
begin
  if NumListCmd > 0 then
    ListsCmd2[NumListCmd].ReadMode := ReadASCII;
  ReadMode := ReadASCII;
end;

procedure TForm1.SetRHEX;
begin
  if  NumListCmd > 0 then
    ListsCmd2[NumListCmd].ReadMode := ReadHex;
  ReadMode := ReadHex;
end;

procedure TForm1.SetRDEC;
begin
  if  NumListCmd > 0 then
    ListsCmd2[NumListCmd].ReadMode := ReadDec;
  ReadMode := ReadDec;
end;

procedure TForm1.SetRCUSTOM;
begin
  if  NumListCmd > 0 then
    ListsCmd2[NumListCmd].ReadMode := ReadCUSTOM;
  ReadMode := ReadCUSTOM;
end;




procedure TForm1.BTPalitraClick(Sender: TObject);
var
  ColorFon, ColorText, CurColorBuf : TColor;

begin
(Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;

  CurColorBuf := MainStrCmd.Color;
  FonColor.Color := clBtnFace;
  if FonColor.Execute then
    begin
      Form1.Color := FonColor.Color;
    end;
(Sender as TButton).Enabled := true;    
end;

procedure TForm1.SriftClick(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
    begin
      if FontSizeWindow < 100 then
        inc(FontSizeWindow);
    end;
  if Button = btPrev then
    begin
      if FontSizeWindow > 2 then
        dec(FontSizeWindow);
    end;
  FontSize := FontSizeWindow;
  CMainWindow.Font.Size      := FontSizeWindow;
  SecondWindow.Font.Size    := FontSizeWindow;
  CMainWindowAdd.Font.Size   := FontSizeWindow;
  SecondWindowAdd.Font.Size := FontSizeWindow;

end;

procedure TForm1.EditAllCmdMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ClearHelp;
end;

procedure TForm1.DelListMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
end;

procedure TForm1.OldCommandsBTMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ClearHelp;
end;

procedure TForm1.ListIncMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
end;

procedure TForm1.ListDecMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
end;

procedure TForm1.ButtonReadFileMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ClearHelp;
end;

procedure TForm1.SendStartMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
end;

procedure TForm1.BtSendMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ClearHelp;
  (Sender as TButton).Hint := 'Sending ' + '"' + MainStrCmd.Text + AddStrCmd.Text + '"';
  if isModeDialog then
    ActiveControl := BtSend;
  //MainStrCmd.Font.Style := [fsbold];
  //AddStrCmd.Font.Style  := [fsbold];
  //ClearAddInfo.Enabled := true;
end;

procedure TForm1.MainStrCmdMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ClearHelp;
  GetCursorPos(CoordMouseRefHelpConsol);
  TimeOutHelpConsol  := TIMEOUT_STOP_MOUSE;
end;

procedure TForm1.AddStrCmdMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
  GetCursorPos(CoordMouseRefHelpAddConsol);
  TimeOutHelpAddConsol  := TIMEOUT_STOP_MOUSE;
end;

procedure TForm1.LogPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
end;

procedure TForm1.SecondWindowMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ClearHelp;
end;

procedure TForm1.MainWindowMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ClearHelp;
end;

procedure TForm1.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
end;

procedure TForm1.MainPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
end;


procedure TForm1.BtInfoClick(Sender: TObject);
begin
  SetEnHideTimer.Enabled := true;
  isEnHide := false;

  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  //if IS_MIELTA = 0 then
    Info.ShowModal;
    //Form10.ShowModal
  //else if IS_MIELTA = 1 then
  //  Form9.ShowModal
  ///else if IS_MIELTA = 2 then
  //  Form10.ShowModal;


end;

procedure TForm1.SaveFClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  SaveCmdListsInFile;
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.lstFastOldCmdKeyPress(Sender: TObject; var Key: Char);
begin

  if (Key = #13) and ((Sender as TListBox).ItemIndex > -1) then
    begin
      SetEnHideTimer.Enabled := true;
      isEnHide := false;
      MainStrCmd.Text := (Sender as TListBox).Items[(Sender as TListBox).ItemIndex];
      (Sender as TListBox).Visible := false;
      if isModeDialog then
      ActiveControl := MainStrCmd;
    end;

  if Key = #27 then
    begin
    SetEnHideTimer.Enabled := true;
    isEnHide := false;
    (Sender as TListBox).Visible := false;
    if isModeDialog then
    ActiveControl := MainStrCmd;
  end;


end;

procedure TForm1.lstFastOldCmdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //if Key = VK_DOWN then
  //  if (Sender as TListBox).ItemIndex < (Sender as TListBox).Count then
  //    (Sender as TListBox).ItemIndex := (Sender as TListBox).ItemIndex + 1;

  // if Key = VK_UP then
  //  if (Sender as TListBox).ItemIndex > 0 then
  //    (Sender as TListBox).ItemIndex := (Sender as TListBox).ItemIndex - 1;

  //Key := 0;

end;

procedure TForm1.MainStrCmdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    begin
      SetEnHideTimer.Enabled := true;
      isEnHide := false;

      ReadOldCmd;
      lstFastOldCmd.Width   := MainStrCmd.Width + Button50.Width;
      lstFastOldCmd.Visible := true;
      if isModeDialog then
      ActiveControl := lstFastOldCmd;
    end;

  if Key = VK_UP then
    begin
      SetEnHideTimer.Enabled := true;
      isEnHide := false;

      CMainWindow.Clear;
      CMainWindowAdd.Clear;
      SecondWindow.Clear;
      SecondWindowAdd.Clear;
      CntDataLog := 0;
    end;
end;

procedure TForm1.CustomFunctionsTimer(Sender: TObject);
  var
    OFlow      : Real;
    TmpStr     : string;
    TmpStr2    : string;
    deltaRXCur : integer;

begin

  //RBASCII.Enabled := isEnSwitch;
  //RBHEX.Enabled   := isEnSwitch;
  //ListDec.Enabled := isEnSwitch;
  //ListInc.Enabled := isEnSwitch;

  ctxt1.Caption := IntToStr(CntDataLog);

  if (CntDataLog > CntClrBytesLog) then
    begin
      CMainWindow.Clear;
      CMainWindowAdd.Clear;
      CntDataLog := 0;
      CntBytesAdd := 0;
    end;

  if (CntBytesAdd > CntClrBytesLog) then
    begin
      CMainWindowAdd.Clear;
      CntBytesAdd := 0;
    end;

  deltaRXCur := CntRXRead - CntRXOut;

  if (deltaRXCur >= DeltaRXOld) and (deltaRXOld > 0)then
    begin
      inc(CntOF);
    end
  else if deltaRXCur < DeltaRXOld then
    begin
      CntOF := 0;
    end;

  if CntOF > 100 then
    StaticText3.Color := clYellow
  else
    StaticText3.Color := Form1.Color;

  if isColorInputData then
    if TimeOutColorStat > 0 then
      begin
        Dec(TimeOutColorStat);
        if TimeOutColorStat = 0 then
          begin
            CMainWindow.Color := ColorInputData;
            CMainWindowAdd.Color := ColorInputData;
          end
        else
          begin
            CMainWindow.Color := MainStrCmd.Color;
            CMainWindowAdd.Color := MainStrCmd.Color;
          end;
      end;

  if not isOpenPort then
    begin
      CMainWindow.Color := MainStrCmd.Color;
      CMainWindowAdd.Color := MainStrCmd.Color;
    end;




  DeltaRXOld := deltaRXCur;


  CheckConnect.Enabled := AutoConnect.Checked;
  OFlow := 100 * CntDataReadBufAv/RX_RING_BUF_SIZE;
  lblLostData.Caption := 'Lost data: ' + IntToStr(LostData);
  //OFlow := Abs(RXRead - RXOut)/RX_RING_BUF_SIZE * 100;

  if (MaxOF < 99.999) and (OFlow >= 99.999) then
    WriteLogEvent(Now, 'Input buffer overflow');

  if OFlow > MaxOF then
    begin
      MaxOF := OFlow;
      if MaxOF > 99.9 then
        begin
          StaticText3.Color := clYellow;
        end;
    end;



  Str(MaxOF:3:1, TmpStr2);
  Str(OFlow:3:1, TmpStr);

  StaticText3.Caption := 'T:'+IntToStr(CntTX)+' R:'+IntToStr(CntRXRead) + ' O:' + IntToStr(CntRXOut) + ' OF:' + TmpStr+'(' + TmpStr2 +')%';

  lstFastOldCmd.Width := MainStrCmd.Width + Button50.Width + 1;
  TextTime.Caption    := TimeToStr(Time);

  if (CiklSend.Checked = true) and (isPeriodSend = true) then
    TimerPeriod.Enabled := true;


  if TimeOutHelpConnect = TIMEOUT_STOP_MOUSE then
    GetCursorPos(CoordMouseRefHelpConnect);
  if TimeOutHelpConnect > 0 then
    begin
      dec(TimeOutHelpConnect);
      if TimeOutHelpConnect = 0 then
        begin
          GetCursorPos(CoordMouseCur);
          if (CoordMouseRefHelpConnect.X = CoordMouseCur.X) and (CoordMouseRefHelpConnect.Y = CoordMouseCur.Y) then
            OutHelpConnect;
        end;
    end;
/////////////////////////////////////

  if TimeOutHelpRescan = TIMEOUT_STOP_MOUSE then
    GetCursorPos(CoordMouseRefHelpRescan);
  if TimeOutHelpRescan > 0 then
  begin
    dec(TimeOutHelpRescan);
  if TimeOutHelpRescan = 0 then
    begin
      GetCursorPos(CoordMouseCur);
      if (CoordMouseRefHelpRescan.X = CoordMouseCur.X) and (CoordMouseRefHelpRescan.Y = CoordMouseCur.Y) then
        OutHelpRescan;
    end;
  end;
/////////////////////////////////////

  if TimeOutHelpAutoConnect = TIMEOUT_STOP_MOUSE then
    GetCursorPos(CoordMouseRefHelpAutoConnect);
  if TimeOutHelpAutoConnect > 0 then
    begin
    dec(TimeOutHelpAutoConnect);
  if TimeOutHelpAutoConnect = 0 then
    begin
      GetCursorPos(CoordMouseCur);
      if (CoordMouseRefHelpAutoConnect.X = CoordMouseCur.X) and (CoordMouseRefHelpAutoConnect.Y = CoordMouseCur.Y) then
        OutHelpAutoConnect;
    end;
    end;
/////////////////////////////////////




  if TimeOutHelpTimeRX = TIMEOUT_STOP_MOUSE then
    begin
      GetCursorPos(CoordMouseRefHelpTimeRX);
    end;
  if TimeOutHelpTimeRX > 0 then
    begin
    dec(TimeOutHelpTimeRX);
  if TimeOutHelpTimeRX = 0 then
    begin
      GetCursorPos(CoordMouseCur);
      if (CoordMouseRefHelpTimeRX.X = CoordMouseCur.X) and (CoordMouseRefHelpTimeRX.Y = CoordMouseCur.Y) then
        OutHelpTimeRX;
    end;
    end;
/////////////////////////////////////

  if TimeOutHelpFiltr = TIMEOUT_STOP_MOUSE then
    GetCursorPos(CoordMouseRefHelpFiltr);
  if TimeOutHelpFiltr > 0 then
    begin
    dec(TimeOutHelpFiltr);
  if TimeOutHelpFiltr = 0 then
    begin
      GetCursorPos(CoordMouseCur);
      if (CoordMouseRefHelpFiltr.X = CoordMouseCur.X) and (CoordMouseRefHelpFiltr.Y = CoordMouseCur.Y) then
        OutHelpFiltr;
    end;
    end;
/////////////////////////////////////

  if TimeOutHelpModeManual = TIMEOUT_STOP_MOUSE then
    GetCursorPos(CoordMouseRefHelpModeManual);
  if TimeOutHelpModeManual > 0 then
    begin
    dec(TimeOutHelpModeManual);
  if TimeOutHelpModeManual = 0 then
    begin
      GetCursorPos(CoordMouseCur);
      if (CoordMouseRefHelpModeManual.X = CoordMouseCur.X) and (CoordMouseRefHelpModeManual.Y = CoordMouseCur.Y) then
        OutHelpModeManual;
    end;
    end;
/////////////////////////////////////

  if TimeOutHelpModeSel = TIMEOUT_STOP_MOUSE then
    GetCursorPos(CoordMouseRefHelpModeSel);
  if TimeOutHelpModeSel > 0 then
    begin
    dec(TimeOutHelpModeSel);
  if TimeOutHelpModeSel = 0 then
    begin
      GetCursorPos(CoordMouseCur);
      if (CoordMouseRefHelpModeSel.X = CoordMouseCur.X) and (CoordMouseRefHelpModeSel.Y = CoordMouseCur.Y) then
        OutHelpModeSel;
    end;
    end;
/////////////////////////////////////

  if TimeOutHelpModeAfterAns = TIMEOUT_STOP_MOUSE then
    GetCursorPos(CoordMouseRefHelpModeAfterAns);
  if TimeOutHelpModeAfterAns > 0 then
    begin
    dec(TimeOutHelpModeAfterAns);
  if TimeOutHelpModeAfterAns = 0 then
    begin
      GetCursorPos(CoordMouseCur);
      if (CoordMouseRefHelpModeAfterAns.X = CoordMouseCur.X) and (CoordMouseRefHelpModeAfterAns.Y = CoordMouseCur.Y) then
        OutHelpModeAfterAns;
    end;
    end;
/////////////////////////////////////

  if TimeOutHelpModePeriod = TIMEOUT_STOP_MOUSE then
    GetCursorPos(CoordMouseRefHelpModePeriod);
  if TimeOutHelpModePeriod > 0 then
    begin
    dec(TimeOutHelpModePeriod);
  if TimeOutHelpModePeriod = 0 then
    begin
      GetCursorPos(CoordMouseCur);
      if (CoordMouseRefHelpModePeriod.X = CoordMouseCur.X) and (CoordMouseRefHelpModePeriod.Y = CoordMouseCur.Y) then
        OutHelpModePeriod;
    end;
    end;
/////////////////////////////////////

  if TimeOutHelpForConnect = TIMEOUT_STOP_MOUSE then
    GetCursorPos(CoordMouseRefHelpForConnect);
  if TimeOutHelpForConnect > 0 then
    begin
    dec(TimeOutHelpForConnect);
  if TimeOutHelpForConnect = 0 then
    begin
      GetCursorPos(CoordMouseCur);
      if (CoordMouseRefHelpForConnect.X = CoordMouseCur.X) and (CoordMouseRefHelpForConnect.Y = CoordMouseCur.Y) then
        OutHelpForConnect;
    end;
    end;
/////////////////////////////////////

  if TimeOutHelpConsol = TIMEOUT_STOP_MOUSE then
    GetCursorPos(CoordMouseRefHelpConsol);
  if TimeOutHelpConsol > 0 then
    begin
    dec(TimeOutHelpConsol);
  if TimeOutHelpConsol = 0 then
    begin
      GetCursorPos(CoordMouseCur);
      if (CoordMouseRefHelpConsol.X = CoordMouseCur.X) and (CoordMouseRefHelpConsol.Y = CoordMouseCur.Y) then
        OutHelpConsol;
    end;
    end;
/////////////////////////////////////

  if TimeOutHelpAddConsol = TIMEOUT_STOP_MOUSE then
    GetCursorPos(CoordMouseRefHelpAddConsol);
  if TimeOutHelpAddConsol > 0 then
    begin
    dec(TimeOutHelpAddConsol);
  if TimeOutHelpAddConsol = 0 then
    begin
      GetCursorPos(CoordMouseCur);
      if (CoordMouseRefHelpAddConsol.X = CoordMouseCur.X) and (CoordMouseRefHelpAddConsol.Y = CoordMouseCur.Y) then
        OutHelpAddConsol;
    end;
    end;
/////////////////////////////////////

  if TimeOutHelpCiklSend = TIMEOUT_STOP_MOUSE then
    GetCursorPos(CoordMouseRefHelpCiklSend);
  if TimeOutHelpCiklSend > 0 then
    begin
    dec(TimeOutHelpCiklSend);
  if TimeOutHelpCiklSend = 0 then
    begin
      GetCursorPos(CoordMouseCur);
      if (CoordMouseRefHelpCiklSend.X = CoordMouseCur.X) and (CoordMouseRefHelpCiklSend.Y = CoordMouseCur.Y) then
        OutHelpCiklSend;
    end;
    end;
/////////////////////////////////////

end;

procedure TForm1.lstFastOldCmdExit(Sender: TObject);
begin
  (Sender as TListBox).Visible := false;
end;

procedure TForm1.CBListsDblClick(Sender: TObject);
begin
  //CBLists.Visible := false;
  StListName.Caption := ListsCmd2[NumListCmd].NameList;
  StListName.Visible := true;
end;

procedure TForm1.STListNameDblClick(Sender: TObject);
begin
  if isFileCmdMode then Exit;
  SelTerm.Visible := not SelTerm.Visible;
  DelList.Enabled := false;
  BtCopyList.Enabled := false;
  BtPasteList.Enabled := false;
  rb1.Checked := False;
  grp12.Color := form1.Color;
  //if not isFileCmdMode then
    begin
      //CBLists.Visible    := true;
      //StListName.Visible := false;
    end;
end;

procedure TForm1.OutHelpHelp;
begin
  Form1.STH1.Caption := 'Quick reference for each command';
  Form1.STH2.Caption := ' A description of the commands will be displayed here.';
  Form1.STH3.Caption := ' Editable help is displayed when you hover the mouse';
  Form1.STH4.Caption := ' pointer over the button with  the corresponding command';
  Form1.STH5.Caption := '                 ';
  Form1.STH6.Caption := ' To edit the help, you need to open the editor and ';
  Form1.STH7.Caption := ' double-click on the corresponding command in the';
  Form1.STH8.Caption := ' editing mode. ';
  Form1.STH9.Caption := ' To display help on controls, hold the mouse pointer ';
  Form1.STH10.Caption :=' in a stationary state over the corresponding control.';
  Form1.STH11.Caption :=' ';
  Form1.STH12.Caption :=' ';
end;


procedure TForm1.BTClrStatClick(Sender: TObject);
begin
  Stats.MinTimeWait := $7FFFFFFF;
  Stats.MaxTimeWait := 0;
  Stats.DataSend    := 0;
  Stats.DataRead    := 0;
  Stats.HitCounter  := 0;
  LostData          := 0;

  
  MinTimeWait.Caption := 'MIN_T_W:  NA';
  MaxTimeWait.Caption := 'MAX_T_W: NA';
  LRead.Caption := 'Read: 0';
  LSend.Caption := 'Send: 0';
  CntCmpLvl.Caption := 'Match cnt ' + '"' + FiltrLog.Text + '" : 0';
  EventLog.Clear();
end;

procedure TForm1.AddStrCmdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
    end;
  if Key = #27 then
    begin
      AddStrCmd.Text :='';
      Key := #0;
    end;
end;


procedure TForm1.EditCmdSetIsReqSave(Sender: TObject; var Key: Char);
begin
  isReqSaveCmdList := true;
end;


procedure TForm1.AddStrCmdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    begin
      SetEnHideTimer.Enabled := true;
      isEnHide := false;
      PStats.Visible   := false;
      LBTail.Visible   := true;
      Button49.Visible := false;
      if isModeDialog then
      ActiveControl := LBTail;
    end;
end;

procedure TForm1.LBTailExit(Sender: TObject);
begin
  (Sender as TListBox).Visible := false;
  PStats.Visible := isStatsPanel;
  Button49.Visible := true;
end;

procedure TForm1.LBTailKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) and ((Sender as TListBox).ItemIndex > -1) then
    begin
      SetEnHideTimer.Enabled := true;
      isEnHide := false;

      AddStrCmd.Text := (Sender as TListBox).Items[(Sender as TListBox).ItemIndex];
      (Sender as TListBox).Visible := false;
      if isModeDialog then
      ActiveControl := AddStrCmd;
    end;

  if Key = #27 then
    begin
    SetEnHideTimer.Enabled := true;
    isEnHide := false;
    (Sender as TListBox).Visible := false;
    if isModeDialog then
    ActiveControl := AddStrCmd;
    end;
end;

procedure TForm1.Str1Click(Sender: TObject);
begin
  ReadOldCmd;

  if lstFastOldCmd.Visible = true then
    lstFastOldCmd.Visible := false
  else
    begin
      lstFastOldCmd.Visible := true;
      if isModeDialog then
      ActiveControl := lstFastOldCmd;
    end;
end;

procedure TForm1.Str2Click(Sender: TObject);
begin
  if LBTail.Visible = true then
    begin
    LBTail.Visible := false;
    PStats.Visible := isStatsPanel;
    Button49.Visible := false;
    end
  else
    begin
      PStats.Visible := false;
      LBTail.Visible := true;
      if isModeDialog then
      ActiveControl := LBTail;
      Button49.Visible := false;
    end;end;

procedure TForm1.FiltrLogClick(Sender: TObject);
begin
  if TypeFilterLog <> TFLNoFilter then (Sender as TEdit).Color := clYellow;

  lstFastOldCmd.Visible := false;
  LBTail.Visible     := false;
end;

procedure TForm1.FiltrLogExit(Sender: TObject);
begin
  if (Sender as TEdit).Text = '' then
    begin
      (Sender as TEdit).Color := Form1.Color;
    end
  else
    begin
      if TypeFilterLog <> TFLNoFilter then (Sender as TEdit).Color := clYellow;
    end;

  if Length((Sender as TEdit).Text) < 250 then
    begin
      ListsCmd2[NumListCmd].FiltrStr[1] := (Sender as TEdit).Text;
    end;
end;

procedure TForm1.BTConnectMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
  TimeOutHelpConnect      := TIMEOUT_STOP_MOUSE;
end;

procedure TForm1.BTRescanMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
  TimeOutHelpRescan      := TIMEOUT_STOP_MOUSE;
end;

procedure TForm1.AutoConnectMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ClearHelp;
  TimeOutHelpAutoConnect  := TIMEOUT_STOP_MOUSE;
end;

procedure TForm1.TimeOutAnsMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ClearHelp;
  TimeOutHelpTimeRX  := TIMEOUT_STOP_MOUSE;
end;

procedure TForm1.FiltrLogMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
  TimeOutHelpFiltr  := TIMEOUT_STOP_MOUSE;
end;

procedure TForm1.RBManualMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
  TimeOutHelpModeManual  := TIMEOUT_STOP_MOUSE;
end;

procedure TForm1.RBSelMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
  TimeOutHelpModeSel  := TIMEOUT_STOP_MOUSE;
end;

procedure TForm1.RBAfterAnsMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ClearHelp;
  TimeOutHelpModeAfterAns  := TIMEOUT_STOP_MOUSE;
end;

procedure TForm1.RBPeriodMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
  TimeOutHelpModePeriod  := TIMEOUT_STOP_MOUSE;
end;

procedure TForm1.SendAsReconnMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ClearHelp;
  TimeOutHelpForConnect  := TIMEOUT_STOP_MOUSE;
end;

procedure TForm1.CiklSendMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ClearHelp;
  TimeOutHelpCiklSend  := TIMEOUT_STOP_MOUSE;
end;

//////////////////////////////////////////////////////////////////

procedure TForm1.OutHelpConnect;
begin
  Form1.STH1.Caption := 'Create a connection';
  Form1.STH2.Caption := '   ';
  Form1.STH3.Caption := '   ';
  Form1.STH4.Caption := '   ';
  Form1.STH5.Caption := '   ';
  Form1.STH6.Caption := '   ';
  Form1.STH7.Caption := '   ';
  Form1.STH8.Caption := '   ';
  Form1.STH9.Caption := '   ';
  Form1.STH10.Caption :='   ';
  Form1.STH11.Caption :='   ';
  Form1.STH12.Caption :='   ';
end;

procedure TForm1.OutHelpRescan;
begin
//  Form1.STH1.Caption := 'Scan for available COM ports';
//  Form1.STH2.Caption := '   ';
//  Form1.STH3.Caption := ' The algorithm takes a list of available.      ';
//  Form1.STH4.Caption := ' ports from the Windows registry.              ';
//  Form1.STH5.Caption := ' If the program is launched as a user, Windows ';
//  Form1.STH6.Caption := ' may not provide a list of ports, in this case,';
//  Form1.STH7.Caption := ' you need to select the desired port from the  ';
//  Form1.STH8.Caption := ' drop-down list manually.                      ';
//  Form1.STH9.Caption := ' The library used only supports working with   ';
//  Form1.STH10.Caption :=' COM1..COM9 ports, therefore, if necessary,    ';
//  Form1.STH11.Caption :=' reassign the name in the COM port settings.   ';
//  Form1.STH12.Caption :=' ';
end;


procedure TForm1.OutHelpAutoConnect;
begin
//  Form1.STH1.Caption := 'Auto connect to COM port';
//  Form1.STH2.Caption := '   ';
//  Form1.STH3.Caption := '   Данная  опция  актуальна  для эмуляторов';
//  Form1.STH4.Caption := '   COM-порта, когда возможно временное про-';
//  Form1.STH5.Caption := '   падание порта в системе:  перезапуск  МК';
//  Form1.STH6.Caption := '   или переподключение переходника USB-COM';
//  Form1.STH7.Caption := '   ';
//  Form1.STH8.Caption := '   При использовании данной опции возможна ';
//  Form1.STH9.Caption := '   некорректная работа драйвера COM-порта -';
//  Form1.STH10.Caption :='   возможны зависания программы.';
//  Form1.STH11.Caption :='   ';
//  Form1.STH12.Caption :='   ';
end;

procedure TForm1.OutHelpTimeRX;
begin
//  Form1.STH1.Caption := 'Время накопления принимаемых данных';
// Form1.STH2.Caption := '   ';
//  Form1.STH3.Caption := '   При получении длинных сообщений возможна';
//  Form1.STH4.Caption := '   фрагментация принимаемых пакетов и вывод';
//  Form1.STH5.Caption := '   данных частями в разных строках лога.';
//  Form1.STH6.Caption := '   Для  исключения  данной   ситуации  есть';
//  Form1.STH7.Caption := '   возможность  задать  максималльное время';
//  Form1.STH8.Caption := '   накопления данных в приёмном буфере.';
//  Form1.STH9.Caption := '   Данная настройка  актуальна при работе с';
//  Form1.STH10.Caption :='   бинарными данными, когда нет явных приз-';
//  Form1.STH11.Caption :='   наков разделения пакетов';
//  Form1.STH12.Caption :='   ';
end;

procedure TForm1.OutHelpFiltr;
begin
//  Form1.STH1.Caption := 'Filtering log messages';
//  Form1.STH2.Caption := '   ';
//  Form1.STH3.Caption := ' Здесь задаётся набор символов,по которым';
//  Form1.STH4.Caption := ' фильруются  выводимые  сообщения в логе.';
//  Form1.STH5.Caption := ' Если  окно   пустое,  то  выводятся  все';
//  Form1.STH6.Caption := ' данные,  отправляемые  и  получаемые  по';
//  Form1.STH7.Caption := ' COM-порту.';
//  Form1.STH8.Caption := ' Данную  возможность  удобно использовать';
//  Form1.STH9.Caption := ' для захвата нужных данных в т.ч. и в би-';
//  Form1.STH10.Caption :=' нарном режиме.';
//  Form1.STH11.Caption :=' ';
//  Form1.STH12.Caption :=' ';
end;


procedure TForm1.OutHelpModeManual;
begin
//  Form1.STH1.Caption := 'Отправка команд вручную';
//  Form1.STH2.Caption := '   ';
//  Form1.STH3.Caption := '   Команда будет  отправляться  по  нажатию';
//  Form1.STH4.Caption := '   Enter или кнопки "Отправить"';
//  Form1.STH5.Caption := '   ';
//  Form1.STH6.Caption := '   ';
//  Form1.STH7.Caption := '   ';
//  Form1.STH8.Caption := '   ';
//  Form1.STH9.Caption := '   ';
//  Form1.STH10.Caption :='   ';
//  Form1.STH11.Caption :='   ';
//  Form1.STH12.Caption :='   ';
end;

procedure TForm1.OutHelpModeSel;
begin
//  Form1.STH1.Caption := 'Отправка команд при выборе';
//  Form1.STH2.Caption := '   ';
//  Form1.STH3.Caption := '   Команда будет  отправляться  по  нажатию';
//  Form1.STH4.Caption := '   соответствующей  кнопки  с  макросом или';
//  Form1.STH5.Caption := '   при  выборе команды в списке прочитанных';
//  Form1.STH6.Caption := '   из файла.';
//  Form1.STH7.Caption := '   ';
//  Form1.STH8.Caption := '   ';
//  Form1.STH9.Caption := '   ';
//  Form1.STH10.Caption :='   ';
//  Form1.STH11.Caption :='   ';
//  Form1.STH12.Caption :='   ';
end;

procedure TForm1.OutHelpModeAfterAns;
begin
//  Form1.STH1.Caption := 'Отправка команды после ответа';
//  Form1.STH2.Caption := '   ';
//  Form1.STH3.Caption := '   Содержимое консольной строки будет  отп-';
//  Form1.STH4.Caption := '   равляться  сразу   же   после  получения';
//  Form1.STH5.Caption := '   ответа ответа на предыдущую команду  или';
//  Form1.STH6.Caption := '   после получения каких-либо данных.';
//  Form1.STH7.Caption := '   ';
//  Form1.STH8.Caption := '   При отправке команд из файла после ответа';
//  Form1.STH9.Caption := '   на  предыдущую  команду  будет отправлена';
//  Form1.STH10.Caption :='   следующая по списку команда.';
//  Form1.STH11.Caption :='   ';
//  Form1.STH12.Caption :='   ';
end;

procedure TForm1.OutHelpModePeriod;
begin
//  Form1.STH1.Caption := 'Периодическая отправка команд';
//  Form1.STH2.Caption := '   ';
//  Form1.STH3.Caption := '   Содержимое   консольной   строки   будет';
//  Form1.STH4.Caption := '   отправляться с указанной периодичностью.';
//  Form1.STH5.Caption := '   ';
//  Form1.STH6.Caption := '   ';
//  Form1.STH7.Caption := '   ';
//  Form1.STH8.Caption := '   ';
//  Form1.STH9.Caption := '   ';
//  Form1.STH10.Caption :='   ';
//  Form1.STH11.Caption :='   ';
//  Form1.STH12.Caption :='   ';
end;

procedure TForm1.OutHelpForConnect;
begin
//  Form1.STH1.Caption := 'Отправка команд после соединения';
//  Form1.STH2.Caption := '   ';
//  Form1.STH3.Caption := '   Если выбрана данная опция,  то  отправка';
//  Form1.STH4.Caption := '   команд  начнётся  сразу  после  создания';
//  Form1.STH5.Caption := '   соединения. Алгоритм отправки зависит от';
//  Form1.STH6.Caption := '   выбранного режима: возможна отправка как';
//  Form1.STH7.Caption := '   одной команды  в ручном  режиме,  так  и';
//  Form1.STH8.Caption := '   последовательности команд из файла, если';
//  Form1.STH9.Caption := '   открыт файл с командами  и выбран  режим';
//  Form1.STH10.Caption :='   "После ответа" или "Период, мс"';
//  Form1.STH11.Caption :='   ';
//  Form1.STH12.Caption :='   ';
end;

procedure TForm1.OutHelpConsol;
begin
  Form1.STH1.Caption := 'Monsoon line';
  Form1.STH2.Caption := ' ';
  Form1.STH3.Caption := ' The set of sent data is formed from ';
  Form1.STH4.Caption := ' the contents of the main and additional lines.';
  Form1.STH5.Caption := ' additional lines.';
  Form1.STH6.Caption := ' ';
  Form1.STH7.Caption := ' ENTER - send command with deletion';
  Form1.STH8.Caption := ' Сtrl + ENTER - send command without deleting';
  Form1.STH9.Caption := ' Esc - clear a line without sending';
  Form1.STH10.Caption :=' DOWN arrow - show previously sent commands';
  Form1.STH11.Caption :=' UP arrow - clear log.';
  Form1.STH12.Caption :=' ';
end;

procedure TForm1.OutHelpAddConsol;
begin
  Form1.STH1.Caption := 'Package tail';
  Form1.STH2.Caption := '   ';
  Form1.STH3.Caption := ' Content is sent to all commands sent to ';
  Form1.STH4.Caption := ' the port';
  Form1.STH5.Caption := ' $XX - add a HEX number in ASCII mode,';
  Form1.STH6.Caption := ' for example: $0D$0A - add \r\n.';
  Form1.STH7.Caption := ' In binary mode, you can write without ';
  Form1.STH8.Caption := ' the "$" symbol, but there must be a space';
  Form1.STH9.Caption := ' between the numbers. You can also add a ';
  Form1.STH10.Caption :=' template containing the checksum to the ';
  Form1.STH11.Caption :=' tail of the message.';
  Form1.STH12.Caption :=' for example: "*[XOR_8(1..n)]$0D$0A" ';
end;

procedure TForm1.OutHelpCiklSend;
begin
//  Form1.STH1.Caption := 'Циклическая отправка';
//  Form1.STH2.Caption := '   ';
//  Form1.STH3.Caption := '  Команды из файла отправляются  циклически,';
//  Form1.STH4.Caption := '  т.е. после достижения конца файла отправка';
//  Form1.STH5.Caption := '  команд начинается заново, начиная с первой';
//  Form1.STH6.Caption := '  команды.';
//  Form1.STH7.Caption := '  ';
//  Form1.STH8.Caption := '  ';
//  Form1.STH9.Caption := '  ';
//  Form1.STH10.Caption :='  ';
//  Form1.STH11.Caption :='  ';
//  Form1.STH12.Caption :='  ';
end;

procedure TForm1.AutoConnectClick(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked = true then
    ShowMessage('With AutoConnect enabled, some COM port drivers may have errors!');
end;

procedure TForm1.MonDialogClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;


  if (Sender as TButton).Tag = 0 then
    begin
      isModeDialog := False;
      LogPanel.Visible            := false;
      MainPanel.Visible           := false;
      CMainWindow.Height           := CMainWindow.Height + LogPanel.Height + MainPanel.Height;
      SecondWindow.Height         := SecondWindow.Height + LogPanel.Height + MainPanel.Height;
      CMainWindowAdd.Height        := CMainWindowAdd.Height + LogPanel.Height + MainPanel.Height;
      SecondWindowAdd.Height      := SecondWindowAdd.Height + LogPanel.Height + MainPanel.Height;
      (Sender as TButton).Caption := 'Dialog mode';
      (Sender as TButton).Tag     := 1;
    end
  else if (Sender as TButton).Tag = 1 then
    begin
      isModeDialog := True;
      LogPanel.Visible  := true;
      MainPanel.Visible := true;
      CMainWindow.Height   := CMainWindow.Height - LogPanel.Height - MainPanel.Height;
      SecondWindow.Height := SecondWindow.Height - LogPanel.Height - MainPanel.Height;

      CMainWindowAdd.Height   := CMainWindowAdd.Height - LogPanel.Height - MainPanel.Height;
      SecondWindowAdd.Height := SecondWindowAdd.Height - LogPanel.Height - MainPanel.Height;


      (Sender as TButton).Caption := 'Monitor mode';
      (Sender as TButton).Tag := 0;
    end;
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.lstFastOldCmdDblClick(Sender: TObject);
begin
  MainStrCmd.Text := (Sender as TListBox).Items[(Sender as TListBox).ItemIndex];
  (Sender as TListBox).Visible := false;
  if isModeDialog then
  ActiveControl := MainStrCmd;
end;

procedure TForm1.LBTailDblClick(Sender: TObject);
begin
  AddStrCmd.Text := (Sender as TListBox).Items[(Sender as TListBox).ItemIndex];
  (Sender as TListBox).Visible := false;
  if isModeDialog then
  ActiveControl := AddStrCmd;
end;

procedure TForm1.MainWindowDblClick(Sender: TObject);
begin
  (Sender as TMemo).ShowHint := false;
  CMainWindow.ShowHint := false;
  MonDialog.Click;
end;

procedure TForm1.SecondWindowDblClick(Sender: TObject);
begin
  (Sender as TMemo).ShowHint := false;
  MonDialog.Click;
end;

procedure TForm1.AddStrCmdExit(Sender: TObject);
begin
  if ListsCmd2[NumListCmd].TailStr <> (Sender as TEdit).Text then
    begin
      ListsCmd2[NumListCmd].TailStr := (Sender as TEdit).Text;
      WriteListCmd(NumListCmd);
      SaveCmdListsInFile;
    end;
end;

procedure TForm1.AddWindowClick(Sender: TObject);
var
  Width : integer;
  isPause : boolean;
  Visible : Boolean;
begin
  (Sender as TButton).Enabled := false;
  isPause := SecondWindow.Visible;
  Visible := false;

  CMainWindow.Visible      := false;
  CMainWindowAdd.Visible   := false;


  SecondWindow.Visible    := false;
  SecondWindowAdd.Visible := false;

  Width := CMainWindow.Width;
  if isAddWindow = true then
    begin
      (Sender as TButton).Font.Style := [];
      isAddWindow        := false;
      isEnHide := false;
      CMainWindow.Width   := Width;
      SecondWindow.Width := Width;
      pnlAddWin.Visible := False;
      isEnHide := true;


      if isPause = true then
        begin
          SecondWindow.Visible := true;
        end
      else
        begin
          CMainWindow.Visible := true;
        end;

    end
  else
    begin
      (Sender as TButton).Font.Style := [fsbold,fsUnderline];
      if isPause = true then
        begin
          SecondWindow.Visible    := true;
          SecondWindowAdd.Visible := true;
        end
      else
        begin
          CMainWindow.Visible      := true;
          CMainWindowAdd.Visible   := true;
        end;

      isAddWindow := true;

      isEnHide := false;
      CMainWindow.Width        := Trunc(Width / 2);
      SecondWindow.Width      := Trunc(Width / 2);

      CMainWindowAdd.Width     := Trunc(Width / 2);
      SecondWindowAdd.Width   := Trunc(Width / 2);

      CMainWindowAdd.Left      := CMainWindow.Left + Trunc(Width / 2) + 4;
      SecondWindowAdd.Left    := CMainWindow.Left + Trunc(Width / 2) + 4;

      SettBt.Visible    := Visible;
      CSLbt.Visible     := Visible;
      BtListCmd.Visible := Visible;
      BtFont.Visible    := Visible;
      BTPalitra.Visible := Visible;
      MonDialog.Visible := Visible;
      BtAnsList.Visible := Visible;
      FSmodeBT.Visible  := Visible;
      btnBtShowStat.Visible   := Visible;
      pnlSep.Visible    := Visible;
      BrutForceBT.Visible  := Visible;
      BtBTASCIITABLE.Visible      := Visible;
      BtParser.Visible      := Visible;
      BtAddMacros.Visible := Visible;
      BtUtilites.Visible := Visible;
      BtAddPorts.Visible := Visible;
      BtTableCustom.Visible := Visible;
      btnPacketStats.Visible := Visible;
      BtMultiPort.Visible := Visible;
      btnParserASCII.Visible := Visible;
      Bt23.Visible := Visible;
      btnBt24.Visible := Visible;




      grpLineSeparator.Visible := Visible;
      BtAddFunctions.Font.Style := [];
      BtAddFunctions.Tag        := 0;
      pnlAddWin.Visible := true;
      isEnHide := true;


    end;
    (Sender as TButton).Enabled := true;
end;

procedure TForm1.BtListCmdClick(Sender: TObject);
var
  isSwitchMode : boolean;
  NumListCmdBuf : Integer;
  isHexTmp : boolean;
begin
  (Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;


  isAddListCmd := True;
  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  Form7.Color := Form1.Color;
  Form7.Show();
  Form7.WindowState := wsNormal;
  (Sender as TButton).Enabled := true;
end;

function TForm1.GetIsComPort;
begin
  result := isOpenComPort;
end;

function TForm1.GetIsSendingData;
begin
  result := isSendComProcess;
end;

procedure TForm1.BTResetCntClick(Sender: TObject);
begin
(Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;

  CntTX             := 0;
  CntRXRead         := 0;
  CntRXOut          := 0;
  MaxOF             := 0;
  StaticText3.Color := Form1.Color;
  //StaticText3.Caption := 'Tx: '+IntToStr(CntTX)+' Rec: '+IntToStr(CntRXRead) + ' Out: ' + IntToStr(CntRXOut);
  (Sender as TButton).Enabled := true;
end;

//procedure TForm1.SendModeSelect(Sender: TObject);
//begin
//  if RBManual.Checked = true then
//    ManualSelect
//  else if RBWC.Checked = true then
//    WhChSelect
//  else if RBAA.Checked = true then
//    AftAnsSelect
//  else if RBPeriod.Checked = true then
//    PerSelSelect;
//end;

procedure TForm1.BtHSBtClick(Sender: TObject);
begin
  pnlSendInAdd.Visible := False;
  (Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;

  if isStatsPanel then
    begin
      BtHSBt.Caption   := 'S';
      isStatsPanel   := false;
    end
  else
    begin
      BtHSBt.Caption   := 'H';
      isStatsPanel   := true;
    end;
  PStats.Visible := isStatsPanel;
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.BaudRateKeyPress(Sender: TObject; var Key: Char);
begin
  begin
    Form1.BaudRate.Color := clWindow;
    if not (Key in ['0'..'9', #8]) then
      Key := #0;
  end;
end;

procedure TForm1.BaudRateClick(Sender: TObject);
begin
  Form1.BaudRate.Color := clWindow;
end;

procedure TForm1.SetFontStyle();
begin
  FontSizeWindow := FontSize;
  CfgTerminal.FontSize := FontSize;
  CfgTerminal.ColorSend := FontColorSend;
  CfgTerminal.ColorRead := FontColorRead;
  CfgTerminal.isFontBold := isFontBold;
  CfgTerminal.ColorInputData := ColorInputData;
  CfgTerminal.isColorInputData := isColorInputData;

  CMainWindow.Font.Size  := FontSize;
  CMainWindowAdd.Font.Size  := FontSize;

  if isFontBold then
    begin
      CMainWindow.Font.Style := [fsbold];
      CMainWindowAdd.Font.Style := [fsbold];
      MainStrCmd.Font.Style := [fsBold];
      AddStrCmd.Font.Style := [fsBold];
    end
  else
    begin
      CMainWindow.Font.Style := [];
      CMainWindowAdd.Font.Style := [];
      MainStrCmd.Font.Style := [];
      AddStrCmd.Font.Style := [];
    end;

  SecondWindow.Font.Size  := FontSize;
  //SecondWindow.Font.Style := font.Style;

  SecondWindowAdd.Font.Size  := FontSize;
  //SecondWindowAdd.Font.Style := font.Style;

  MainStrCmd.Font.Color      := FontColorSend;
  AddStrCmd.Font.Color       := FontColorSend;
  lstFastOldCmd.Font.Color   := FontColorSend;
  LBTail.Font.Color          := FontColorSend;

   if isListSendCmd then
     begin
       DataSendLog.WindowLog.Font.Color := FontColorSend;
       DataSendLog.WindowLog.Font.Size  := FontSize;
     end;

end;


procedure TForm1.BTFontClick(Sender: TObject);
var
 FontSizeBuf : Cardinal;
 ColorSendBuf : TColor;
 ColorReadBuf : TColor;
 isBoldBuf    : boolean;
 BGColorBuf : TColor;
 ColorFon : TColor;
 ColorInputDataBuf : TColor;
 isColorInputDataBuf : boolean;

begin
 SetEnHideTimer.Enabled := true;
 isEnHide := false;

 (Sender as TButton).Enabled := false;


  FontSizeBuf := FontSize;
  ColorSendBuf := FontColorSend;
  ColorReadBuf := FontColorRead;
  isBoldBuf    := isFontBold;
  BGColorBuf := MainStrCmd.Color;
  ColorFon := BGColorBuf;
  ColorInputDataBuf := ColorInputData;
  isColorInputDataBuf := isColorInputData;



 FormFont.Size := FontSize;
 FormFont.ColorSend := FontColorSend;
 FormFont.ColorRead := FontColorRead;
 FormFont.isBold    := isFontBold;
 FormFont.BGColor   := BGColorBuf;
 FormFont.ColorInputData := ColorInputData;
 FormFont.isColorInputData := isColorInputData;
 FormFont.Color := Form1.Color;
 FormFont.TimeNoAns := Round(TimeNoInputData / 10);
 FormFont.ShowModal();

 if FormFont.isSave then
   begin
     FontSize := FormFont.Size;
     FontColorSend := FormFont.ColorSend;
     FontColorRead := FormFont.ColorRead;
     isFontBold    := FormFont.isBold;
     ColorFon      := FormFont.BGColor;
     ColorInputData := FormFont.ColorInputData;
     isColorInputData := FormFont.isColorInputData;
     TimeNoInputData := FormFont.TimeNoAns * 10;
   end
 else
   begin
     FontSize := FontSizeBuf;
     FontColorSend := ColorSendBuf;
     FontColorRead := ColorReadBuf;
     isFontBold := isBoldBuf;
     ColorFon   := BGColorBuf;
     ColorInputData := ColorInputDataBuf;
     isColorInputData := isColorInputDataBuf;
   end;


   MainStrCmd.Color    := ColorFon;
   lstFastOldCmd.Color := ColorFon;
   AddStrCmd.Color     := ColorFon;
   OldCmdList.Color    := ColorFon;
   LBTail.Color        := ColorFon;
   CMainWindow.Color    := ColorFon;
   CMainWindowAdd.Color := ColorFon;

   SetFontStyle();

   if isListSendCmd then
     begin
       DataSendLog.WindowLog.Font.Color := FontColorSend;
       DataSendLog.WindowLog.Color      := ColorFon;
     end;


 (Sender as TButton).Enabled := true;
end;




procedure TForm1.Button49Click(Sender: TObject);
var index : integer;
    Tag   : integer;
    cntRead, i, iTmp : Cardinal;
begin
  if not isOpenComPort then
    begin
      OpenPortError.ShowModal;
    end
  else
    begin
      SetEnHideTimer.Enabled := true;
      isEnHide := false;
      index := 1;
      (Sender as TButton).Enabled := False;
      Tag := (Sender as TButton).Tag;
      if Tag = 0 then
        begin
          if DirectoryExists(CfgTerminal.FileDir) then
            begin
              SendFileDialog.InitialDir := CfgTerminal.FileDir;
            end;
          Sleep(10);
          if SendFileDialog.Execute then
            begin
              MAXSendDataFile := 0;
              FileSendName := SendFileDialog.FileName;
              WriteLogEvent(Now, 'Open file ' + FileSendName);
              AssignFile(SendFileData, FileSendName);
              Reset(SendFileData);


              //while (not Eof(SendFileData)) and (index < MAX_SIZE_FILE_DATA) do
              //  begin
              //    Read(SendFileData, BufFile[index]);
              //    inc(MAXSendDataFile);
              //    inc(index);
              //  end;

              cntRead := 0;
              index := 1;
              repeat
                BlockRead(SendFileData, BufTmp, BUF_TMP_SIZE, cntRead);
                if cntRead > 0 then
                  begin
                    for iTmp := 0 to cntRead-1 do
                      begin
                        BufFile[index] := BufTmp[iTmp];
                        inc(index);
                        inc(MAXSendDataFile);
                      end;
                  end;
              until (Eof(SendFileData)) or (cntRead < BUF_TMP_SIZE);

              if index = MAX_SIZE_FILE_DATA then
                begin
                  ShowMessage('Large file! Max size 16MB.');
                  WriteLogEvent(Now, 'Large file! Max size 16MB. ' + FileSendName);
                end
              else if isOpenComPort then
                begin
                  sleep(1);
                  WriteLogEvent(Now, 'Start send file ' + FileSendName);
                  SendFilePause.Visible   := true;
                  SendFilePause.Caption   := 'Pause file send';
                  Button49.Caption        := 'Stop send';
                  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
                  TimerSendFile.Enabled   := true;
                  IndexInSendFile         := 1;
                  Tag                     := 1;
                end
             else
               begin
                 OpenPortError.ShowModal;
               end;
             CloseFile(SendFileData);
            end;
      end
    else if Tag = 1 then
      begin
        TimerSendFile.Enabled := false;
        SendFilePause.Visible := false;
        Button49.Caption      := 'Send File...';
        (Sender as TButton).Font.Style := [];
        MAXSendDataFile       := 0;
        IndexInSendFile       := 0;
        Tag                   := 0;
      end;
    (Sender as TButton).Tag := Tag;
    (Sender as TButton).Enabled := true;
  end;
end;

procedure TForm1.TimerSendFileTimer(Sender: TObject);
var
  DataStr  : string;
  PartData : integer;
begin
  if (MAXSendDataFile > 0) and (isOpenComPort = true) then
    begin
      if not isSendComProcess then
        begin
          PartData := 0;
          DataStr  := '';
          while (MAXSendDataFile > 0) and (PartData < MAX_PART_SEND_FILE) do
            begin
              DataStr := DataStr + IntToHex(Ord(BufFile[IndexInSendFile]),2) + ' ';
              dec(MAXSendDataFile);
              inc(IndexInSendFile);
              inc(PartData);
            end;

          if (isFileSendOK) and (MAXSendDataFile = 0) then
            begin
              WriteLogEvent(Now, 'File sent ' + FileSendName);
              if (isExpWin) and (not IsIconic(Form1.Handle)) then
                begin
                  Application.Restore;
                end;
              if isOpenMsgEventFileSentEn[NumListCmd] then
                begin
                  FormEvent.SrcEvent := SrcEventMain;
                  FormEvent.EventMSG := 'File sent ' + FileSendName;
                  FormEvent.ShowModal;
                  isOpenMsgEventFileSentEn[NumListCmd] := not FormEvent.isNotShowEvent;
                end;
            end;
          SendFileLavel.Caption := 'SendFile: ' + IntToStr(IndexInSendFile - 1) + ' ' + IntToStr(MAXSendDataFile);
          isSendFile := True;
          SendPortData(DataStr, '', SendHEX, true);
          isSendFile := false;
        end;
    end
  else
    begin
      TimerSendFile.Enabled := false;
      Button49.Caption      := 'Send File...';
      Button49.Font.Style := [];
      MAXSendDataFile       := 0;
      IndexInSendFile       := 0;
      Button49.Tag          := 0;
      SendFilePause.Visible := false;
    end;
end;

procedure TForm1.ListNameEDTChange(Sender: TObject);
begin
  if length(ListNameEDT.Text) < 150 then
    begin
      ListsCmd2[NumListCmd].NameList := ListNameEDT.Text;
      ListNameEDT.Color := clWindow;
    end
  else
    begin
      ListNameEDT.Color := clRed;
    end;
  //SelTerm.Visible := not SelTerm.Visible;
end;

procedure TForm1.CSLbtClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;


  isListSendCmd := true;
  DataSendLog.Color := Form1.Color;
  DataSendLog.Show;
  DataSendLog.WindowState := wsNormal;
  DataSendLog.WindowLog.Color := CMainWindow.Color;
  DataSendLog.WindowLog.Font  := CMainWindow.Font;
  DataSendLog.ChMode.Checked  := CfgTerminal.isShowModeLSC = 1;
  DataSendLog.pbFlow.Max      := MAX_LINES_LOG_SEND;
  DataSendLog.pbFlow.Min      := 0;
  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.SettBtClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;
  (Sender as TButton).Enabled := true;

  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  Settings.Color := Form1.Color;
  Settings.ShowModal();
  Settings.WindowState := wsNormal;
end;

procedure TForm1.OpenLogBTClick(Sender: TObject);
begin
  SetEnHideTimer.Enabled := true;
  isEnHide := false;

  OpenLogFileDialog.InitialDir := CfgTerminal.LogDir;
  if NameLogFile <> '' then
    OpenLogFileDialog.FileName := NameLogFile;
  if OpenLogFileDialog.Execute then
    begin
      ShellExecute(Handle, 'open' , 'notepad.exe', PChar(OpenLogFileDialog.FileName), nil, SW_SHOWNORMAL);
    end;
end;

procedure TForm1.RBCaptClick(Sender: TObject);
begin
  if isCreateFormMain then
    begin
      FiltrLog.SetFocus;
      FiltrLog.Color := clYellow;
    end;
end;

procedure TForm1.RBOutClick(Sender: TObject);
begin
  if isCreateFormMain then
    begin
      FiltrLog.SetFocus;
      FiltrLog.Color := clYellow;
    end;
end;

procedure TForm1.RbNoFilterClick(Sender: TObject);
begin
  FiltrLog.Color := Form1.Color;
end;

procedure TForm1.BtOptConnClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;

  SelTerm.Visible := False;
  ConnOpt.Visible := not ConnOpt.Visible;

  if (Sender as TButton).Tag = 0 then
    begin
      (Sender as TButton).Font.Style := [fsbold,fsUnderline];
      (Sender as TButton).Tag        := 1;

      ScanComPorts;
    end
  else
    begin
      (Sender as TButton).Font.Style := [];
      (Sender as TButton).Tag        := 0;
    end;

  (Sender as TButton).Hint := Form1.ComPort.Text + ' '
                              + Form1.BaudRate.Text + ' '
                              + Form1.ComBits.Text + ' '
                              + Form1.ParityBox.Text + ' '
                              + Form1.ComStopBits.Text;



  (Sender as TButton).Enabled := true;
end;

procedure TForm1.BtAddFunctionsClick(Sender: TObject);
var
  Visible : boolean;
begin
  (Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;

  if (Sender as TButton).Tag = 0 then
    begin
      (Sender as TButton).Font.Style := [fsbold,fsUnderline];
      (Sender as TButton).Tag        := 1;
      Visible                := true;
    end
  else
    begin
      (Sender as TButton).Font.Style := [];
      (Sender as TButton).Tag        := 0;
      Visible                := false;
    end;
  SettBt.Visible           := Visible;
  CSLbt.Visible            := Visible;
  BtListCmd.Visible        := Visible;
  BtFont.Visible           := Visible;
  BTPalitra.Visible        := Visible;
  MonDialog.Visible        := Visible;
  BtAnsList.Visible        := Visible;
  FSmodeBT.Visible         := Visible;
  btnBtShowStat.Visible          := Visible;
  pnlSep.Visible           := Visible;
  grpLineSeparator.Visible := Visible;
  BrutForceBT.Visible         := Visible;
  BtBTASCIITABLE.Visible   := Visible;
  BtParser.Visible         := Visible;
  BtAddMacros.Visible      := Visible;
  BtUtilites.Visible        := Visible;
  BtAddPorts.Visible        := Visible;
  BtTableCustom.Visible     := Visible;
  btnPacketStats.Visible       := Visible;
  BtMultiPort.Visible            := Visible;
  btnParserASCII.Visible := Visible;
  Bt23.Visible := Visible;
  btnBt24.Visible := Visible;



  pnlAddWin.Visible := False;
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.MainWindowClick(Sender: TObject);
begin
  if BtOptConn.Tag = 1 then
    BtOptConn.Click;
  if BtAddFunctions.Tag = 1 then
    BtAddFunctions.Click;
end;

procedure TForm1.BtAnsListClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;

  FormAnsSensor.Color := Form1.Color;
  FormAnsSensor.Show();
  isFormAnsSensors := True;
  FormAnsSensor.WindowState := wsNormal;
  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.SecondWindowClick(Sender: TObject);
begin
  if BtOptConn.Tag = 1 then
    BtOptConn.Click;
  if BtAddFunctions.Tag = 1 then
    BtAddFunctions.Click;
  SelTerm.Visible := False;
  
  lstFastOldCmd.Visible := false;
  LBTail.Visible     := false;
end;

procedure TForm1.SecondWindowAddClick(Sender: TObject);
begin
  if BtOptConn.Tag = 1 then
    BtOptConn.Click;
  if BtAddFunctions.Tag = 1 then
    BtAddFunctions.Click;
end;

procedure TForm1.MainWindowAddClick(Sender: TObject);
begin
  if BtOptConn.Tag = 1 then
    BtOptConn.Click;
  if BtAddFunctions.Tag = 1 then
    BtAddFunctions.Click;
  pnlAddWin.Visible := False;
end;

procedure TForm1.ClrColorTimerTimer(Sender: TObject);
begin
  StaticText1.Color := Form1.Color;
  (Sender as TTimer).Enabled := false;
end;


procedure TForm1.FSmodeBtClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;


  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  FastSend.Color := Form1.Color;
  FastSend.Show();
  FastSend.WindowState := wsNormal;
  (Sender as TButton).Enabled := true;
end;

function TForm1.GetFontMain;
  begin
    result := CMainWindow.Font;
  end;


procedure TForm1.OpenBinBTClick(Sender: TObject);
begin
  SetEnHideTimer.Enabled := true;
  isEnHide := false;

  OpenBinFileDialog.InitialDir := CfgTerminal.LogDir;
  if NameLogBinFile <> '' then
    OpenBinFileDialog.FileName := NameLogBinFile;
  if OpenBinFileDialog.Execute then
    begin
      ShellExecute(Handle, 'open' , 'notepad.exe', PChar(OpenBinFileDialog.FileName), nil, SW_SHOWNORMAL);
    end;
end;

procedure TForm1.FiltrLogChange(Sender: TObject);
begin
  Stats.HitCounter := 0;
  CntCmpLvl.Caption := 'Match cnt ' + '"' + FiltrLog.Text + '" : 0';
end;

procedure TForm1.TabEditCmdDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
  var
   i : integer;
begin

end;

procedure TForm1.TabEditCmdChange(Sender: TObject);
var
  i : integer;
begin
  SetEnHideTimer.Enabled := true;
  isEnHide := false;

  lstFastOldCmd.Visible := false;
  OldCmdList.Visible := false;
  LBTail.Visible     := false;
  if TabEditCmd.TabIndex = 0 then
    begin
      isModeEditHK := False;
      ListsCmd2[NumListCmd].NameList := ListNameEdt.Text;

      ListNameEDT.Visible := false;
      STListName.Caption := ListsCmd2[NumListCmd].NameList;

      WriteListCmd(NumListCmd);
      ReadListCmd(NumListCmd);
        for i:= 1 to 48 do
          begin
            BTCmd[i].Visible := true;

          end;

        for i:= 1 to 48 do
          begin
            EDTCmd[i].Visible := false;
            EDTHotKey[i].Visible := False;
            EDTJKey[i].Visible := False;
          end;
      SaveCmdListsInFile;
      ButtonReadFile.Visible := true;
      //STListName.Visible := false;
      //CBLists.Visible    := true;
      //DelList.Visible    := false;
      //BtCopyList.Visible := False;
      //BtPasteList.Visible := False;
      StLog.Visible       := true;
      StaticText1.Visible := false;
      tmrCheckHK.Enabled := false;

    end;

  if TabEditCmd.TabIndex = 1 then

    begin
      isModeEditHK := False;

      //CBLists.Visible     := false;
      ListNameEDT.Visible := true;
      DelList.Visible     := true;
      StLog.Visible       := false;
      StaticText1.Visible := true;
      ButtonReadFile.Visible := false;
      BtCopyList.Visible := true;
      BtPasteList.Visible := true;
      tmrCheckHK.Enabled := false;

      ReadListCmd(NumListCmd);

      for i:= 1 to 48 do
        begin
          BTCmd[i].Visible := false;
          EDTHotKey[i].Visible := False;
          EDTJKey[i].Visible := False;
        end;

      for i:= 1 to 48 do
        begin
          EDTCmd[i].Visible := true;
        end;

      ListNameEdt.Text := ListsCmd2[NumListCmd].NameList;
    end;

  if TabEditCmd.TabIndex = 2 then

    begin
      isModeEditHK := True;

      //CBLists.Visible     := false;
      ListNameEDT.Visible := true;
      DelList.Visible     := true;
      StLog.Visible       := false;
      StaticText1.Visible := false;
      StLog.Visible       := true;
      ButtonReadFile.Visible := false;
      BtCopyList.Visible := true;
      BtPasteList.Visible := true;
      tmrCheckHK.Enabled := True;


      ReadListCmd(NumListCmd);

      for i:= 1 to 48 do
        begin
          BTCmd[i].Visible := true;
          EDTCmd[i].Visible := false;
          EDTJKey[i].Visible := False;
        end;

      for i:= 1 to 48 do
        begin
          EDTHotKey[i].Visible := true;
        end;

      ListNameEdt.Text := ListsCmd2[NumListCmd].NameList;
    end;



     if TabEditCmd.TabIndex = 3 then

    begin
      isModeEditHK := True;

      //CBLists.Visible     := false;
      ListNameEDT.Visible := true;
      DelList.Visible     := true;
      StLog.Visible       := false;
      StaticText1.Visible := true;
      StLog.Visible       := true;
      ButtonReadFile.Visible := false;
      BtCopyList.Visible := true;
      BtPasteList.Visible := true;
      tmrCheckHK.Enabled := True;

      ReadListCmd(NumListCmd);

      for i:= 1 to 48 do
        begin
          BTCmd[i].Visible := true;
          EDTCmd[i].Visible := false;
          EDTHotKey[i].Visible := false;
        end;

      for i:= 1 to 48 do
        begin
          EDTJKey[i].Visible := true;
        end;

      ListNameEdt.Text := ListsCmd2[NumListCmd].NameList;
    end;
end;

procedure TForm1.Button50Click(Sender: TObject);
begin
  SetEnHideTimer.Enabled := true;
  isEnHide := false;
  (Sender as TButton).Enabled := false;
  ReadOldCmd;
  lstFastOldCmd.Width   := MainStrCmd.Width + Button50.Width;
  lstFastOldCmd.Visible := true;
  if isModeDialog then
  ActiveControl := lstFastOldCmd;
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.MainPanelClick(Sender: TObject);
begin
  lstFastOldCmd.Visible := false;
  LBTail.Visible     := false;
end;

procedure TForm1.Button51Click(Sender: TObject);
begin
  SetEnHideTimer.Enabled := true;
  isEnHide := false;
  (Sender as TButton).Enabled := false;
  PStats.Visible   := false;
  LBTail.Visible   := true;
  Button49.Visible := false;
  if isModeDialog then
  ActiveControl    := LBTail;
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.InputModeClick(Sender: TObject);
begin
  lstFastOldCmd.Visible := false;
  LBTail.Visible     := false;
end;

procedure TForm1.OutModeClick(Sender: TObject);
begin
  lstFastOldCmd.Visible := false;
  LBTail.Visible     := false;
end;

procedure TForm1.StaticText1Click(Sender: TObject);
begin
  lstFastOldCmd.Visible := false;
  LBTail.Visible     := false;
end;

procedure TForm1.StaticText3Click(Sender: TObject);
begin
  lstFastOldCmd.Visible := false;
  LBTail.Visible     := false;
end;

procedure TForm1.ListNameEDTKeyPress(Sender: TObject; var Key: Char);
begin
  isReqSaveCmdList := true;
end;

procedure TForm1.AddStrCmdChange(Sender: TObject);
begin
  isReqSaveCmdList := true;
end;

procedure TForm1.btnBtShowStatClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  isEnHide := false;
  FormStat.Color := Form1.Color;
  FormStat.Show;
  FormStat.WindowState := wsNormal;
  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.SetEnHideTimerTimer(Sender: TObject);
begin
  (Sender as TTimer).Enabled := false;
  isEnHide := true;
end;

procedure TForm1.AScrollClick(Sender: TObject);
begin
  isSkippingReps := (Sender as TCheckBox).Checked;
end;

procedure TForm1.ChAddASCIIClick(Sender: TObject);
begin
  isAddASCII := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isAddASCII := isAddASCII;
end;

procedure TForm1.ChAddHEXClick(Sender: TObject);
begin
  isAddHEX := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isAddHEX := isAddHEX;
end;

procedure TForm1.ChAddTXClick(Sender: TObject);
begin
  isAddTX := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isAddTX := isAddTX;
end;

procedure TForm1.ChAddRXClick(Sender: TObject);
begin
  isAddRX := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isAddRX := isAddRX;
end;

procedure TForm1.BtAddClearClick(Sender: TObject);
begin
  CMainWindowAdd.Clear;
  CntBytesAdd := 0;
end;

procedure TForm1.BtAddCloseClick(Sender: TObject);
begin
  pnlAddWin.Visible := False;
end;

procedure TForm1.MainWindowAddDblClick(Sender: TObject);
begin
  pnlAddWin.Visible := true;
  CMainWindowAdd.ShowHint := False;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  isAddIgnFlt := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isAddIgnFlt := isAddIgnFlt;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  isShowMode := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isShowMode := isShowMode;
end;

procedure TForm1.SendFilePauseClick(Sender: TObject);
begin
  if (Sender as TButton).Tag = 0 then
    begin
      TimerSendFile.Enabled := false;
      (Sender as TButton).Tag := 1;
      (Sender as TButton).Caption := 'Continue file send';
      WriteLogEvent(Now, 'Pause send file ' + FileSendName);
    end
  else if (Sender as TButton).Tag = 1 then
    begin
      TimerSendFile.Enabled := true;
      (Sender as TButton).Tag := 0;
      SendFilePause.Caption   := 'Pause file send';
      WriteLogEvent(Now, 'File upload continued ' + FileSendName);
    end;
  end;

procedure TForm1.ChSep0DClick(Sender: TObject);
begin
  isSep0D := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSep0D := isSep0D;

  if isSep0D then
    ChSep0D.Color := COLOR_LINE_SEP
  else
    ChSep0D.Color := Form1.Color;
end;

procedure TForm1.ChSep0AClick(Sender: TObject);
begin
  isSep0A := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSep0A := isSep0A;

  if isSep0A then
    ChSep0A.Color := COLOR_LINE_SEP
  else
    ChSep0A.Color := Form1.Color;

end;

procedure TForm1.ChSep00Click(Sender: TObject);
begin
  isSep00 := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSep00 := isSep00;

  if isSep00 then
    ChSep00.Color := COLOR_LINE_SEP
  else
    ChSep00.Color := Form1.Color;

end;

procedure TForm1.ChSep0D0AClick(Sender: TObject);
begin
  isSep0D0A := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSep0D0A := isSep0D0A;

  if isSep0D0A then
    ChSep0D0A.Color := COLOR_LINE_SEP
  else
    ChSep0D0A.Color := Form1.Color;

end;

procedure TForm1.ChSepTimeClick(Sender: TObject);
begin
  isSepTime := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSepTime := isSepTime;

  if isSepTime then
    begin
      EdtPauseRx.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtPauseRx.Color := Form1.Color;
    end;

end;

procedure TForm1.ChWhSendClrClick(Sender: TObject);
begin
  isClrLogWhSend := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isClrLogWhSend := isClrLogWhSend;
  (Sender as TCheckBox).ShowHint := false;
end;

procedure TForm1.EdtCntClrKeyPress(Sender: TObject; var Key: Char);
  begin
    if not (Key in ['0'..'9', #8]) then
      Key := #0;
  end;

procedure TForm1.EdtCntClrChange(Sender: TObject);
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) < 8) then
    begin
      (Sender as TEdit).Color := clWindow;
      CntClrBytesLog := StrToInt((Sender as TEdit).Text);
    end
  else
    begin
      (Sender as TEdit).Color := clRed;
    end;
  ListsCmd2[NumListCmd].CntClrBytesLog := CntClrBytesLog;
end;


procedure TForm1.EdtPauseRxChange(Sender: TObject);
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) < 8) then
    begin
      TimeOutAnsRX := StrToInt((Sender as TEdit).Text);
    end
  else;
  
  ListsCmd2[NumListCmd].TimeOutAnsRX := TimeOutAnsRX;
end;

procedure TForm1.EdtPauseRxKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TForm1.EdtPauseRxExit(Sender: TObject);
begin
 //(Sender as TEdit).Color := clWindow;
 (Sender as TEdit).Text  := IntToStr(TimeOutAnsRX);
end;

procedure TForm1.EdtCntClrExit(Sender: TObject);
begin
 //(Sender as TEdit).Color := clWindow;
 (Sender as TEdit).Text  := IntToStr(CntClrBytesLog);
end;

procedure TForm1.ud1Click(Sender: TObject; Button: TUDBtnType);
begin
    if Button = btNext then
    begin
      if TimeOutAnsRX < 10 then
        TimeOutAnsRX := TimeOutAnsRX + 1
      else if TimeOutAnsRX < 100 then
        TimeOutAnsRX := TimeOutAnsRX + 5
      else if TimeOutAnsRX < 1000 then
        TimeOutAnsRX := TimeOutAnsRX + 50
      else if TimeOutAnsRX < 10000 then
        TimeOutAnsRX := TimeOutAnsRX + 500
      else if TimeOutAnsRX < 100000 then
        TimeOutAnsRX := TimeOutAnsRX + 5000
      else if TimeOutAnsRX < 1000000 then
        TimeOutAnsRX := TimeOutAnsRX + 50000;
      if TimeOutAnsRX > 999999 then
        TimeOutAnsRX :=  999999;
    end;

  if Button = btPrev then
    begin
      if (TimeOutAnsRX = 999999) then TimeOutAnsRX := 1000000;

      if (TimeOutAnsRX < 10) and (TimeOutAnsRX > 0) then
        TimeOutAnsRX := TimeOutAnsRX - 1
      else if (TimeOutAnsRX < 100) and (TimeOutAnsRX >= 10) then
        TimeOutAnsRX := TimeOutAnsRX - 5
      else if (TimeOutAnsRX < 1000) and (TimeOutAnsRX >= 100) then
        TimeOutAnsRX := TimeOutAnsRX - 50
      else if (TimeOutAnsRX < 10000) and (TimeOutAnsRX >= 1000) then
        TimeOutAnsRX := TimeOutAnsRX - 500
      else if (TimeOutAnsRX < 100000) and (TimeOutAnsRX >= 10000)then
        TimeOutAnsRX := TimeOutAnsRX - 5000
      else if TimeOutAnsRX >= 100000 then
        TimeOutAnsRX := TimeOutAnsRX - 50000;
    end;

    EdtPauseRx.Text := IntToStr(TimeOutAnsRX);

end;

procedure TForm1.ChSepCntClick(Sender: TObject);
begin
  isSepBytes := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSepBytes := isSepBytes;
  if isSepBytes then
    begin
      EdtCntSep.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtCntSep.Color := Form1.Color;
    end;
end;

procedure TForm1.EdtCntSepKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TForm1.EdtCntSepChange(Sender: TObject);
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) < 5) then
    begin
      SepBytes := StrToInt((Sender as TEdit).Text);
      ud2.Position := SepBytes;
    end;
  ListsCmd2[NumListCmd].SepBytes := SepBytes;
end;

procedure TForm1.ud2Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
    if SepBytes < 10000 then
      Inc(SepBytes);

  if Button = btPrev then
    if SepBytes > 0 then
      Dec(SepBytes);

  EdtCntSep.Text := IntToStr(SepBytes);

end;

procedure TForm1.ChSepSymbolClick(Sender: TObject);
begin
  isSepSymbol := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSepSymbol := isSepSymbol;
  if isSepSymbol then
    begin
      EdtSymAdd.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtSymAdd.Color := Form1.Color;
    end;
end;

procedure TForm1.EdtCaptSymbolKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TForm1.EdtCaptSymbolChange(Sender: TObject);
begin
  if (Sender as TEdit).Text <> '' then
    begin
      (Sender as TEdit).Color := clWindow;
      if StrToInt((Sender as TEdit).Text) > 255 then
        begin
         (Sender as TEdit).Text := IntToStr(SepSymbol);
        end
      else
        begin
          SepSymbol := StrToInt((Sender as TEdit).Text);
        end;
    end
  else
    begin
      (Sender as TEdit).Color := clYellow;
    end;

  ListsCmd2[NumListCmd].SepSymbol := SepSymbol;
  EdtSymAdd.Text := IntToHex(SepSymbol, 2);
end;

procedure TForm1.EdtCaptSymbolExit(Sender: TObject);
begin
  (Sender as TEdit).Color := clWindow;
  (Sender as TEdit).Text  := IntToStr(SepSymbol);
end;

procedure TForm1.EdtSymAddKeyPress(Sender: TObject; var Key: Char);
begin
  if((Key <> '0') and
     (Key <> '1') and
     (Key <> '2') and
     (Key <> '3') and
     (Key <> '4') and
     (Key <> '5') and
     (Key <> '6') and
     (Key <> '7') and
     (Key <> '8') and
     (Key <> '9') and
     (Key <> 'a') and
     (Key <> 'b') and
     (Key <> 'c') and
     (Key <> 'd') and
     (Key <> 'e') and
     (Key <> 'f') and
     (Key <> 'A') and
     (Key <> 'B') and
     (Key <> 'C') and
     (Key <> 'D') and
     (Key <> 'E') and
     (Key <> 'F') and
     (Key <> #8) ) then Key := #0;

end;

procedure TForm1.EdtSymAddChange(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin

  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepSymbol := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SepSymbol := SepSymbol;
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepSymbol);
end;

procedure TForm1.btnLOGClick(Sender: TObject);
begin
  //FormAsciiTable.Show();
  if (Sender as TButton).Tag = 0 then
    begin
      pnlSep.Height := grpLineSeparator.Height + 60;
      BtLineSep.Font.Style     := [];
      BtAutoClear.Font.Style   := [];
      BtFIFO.Font.Style        := [];
      BtAutoExpand.Font.Style  := [];
      btnLOG.Font.Style        := [fsbold,fsUnderline];
      BtEventLive.Font.Style   := [];

      BtLineSep.Tag            := 0;
      BtAutoClear.Tag          := 0;
      BtFIFO.Tag               := 0;
      BtAutoExpand.Tag         := 0;
      btnLOG.Tag               := 1;
      BtEventLive.Tag          := 0;

      grpLineSeparator.Visible := False;
      grp2.Visible             := False;
      Fifo.Visible             := False;
      GroupBox1.Visible        := False;
      grpLog.Visible           := true;
      grpEventLog.Visible      := false;
    end
  else
    begin
      pnlSep.Height := 50;
      BtLineSep.Font.Style     := [];
      BtAutoClear.Font.Style   := [];
      BtFIFO.Font.Style        := [];
      BtAutoExpand.Font.Style  := [];
      btnLOG.Font.Style        := [];

      btnLOG.Tag               := 0;
      BtLineSep.Tag            := 0;
      BtAutoClear.Tag          := 0;
      BtFIFO.Tag               := 0;
      BtAutoExpand.Tag         := 0;

      grpLineSeparator.Visible := false;
      grp2.Visible             := False;
      Fifo.Visible             := False;
      GroupBox1.Visible        := False;

      BtEventLive.Font.Style  := [];
      BtEventLive.Tag         := 0;
      grpEventLog.Visible     := false;
    end;
end;

procedure TForm1.ResRingBufClick(Sender: TObject);
begin
  LostData         := LostData + CntDataReadBufAv;
  iReadBuf         := 0;
  iWriteBuf        := 0;
  CntDataReadBufAv := 0; //число доступных байтов для чтения из кольцевого буфера;
end;

procedure TForm1.ParityBoxChange(Sender: TObject);
begin
  ParityCOM := ParityBox.ItemIndex;
end;

procedure TForm1.ResetFIFOClick(Sender: TObject);
begin
  isResetFifo := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isResetFifo := isResetFifo;
end;






procedure TForm1.ChCBNoDataClick(Sender: TObject);
begin
  isAutoExpandNoInData := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isAutoExpandNoInData := isAutoExpandNoInData;
  isOpenMsgEventNoIncomingDataEn[NumListCmd] := true;
end;

procedure TForm1.EdtNoDataKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TForm1.EdtNoDataChange(Sender: TObject);
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) < 8) then
    begin
      (Sender as TEdit).Color := clWindow;
      TimeAutoExpanNoData := StrToInt((Sender as TEdit).Text);
    end
  else
    begin
      (Sender as TEdit).Color := clRed;
    end;
  ListsCmd2[NumListCmd].TimeAutoExpanNoData := TimeAutoExpanNoData;
  isOpenMsgEventNoIncomingDataEn[NumListCmd] := true;
end;

procedure TForm1.BtLineSepClick(Sender: TObject);
begin
  if (Sender as TButton).Tag = 0 then
    begin
      pnlSep.Height := grpLineSeparator.Height + 60;
      BtLineSep.Font.Style     := [fsbold,fsUnderline];
      BtAutoClear.Font.Style   := [];
      BtFIFO.Font.Style        := [];
      BtAutoExpand.Font.Style  := [];
      btnLOG.Font.Style        := [];
      BtEventLive.Font.Style   := [];


      BtLineSep.Tag            := 1;
      BtAutoClear.Tag          := 0;
      BtFIFO.Tag               := 0;
      BtAutoExpand.Tag         := 0;
      BtEventLive.Tag          := 0;
      btnLOG.Tag          := 0;

      grpLineSeparator.Visible := True;
      grp2.Visible             := False;
      Fifo.Visible             := False;
      GroupBox1.Visible        := False;
      grpEventLog.Visible      := False;
      grpLog.Visible           := False;

    end
  else
    begin
      pnlSep.Height := 50;
      BtLineSep.Font.Style     := [];
      BtAutoClear.Font.Style   := [];
      BtFIFO.Font.Style        := [];
      BtAutoExpand.Font.Style  := [];
      btnLOG.Font.Style        := [];

      btnLOG.Tag := 0;
      BtLineSep.Tag            := 0;
      BtAutoClear.Tag          := 0;
      BtFIFO.Tag               := 0;
      BtAutoExpand.Tag         := 0;



      grpLineSeparator.Visible := false;
      grp2.Visible             := False;
      Fifo.Visible             := False;
      GroupBox1.Visible        := False;


      BtEventLive.Font.Style   := [];
      BtEventLive.Tag          := 0;
      grpEventLog.Visible      := false;
      
    end;
end;

procedure TForm1.BtAutoClearClick(Sender: TObject);
begin
  if (Sender as TButton).Tag = 0 then
    begin
      pnlSep.Height := grpLineSeparator.Height + 60;
      BtLineSep.Font.Style     := [];
      BtAutoClear.Font.Style   := [fsbold,fsUnderline];
      BtFIFO.Font.Style        := [];
      BtAutoExpand.Font.Style  := [];
      btnLOG.Font.Style        := [];

      BtLineSep.Tag            := 0;
      BtAutoClear.Tag          := 1;
      BtFIFO.Tag               := 0;
      BtAutoExpand.Tag         := 0;
      btnLOG.Tag          := 0;

      grpLineSeparator.Visible := False;
      grp2.Visible             := True;
      Fifo.Visible             := False;
      GroupBox1.Visible        := False;
      grpLog.Visible           := False;

      BtEventLive.Font.Style   := [];
      BtEventLive.Tag          := 0;
      grpEventLog.Visible      := False;


    end
  else
    begin
      pnlSep.Height := 50;
      BtLineSep.Font.Style     := [];
      BtAutoClear.Font.Style   := [];
      BtFIFO.Font.Style        := [];
      BtAutoExpand.Font.Style  := [];
      btnLOG.Font.Style        := [];

      btnLOG.Tag := 0;
      BtLineSep.Tag            := 0;
      BtAutoClear.Tag          := 0;
      BtFIFO.Tag               := 0;
      BtAutoExpand.Tag         := 0;

      grpLineSeparator.Visible := false;
      grp2.Visible             := False;
      Fifo.Visible             := False;
      GroupBox1.Visible        := False;

      BtEventLive.Font.Style  := [];
      BtEventLive.Tag            := 0;
      grpEventLog.Visible      := false;


    end;

end;

procedure TForm1.BtFIFOClick(Sender: TObject);
begin
  if (Sender as TButton).Tag = 0 then
    begin
      pnlSep.Height := grpLineSeparator.Height + 60;
      BtLineSep.Font.Style     := [];
      BtAutoClear.Font.Style   := [];
      BtFIFO.Font.Style        := [fsbold,fsUnderline];
      BtAutoExpand.Font.Style  := [];
      btnLOG.Font.Style        := [];

      BtLineSep.Tag            := 0;
      BtAutoClear.Tag          := 0;
      BtFIFO.Tag               := 1;
      BtAutoExpand.Tag         := 0;
      btnLOG.Tag          := 0;

      grpLineSeparator.Visible := False;
      grp2.Visible             := False;
      Fifo.Visible             := True;
      GroupBox1.Visible        := False;
      grpLog.Visible           := False;

      BtEventLive.Font.Style   := [];
      BtEventLive.Tag          := 0;
      grpEventLog.Visible      := False;


    end
  else
    begin
      pnlSep.Height := 50;
      BtLineSep.Font.Style     := [];
      BtAutoClear.Font.Style   := [];
      BtFIFO.Font.Style        := [];
      BtAutoExpand.Font.Style  := [];
      btnLOG.Font.Style        := [];

      btnLOG.Tag := 0;
      BtLineSep.Tag            := 0;
      BtAutoClear.Tag          := 0;
      BtFIFO.Tag               := 0;
      BtAutoExpand.Tag         := 0;

      grpLineSeparator.Visible := false;
      grp2.Visible             := False;
      Fifo.Visible             := False;
      GroupBox1.Visible        := False;

      BtEventLive.Font.Style  := [];
      BtEventLive.Tag            := 0;
      grpEventLog.Visible      := false;

    end;

end;

procedure TForm1.BtAutoExpandClick(Sender: TObject);
begin
  if (Sender as TButton).Tag = 0 then
    begin
      pnlSep.Height := grpLineSeparator.Height + 60;
      BtLineSep.Font.Style     := [];
      BtAutoClear.Font.Style   := [];
      BtFIFO.Font.Style        := [];
      BtAutoExpand.Font.Style  := [fsbold,fsUnderline];
      btnLOG.Font.Style        := [];

      BtLineSep.Tag            := 0;
      BtAutoClear.Tag          := 0;
      BtFIFO.Tag               := 0;
      BtAutoExpand.Tag         := 1;
      btnLOG.Tag          := 0;

      grpLineSeparator.Visible := False;
      grp2.Visible             := False;
      Fifo.Visible             := False;
      GroupBox1.Visible        := True;
      grpLog.Visible           := False;


      BtEventLive.Font.Style   := [];
      BtEventLive.Tag          := 0;
      grpEventLog.Visible      := False;
    end
  else
    begin
      pnlSep.Height := 50;
      BtLineSep.Font.Style     := [];
      BtAutoClear.Font.Style   := [];
      BtFIFO.Font.Style        := [];
      BtAutoExpand.Font.Style  := [];
      btnLOG.Font.Style        := [];

      btnLOG.Tag := 0;
      BtLineSep.Tag            := 0;
      BtAutoClear.Tag          := 0;
      BtFIFO.Tag               := 0;
      BtAutoExpand.Tag         := 0;

      grpLineSeparator.Visible := false;
      grp2.Visible             := False;
      Fifo.Visible             := False;
      GroupBox1.Visible        := False;


      BtEventLive.Font.Style  := [];
      BtEventLive.Tag            := 0;
      grpEventLog.Visible      := false;
    end;
end;

procedure TForm1.ChAexpStrClick(Sender: TObject);
begin
  isAutoExpStr := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isAutoExpStr := isAutoExpStr;
  isOpenMsgEventRecSubstrEn[NumListCmd]      := True;
end;

procedure TForm1.EdtAExpStrChange(Sender: TObject);
begin
  if (Length((Sender as TEdit).Text) < 250) then
    begin
      (Sender as TEdit).Color := clWindow;
      AutoExpStr := (Sender as TEdit).Text;
    end
  else
    begin
      (Sender as TEdit).Color := clRed;
    end;
  ListsCmd2[NumListCmd].AutoExpStr := AutoExpStr;
  isOpenMsgEventRecSubstrEn[NumListCmd]      := True;
end;

procedure TForm1.ChCntExpBytesClick(Sender: TObject);
begin
  isCntExpBytes := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isCntExpBytes := isCntExpBytes;
  isOpenMsgEventBytesRecDataEn[NumListCmd]   := True;
end;

procedure TForm1.EdtCntExpBytesKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;
procedure TForm1.EdtCntExpBytesChange(Sender: TObject);
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) < 10) then
    begin
      (Sender as TEdit).Color := clWindow;
      CntExpBytes := StrToInt((Sender as TEdit).Text);
    end
  else
    begin
      (Sender as TEdit).Color := clRed;
    end;
  ListsCmd2[NumListCmd].CntExpBytes := CntExpBytes;
  isOpenMsgEventBytesRecDataEn[NumListCmd]   := True;
end;

procedure TForm1.ChExpOnlyClick(Sender: TObject);
begin
  isExpWin := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isExpWin := isExpWin;
end;

procedure TForm1.ChFileSendEvClick(Sender: TObject);
begin
  isFileSendOK := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isFileSendOK := isFileSendOK;
  isOpenMsgEventFileSentEn[NumListCmd]       := True;
end;



procedure TForm1.ChClrLogStrAsciiClick(Sender: TObject);
begin
  isAutoClrStrASCII := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isAutoClrStrASCII := isAutoClrStrASCII;
end;

procedure TForm1.ChClrLogStrHexClick(Sender: TObject);
begin
   isAutoClrStrHEX := (Sender as TCheckBox).Checked;
   ListsCmd2[NumListCmd].isAutoClrStrHEX := isAutoClrStrHEX;
end;

procedure TForm1.EdtAutoClrStrHexKeyPress(Sender: TObject; var Key: Char);
begin
  if((Key <> '0') and
     (Key <> '1') and
     (Key <> '2') and
     (Key <> '3') and
     (Key <> '4') and
     (Key <> '5') and
     (Key <> '6') and
     (Key <> '7') and
     (Key <> '8') and
     (Key <> '9') and
     (Key <> 'A') and
     (Key <> 'B') and
     (Key <> 'C') and
     (Key <> 'D') and
     (Key <> 'E') and
     (Key <> 'F') and
     (Key <> ' ') and
     (Key <> #8) ) then Key := #0;
end;

procedure TForm1.EdtAutoClrStrHexChange(Sender: TObject);
begin
  if (Length((Sender as TEdit).Text) < 250) then
    begin
      (Sender as TEdit).Color := clWindow;
      AutoClrStrHEX := (Sender as TEdit).Text;
    end
  else
    begin
      (Sender as TEdit).Color := clRed;
    end;
  ListsCmd2[NumListCmd].AutoClrStrHEX := AutoClrStrHEX;
  (Sender as TEdit).ShowHint := not isCreateFormMain;

end;

procedure TForm1.EdtAutoClrStrAsciiChange(Sender: TObject);
begin
  if (Length((Sender as TEdit).Text) < 250) then
    begin
      (Sender as TEdit).Color := clWindow;
      AutoClrStrASCII := (Sender as TEdit).Text;
    end
  else
    begin
      (Sender as TEdit).Color := clRed;
    end;
  ListsCmd2[NumListCmd].AutoClrStrASCII := AutoClrStrASCII;  
  (Sender as TEdit).ShowHint := not isCreateFormMain;
end;

procedure TForm1.EventLogClick(Sender: TObject);
begin
  (Sender as TMemo).ShowHint := False;
end;

procedure TForm1.BtEventLiveClick(Sender: TObject);
begin
  if (Sender as TButton).Tag = 0 then
    begin
      pnlSep.Height := grpLineSeparator.Height + 60;

      BtLineSep.Font.Style     := [];
      BtAutoClear.Font.Style   := [];
      BtFIFO.Font.Style        := [];
      BtAutoExpand.Font.Style  := [];
      btnLOG.Font.Style        := [];
      BtEventLive.Font.Style   := [fsbold,fsUnderline];

      BtLineSep.Tag            := 0;
      BtAutoClear.Tag          := 0;
      BtFIFO.Tag               := 0;
      BtAutoExpand.Tag         := 0;
      btnLOG.Tag          := 0;
      BtEventLive.Tag          := 1;

      grpLineSeparator.Visible := False;
      grp2.Visible             := False;
      Fifo.Visible             := False;
      GroupBox1.Visible        := False;
      grpLog.Visible           := False;
      grpEventLog.Visible      := True;
    end
  else
    begin
      pnlSep.Height := 50;
      BtLineSep.Font.Style     := [];
      BtAutoClear.Font.Style   := [];
      BtFIFO.Font.Style        := [];
      BtAutoExpand.Font.Style  := [];
      btnLOG.Font.Style        := [];

      btnLOG.Tag := 0;
      BtLineSep.Tag            := 0;
      BtAutoClear.Tag          := 0;
      BtFIFO.Tag               := 0;
      BtAutoExpand.Tag         := 0;

      grpLineSeparator.Visible := false;
      grp2.Visible             := False;
      Fifo.Visible             := False;
      GroupBox1.Visible        := False;



      BtEventLive.Font.Style  := [];
      BtEventLive.Tag         := 0;
      grpEventLog.Visible     := false;
    end;
end;

procedure TForm1.ChEventWriteInLogClick(Sender: TObject);
  var
    isEventFile : Boolean;
    CntAtt      : integer;
    Err : integer;
begin
  if  (isCreateFormMain) and (not isDisSleepEv) then
    begin
      isEventFile := True;
      if not isWriteEvent then
        begin
          CntAtt := 5;
          {$IOChecks off}
          repeat
            NameLogEvent := CfgTerminal.LogDir;
            if (NameLogEvent = '') or (not isEventFile) then
              NameLogEvent := ExtractFilePath(Application.ExeName);

            NameLogEvent := NameLogEvent + 'Events.txt';
            AssignFile(LogEvent, NameLogEvent);
            isEventFile := FileExists(NameLogEvent);
            if isEventFile then
              Append(LogEvent)
            else
              Rewrite(LogEvent);
            Err := IOResult;
            if Err = 0 then
              isEventFile := True;
            Dec(CntAtt);
          until (isEventFile and (Err = 0)) or (CntAtt = 0);
          isWriteEvent := True;

          if Err <> 0 then
            begin
             isWriteEvent := false;
             ShowMessage('Error accessing the log file :' + IntToStr(Err));
             isDisSleepEv := True;
            end;
          {$IOChecks on}

          if isWriteEvent then
            begin
              if CfgTerminal.NameLogEvents = '' then
                WriteLogEvent(Now, 'The log file was created in the program ' + VersionInfo);
              WriteLogEvent(Now, 'Start write log event');
              CfgTerminal.NameLogEvents := NameLogEvent;
              BtOpenLogEvents.Enabled := True;
            end
          else
            begin
              WriteLogEvent(Now, 'Error start write log event');
            end;
        end
      else
        begin
          WriteLogEvent(Now, 'Stop write log');
          CloseFile(LogEvent);
          isWriteEvent := false;
        end;

      if isWriteEvent then
          EventLog.BorderStyle := bsSingle
        else
          EventLog.BorderStyle := bsNone;
      (Sender as TCheckBox).Checked := isWriteEvent;
    end
  else
    isDisSleepEv := False;
end;

procedure TForm1.BtOpenLogEventsClick(Sender: TObject);
  var
  Name : PAnsiChar;
begin
  Name :=  PAnsiChar(AnsiString(CfgTerminal.NameLogEvents));
  ShellExecute(Handle, 'open' , 'notepad.exe', Name, nil, SW_SHOWNORMAL);
end;

procedure TForm1.ChAconnPortClick(Sender: TObject);
begin
  isAConnectPort := (Sender as TCheckBox).Checked;
end;

procedure TForm1.tmrAutoConnectTimer(Sender: TObject);
begin
  (Sender as TTimer).Enabled := False;
  BTConnect.Click;
end;

procedure TForm1.ComPortChange(Sender: TObject);
begin
  if Length(ComPort.Text) > 9 then
    ComPort.Color := clRed
  else
    ComPort.Color := clWindow;
end;

procedure TForm1.rbSASCIIClick(Sender: TObject);
begin
  SetSASCII;
  isReqSaveCmdList := true;
end;

procedure TForm1.rbSHEXClick(Sender: TObject);
begin
  SetSHEX;
  isReqSaveCmdList := true;
end;

procedure TForm1.rbRASCIIClick(Sender: TObject);
begin
  SetRASCII;
  isReqSaveCmdList := true;
end;

procedure TForm1.rbRHEXClick(Sender: TObject);
begin
  SetRHEX;
  isReqSaveCmdList := true;
end;

procedure TForm1.CBModeChange;
begin
  if CBModeSend.ItemIndex = 0 then
    begin
      ManualSelect;
      PeriodTX.Color := Form1.Color;
    end
  else if CBModeSend.ItemIndex = 1 then
    begin
      WhChSelect;
      PeriodTX.Color := Form1.Color;
    end
  else if CBModeSend.ItemIndex = 2 then
    begin
      AftAnsSelect;
      PeriodTX.Color := Form1.Color;
    end
  else if CBModeSend.ItemIndex = 3 then
    begin
      PerSelSelect;
      PeriodTX.Color := clWindow;
    end
  else if CBModeSend.ItemIndex = 4 then
    begin
      ByteByByteSelSelect;
      PeriodTX.Color := Form1.Color;
    end;
end;



procedure TForm1.CBModeSendChange(Sender: TObject);
begin
  CBModeChange;
end;

procedure TForm1.RBNoOutClick(Sender: TObject);
begin
  if isCreateFormMain then
    begin
      FiltrLog.SetFocus;
      FiltrLog.Color := clYellow;
    end;
end;

procedure TForm1.PeriodTXChange(Sender: TObject);
begin
  if isCreateFormMain then
    begin
      if (Sender as TEdit).Text <> '' then
        periodSend := StrToInt((Sender as TEdit).Text)
      else
        periodSend := 0;
    end;    
end;

procedure TForm1.MainStrCmdChange(Sender: TObject);
begin
  if Length((Sender as TEdit).Text) < 250 then
    ListsCmd2[NumListCmd].CmdStr := (Sender as TEdit).Text;
end;

procedure TForm1.VisTimeClick(Sender: TObject);
begin
  ListsCmd2[NumListCmd].isVisTime := (Sender as TCheckBox).Checked;
end;

procedure TForm1.CntBytesBoxClick(Sender: TObject);
begin
  ListsCmd2[NumListCmd].isVisCnt := (Sender as TCheckBox).Checked;
end;

procedure TForm1.BtCopyListClick(Sender: TObject);
begin
  CopyListCmdBuf := ListsCmd2[NumListCmd];
  BtPasteList.Enabled := True;
  BtPasteList.Hint := 'Paste list "' + CopyListCmdBuf.NameList + '" from clipboard';
  isCopyListCmdBuf := True;

  DelList.Enabled := false;
  BtCopyList.Enabled := false;
  BtPasteList.Enabled := false;
  rb1.Checked := False;
  grp12.Color := form1.Color;
end;

procedure TForm1.BtPasteListClick(Sender: TObject);
begin
 ListsCmd2[NumListCmd] := CopyListCmdBuf;
 ReadListCmd(NumListCmd);
 DelList.Enabled := false;
 BtCopyList.Enabled := false;
 BtPasteList.Enabled := false;
 rb1.Checked := False;
 grp12.Color := form1.Color;
end;

procedure TForm1.BrutForceBTClick(Sender: TObject);
  begin
    (Sender as TButton).Enabled := false;
    SetEnHideTimer.Enabled := true;
    isEnHide := false;


    (Sender as TButton).Font.Style := [fsbold,fsUnderline];
    BruteForce.Color := Form1.Color;
    BruteForce.Show;
    BruteForce.WindowState := wsNormal;
    (Sender as TButton).Enabled := true;
  end;

procedure TForm1.BtBTASCIITABLEClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  FormAsciiTable.Color := Form1.Color;
  FormAsciiTable.isSelect := False;
  FormAsciiTable.Show();
  FormAsciiTable.WindowState := wsNormal;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;
  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.ChCBBefByte1Click(Sender: TObject);
begin
  isSepBefSymbol1 := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSepBefSymbol1 := isSepBefSymbol1;
  if isSepBefSymbol1 then
    begin
      EdtBefSym1.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtBefSym1.Color := Form1.Color;
    end;
end;

procedure TForm1.ChCBBefByte2Click(Sender: TObject);
begin
  isSepBefSymbol2 := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSepBefSymbol2 := isSepBefSymbol2;
  if isSepBefSymbol2 then
    begin
      EdtBefSym2.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtBefSym2.Color := Form1.Color;
    end;
end;

procedure TForm1.EdtBefSymbol1DecChange(Sender: TObject);
begin
  if (Sender as TEdit).Text <> '' then
    begin
      (Sender as TEdit).Color := clWindow;
      if StrToInt((Sender as TEdit).Text) > 255 then
        begin
         (Sender as TEdit).Text := IntToStr(SepBefSymbol1);
        end
      else
        begin
          SepBefSymbol1 := StrToInt((Sender as TEdit).Text);
        end;
    end
  else
    begin
      (Sender as TEdit).Color := clYellow;
    end;

  ListsCmd2[NumListCmd].SepBefSymbol1 := SepBefSymbol1;
  EdtBefSym1.Text := IntToHex(SepBefSymbol1, 2);
end;


procedure TForm1.Edt2Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte1_3_1 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols1_3 := ListsCmd2[NumListCmd].SeqSymbols1_3 and $00FFFFFF;
  ListsCmd2[NumListCmd].SeqSymbols1_3 := ListsCmd2[NumListCmd].SeqSymbols1_3 or (SepAftByte1_3_1 shl 24);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte1_3_1);
end;

procedure TForm1.EdtBefSym1Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin

  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepBefSymbol1 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SepBefSymbol1 := SepBefSymbol1;
  (Sender AS TEdit).Hint := 'Dec: ' + IntToStr(SepBefSymbol1);
end;

procedure TForm1.EdtBefSym2Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin

  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepBefSymbol2 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SepBefSymbol2 := SepBefSymbol2;
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepBefSymbol2);
end;

procedure TForm1.EdtBefSymbol1DecExit(Sender: TObject);
begin
  (Sender as TEdit).Color := clWindow;
  (Sender as TEdit).Text  := IntToStr(SepBefSymbol1);
end;

procedure TForm1.Edt2Exit(Sender: TObject);
begin
  (Sender as TEdit).Color := clWindow;
  (Sender as TEdit).Text  := IntToStr(SepBefSymbol2);
end;

procedure TForm1.EdtBefSymbol1DecKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

function CheskHexKey(Key : Char) : Char;
begin
   if((Key <> '0') and
     (Key <> '1') and
     (Key <> '2') and
     (Key <> '3') and
     (Key <> '4') and
     (Key <> '5') and
     (Key <> '6') and
     (Key <> '7') and
     (Key <> '8') and
     (Key <> '9') and
     (Key <> 'a') and
     (Key <> 'b') and
     (Key <> 'c') and
     (Key <> 'd') and
     (Key <> 'e') and
     (Key <> 'f') and
     (Key <> 'A') and
     (Key <> 'B') and
     (Key <> 'C') and
     (Key <> 'D') and
     (Key <> 'E') and
     (Key <> 'F') and
     (Key <> #8) ) then result := #0
     else
     Result := Key;
end;

procedure TForm1.Edt2KeyPress(Sender: TObject; var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TForm1.EdtBefSym1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TForm1.EdtBefSym2KeyPress(Sender: TObject; var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure HotKeyPressed (Key: Char);
var i : Integer;
begin
  if  (NumListCmd > 0) and (ListsCmd2[NumListCmd].isUseHotKey) then
  begin
    for i:=1 to 48 do
      if  Key = chr(HotKey[i]) then
        BTCmd[i].Click();
  end;
end;

procedure TForm1.edt108Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte2_4_2 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols2_4 := ListsCmd2[NumListCmd].SeqSymbols2_4 and $FF00FFFF;
  ListsCmd2[NumListCmd].SeqSymbols2_4 := ListsCmd2[NumListCmd].SeqSymbols2_4 or (SepAftByte2_4_2 shl 16);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte2_4_2);
end;

procedure TForm1.edt109Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte2_4_3 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols2_4 := ListsCmd2[NumListCmd].SeqSymbols2_4 and $FFFF00FF;
  ListsCmd2[NumListCmd].SeqSymbols2_4 := ListsCmd2[NumListCmd].SeqSymbols2_4 or (SepAftByte2_4_3 shl 8);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte2_4_3);
end;

procedure TForm1.edt110Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte2_4_4 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols2_4 := ListsCmd2[NumListCmd].SeqSymbols2_4 and $FFFFFF00;
  ListsCmd2[NumListCmd].SeqSymbols2_4 := ListsCmd2[NumListCmd].SeqSymbols2_4 or SepAftByte2_4_4;
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte2_4_4);
end;
procedure TForm1.edt111Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte2_3_1 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols2_3 := ListsCmd2[NumListCmd].SeqSymbols2_3 and $00FFFFFF;
  ListsCmd2[NumListCmd].SeqSymbols2_3 := ListsCmd2[NumListCmd].SeqSymbols2_3 or (SepAftByte2_3_1 shl 24);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte2_3_1);
end;
procedure TForm1.edt112Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte2_3_2 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols2_3 := ListsCmd2[NumListCmd].SeqSymbols2_3 and $FF00FFFF;
  ListsCmd2[NumListCmd].SeqSymbols2_3 := ListsCmd2[NumListCmd].SeqSymbols2_3 or (SepAftByte2_3_2 shl 16);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte2_3_2);
end;

procedure TForm1.edt113Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte2_3_3 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols2_3 := ListsCmd2[NumListCmd].SeqSymbols2_3 and $FFFF00FF;
  ListsCmd2[NumListCmd].SeqSymbols2_3 := ListsCmd2[NumListCmd].SeqSymbols2_3 or (SepAftByte2_3_3 shl 8);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte2_3_3);
end;
procedure TForm1.edt114Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte2_2_1 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols2_2 := ListsCmd2[NumListCmd].SeqSymbols2_2 and $00FFFFFF;
  ListsCmd2[NumListCmd].SeqSymbols2_2 := ListsCmd2[NumListCmd].SeqSymbols2_2 or (SepAftByte2_2_1 shl 24);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte2_2_1);
end;


procedure TForm1.edt115Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte2_2_2 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols2_2 := ListsCmd2[NumListCmd].SeqSymbols2_2 and $FF00FFFF;
  ListsCmd2[NumListCmd].SeqSymbols2_2 := ListsCmd2[NumListCmd].SeqSymbols2_2 or (SepAftByte2_2_2 shl 16);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte2_2_2);
end;


procedure TForm1.BtSendKeyPress(Sender: TObject; var Key: Char);
begin
  HotKeyPressed(Key);
  if Ord(Key) = 27 then
    ReadListCmd(NumListCmd);
end;

procedure TForm1.ChHKClick(Sender: TObject);
begin
  if  NumListCmd > 0 then
    ListsCmd2[NumListCmd].isUseHotKey := (Sender as TCheckBox).Checked;

  if ListsCmd2[NumListCmd].isUseHotKey = False then
    ReadListCmd(NumListCmd);
  //(Sender as TCheckBox).ShowHint := False;
  if isModeDialog and (ActiveControl <> ListDec) and (ActiveControl <> ListInc) then
  ActiveControl := BtSend;
end;

procedure TForm1.ChHKMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var i : Byte;
begin
  if (Sender as TCheckBox).Checked then
  begin
  for i:= 1 to 48 do
    begin
      BTCmd[i].Caption := Chr(HotKey[i]);
      if BTCmd[i].Caption = '' then
        BTCmd[i].Caption := 'No hot button';
    end;
  tmr1.Enabled := True;
  if isModeDialog then
  ActiveControl := BtSend;
  end;
end;

procedure TForm1.HKChange(Sender: TObject);
var
  tmp : string[1];
  num : byte;
  key : Byte;
  tag : Byte;
begin
  num := (Sender as TEdit).Tag;
  tag := (Sender as TEdit).Tag;


  tmp := (Sender as TEdit).Text;
  HotKey[num] := Ord(tmp[1]);
  CurHotKey := HotKey[num];
  key := HotKey[num];

  case num of
    1: ListsCmd2[NumListCmd].HK1_4 := ((ListsCmd2[NumListCmd].HK1_4 and $FFFFFF00)  or (key shl 0));
    2: ListsCmd2[NumListCmd].HK1_4 := ((ListsCmd2[NumListCmd].HK1_4 and $FFFF00FF)  or (key shl 8));
    3: ListsCmd2[NumListCmd].HK1_4 := ((ListsCmd2[NumListCmd].HK1_4 and $FF00FFFF)  or (key shl 16));
    4: ListsCmd2[NumListCmd].HK1_4 := ((ListsCmd2[NumListCmd].HK1_4 and $00FFFFFF)  or (key shl 24));

    5: ListsCmd2[NumListCmd].HK5_8 := ((ListsCmd2[NumListCmd].HK5_8 and $FFFFFF00)  or (key shl 0));
    6: ListsCmd2[NumListCmd].HK5_8 := ((ListsCmd2[NumListCmd].HK5_8 and $FFFF00FF)  or (key shl 8));
    7: ListsCmd2[NumListCmd].HK5_8 := ((ListsCmd2[NumListCmd].HK5_8 and $FF00FFFF)  or (key shl 16));
    8: ListsCmd2[NumListCmd].HK5_8 := ((ListsCmd2[NumListCmd].HK5_8 and $00FFFFFF)  or (key shl 24));

    9:  ListsCmd2[NumListCmd].HK9_12 := ((ListsCmd2[NumListCmd].HK9_12 and $FFFFFF00)  or (key shl 0));
    10: ListsCmd2[NumListCmd].HK9_12 := ((ListsCmd2[NumListCmd].HK9_12 and $FFFF00FF)  or (key shl 8));
    11: ListsCmd2[NumListCmd].HK9_12 := ((ListsCmd2[NumListCmd].HK9_12 and $FF00FFFF)  or (key shl 16));
    12: ListsCmd2[NumListCmd].HK9_12 := ((ListsCmd2[NumListCmd].HK9_12 and $00FFFFFF)  or (key shl 24));

    13: ListsCmd2[NumListCmd].HK13_16 := ((ListsCmd2[NumListCmd].HK13_16 and $FFFFFF00)  or (key shl 0));
    14: ListsCmd2[NumListCmd].HK13_16 := ((ListsCmd2[NumListCmd].HK13_16 and $FFFF00FF)  or (key shl 8));
    15: ListsCmd2[NumListCmd].HK13_16 := ((ListsCmd2[NumListCmd].HK13_16 and $FF00FFFF)  or (key shl 16));
    16: ListsCmd2[NumListCmd].HK13_16 := ((ListsCmd2[NumListCmd].HK13_16 and $00FFFFFF)  or (key shl 24));

    17: ListsCmd2[NumListCmd].HK17_20 := ((ListsCmd2[NumListCmd].HK17_20 and $FFFFFF00)  or (key shl 0));
    18: ListsCmd2[NumListCmd].HK17_20 := ((ListsCmd2[NumListCmd].HK17_20 and $FFFF00FF)  or (key shl 8));
    19: ListsCmd2[NumListCmd].HK17_20 := ((ListsCmd2[NumListCmd].HK17_20 and $FF00FFFF)  or (key shl 16));
    20: ListsCmd2[NumListCmd].HK17_20 := ((ListsCmd2[NumListCmd].HK17_20 and $00FFFFFF)  or (key shl 24));

    21: ListsCmd2[NumListCmd].HK21_24 := ((ListsCmd2[NumListCmd].HK21_24 and $FFFFFF00)  or (key shl 0));
    22: ListsCmd2[NumListCmd].HK21_24 := ((ListsCmd2[NumListCmd].HK21_24 and $FFFF00FF)  or (key shl 8));
    23: ListsCmd2[NumListCmd].HK21_24 := ((ListsCmd2[NumListCmd].HK21_24 and $FF00FFFF)  or (key shl 16));
    24: ListsCmd2[NumListCmd].HK21_24 := ((ListsCmd2[NumListCmd].HK21_24 and $00FFFFFF)  or (key shl 24));

    25: ListsCmd2[NumListCmd].HK25_28 := ((ListsCmd2[NumListCmd].HK25_28 and $FFFFFF00)  or (key shl 0));
    26: ListsCmd2[NumListCmd].HK25_28 := ((ListsCmd2[NumListCmd].HK25_28 and $FFFF00FF)  or (key shl 8));
    27: ListsCmd2[NumListCmd].HK25_28 := ((ListsCmd2[NumListCmd].HK25_28 and $FF00FFFF)  or (key shl 16));
    28: ListsCmd2[NumListCmd].HK25_28 := ((ListsCmd2[NumListCmd].HK25_28 and $00FFFFFF)  or (key shl 24));

    29: ListsCmd2[NumListCmd].HK29_32 := ((ListsCmd2[NumListCmd].HK29_32 and $FFFFFF00)  or (key shl 0));
    30: ListsCmd2[NumListCmd].HK29_32 := ((ListsCmd2[NumListCmd].HK29_32 and $FFFF00FF)  or (key shl 8));
    31: ListsCmd2[NumListCmd].HK29_32 := ((ListsCmd2[NumListCmd].HK29_32 and $FF00FFFF)  or (key shl 16));
    32: ListsCmd2[NumListCmd].HK29_32 := ((ListsCmd2[NumListCmd].HK29_32 and $00FFFFFF)  or (key shl 24));

    33: ListsCmd2[NumListCmd].HK33_36 := ((ListsCmd2[NumListCmd].HK33_36 and $FFFFFF00)  or (key shl 0));
    34: ListsCmd2[NumListCmd].HK33_36 := ((ListsCmd2[NumListCmd].HK33_36 and $FFFF00FF)  or (key shl 8));
    35: ListsCmd2[NumListCmd].HK33_36 := ((ListsCmd2[NumListCmd].HK33_36 and $FF00FFFF)  or (key shl 16));
    36: ListsCmd2[NumListCmd].HK33_36 := ((ListsCmd2[NumListCmd].HK33_36 and $00FFFFFF)  or (key shl 24));

    37: ListsCmd2[NumListCmd].HK37_40 := ((ListsCmd2[NumListCmd].HK37_40 and $FFFFFF00)  or (key shl 0));
    38: ListsCmd2[NumListCmd].HK37_40 := ((ListsCmd2[NumListCmd].HK37_40 and $FFFF00FF)  or (key shl 8));
    39: ListsCmd2[NumListCmd].HK37_40 := ((ListsCmd2[NumListCmd].HK37_40 and $FF00FFFF)  or (key shl 16));
    40: ListsCmd2[NumListCmd].HK37_40 := ((ListsCmd2[NumListCmd].HK37_40 and $00FFFFFF)  or (key shl 24));

    41: ListsCmd2[NumListCmd].HK41_44 := ((ListsCmd2[NumListCmd].HK41_44 and $FFFFFF00)  or (key shl 0));
    42: ListsCmd2[NumListCmd].HK41_44 := ((ListsCmd2[NumListCmd].HK41_44 and $FFFF00FF)  or (key shl 8));
    43: ListsCmd2[NumListCmd].HK41_44 := ((ListsCmd2[NumListCmd].HK41_44 and $FF00FFFF)  or (key shl 16));
    44: ListsCmd2[NumListCmd].HK41_44 := ((ListsCmd2[NumListCmd].HK41_44 and $00FFFFFF)  or (key shl 24));

    45: ListsCmd2[NumListCmd].HK45_48 := ((ListsCmd2[NumListCmd].HK45_48 and $FFFFFF00)  or (key shl 0));
    46: ListsCmd2[NumListCmd].HK45_48 := ((ListsCmd2[NumListCmd].HK45_48 and $FFFF00FF)  or (key shl 8));
    47: ListsCmd2[NumListCmd].HK45_48 := ((ListsCmd2[NumListCmd].HK45_48 and $FF00FFFF)  or (key shl 16));
    48: ListsCmd2[NumListCmd].HK45_48 := ((ListsCmd2[NumListCmd].HK45_48 and $00FFFFFF)  or (key shl 24));
  end;



end;

procedure TForm1.tmrCheckHKTimer(Sender: TObject);
var
  num : Byte;
begin

  for num := 1 to 48 do
    begin
      EDTHotKey[num].Color := clWindow;
    end;

  for num := 1 to 48 do
    begin
      if (CurHotKey = HotKey[num]) and (CurHotKey <> 0)     then
        EDTHotKey[num].Color := clAqua;
    end;

end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
  ReadListCmd(NumListCmd);
  (Sender as TTimer).Enabled := False;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  HotKeyPressed(Key);
  if Ord(Key) = 27 then
    ReadListCmd(NumListCmd);
end;

procedure TForm1.MainWindowKeyPress(Sender: TObject; var Key: Char);
begin
  HotKeyPressed(Key);
  if Ord(Key) = 27 then
    ReadListCmd(NumListCmd);
end;

procedure TForm1.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  //if ((ActiveControl <> MainWindow) and (ActiveControl <> MainWindowAdd) and (ActiveControl <> SecondWindow) and
  //(ActiveControl <> SecondWindowAdd)
  //   and (ActiveControl <> LBTail) and  (ActiveControl <> OldCmdList) and (ActiveControl <> lstFastOldCmd))  then
  //if (ActiveControl = ListNameEDT)  then
  //  ListInc.Click();
end;

procedure TForm1.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  //if (ActiveControl = ListNameEDT)  then
  //  ListDec.Click();
end;

procedure TForm1.EdtJDblClick(Sender: TObject);
  var i : Integer;
      tmp : Word;
      tmp2 : Word;
begin
  i := (Sender as TEdit).Tag;
  FormJoyst.numJ := SettJ[i].numJ;
  FormJoyst.Key1 := SettJ[i].Key1;
  FormJoyst.Key2 := SettJ[i].Key2;
  FormJoyst.SendMode := SettJ[i].SendMode;
  FormJoyst.isUse    := SettJ[i].isUse;

  if ListsCmd2[NumListCmd].CmdName[i] <> '' then
    FormJoyst.Caption  := ListsCmd2[NumListCmd].CmdName[i]
  else
    FormJoyst.Caption  := '[No command name]';


  EDTJKey[i].Color := clYellow;
  FormJoyst.ShowModal();


  SettJ[i].numJ := FormJoyst.numJ;
  SettJ[i].Key1 := FormJoyst.Key1;
  SettJ[i].Key2 := FormJoyst.Key2;
  SettJ[i].SendMode := FormJoyst.SendMode;
  SettJ[i].isUse := FormJoyst.isUse;

  tmp := 0;
  tmp2 := (SettJ[i].numJ - 1) shl 15;
  tmp := tmp or tmp2;
  tmp2 := (SettJ[i].Key1 shl 9);
  tmp := tmp or tmp2;
  tmp2 := (SettJ[i].Key2 shl 3);
  tmp := tmp or tmp2;
  tmp2 := ((SettJ[i].SendMode - 1) shl 2);
  tmp := tmp or tmp2;
  tmp2 := 1 shl 1;

  if SettJ[i].isUse then
    tmp := tmp or tmp2;

  case i of
    1:  ListsCmd2[NumListCmd].J01_02 := (ListsCmd2[NumListCmd].J01_02 and $FFFF0000) or (tmp shl 0);
    2:  ListsCmd2[NumListCmd].J01_02 := (ListsCmd2[NumListCmd].J01_02 and $0000FFFF) or (tmp shl 16);
    3:  ListsCmd2[NumListCmd].J03_04 := (ListsCmd2[NumListCmd].J03_04 and $FFFF0000) or (tmp shl 0);
    4:  ListsCmd2[NumListCmd].J03_04 := (ListsCmd2[NumListCmd].J03_04 and $0000FFFF) or (tmp shl 16);
    5:  ListsCmd2[NumListCmd].J05_06 := (ListsCmd2[NumListCmd].J05_06 and $FFFF0000) or (tmp shl 0);
    6:  ListsCmd2[NumListCmd].J05_06 := (ListsCmd2[NumListCmd].J05_06 and $0000FFFF) or (tmp shl 16);
    7:  ListsCmd2[NumListCmd].J07_08 := (ListsCmd2[NumListCmd].J07_08 and $FFFF0000) or (tmp shl 0);
    8:  ListsCmd2[NumListCmd].J07_08 := (ListsCmd2[NumListCmd].J07_08 and $0000FFFF) or (tmp shl 16);
    9:  ListsCmd2[NumListCmd].J09_10 := (ListsCmd2[NumListCmd].J09_10 and $FFFF0000) or (tmp shl 0);
    10: ListsCmd2[NumListCmd].J09_10 := (ListsCmd2[NumListCmd].J09_10 and $0000FFFF) or (tmp shl 16);
    11: ListsCmd2[NumListCmd].J11_12 := (ListsCmd2[NumListCmd].J11_12 and $FFFF0000) or (tmp shl 0);
    12: ListsCmd2[NumListCmd].J11_12 := (ListsCmd2[NumListCmd].J11_12 and $0000FFFF) or (tmp shl 16);
    13: ListsCmd2[NumListCmd].J13_14 := (ListsCmd2[NumListCmd].J13_14 and $FFFF0000) or (tmp shl 0);
    14: ListsCmd2[NumListCmd].J13_14 := (ListsCmd2[NumListCmd].J13_14 and $0000FFFF) or (tmp shl 16);
    15: ListsCmd2[NumListCmd].J15_16 := (ListsCmd2[NumListCmd].J15_16 and $FFFF0000) or (tmp shl 0);
    16: ListsCmd2[NumListCmd].J15_16 := (ListsCmd2[NumListCmd].J15_16 and $0000FFFF) or (tmp shl 16);
    17: ListsCmd2[NumListCmd].J17_18 := (ListsCmd2[NumListCmd].J17_18 and $FFFF0000) or (tmp shl 0);
    18: ListsCmd2[NumListCmd].J17_18 := (ListsCmd2[NumListCmd].J17_18 and $0000FFFF) or (tmp shl 16);
    19: ListsCmd2[NumListCmd].J19_20 := (ListsCmd2[NumListCmd].J19_20 and $FFFF0000) or (tmp shl 0);
    20: ListsCmd2[NumListCmd].J19_20 := (ListsCmd2[NumListCmd].J19_20 and $0000FFFF) or (tmp shl 16);
    21: ListsCmd2[NumListCmd].J21_22 := (ListsCmd2[NumListCmd].J21_22 and $FFFF0000) or (tmp shl 0);
    22: ListsCmd2[NumListCmd].J21_22 := (ListsCmd2[NumListCmd].J21_22 and $0000FFFF) or (tmp shl 16);
    23: ListsCmd2[NumListCmd].J23_24 := (ListsCmd2[NumListCmd].J23_24 and $FFFF0000) or (tmp shl 0);
    24: ListsCmd2[NumListCmd].J23_24 := (ListsCmd2[NumListCmd].J23_24 and $0000FFFF) or (tmp shl 16);
    25: ListsCmd2[NumListCmd].J25_26 := (ListsCmd2[NumListCmd].J25_26 and $FFFF0000) or (tmp shl 0);
    26: ListsCmd2[NumListCmd].J25_26 := (ListsCmd2[NumListCmd].J25_26 and $0000FFFF) or (tmp shl 16);
    27: ListsCmd2[NumListCmd].J27_28 := (ListsCmd2[NumListCmd].J27_28 and $FFFF0000) or (tmp shl 0);
    28: ListsCmd2[NumListCmd].J27_28 := (ListsCmd2[NumListCmd].J27_28 and $0000FFFF) or (tmp shl 16);
    29: ListsCmd2[NumListCmd].J29_30 := (ListsCmd2[NumListCmd].J29_30 and $FFFF0000) or (tmp shl 0);
    30: ListsCmd2[NumListCmd].J29_30 := (ListsCmd2[NumListCmd].J29_30 and $0000FFFF) or (tmp shl 16);
    31: ListsCmd2[NumListCmd].J31_32 := (ListsCmd2[NumListCmd].J31_32 and $FFFF0000) or (tmp shl 0);
    32: ListsCmd2[NumListCmd].J31_32 := (ListsCmd2[NumListCmd].J31_32 and $0000FFFF) or (tmp shl 16);
    33: ListsCmd2[NumListCmd].J33_34 := (ListsCmd2[NumListCmd].J33_34 and $FFFF0000) or (tmp shl 0);
    34: ListsCmd2[NumListCmd].J33_34 := (ListsCmd2[NumListCmd].J33_34 and $0000FFFF) or (tmp shl 16);
    35: ListsCmd2[NumListCmd].J35_36 := (ListsCmd2[NumListCmd].J35_36 and $FFFF0000) or (tmp shl 0);
    36: ListsCmd2[NumListCmd].J35_36 := (ListsCmd2[NumListCmd].J35_36 and $0000FFFF) or (tmp shl 16);
    37: ListsCmd2[NumListCmd].J37_38 := (ListsCmd2[NumListCmd].J37_38 and $FFFF0000) or (tmp shl 0);
    38: ListsCmd2[NumListCmd].J37_38 := (ListsCmd2[NumListCmd].J37_38 and $0000FFFF) or (tmp shl 16);
    39: ListsCmd2[NumListCmd].J39_40 := (ListsCmd2[NumListCmd].J39_40 and $FFFF0000) or (tmp shl 0);
    40: ListsCmd2[NumListCmd].J39_40 := (ListsCmd2[NumListCmd].J39_40 and $0000FFFF) or (tmp shl 16);
    41: ListsCmd2[NumListCmd].J41_42 := (ListsCmd2[NumListCmd].J41_42 and $FFFF0000) or (tmp shl 0);
    42: ListsCmd2[NumListCmd].J41_42 := (ListsCmd2[NumListCmd].J41_42 and $0000FFFF) or (tmp shl 16);
    43: ListsCmd2[NumListCmd].J43_44 := (ListsCmd2[NumListCmd].J43_44 and $FFFF0000) or (tmp shl 0);
    44: ListsCmd2[NumListCmd].J43_44 := (ListsCmd2[NumListCmd].J43_44 and $0000FFFF) or (tmp shl 16);
    45: ListsCmd2[NumListCmd].J45_46 := (ListsCmd2[NumListCmd].J45_46 and $FFFF0000) or (tmp shl 0);
    46: ListsCmd2[NumListCmd].J45_46 := (ListsCmd2[NumListCmd].J45_46 and $0000FFFF) or (tmp shl 16);
    47: ListsCmd2[NumListCmd].J47_48 := (ListsCmd2[NumListCmd].J47_48 and $FFFF0000) or (tmp shl 0);
    48: ListsCmd2[NumListCmd].J47_48 := (ListsCmd2[NumListCmd].J47_48 and $0000FFFF) or (tmp shl 16);

  end;
  ReadListCmd(NumListCmd);

end;

procedure TForm1.tmrCheckJTimer(Sender: TObject);
var k1, kt : Cardinal;
    k2: Cardinal;
    i : Integer;
    isSend : Boolean;
begin
   (Sender as TTimer).Enabled := False;
   joygetpos(joystickid1,@myjoy1);
   joygetpos(joystickid2,@myjoy2);

   isSend := False;

   k1 := myjoy1.wButtons;
   k2 := myjoy2.wButtons;

   if (k1 <> 0) or (k2<>0 ) then
   begin
   kt := 0;
   for i:=1 to 48 do
     begin
       kt := 0;

       if SettJ[i].isUse then
         begin
           if SettJ[i].Key1 > 0 then
             kt := 1 shl (SettJ[i].Key1 - 1);
           if SettJ[i].Key2 > 0 then
             kt := kt or (1 shl (SettJ[i].Key2 - 1));

           if kt > 0 then
             begin
               if ((SettJ[i].numJ = 1) and ((kt and k1) = kt)) or ((SettJ[i].numJ = 2) and ((kt and k2) = kt)) then
                 begin
                   if LastKeyJ = 0 then
                     begin
                       BTCmd[i].Click();
                     end;

                   LastKeyJ := kt;

                   if SettJ[i].SendMode = 1 then
                     begin
                       isSend := True;
                     end;

                   if SettJ[i].SendMode = 2 then
                     begin
                       LastKeyJ := 0;
                     end;
                 end;
             end;
         end;
     end;

   if isSend = False then
     LastKeyJ := 0;
   end;
   (Sender as TTimer).Enabled := true;
end;

procedure TForm1.EdtJMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var num : Byte;
      numCur : Byte;
begin

  numCur := (Sender as TEdit).Tag;
  for num := 1 to 48 do
    begin
      If SettJ[num].isUse then
         EDTJKey[num].Color := clLime
      else
         EDTJKey[num].Color := Form1.Color;
    end;

  for num := 1 to 48 do
    begin
      if (SettJ[numCur].numJ = SettJ[num].numJ) and (SettJ[numCur].Key1 = SettJ[num].Key1) and
         (SettJ[numCur].Key2 = SettJ[num].Key2) and (SettJ[numCur].isUse) and (SettJ[num].isUse)  then
        begin
          EDTJKey[num].Color := clAqua;
        end;
    end;



end;

procedure TForm1.BtParserClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  FormParser.Color := Form1.Color;
  FormParser.Show();
  FormParser.SetNumParser(NumListCmd);
  FormParser.WindowState := wsNormal;
  isUseParserHEX := True;
  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.BtAddMacrosClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;
  FormAddMacros.Color := Form1.Color;
  FormAddMacros.Show();
  FormAddMacros.WindowState := wsNormal;
  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.BtUtilitesClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;
  FormUtilites.Color := Form1.Color;
  FormUtilites.Show();
  FormUtilites.WindowState := wsNormal;
  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  (Sender as TButton).Enabled := true;
  ///
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  isSepSymbol2 := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSepSymbol2 := isSepSymbol2;
  if isSepSymbol2 then
    begin
      Edt98.Color := COLOR_LINE_SEP;
    end
  else
    begin
      Edt98.Color := Form1.Color;
    end;
end;

procedure TForm1.Edt99Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte1_3_2 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols1_3 := ListsCmd2[NumListCmd].SeqSymbols1_3 and $FF00FFFF;
  ListsCmd2[NumListCmd].SeqSymbols1_3 := ListsCmd2[NumListCmd].SeqSymbols1_3 or (SepAftByte1_3_2 shl 16);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte1_3_2);
end;

procedure TForm1.Edt99Exit(Sender: TObject);
begin
  (Sender as TEdit).Color := clWindow;
  (Sender as TEdit).Text  := IntToStr(SepSymbol2);
end;

procedure TForm1.Edt99KeyPress(Sender: TObject; var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TForm1.Edt98Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin

  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepSymbol2 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SepSymbol2 := SepSymbol2;
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepSymbol2);
end;

procedure TForm1.Edt98KeyPress(Sender: TObject; var Key: Char);
begin
  if((Key <> '0') and
     (Key <> '1') and
     (Key <> '2') and
     (Key <> '3') and
     (Key <> '4') and
     (Key <> '5') and
     (Key <> '6') and
     (Key <> '7') and
     (Key <> '8') and
     (Key <> '9') and
     (Key <> 'a') and
     (Key <> 'b') and
     (Key <> 'c') and
     (Key <> 'd') and
     (Key <> 'e') and
     (Key <> 'f') and
     (Key <> 'A') and
     (Key <> 'B') and
     (Key <> 'C') and
     (Key <> 'D') and
     (Key <> 'E') and
     (Key <> 'F') and
     (Key <> #8) ) then Key := #0;
end;

procedure TForm1.chk1Click(Sender: TObject);
begin
  isSepAftSeq1_4 := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSepAftSeq1_4 := isSepAftSeq1_4;
  if isSepAftSeq1_4 then
    begin
      edt100.Color := COLOR_LINE_SEP;
      edt101.Color := COLOR_LINE_SEP;
      edt102.Color := COLOR_LINE_SEP;
      edt103.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt100.Color := Form1.Color;
      edt101.Color := Form1.Color;
      edt102.Color := Form1.Color;
      edt103.Color := Form1.Color;
    end;
end;



procedure TForm1.edt100KeyPress(Sender: TObject; var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TForm1.edt101KeyPress(Sender: TObject; var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TForm1.edt102KeyPress(Sender: TObject; var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TForm1.edt103KeyPress(Sender: TObject; var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TForm1.edt100Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte1_4_1 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols1_4 := ListsCmd2[NumListCmd].SeqSymbols1_4 and $00FFFFFF;
  ListsCmd2[NumListCmd].SeqSymbols1_4 := ListsCmd2[NumListCmd].SeqSymbols1_4 or (SepAftByte1_4_1 shl 24);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte1_4_1);
end;

procedure TForm1.edt101Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte1_4_2 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols1_4 := ListsCmd2[NumListCmd].SeqSymbols1_4 and $FF00FFFF;
  ListsCmd2[NumListCmd].SeqSymbols1_4 := ListsCmd2[NumListCmd].SeqSymbols1_4 or (SepAftByte1_4_2 shl 16);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte1_4_2);
end;


procedure TForm1.edt102Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte1_4_3 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
     end;
 ListsCmd2[NumListCmd].SeqSymbols1_4 := ListsCmd2[NumListCmd].SeqSymbols1_4 and $FFFF00FF;
  ListsCmd2[NumListCmd].SeqSymbols1_4 := ListsCmd2[NumListCmd].SeqSymbols1_4 or (SepAftByte1_4_3 shl 8);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte1_4_3);
end;

procedure TForm1.edt103Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte1_4_4 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols1_4 := ListsCmd2[NumListCmd].SeqSymbols1_4 and $FFFFFF00;
  ListsCmd2[NumListCmd].SeqSymbols1_4 := ListsCmd2[NumListCmd].SeqSymbols1_4 or SepAftByte1_4_4;
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte1_4_4);
end;

procedure TForm1.ChInvClick(Sender: TObject);
begin
  isInvert := (Sender as TCheckBox).Checked;
end;

procedure TForm1.Chchk2Click(Sender: TObject);
begin
  isRevers := (Sender as TCheckBox).Checked;
end;

procedure TForm1.chk2Click(Sender: TObject);
begin
  isSepAftSeq1_3 := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSepAftSeq1_3 := isSepAftSeq1_3;
  if isSepAftSeq1_3 then
    begin
      edt2.Color := COLOR_LINE_SEP;
      edt99.Color := COLOR_LINE_SEP;
      edt104.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt2.Color := Form1.Color;
      edt99.Color := Form1.Color;
      edt104.Color := Form1.Color;
    end;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  isSepAftSeq1_2 := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSepAftSeq1_2 := isSepAftSeq1_2;
  if isSepAftSeq1_2 then
    begin
      edt105.Color := COLOR_LINE_SEP;
      edt106.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt105.Color := Form1.Color;
      edt106.Color := Form1.Color;
    end;

end;
procedure TForm1.edt104KeyPress(Sender: TObject; var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TForm1.edt105KeyPress(Sender: TObject; var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TForm1.edt106KeyPress(Sender: TObject; var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TForm1.edt105Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte1_2_1 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols1_2 := ListsCmd2[NumListCmd].SeqSymbols1_2 and $00FFFFFF;
  ListsCmd2[NumListCmd].SeqSymbols1_2 := ListsCmd2[NumListCmd].SeqSymbols1_2 or (SepAftByte1_2_1 shl 24);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte1_2_1);
end;

procedure TForm1.edt106Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte1_2_2 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols1_2 := ListsCmd2[NumListCmd].SeqSymbols1_2 and $FF00FFFF;
  ListsCmd2[NumListCmd].SeqSymbols1_2 := ListsCmd2[NumListCmd].SeqSymbols1_2 or (SepAftByte1_2_2 shl 16);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte1_2_2);
end;
procedure TForm1.edt104Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte1_3_3 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols1_3 := ListsCmd2[NumListCmd].SeqSymbols1_3 and $FFFF00FF;
  ListsCmd2[NumListCmd].SeqSymbols1_3 := ListsCmd2[NumListCmd].SeqSymbols1_3 or (SepAftByte1_3_3 shl 8);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte1_3_3);
end;

procedure TForm1.chk3Click(Sender: TObject);
begin
  isSepAftSeq2_4 := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSepAftSeq2_4 := isSepAftSeq2_4;
  if isSepAftSeq2_4 then
    begin
      edt107.Color := COLOR_LINE_SEP;
      edt108.Color := COLOR_LINE_SEP;
      edt109.Color := COLOR_LINE_SEP;
      edt110.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt107.Color := Form1.Color;
      edt108.Color := Form1.Color;
      edt109.Color := Form1.Color;
      edt110.Color := Form1.Color;
    end;
end;

procedure TForm1.chk4Click(Sender: TObject);
begin
  isSepAftSeq2_3 := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSepAftSeq2_3 := isSepAftSeq2_3;
  if isSepAftSeq2_3 then
    begin
      edt111.Color := COLOR_LINE_SEP;
      edt112.Color := COLOR_LINE_SEP;
      edt113.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt111.Color := Form1.Color;
      edt112.Color := Form1.Color;
      edt113.Color := Form1.Color;
    end;

end;

procedure TForm1.chk5Click(Sender: TObject);
begin
  isSepAftSeq2_2 := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isSepAftSeq2_2 := isSepAftSeq2_2;

  if isSepAftSeq2_2 then
    begin
      edt114.Color := COLOR_LINE_SEP;
      edt115.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt114.Color := Form1.Color;
      edt115.Color := Form1.Color;
    end;

end;

procedure TForm1.edt107Change(Sender: TObject);
  var Str: string[3];
      res: Integer;
begin
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      SepAftByte2_4_1 := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  ListsCmd2[NumListCmd].SeqSymbols2_4 := ListsCmd2[NumListCmd].SeqSymbols2_4 and $00FFFFFF;
  ListsCmd2[NumListCmd].SeqSymbols2_4 := ListsCmd2[NumListCmd].SeqSymbols2_4 or (SepAftByte2_4_1 shl 24);
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(SepAftByte2_4_1);
end;

procedure TForm1.chk6Click(Sender: TObject);
begin
  tmrAutoResetFIFO.Enabled := (Sender as TCHeckBox).Checked;
end;

procedure TForm1.tmrAutoResetFIFOTimer(Sender: TObject);
begin
  Randomize;
  (Sender as TTimer).Interval := 1000+Random(200);
  LostData         := LostData + CntDataReadBufAv;
  iReadBuf         := 0;
  iWriteBuf        := 0;
  CntDataReadBufAv := 0; //число доступных байтов для чтения из кольцевого буфера;
end;

procedure TForm1.CMainWindowMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if BtOptConn.Tag = 1 then
    BtOptConn.Click;
  SelTerm.Visible := False;
  if BtAddFunctions.Tag = 1 then
    BtAddFunctions.Click;
end;

procedure TForm1.CMainWindowKeyPress(Sender: TObject;
  var Key: Char);
begin
  HotKeyPressed(Key);
  if Ord(Key) = 27 then
    ReadListCmd(NumListCmd);
end;

procedure TForm1.CMainWindowMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ClearHelp;
end;

procedure TForm1.CMainWindowAddMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if BtOptConn.Tag = 1 then
    BtOptConn.Click;
  if BtAddFunctions.Tag = 1 then
    BtAddFunctions.Click;
  pnlAddWin.Visible := not pnlAddWin.Visible;
  SelTerm.Visible := False;
end;

procedure TForm1.cbbSendModeChange(Sender: TObject);
begin
  if (Sender as TComboBox).ItemIndex = 0 then
    begin
      SetSASCII;
      isReqSaveCmdList := true;
    end;
  if (Sender as TComboBox).ItemIndex = 1 then
    begin
      SetSHEX;
      isReqSaveCmdList := true;
    end;
  if (Sender as TComboBox).ItemIndex = 2 then
    begin
      SetSDEC;
      isReqSaveCmdList := true;
    end;


end;

procedure TForm1.cbbReadModeChange(Sender: TObject);
begin
 if (Sender as TComboBox).ItemIndex = 0 then
    begin
      SetRASCII;
      isReqSaveCmdList := true;
    end;
 if (Sender as TComboBox).ItemIndex = 1 then
    begin
      SetRHEX;
      isReqSaveCmdList := true;
    end;
 if (Sender as TComboBox).ItemIndex = 2 then
    begin
      SetRDEC;
      isReqSaveCmdList := true;
    end;
 if (Sender as TComboBox).ItemIndex = 3 then
    begin
      SetRCUSTOM;
      isReqSaveCmdList := true;
    end;




end;

procedure TForm1.BtAddPortsClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  FormAddPorts.Color := Form1.Color;
  FormAddPorts.Show();
  FormAddPorts.WindowState := wsNormal;
  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.ChVisPortClick(Sender: TObject);
begin
  ListsCmd2[NumListCmd].isVisPort := (Sender as TCheckBox).Checked;
end;

procedure TForm1.cbbHandsHakingChange(Sender: TObject);
begin
  HandsHakingPort := (Sender as TComboBox).ItemIndex;
  if HandsHakingPort = 0 then
    DCB.Flags := 0;

  if HandsHakingPort = 1 then
    DCB.Flags := (RTS_CONTROL_ENABLE shl 12);

  if isOpenPort then
    begin
      SetCommState(hCom,DCB);
    end;
end;

procedure TForm1.ChDirClick(Sender: TObject);
begin
  ListsCmd2[NumListCmd].isVisDir := (Sender as TCheckBox).Checked;
end;

procedure TForm1.chkAddDecClick(Sender: TObject);
begin
  isAddDec := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isAddDec := isAddDec;
end;

procedure TForm1.BtTableCustomClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  frmCustomTable.Color := Form1.Color;
  isUseCustomTable := True;
  frmCustomTable.Show();
  frmCustomTable.WindowState := wsNormal;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;
  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.ChAddCustomClick(Sender: TObject);
begin
  isAddCust := (Sender as TCheckBox).Checked;
  ListsCmd2[NumListCmd].isAddCust := isAddCust;
end;



procedure TForm1.Bt1Click(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  CMainWindow.SelectAll;
  CMainWindow.CopyToClipboard;
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.Bt2Click(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  CMainWindowAdd.SelectAll;
  CMainWindowAdd.CopyToClipboard;
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.btnPacketStatsClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  FormPacketsCNT.Color := Form1.Color;
  FormPacketsCNT.Show();
  FormPacketsCNT.WindowState := wsNormal;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;
  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.BtMultiPortClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  FormMultiPort.Color := Form1.Color;
  FormMultiPort.Show();
  FormMultiPort.WindowState := wsNormal;
  FormMultiPort.FontSizeInLog := FontSize;
  SetEnHideTimer.Enabled := true;
  isEnHide := false;
  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.BtAddPortsSendClick(Sender: TObject);
begin
  pnlSendInAdd.Visible := True;
end;

procedure TForm1.SendInAddClick(Sender: TObject);
begin
  SendAddPortData(MainStrCmd.Text, AddStrCmd.Text, SendMode, (Sender as TButton).Tag);
end;

procedure TForm1.SetActBtSendInAdd(nPort : Integer; isActiv : Boolean; Name : string; Hint : string);
begin
  case nPort of
    1  : begin Bt4.Enabled := isActiv;  Bt4.Caption := Name; Bt4.Hint := Hint;  end;
    2  : begin Bt5.Enabled := isActiv;  Bt5.Caption := Name; Bt5.Hint := Hint;  end;
    3  : begin Bt6.Enabled := isActiv;  Bt6.Caption := Name; Bt6.Hint := Hint;  end;
    4  : begin Bt7.Enabled := isActiv;  Bt7.Caption := Name; Bt7.Hint := Hint;  end;
    5  : begin Bt8.Enabled := isActiv;  Bt8.Caption := Name; Bt8.Hint := Hint;  end;
    6  : begin Bt9.Enabled := isActiv;  Bt9.Caption := Name; Bt9.Hint := Hint;  end;
    7  : begin Bt10.Enabled := isActiv; Bt10.Caption := Name; Bt10.Hint := Hint;  end;
    8  : begin Bt11.Enabled := isActiv; Bt11.Caption := Name; Bt11.Hint := Hint;  end;
    9  : begin Bt12.Enabled := isActiv; Bt12.Caption := Name; Bt12.Hint := Hint;  end;
    10 : begin Bt13.Enabled := isActiv; Bt13.Caption := Name; Bt13.Hint := Hint;  end;
    11 : begin Bt14.Enabled := isActiv; Bt14.Caption := Name; Bt14.Hint := Hint;  end;
    12 : begin Bt15.Enabled := isActiv; Bt15.Caption := Name; Bt15.Hint := Hint;  end;
    13 : begin Bt16.Enabled := isActiv; Bt16.Caption := Name; Bt16.Hint := Hint;  end;
    14 : begin Bt17.Enabled := isActiv; Bt17.Caption := Name; Bt17.Hint := Hint;  end;
    15 : begin Bt18.Enabled := isActiv; Bt18.Caption := Name; Bt18.Hint := Hint;  end;
    16 : begin Bt19.Enabled := isActiv; Bt19.Caption := Name; Bt19.Hint := Hint;  end;
    17 : begin Bt20.Enabled := isActiv; Bt20.Caption := Name; Bt20.Hint := Hint;  end;
    18 : begin Bt21.Enabled := isActiv; Bt21.Caption := Name; Bt21.Hint := Hint;  end;
  end;
end;

procedure TForm1.Bt3Click(Sender: TObject);

begin
  if Bt4.Enabled  then Bt4.Click;
  if Bt5.Enabled  then Bt5.Click;
  if Bt6.Enabled  then Bt6.Click;
  if Bt7.Enabled  then Bt7.Click;
  if Bt8.Enabled  then Bt8.Click;
  if Bt9.Enabled  then Bt9.Click;
  if Bt10.Enabled then Bt10.Click;
  if Bt11.Enabled then Bt11.Click;
  if Bt12.Enabled then Bt12.Click;
  if Bt13.Enabled then Bt13.Click;
  if Bt14.Enabled then Bt14.Click;
  if Bt15.Enabled then Bt15.Click;
  if Bt16.Enabled then Bt16.Click;
  if Bt17.Enabled then Bt17.Click;
  if Bt18.Enabled then Bt18.Click;
  if Bt19.Enabled then Bt19.Click;
  if Bt20.Enabled then Bt20.Click;
  if Bt21.Enabled then Bt21.Click;

end;

procedure TForm1.chkAddDateClick(Sender: TObject);
begin
  isAddDate := (Sender as TCheckBox).Checked;
end;

procedure TForm1.chkOutNonPrintASCIIClick(Sender: TObject);
begin
  isNoOutNonPrint := (Sender as TCheckBox).Checked;
  SetOffNonPrintCh(isNoOutNonPrint);
end;

procedure TForm1.tmr3Timer(Sender: TObject);
begin
  CMainWindow.Clear;
  if CfgTerminal.PozMainWindow <> 0 then
    begin
      Form1.Top  := CfgTerminal.PozMainWindow and $FFFF;
      Form1.Left := (CfgTerminal.PozMainWindow and $FFFF0000) shr 16;
    end;

   if Form1.Top + Form1.Height > Screen.Height then
     Form1.Top := Screen.Height - Form1.Height;

   if Form1.Top < 0 then
     Form1.Top := 0;


   if (Form1.Left + Form1.Width > Screen.Width) and (Screen.MonitorCount = 1) then
     Form1.Left := Screen.Width - Form1.Width;


   if (Form1.Left + Form1.Width > Screen.Width) and (Screen.MonitorCount = 2) then
     Form1.Left := Screen.Monitors[0].Width + Screen.Monitors[1].Width  - Form1.Width;

   if (Form1.Left + Form1.Width > Screen.Width) and (Screen.MonitorCount = 3) then
     Form1.Left := Screen.Monitors[0].Width + Screen.Monitors[1].Width + Screen.Monitors[2].Width - Form1.Width;

   if (Form1.Left + Form1.Width > Screen.Width) and (Screen.MonitorCount = 4) then
     Form1.Left := Screen.Monitors[0].Width + Screen.Monitors[1].Width + Screen.Monitors[2].Width  + Screen.Monitors[3].Width - Form1.Width;

   if Form1.Left < 0 then
     Form1.Left := 0;




  (Sender as TTimer).Enabled := False;
end;

procedure TForm1.tmr4Timer(Sender: TObject);
begin
    if CfgTerminal.isFullScreen then
    Form1.WindowState := wsMaximized;
    isSavePos := true;
  chk7.Checked := isSavePos;
  (Sender as TTimer).Enabled := False;
end;

procedure TForm1.tmr5Timer(Sender: TObject);
begin
  CMainWindow.Lines.Add('');
  CMainWindow.Lines.Add('');

  CMainWindow.Lines.Add('Close the program window to cancel automatic position changes the next time you start it');
  CMainWindow.Lines.Add('');
  CMainWindow.Lines.Add('');

  CMainWindow.Lines.Add('Закройте окно программы для отмены автоматического изменения положения при следующем запуске');
  isSavePos := False;
  chk7.Checked := isSavePos;
  (Sender as TTimer).Enabled := False;
end;

procedure TForm1.chk7Click(Sender: TObject);
begin
  isSavePos := (Sender as TCheckBox).Checked;
end;

procedure TForm1.btnParserASCIIClick(Sender: TObject);
begin
  (Sender as TButton).Enabled := false;
  FormParserASCII.Color := Form1.Color;
  FormParserASCII.Show();
  isUseParserASCII := True;
  FormParserASCII.SetNumParser(NumListCmd);
  FormParserASCII.WindowState := wsNormal;
  (Sender as TButton).Font.Style := [fsbold,fsUnderline];
  (Sender as TButton).Enabled := true;
end;

procedure TForm1.tmrOpenListTimer(Sender: TObject);
begin
  if (NumSendList > 0) and (NumSendList <=999) then
    begin
      Form7.OpenList(NumSendList);
      tmrSendList.Enabled := True;
    end;
  (Sender as TTimer).Enabled := False;
end;

procedure TForm1.tmrSendListTimer(Sender: TObject);
begin
  Form7.Button33.Click;
  (Sender as TTimer).Enabled := False;
end;

procedure TForm1.edtSepEnter(Sender: TObject);
begin
  BStrTmp := (Sender as TEdit).Text;
end;

procedure TForm1.edtSepExit(Sender: TObject);
var
  tmp : string[3];
begin
  tmp := (Sender as TEdit).Text;
  if Length(tmp) = 1 then
    tmp := '0' + tmp;

  if Length(tmp) = 0 then
    tmp := BStrTmp;

  (Sender as TEdit).Text := tmp;
end;

procedure TForm1.tmrMinutesTimer(Sender: TObject);
var
  minutes : Int64;
  daus : Cardinal;
  Hours : Byte;
  Min : Byte;
begin
  minutes := MinutesBetween(StartTime, Now);
  Daus := Trunc(minutes / (60*24));
  Hours := Trunc((minutes - daus * 60 * 24)/60);
  Min := Minutes - daus * 60 * 24 - Hours * 60;

  ctxt2.Caption := Format('%.4d:%.2d:%.2d', [Daus, Hours, Min]);
end;

procedure TForm1.cbbFilterLOgChange(Sender: TObject);
begin
  TypeFilterLog := TTypeFilterLog(cbbFilterLog.ItemIndex + 1);
  if TypeFilterLog = TFLNoFilter then FiltrLog.Color := Form1.Color
    else FiltrLog.Color := clYellow;
end;

procedure TForm1.Bt22Click(Sender: TObject);
begin
  //WriteListCmd(NumListCmd);
  //ReadListCmd(NumListCmd);
  if isFileCmdMode then Exit;

  if BtOptConn.Tag = 1 then
    BtOptConn.Click();
  SelTerm.Visible := not SelTerm.Visible;

  DelList.Enabled := false;
  BtCopyList.Enabled := false;
  BtPasteList.Enabled := false;
  rb1.Checked := False;
  grp12.Color := form1.Color;

end;

procedure TForm1.SecondWindowAddChange(Sender: TObject);
begin
  SelTerm.Visible := False;
end;

procedure TForm1.rb1Click(Sender: TObject);
begin
  DelList.Enabled := True;
  BtCopyList.Enabled := True;
  BtPasteList.Enabled := isCopyListCmdBuf;
  grp12.Color := clYellow;
end;

procedure TForm1.tmrDelayTimer(Sender: TObject);
begin
  (Sender as TTimer).Enabled := False;
  TimerPeriod.Enabled := True;
end;

end.



///////

//TEST