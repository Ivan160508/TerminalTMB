unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, TerminalST, ComCtrls, Common;

type
  TPBuf = ^byte;


type
  TFormAnsSensor = class(TForm)
    GroupBox33: TGroupBox;
    Edit1: TEdit; Edit2: TEdit; Edit3: TEdit; Edit4: TEdit; Edit5: TEdit; Edit6: TEdit; Edit7: TEdit; Edit8: TEdit; Edit9: TEdit; Edit10: TEdit; Edit11: TEdit; Edit12: TEdit; Edit13: TEdit; Edit14: TEdit; Edit15: TEdit; Edit16: TEdit;
    Button1: TButton;  Button2: TButton; Button3: TButton;  Button4: TButton; Button5: TButton;  Button6: TButton; Button7: TButton;  Button8: TButton; Button9: TButton;  Button10: TButton; Button11: TButton; Button12: TButton; Button13: TButton; Button14: TButton; Button15: TButton; Button16: TButton;
    CheckBox1: TCheckBox; CheckBox2: TCheckBox; CheckBox3: TCheckBox; CheckBox4: TCheckBox; CheckBox5: TCheckBox; CheckBox6: TCheckBox; CheckBox7: TCheckBox; CheckBox8: TCheckBox;
    CheckBox9: TCheckBox; CheckBox10: TCheckBox; CheckBox11: TCheckBox; CheckBox12: TCheckBox; CheckBox13: TCheckBox; CheckBox14: TCheckBox; CheckBox15: TCheckBox; CheckBox16: TCheckBox;
    GroupBox1: TGroupBox;  RadioButton1: TRadioButton; RadioButton2: TRadioButton; GroupBox2: TGroupBox; RadioButton3: TRadioButton; RadioButton4: TRadioButton; GroupBox3: TGroupBox; RadioButton5: TRadioButton;
    RadioButton6: TRadioButton; GroupBox4: TGroupBox; RadioButton7: TRadioButton; RadioButton8: TRadioButton; GroupBox5: TGroupBox; RadioButton9: TRadioButton; RadioButton10: TRadioButton;
    GroupBox6: TGroupBox; RadioButton11: TRadioButton;        RadioButton12: TRadioButton; GroupBox7: TGroupBox;  RadioButton13: TRadioButton; RadioButton14: TRadioButton; GroupBox8: TGroupBox;        RadioButton15: TRadioButton;
    RadioButton16: TRadioButton; GroupBox9: TGroupBox;        RadioButton17: TRadioButton; RadioButton18: TRadioButton; GroupBox10: TGroupBox;       RadioButton19: TRadioButton; RadioButton20: TRadioButton; GroupBox11: TGroupBox;
    RadioButton21: TRadioButton; RadioButton22: TRadioButton; GroupBox12: TGroupBox;       RadioButton23: TRadioButton; RadioButton24: TRadioButton; GroupBox13: TGroupBox;       RadioButton25: TRadioButton; RadioButton26: TRadioButton;
    GroupBox14: TGroupBox;       RadioButton27: TRadioButton; RadioButton28: TRadioButton; GroupBox15: TGroupBox; RadioButton29: TRadioButton; RadioButton30: TRadioButton; GroupBox16: TGroupBox;       RadioButton31: TRadioButton;
    RadioButton32: TRadioButton; GroupBox17: TGroupBox;       Edit33: TEdit;               Edit34: TEdit; Edit35: TEdit;               Edit36: TEdit;               Edit37: TEdit;               Edit38: TEdit;
    Edit39: TEdit;               Edit40: TEdit;               Edit41: TEdit;               Edit42: TEdit; Edit43: TEdit;               Edit44: TEdit;               Edit45: TEdit;               Edit46: TEdit;
    Edit47: TEdit;               Edit48: TEdit;               Edit49: TEdit;               Edit50: TEdit; Edit51: TEdit;               Edit52: TEdit;               Edit53: TEdit;               Edit54: TEdit;
    Edit55: TEdit;               Edit56: TEdit;               Edit57: TEdit;               Edit58: TEdit; Edit59: TEdit;               Edit60: TEdit;               Edit61: TEdit;               Edit62: TEdit;
    Edit63: TEdit;               Edit64: TEdit;               Button17: TButton;           Button18: TButton; Button19: TButton;           Button20: TButton;           Button21: TButton;           Button22: TButton;
    Button23: TButton;           Button24: TButton;           Button25: TButton;           Button26: TButton; Button27: TButton;           Button28: TButton;           Button29: TButton;           Button30: TButton;
    Button31: TButton;           Button32: TButton;           CheckBox17: TCheckBox;       CheckBox18: TCheckBox; CheckBox19: TCheckBox;       CheckBox20: TCheckBox;       CheckBox21: TCheckBox;       CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;       CheckBox24: TCheckBox;       CheckBox25: TCheckBox;       CheckBox26: TCheckBox; CheckBox27: TCheckBox;       CheckBox28: TCheckBox;       CheckBox29: TCheckBox;       CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;       CheckBox32: TCheckBox;       GroupBox18: TGroupBox;       RadioButton33: TRadioButton; RadioButton34: TRadioButton; GroupBox19: TGroupBox;       RadioButton35: TRadioButton; RadioButton36: TRadioButton;
    GroupBox20: TGroupBox;       RadioButton37: TRadioButton; RadioButton38: TRadioButton; GroupBox21: TGroupBox; RadioButton39: TRadioButton; RadioButton40: TRadioButton; GroupBox22: TGroupBox;       RadioButton41: TRadioButton;
    RadioButton42: TRadioButton; GroupBox23: TGroupBox;       RadioButton43: TRadioButton; RadioButton44: TRadioButton; GroupBox24: TGroupBox;       RadioButton45: TRadioButton; RadioButton46: TRadioButton; GroupBox25: TGroupBox;
    RadioButton47: TRadioButton; RadioButton48: TRadioButton; GroupBox26: TGroupBox;       RadioButton49: TRadioButton; RadioButton50: TRadioButton; GroupBox27: TGroupBox;       RadioButton51: TRadioButton; RadioButton52: TRadioButton;
    GroupBox28: TGroupBox;       RadioButton53: TRadioButton; RadioButton54: TRadioButton; GroupBox29: TGroupBox; RadioButton55: TRadioButton; RadioButton56: TRadioButton; GroupBox30: TGroupBox;       RadioButton57: TRadioButton;
    RadioButton58: TRadioButton; GroupBox31: TGroupBox;       RadioButton59: TRadioButton; RadioButton60: TRadioButton; GroupBox32: TGroupBox;       RadioButton61: TRadioButton; RadioButton62: TRadioButton; GroupBox34: TGroupBox;
    RadioButton63: TRadioButton; RadioButton64: TRadioButton; Button33: TButton;           Edit65: TEdit; Button34: TButton;           Button35: TButton;           Button36: TButton;           GroupBox35: TGroupBox;
    RadioButton65: TRadioButton; RadioButton66: TRadioButton; TimerWriteSendMsg: TTimer;   GroupBox37: TGroupBox; RadioButton67: TRadioButton; RadioButton68: TRadioButton; SendAns: TTimer;             PointList: TImage;
    CheckBox33: TCheckBox;       CheckBox34: TCheckBox;       Button37: TButton;           Button38: TButton; Button39: TButton;           Button40: TButton;           ColorClear: TTimer;          ListGroup: TListBox;
    lbl1: TLabel;                lbl2: TLabel;                lbl3: TLabel;                StatPanel: TGroupBox; ReadLvl: TLabel;             SendLvl: TLabel;             NulBT: TButton;              ClrNoUseBT: TButton;
    ClearNUseBT: TButton;        ClrNoUseAnsBT: TButton;      RestListBT: TButton;         CopyCurList: TButton; PasteListBT: TButton;        PrWidth: TUpDown;            Timer1: TTimer;              Button41: TButton;
    OpenBT: TButton;             SaveBT: TButton;             OpenCfg: TOpenDialog;        SaveCfg: TSaveDialog; NameCfg: TStaticText;        Label1: TLabel;           BtCopyAnsList: TButton;
    BtPasteAnsList: TButton;     dlgSendFile: TOpenDialog;    grp1: TGroupBox;             req1: TStaticText; req2: TStaticText;           ud1: TUpDown;                ud2: TUpDown;                lbl4: TLabel;
    Bt1: TButton;             grp3: TGroupBox;
    grp2: TGroupBox;
    Edt35: TEdit;
    Edt34: TEdit;
    Edt33: TEdit;
    Edt32: TEdit;
    Edt31: TEdit;
    CheckBox91: TCheckBox;
    CheckBox90: TCheckBox;
    CheckBox92: TCheckBox;
    CheckBox93: TCheckBox;
    CheckBox94: TCheckBox;
    grp4: TGroupBox;
    CheckBox64: TCheckBox;
    CheckBox63: TCheckBox;
    CheckBox62: TCheckBox;
    CheckBox61: TCheckBox;
    CheckBox60: TCheckBox;
    Edt40: TEdit;
    Edt39: TEdit;
    Edt38: TEdit;
    Edt37: TEdit;
    Edt36: TEdit;
    CheckBox69: TCheckBox;
    CheckBox68: TCheckBox;
    CheckBox67: TCheckBox;
    CheckBox66: TCheckBox;
    CheckBox65: TCheckBox;
    Edt45: TEdit;
    Edt44: TEdit;
    Edt43: TEdit;
    Edt42: TEdit;
    Edt41: TEdit;
    CheckBox74: TCheckBox;
    CheckBox73: TCheckBox;
    CheckBox72: TCheckBox;
    CheckBox71: TCheckBox;
    CheckBox70: TCheckBox;
    Edt50: TEdit;
    Edt49: TEdit;
    Edt48: TEdit;
    Edt47: TEdit;
    Edt46: TEdit;
    CheckBox79: TCheckBox;
    CheckBox78: TCheckBox;
    CheckBox77: TCheckBox;
    CheckBox76: TCheckBox;
    CheckBox75: TCheckBox;
    Edt55: TEdit;
    Edt54: TEdit;
    Edt53: TEdit;
    Edt52: TEdit;
    Edt51: TEdit;
    CheckBox84: TCheckBox;
    CheckBox83: TCheckBox;
    CheckBox82: TCheckBox;
    CheckBox81: TCheckBox;
    CheckBox80: TCheckBox;
    Edt60: TEdit;
    Edt59: TEdit;
    Edt58: TEdit;
    Edt57: TEdit;
    Edt56: TEdit;
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    chk4: TCheckBox;
    chk5: TCheckBox;
    edt5: TEdit;
    edt4: TEdit;
    edt3: TEdit;
    edt2: TEdit;
    edt1: TEdit;
    chk6: TCheckBox;
    chk7: TCheckBox;
    chk8: TCheckBox;
    chk9: TCheckBox;
    chk10: TCheckBox;
    edt10: TEdit;
    edt9: TEdit;
    edt8: TEdit;
    edt7: TEdit;
    edt6: TEdit;
    chk11: TCheckBox;
    chk12: TCheckBox;
    chk13: TCheckBox;
    chk14: TCheckBox;
    chk15: TCheckBox;
    edt15: TEdit;
    edt14: TEdit;
    edt13: TEdit;
    edt12: TEdit;
    edt11: TEdit;
    chk16: TCheckBox;
    chk17: TCheckBox;
    chk18: TCheckBox;
    chk19: TCheckBox;
    chk20: TCheckBox;
    edt20: TEdit;
    edt19: TEdit;
    edt18: TEdit;
    edt17: TEdit;
    edt16: TEdit;
    chk21: TCheckBox;
    chk22: TCheckBox;
    chk23: TCheckBox;
    chk24: TCheckBox;
    chk25: TCheckBox;
    edt25: TEdit;
    edt24: TEdit;
    edt23: TEdit;
    edt22: TEdit;
    edt21: TEdit;
    grp5: TGroupBox;
    Bt4: TButton;
    Bt2: TButton;
    btnPasteListRep: TButton;
    req3: TStaticText;
    tmr1: TTimer;
    req4: TStaticText;
    lstCSUM: TListBox;
    btnBt6: TButton;
    btnBt3: TButton;

    procedure FormCreate(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton65Click(Sender: TObject);
    procedure RadioButton66Click(Sender: TObject);
    procedure RadioButton67Click(Sender: TObject);
    procedure RadioButton68Click(Sender: TObject);
    procedure TimerWriteSendMsgTimer(Sender: TObject);
    procedure SendAnsTimer(Sender: TObject);

    procedure CmdRB_A_Click(Sender: TObject);
    procedure CmdRB_H_Click(Sender: TObject);
    procedure AnsRB_A_Click(Sender: TObject);
    procedure AnsRB_H_Click(Sender: TObject);
    procedure CheckBox33Click(Sender: TObject);
    procedure CheckBox34Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure ColorClearTimer(Sender: TObject);
    procedure SendManualAns(Sender: TObject);
    procedure Edit65KeyPress(Sender: TObject; var Key: Char);
    procedure Edit65Exit(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Edit65DblClick(Sender: TObject);
    procedure ListGroupExit(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure ListGroupDblClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure GroupBox17Click(Sender: TObject);
    procedure GroupBox37Click(Sender: TObject);
    procedure GroupBox35Click(Sender: TObject);
    procedure EditAnsTailExit(Sender: TObject);
    procedure EditAnsExit(Sender: TObject);
    procedure Edit65Click(Sender: TObject);
    procedure EditAnsTailClick(Sender: TObject);
    procedure NulBTClick(Sender: TObject);
    procedure ClrNoUseBTClick(Sender: TObject);
    procedure ClearNUseBTClick(Sender: TObject);
    procedure ClrNoUseAnsBTClick(Sender: TObject);
    procedure RestListBTClick(Sender: TObject);
    procedure CopyCurListClick(Sender: TObject);
    procedure PasteListBTClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure TimerDeltaWidthTimer(Sender: TObject);
    procedure CtrlWidth(Sender: TObject);
    procedure PrWidthChanging(Sender: TObject; var AllowChange: Boolean);
    procedure Button41Click(Sender: TObject);
    procedure OpenBTClick(Sender: TObject);
    procedure SaveBTClick(Sender: TObject);
    procedure GroupBox33Click(Sender: TObject);
    procedure StatPanelClick(Sender: TObject);
    procedure NameCfgClick(Sender: TObject);
    procedure Edit65KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListGroupKeyPress(Sender: TObject; var Key: Char);
    procedure EditCSUMKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lstCSUMKeyPress(Sender: TObject; var Key: Char);
    procedure EditCsumDblClick(Sender: TObject);
    procedure BtCopyAnsListClick(Sender: TObject);
    procedure BtPasteAnsListClick(Sender: TObject);
    procedure PointListMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EditAnsDblClick(Sender: TObject);
    procedure edtDelayKeyPress(Sender: TObject; var Key: Char);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure ud2Click(Sender: TObject; Button: TUDBtnType);
    procedure Bt1Click(Sender: TObject);


    procedure CheckBoxReplaceAnsClick(Sender: TObject);
    procedure EdtReplaceAnsChange(Sender: TObject);
    procedure CheckBoxTemplateAnsClick(Sender: TObject);
    procedure EdtTemplateAnsChange(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure btnBt3Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure lstCSUMExit(Sender: TObject);
    procedure Bt4Click(Sender: TObject);
    procedure btnPasteListRepClick(Sender: TObject);
    procedure btnBt6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    procedure LoadListCmd(var NumList : integer);
    procedure ResetBuffers;
    procedure WriteInBufSend(var Msg : string; Tail : string; isHex : boolean);
    procedure EditCmdExit(Sender: TObject);
    procedure EditCmdKeyPress(Sender: TObject; var Key: Char);
    procedure LoadListAns(var NumList : integer; NumCmd : integer);
    procedure CBoxEnCmdClick(Sender: TObject);
    procedure CBoxEnAnsClick(Sender: TObject);

    procedure OpenListClick(Sender: TObject);
    procedure EditAnsKeyPress(Sender: TObject; var Key: Char);
    procedure EditAnsTailKeyPress(Sender: TObject; var Key: Char);
    procedure EditCmdClick(Sender: TObject);
    procedure SetActiv(isEn : boolean);
    procedure LoadListGroup;
    procedure EditCmdChange(Sender: TObject);
    procedure EditAnsChange(Sender: TObject);
    procedure EditAnsTailChange(Sender: TObject);
    //procedure BtOpenListKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    //procedure BtOpenListKeyPress(Sender: TObject; var Key: Char);
    procedure BtOpenListKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    { Private declarations }
  public
    procedure SaveCfgEmul;
    procedure WriteDataEmul(var PBuf : TPBuf; Cnt: integer);
    procedure SetIncPacket(var str : string;  ReadMode : TTypeReadMode);
    { Public declarations }
  end;

var
  FormAnsSensor: TFormAnsSensor;

const
  CNT_CMD        = 16;
  CNT_ANS        = 16;
  CNT_LIST       = 20;
  LEN_STR        = 255;
  LEN_TAIL       = 32;
  LEN_RBUF_READE = 1024;
  LEN_RBUF_WRITE = 1024;
  LEN_MSG_READ   = 65535;
  LEN_LIST_NAME  = 250;

  CNT_TEMPLATE_REP_ANS = 5;
  CNT_REPLACE_ANS = 10;

type
  TListCmdAnsCfg = record
    ListName       : string[LEN_LIST_NAME];
    StrCmd         : array[1..CNT_CMD, 1..LEN_STR] of byte;
    StrCmdLen      : array[1..CNT_CMD]             of integer;

    StrAns         : array[1..CNT_CMD, 1..CNT_ANS] of string[LEN_STR];

    StrCmdHint     : array[1..CNT_CMD]             of string[LEN_STR];
    StrAnsHint     : array[1..CNT_CMD, 1..CNT_ANS] of string[LEN_STR];

    StrCmdTail     : array[1..CNT_CMD]             of string[LEN_TAIL];
    StrAnsTail     : array[1..CNT_CMD, 1..CNT_ANS] of string[LEN_TAIL];

    StrCmdModeHex  : array[1..CNT_CMD]             of boolean;
    StrAnsModeHex  : array[1..CNT_CMD, 1..CNT_ANS] of boolean;

    StrCmdActiv    : array[1..CNT_CMD]             of boolean;
    StrAnsActiv    : array[1..CNT_CMD, 1..CNT_ANS] of boolean;

    isModeAuto     : boolean;
    isModeManual   : boolean;

    StrCmdReserv   : array[1..CNT_CMD]             of string[255];
    StrAnsReserv   : array[1..CNT_CMD, 1..CNT_ANS] of string[255];

    IsCmdReserv    : array[1..CNT_CMD]             of boolean;
    IsAnsReserv    : array[1..CNT_CMD, 1..CNT_ANS] of boolean;

    CntCmdReserv   : array[1..CNT_CMD]             of integer;
    CntAnsReserv   : array[1..CNT_CMD, 1..CNT_ANS] of integer;

    TimeAnsMin     : integer;
    TimeAnsMax     : integer;

    reserv_1       : boolean;
    reserv_2       : boolean;
    reserv_3       : boolean;
    reserv_4       : boolean;
    reserv_5       : boolean;
    reserv_6       : boolean;
    reserv_7       : boolean;
    reserv_8       : boolean;

    DelayMin       : integer;
    DelayMax       : integer;
    reserv_11      : integer;
    reserv_12      : integer;
    reserv_13      : integer;
    reserv_14      : integer;
    reserv_15      : integer;
    reserv_16      : integer;
  end;

type
  TItemCmd = record
  EnBox      : TCheckBox;
  RB_A       : TRadioButton;
  RB_H       : TRadioButton;
  ECmd       : TEdit;
  BTOpenList : TButton;
  Cmd        : String;
  Help       : String;
  end;

type
  TItemAns = record
  EnBox      : TCheckBox;
  RB_A       : TRadioButton;
  RB_H       : TRadioButton;
  EAns       : TEdit;
  ETail      : TEdit;
  BTSend     : TButton;
  Ans        : String;
  Help       : String;
  end;


type TItemRep = record
  ReplaceAns      : array[1..CNT_TEMPLATE_REP_ANS, 1..CNT_REPLACE_ANS] of string[LEN_STR];
  isUseReplaceAnc : array[1..CNT_TEMPLATE_REP_ANS, 1..CNT_REPLACE_ANS] of boolean;
end;

type TReplaceAns = record
  TemplateRepAns    : array[1..CNT_TEMPLATE_REP_ANS, 1..CNT_LIST] of string[LEN_STR];
  isUseTemPlate     : array[1..CNT_TEMPLATE_REP_ANS, 1..CNT_LIST] of Boolean;
  ItemRep           : array[1..CNT_LIST] of TItemRep;
  //ReplaceAnc        : array[1..CNT_REPLACE_ANS, 1..CNT_TEMPLATE_REP_ANS, 1..CNT_LIST] of string[LEN_STR];
  //isUseReplaceAnc   : array[1..CNT_TEMPLATE_REP_ANS, 1..CNT_REPLACE_ANS, 1..CNT_LIST] of Boolean;
end;

type TReplaceAnsGUI = record
  ChUseTMPLAns : array[1..CNT_TEMPLATE_REP_ANS] of TCheckBox;
  EdtTMPLAns   : array[1..CNT_TEMPLATE_REP_ANS] of TEdit;

  ChUseReplAns : array[1..CNT_TEMPLATE_REP_ANS, 1..CNT_REPLACE_ANS] of TCheckBox;
  EdtReplAns   : array[1..CNT_TEMPLATE_REP_ANS, 1..CNT_REPLACE_ANS] of TEdit;
end;


var
  ConfigFile        : File of TListCmdAnsCfg;
  ReplaceFile       : file of TReplaceAns;
  BufAnsIsAct       : array[1..CNT_ANS] of Boolean;
  BufAnsStr         : array[1..CNT_ANS] of string[LEN_STR];
  BufAnsHint        : array[1..CNT_ANS] of string[LEN_STR];
  BufAnsTail        : array[1..CNT_ANS] of string[LEN_TAIL];
  BufAnsIsHex       : array[1..CNT_ANS] of Boolean;

  ItemRepBuf        : TItemRep;
  TemplateRepAnsBuf : array[1..CNT_TEMPLATE_REP_ANS] of string[LEN_STR];
  isUseTemPlateBuf  : array[1..CNT_TEMPLATE_REP_ANS] of Boolean;


  ReplaceAns        : TReplaceAns;
  ReplaceAnsGUI     : TReplaceAnsGUI;

  ListCmdAnsCfg     : array[1..CNT_LIST]         of TListCmdAnsCfg;
  ListCmdAnsCfgFBuf : TListCmdAnsCfg;
  ListCmdAnsCfgFRest: TListCmdAnsCfg;

  numListBuf        : integer;

  RB_ReadBuf        : array[0..LEN_RBUF_READE - 1, 1..LEN_MSG_READ] of byte;
  RB_ReadIsHex      : array[0..LEN_RBUF_READE - 1] of boolean;
  RB_ReadIsNew      : array[0..LEN_RBUF_READE - 1] of boolean;

  BufInTmp          : array[1..LEN_RBUF_READE] of byte;

  RB_ReadIndexWrite : integer;
  RB_ReadIndexRead  : integer;

  RB_SendStr        : array[0..LEN_RBUF_WRITE - 1] of string;
  RB_SendTail       : array[0..LEN_RBUF_WRITE - 1] of string;
  RB_SendIsHex      : array[0..LEN_RBUF_WRITE - 1] of boolean;
  RB_SendIsNew      : array[0..LEN_RBUF_WRITE - 1] of boolean;
  RB_Delay          : array[0..LEN_RBUF_WRITE - 1] of Cardinal;

  ChUseReplAnsStartLeft : array[1..CNT_TEMPLATE_REP_ANS, 1..CNT_REPLACE_ANS] of Integer;
  EdtReplAnsStartLeft   : array[1..CNT_TEMPLATE_REP_ANS, 1..CNT_REPLACE_ANS] of Integer;
  EdtReplAnsWidth       : array[1..CNT_TEMPLATE_REP_ANS, 1..CNT_REPLACE_ANS] of Integer;



  RB_SendIndexWrite : integer;
  RB_SendIndexRead  : integer;

  ItemCmd          : array[1..CNT_CMD] of TItemCmd;
  ItemAns          : array[1..CNT_ANS] of TItemAns;

  StatCntRead      : array[1..CNT_LIST] of integer;
  StatCntSend      : array[1..CNT_LIST, 1..CNT_ANS] of integer;

  CurNumListCmd    : integer;

  isUseThisList    : boolean;
  isWorkModeAuto   : boolean;

  isEnProcClickCB  : boolean;
  isEnProcClickRB  : boolean;
  NumLoadAnsCmd    : integer;
  OldNumCmd        : integer;
  OldNumList       : integer;
  isActiv          : boolean;

  deltaWidth       : integer;
  StartWidth       : integer;
  StartLeftDown    : integer;
  StartLeftLeft    : integer;
  StartLeftRight   : integer;
  WidthEditName    : integer;
  WidthListName    : integer;

  WidthBoxCmd      : integer;
  WidthBoxAns      : integer;
  StartLeftBoxAns  : integer;

  StartWidthEdtCmd : integer;
  StartWidthEdtAns : integer;
  StartWidthInStr  : Integer;
  StartWidthReplGrp  : Integer;

  StartLeftBtShow     : integer;
  StartLeftBtSend     : integer;
  StartLeftPointList  : integer;
  StartLeftStart      : integer;
  StartLeftResStat    : integer;
  StartWidthStat      : integer;
  StartWidthNCfg      : integer;
  StartLeftGrpActsTemp  : integer;
  StartWidthReplace   : integer;

  StartLVL1           : integer;
  StartLVL2           : integer;
  StartLVL3           : integer;


  OldPosPrWidth       : integer;

  isEnSaveRAM         : boolean;
  ActualTailCmd       : Integer;
  DelayMin            : Integer;
  DelayMax            : Integer;


implementation


{$R *.dfm}

procedure TFormAnsSensor.SetActiv(isEn : boolean);
  begin
    TimerWriteSendMsg.Enabled := isEn;
    SendAns.Enabled           := isEn;
    ColorClear.Enabled        := isEn;
    isActiv                   := isEn;
    ResetBuffers;
  end;

function HexToInt(Hex: Char) : byte;
  begin
    if Hex = '0' then result := 0 else
    if Hex = '1' then result := 1 else
    if Hex = '2' then result := 2 else
    if Hex = '3' then result := 3 else
    if Hex = '4' then result := 4 else
    if Hex = '5' then result := 5 else
    if Hex = '6' then result := 6 else
    if Hex = '7' then result := 7 else
    if Hex = '8' then result := 8 else
    if Hex = '9' then result := 9 else
    if (Hex = 'A') or (Hex = 'a') then result := 10 else
    if (Hex = 'B') or (Hex = 'b') then result := 11 else
    if (Hex = 'C') or (Hex = 'c') then result := 12 else
    if (Hex = 'D') or (Hex = 'd') then result := 13 else
    if (Hex = 'E') or (Hex = 'e') then result := 14 else
    if (Hex = 'F') or (Hex = 'f') then result := 15 else
    result := 0;
  end;

function StrToHex(str : string) : string;
  var
    i   : integer;
    len : integer;
    res : string;
  begin
    res := '';
    len := Length(str);
    for i := 1 to len do
      res := res + IntToHex(Ord(str[i]),2) + ' ';
    result := res;
  end;

function HexToStr(str : string) : string;
  var
    i      : integer;
    iBytes : integer;
    res    : string;
    Len    : integer;
  begin
    res    := '';
    i      := 1;
    iBytes := 1;
    Len    := Length(str);

    while i < Len do
      begin
        res := res + Chr(HexToInt(str[i]) * 16 + HexToInt(str[i + 1]));
        inc(iBytes);
        i := i + 3;
      end;
    result := res;
  end;

function ReplaceHexDetector(inStr : string; isHex : Boolean) : string;
var
  Len, i, pos : Integer;
  Buf : array[0..128] of Byte;
  res : string;
begin
  Len := Length(inStr);
  i := 1;
  pos := 0;
  res := '';
  if ((Len mod 3) = 0) and (Len > 0) then
    if inStr[1] = '$' then
      begin
        while i < Len do
          begin
            Buf[pos] := (HexToInt(inStr[i+1]) shl 4) or HexToInt(inStr[i+2]);
            inc(pos);
            i := i + 3;
          end;

        Len := 0;
        while Len < Pos do
          begin
            if isHex then
              begin
                if res <> '' then
                  res := res + ' ' + IntToHex(Buf[Len],2)
                else
                  res := IntToHex(Buf[Len],2);
              end
            else
              res := res + Chr(Buf[Len]);
            inc(Len);
          end;
      end
    else
      res := inStr
  else
    res := inStr;

  Result := res;
end;

procedure TFormAnsSensor.SetIncPacket(var str : string;  ReadMode : TTypeReadMode);
begin
  req3.Caption := str;
  if ReadMode = ReadASCII then
    req4.Caption := 'ASCII'
  else if ReadMode = ReadHEX then
    req4.Caption := 'HEX'
  else if ReadMode = ReadDEC then
    req4.Caption := 'DEC'
  else if ReadMode = ReadCUSTOM then
    req4.Caption := 'CUSTOM';



  //req3.Color := clLime;
  req4.Color := clLime;
  tmr1.Enabled := True;
end;

procedure TFormAnsSensor.WriteDataEmul(var PBuf : TPBuf; cnt : integer);
  var
    i : integer;
  begin
    for i := 1 to cnt do
      begin
        RB_ReadBuf[RB_ReadIndexWrite, i]   := PBuf^;
        inc(PBuf);
      end;
    RB_ReadIsNew[RB_ReadIndexWrite] := true;
    inc(RB_ReadIndexWrite);
    RB_ReadIndexWrite := RB_ReadIndexWrite and (LEN_RBUF_READE - 1);
  end;


procedure TFormAnsSensor.LoadListAns(var NumList : integer; NumCmd : integer);
  var
    NumAns : integer;
    NumBt  : integer;
  begin
    PointList.Top := ItemCmd[NumCmd].BTOpenList.Top;
    PointList.Tag := NumCmd;

    for NumBt := 1 to CNT_CMD do
      ItemCmd[NumBt].BTOpenList.Width := 21;
    ItemCmd[NumCmd].BTOpenList.Width := 0;

    for NumAns := 1 to CNT_ANS do
      begin
        isEnProcClickCB := false;
        ItemAns[NumAns].EnBox.Checked  :=     ListCmdAnsCfg[NumList].StrAnsActiv[NumCmd, NumAns];
        isEnProcClickCB := true;

        isEnProcClickRB := false;
        ItemAns[NumAns].RB_A.Checked   := not ListCmdAnsCfg[NumList].StrAnsModeHex[NumCmd, NumAns];
        ItemAns[NumAns].RB_H.Checked   :=     ListCmdAnsCfg[NumList].StrAnsModeHex[NumCmd, NumAns];
        isEnProcClickRB := true;


        ItemAns[NumAns].EAns.Text      :=     ListCmdAnsCfg[NumList].StrAns[NumCmd, NumAns];
        ItemAns[NumAns].ETail.Text     :=     ListCmdAnsCfg[NumList].StrAnsTail[NumCmd, NumAns];
        //ItemAns[NumAns].BTSend.Enabled :=     ListCmdAnsCfg[NumList].StrAnsActiv[NumCmd, NumAns];
        //if (NumCmd <> OldNumCmd) or (NumList <> OldNumList) then
        //  begin
        //    ItemAns[NumAns].EAns.Color     :=     clYellow;
        //    ItemAns[NumAns].ETail.Color    :=     clYellow;
        //  end;
      end;
    ColorClear.Enabled := true;

    DelayMin := ListCmdAnsCfg[NumList].DelayMin;
    DelayMax := ListCmdAnsCfg[NumList].DelayMax;

    req1.Caption := IntToStr(DelayMin);
    req2.Caption := IntToStr(DelayMax);

    ud1.Position := 0;
    ud2.Position := 0;

    OldNumCmd  := NumCmd;
    OldNumList := NumList;
  end;


procedure UpdCmdText(NumList : integer; NumCmd : integer);
  var
    TmpStr : string;
    i      : integer;
    len    : integer;

  begin
    TmpStr                       := '';
    len                          := ListCmdAnsCfg[NumList].StrCmdLen[NumCmd];

    if ListCmdAnsCfg[NumList].StrCmdModeHex[NumCmd] then
      begin
        for i := 1 to len do
          begin
            TmpStr := TmpStr + IntToHex(Ord(ListCmdAnsCfg[NumList].StrCmd[NumCmd, i]),2) + ' ';
          end;
      end
    else
      begin
        for i := 1 to len do
          begin
            TmpStr := TmpStr + chr(ListCmdAnsCfg[NumList].StrCmd[NumCmd, i]);
          end;
      end;

    ItemCmd[NumCmd].ECmd.Text  := TmpStr;
    //ItemCmd[NumCmd].ECmd.Color := clYellow;
  end;



procedure UpdateListReplace(var NumList : integer);
var
  i, j : Integer;
begin
  For i := 1 to CNT_TEMPLATE_REP_ANS do
    begin
      ReplaceAnsGUI.ChUseTMPLAns[i].Checked := ReplaceAns.isUseTemPlate[i, NumList];
      ReplaceAnsGUI.EdtTMPLAns[i].Text := ReplaceAns.TemplateRepAns[i, NumList];
      ReplaceAnsGUI.EdtTMPLAns[i].Hint := ReplaceAns.TemplateRepAns[i, NumList];

      if ReplaceAns.isUseTemPlate[i, NumList] then
        ReplaceAnsGUI.EdtTMPLAns[i].Color := clLime
      else
        ReplaceAnsGUI.EdtTMPLAns[i].Color := clWindow;

      for j := 1 to CNT_REPLACE_ANS do
        begin

          if ReplaceAns.ItemRep[NumList].isUseReplaceAnc[i, j] then
            ReplaceAnsGUI.EdtReplAns[i, j].Color := clLime
          else
            ReplaceAnsGUI.EdtReplAns[i, j].Color := clWindow;

          ReplaceAnsGUI.ChUseReplAns[i, j].Checked := ReplaceAns.ItemRep[NumList].isUseReplaceAnc[i, j];
          ReplaceAnsGUI.EdtReplAns[i, j].Text      := ReplaceAns.ItemRep[NumList].ReplaceAns[i, j];


          ReplaceAnsGUI.EdtReplAns[i, j].Hint := ReplaceAns.ItemRep[NumList].ReplaceAns[i, j];
        end;
    end;
end;

procedure TFormAnsSensor.LoadListCmd(var NumList : integer);
  var
    NumCmd : integer;
    NumAns : integer;
    i, j   : integer;
    TmpStr : string;
    len    : integer;
    testAddr : Cardinal;
    testStr  : string;
  begin
    isEnSaveRAM := false;
    ListGroup.Visible := false;
    lstCSUM.Visible   := False;
    //grp3.Visible := True;
    RestListBT.Enabled := NumList = numListBuf;

    Edit65.Text   := ListCmdAnsCfg[NumList].ListName;
    NumLoadAnsCmd := 1;

    for NumCmd := 1 to CNT_CMD do
      begin
        isEnProcClickRB := false;
        ItemCmd[NumCmd].RB_A.Checked := not ListCmdAnsCfg[NumList].StrCmdModeHex[NumCmd];
        ItemCmd[NumCmd].RB_H.Checked :=     ListCmdAnsCfg[NumList].StrCmdModeHex[NumCmd];
        isEnProcClickRB := true;

        UpdCmdText(NumList, NumCmd);

        //ItemCmd[NumCmd].BTOpenList.Enabled :=     ListCmdAnsCfg[NumList].StrCmdActiv[NumCmd];
        isEnProcClickCB := false;
        ItemCmd[NumCmd].EnBox.Checked      :=     ListCmdAnsCfg[NumList].StrCmdActiv[NumCmd];
        isEnProcClickCB := true;
      end;

    ColorClear.Enabled := true;

    ReadLvl.Caption := 'Read : ' + IntToStr(StatCntRead[NumList]);
    SendLvl.Caption := 'Send : ' + IntToStr(StatCntSend[NumList][ 1]) +' '+
                                   IntToStr(StatCntSend[NumList][ 2]) +' '+
                                   IntToStr(StatCntSend[NumList][ 3]) +' '+
                                   IntToStr(StatCntSend[NumList][ 4]) +' '+
                                   IntToStr(StatCntSend[NumList][ 5]) +' '+
                                   IntToStr(StatCntSend[NumList][ 6]) +' '+
                                   IntToStr(StatCntSend[NumList][ 7]) +' '+
                                   IntToStr(StatCntSend[NumList][ 8]) +' '+
                                   IntToStr(StatCntSend[NumList][ 9]) +' '+
                                   IntToStr(StatCntSend[NumList][10]) +' '+
                                   IntToStr(StatCntSend[NumList][11]) +' '+
                                   IntToStr(StatCntSend[NumList][12]) +' '+
                                   IntToStr(StatCntSend[NumList][13]) +' '+
                                   IntToStr(StatCntSend[NumList][14]) +' '+
                                   IntToStr(StatCntSend[NumList][15]) +' '+
                                   IntToStr(StatCntSend[NumList][16]);


    LoadListAns(NumList, NumLoadAnsCmd);
    ListGroup.Visible := false;
    lstCSUM.Visible   := False;
    //grp3.Visible := True;

    //For i := 1 to CNT_TEMPLATE_REP_ANS do
    //  begin
    //    ReplaceAns.isUseTemPlate[i, NumList] := False;
    //    ReplaceAns.TemplateRepAns[i, NumList] := IntToStr(i) + '_' + IntToStr(NumList);

    //    for j := 1 to CNT_REPLACE_ANS do
    //      begin
    //        ReplaceAns.isUseReplaceAnc[i, j, NumList] := false;
    //        ReplaceAns.ReplaceAnc[i, j, NumList] := IntToStr(i) + '_' + IntToStr(j) + '_' + IntToStr(NumList);
    //      end;
    //  end;


    UpdateListReplace(NumList);


    isEnSaveRAM := true;
  end;

procedure TFormAnsSensor.ResetBuffers;
var
  iMsg   : integer;
  iByte  : integer;
begin
  for iMsg :=0 to LEN_RBUF_READE - 1 do
    begin
      for iByte := 0 to LEN_MSG_READ - 1 do
        RB_ReadBuf[iMsg, iByte] := 0;
      RB_ReadIsNew[iMsg] := false;
      RB_ReadIsHex[iMsg] := false;
    end;

  RB_ReadIndexWrite := 0;
  RB_ReadIndexRead  := 0;

  for iMsg :=0 to LEN_RBUF_WRITE - 1 do
    begin
      RB_SendStr[iMsg]   := '';
      RB_SendTail[iMsg]  := '';
      RB_SendIsHex[iMsg] := false;
      RB_SendIsNew[iMsg] := false;
      RB_Delay[iMsg] := 1;
    end;

  RB_SendIndexWrite := 0;
  RB_SendIndexRead  := 0;
end;


procedure TFormAnsSensor.SaveCfgEmul;
  var
    NumList : integer;
  begin
    AssignFile(ConfigFile, ExtractFilePath(Application.ExeName) + 'CfgEmul');
    if not FileExists(ExtractFilePath(Application.ExeName) + 'CfgEmul') or (Get_File_Size(ExtractFilePath(Application.ExeName) + 'CfgEmul', True) = 0) then
      begin
        Rewrite(ConfigFile);
      end;

    Reset(ConfigFile);
    for NumList := 1 to CNT_LIST do
      begin
        Write(ConfigFile, ListCmdAnsCfg[NumList]);
      end;
    CloseFile(ConfigFile);

    AssignFile(ReplaceFile, ExtractFilePath(Application.ExeName) + 'CfgReplace');
    if not FileExists(ExtractFilePath(Application.ExeName) + 'CfgReplace') or (Get_File_Size(ExtractFilePath(Application.ExeName) + 'CfgReplace', True) = 0) then
      begin
        Rewrite(ReplaceFile);
      end;

    Reset(ReplaceFile);
    Write(ReplaceFile, ReplaceAns);
    CloseFile(ReplaceFile);
  end;


















procedure TFormAnsSensor.FormCreate(Sender: TObject);

var
  isResetCfg : boolean;
  isResetRep : boolean;
  NumList    : integer;
  NumCmd     : integer;
  NumAns     : integer;

  TmpStr     : string;
  TmpLen     : integer;
  i, j          : integer;
begin
  lstCSUM.Items.Clear;
  for i := 1 to TerminalST.CNT_CSUM do
    lstCSUM.Items.Add(TerminalST.StrCSum[i]);

  isEnProcClickCB := false;
  isEnProcClickRB := false;
  NumLoadAnsCmd   := 1;
  OldNumCmd       := 0;
  OldNumList      := 0;
  isActiv         := false;
  isResetCfg      := false;
  numListBuf      := 0;
  isEnSaveRAM     := false;

  deltaWidth       := 0;
  StartWidth       := FormAnsSensor.Width;
  StartLeftDown    := Button34.Left;
  StartLeftLeft    := Button35.Left;
  StartLeftRight   := Button36.Left;
  WidthEditName    := Edit65.Width;
  WidthListName    := ListGroup.Width;

  WidthBoxCmd      := GroupBox33.Width;
  WidthBoxAns      := GroupBox17.Width;
  StartLeftBoxAns  := GroupBox17.Left;

  StartWidthEdtCmd := Edit1.Width;
  StartWidthEdtAns := Edit33.Width;
  StartWidthInStr  := req3.Width;
  StartWidthReplGrp := grp3.Width;

  StartLeftPointList := PointList.Left;
  StartLeftBtShow    := Button1.Left;
  StartLeftBtSend    := Button17.Left;


  StartLeftStart     := Button33.Left;
  StartLeftResStat   := NulBT.Left;
  StartWidthStat     := StatPanel.Width;
  StartWidthNCfg     := NameCfg.Width;
  StartWidthReplace  := grp4.Width;
  StartLeftGrpActsTemp := grp5.Left;

  StartLVL1          := lbl1.Left;
  StartLVL2          := lbl2.Left;
  StartLVL3          := lbl3.Left;

  DelayMin           := 0;
  DelayMax           := 0;

  OldPosPrWidth      := 0;

  AssignFile(ConfigFile, ExtractFilePath(Application.ExeName) + 'CfgEmul');

  NameCfg.Caption := ExtractFilePath(Application.ExeName) + 'CfgEmul';

  if not FileExists(ExtractFilePath(Application.ExeName) + 'CfgEmul') or (Get_File_Size(ExtractFilePath(Application.ExeName) + 'CfgEmul', True) = 0) then
    isResetCfg := true
  else
    begin
      Reset(ConfigFile);
      NumList := 1;
      while (NumList <= CNT_LIST) and (not isResetCfg) do
        begin
          if not eof(ConfigFile) then
            begin
              Read(ConfigFile, ListCmdAnsCfg[NumList]);
            end
          else
            isResetCfg := true;

          inc(NumList);
        end;
      CloseFile(ConfigFile);
    end;

    if isResetCfg then
      begin
        //ShowMessage('The problem is with the configuration emulator, it will be overwritten');
        for NumList := 1 to CNT_LIST do
          begin
            ListCmdAnsCfg[NumList].ListName := 'List ' + IntToStr(NumList);
            for NumCmd := 1 to CNT_CMD do
              begin
                TmpStr := 'Cmd_' + IntToStr(NumList) + '_' + IntToStr(NumCmd);
                TmpLen := Length(TmpStr);

                for i := 1 to TmpLen do
                  ListCmdAnsCfg[NumList].StrCmd[NumCmd, i] := Ord(TmpStr[i]);

                ListCmdAnsCfg[NumList].StrCmdActiv[NumCmd] := false;
                ListCmdAnsCfg[NumList].StrCmdLen[NumCmd]   := TmpLen;
                for NumAns := 1 to CNT_CMD do
                  begin
                    ListCmdAnsCfg[NumList].StrAns[NumCmd, NumAns] := 'Ans_' + IntToStr(NumList) +
                                                                     '_'    + IntToStr(NumCmd) +
                                                                     '_'    + IntToStr(NumAns);
                    ListCmdAnsCfg[NumList].StrAnsTail[NumCmd, NumAns] := '$0D';
                  end;
              end;
            end;
         ReWrite(ConfigFile);
         for NumList := 1 to CNT_LIST do
           Write(ConfigFile, ListCmdAnsCfg[NumList]);
         CloseFile(ConfigFile);
      end;
////////////////////////////////////////
  AssignFile(ReplaceFile, ExtractFilePath(Application.ExeName) + 'CfgReplace');

  if not FileExists(ExtractFilePath(Application.ExeName) + 'CfgReplace') or (Get_File_Size(ExtractFilePath(Application.ExeName) + 'CfgReplace', True) = 0) then
    isResetRep := true
  else
    begin
      Reset(ReplaceFile);
      Read(ReplaceFile, ReplaceAns);
      CloseFile(ReplaceFile);
    end;

  if isResetRep then
    begin
      for NumList := 1 to CNT_LIST do
        begin
          For i := 1 to CNT_TEMPLATE_REP_ANS do
            begin
              ReplaceAns.TemplateRepAns[i, NumList] := '';//IntToStr(NumList) + '_' + IntToStr(i);
              ReplaceAns.isUseTemPlate[i, NumList] := False;
              For j := 1 to CNT_REPLACE_ANS do
                begin
                  ReplaceAns.ItemRep[NumList].ReplaceAns[i, j] := '';//IntToStr(NumList) + '_' + IntToStr(i) + '_' + IntToStr(j);
                  ReplaceAns.ItemRep[NumList].isUseReplaceAnc[i, j] := False;
                end;
            end;
         end;
      ReWrite(ReplaceFile);
      CloseFile(ReplaceFile);
    end;

/////////////////////////////////////////
    ItemCmd[ 1].EnBox := CheckBox1;  ItemCmd[ 1].RB_A := RadioButton1;  ItemCmd[ 1].RB_H := RadioButton2;  ItemCmd[ 1].ECmd := Edit1;  ItemCmd[ 1].BTOpenList := Button1;
    ItemCmd[ 2].EnBox := CheckBox2;  ItemCmd[ 2].RB_A := RadioButton3;  ItemCmd[ 2].RB_H := RadioButton4;  ItemCmd[ 2].ECmd := Edit2;  ItemCmd[ 2].BTOpenList := Button2;
    ItemCmd[ 3].EnBox := CheckBox3;  ItemCmd[ 3].RB_A := RadioButton5;  ItemCmd[ 3].RB_H := RadioButton6;  ItemCmd[ 3].ECmd := Edit3;  ItemCmd[ 3].BTOpenList := Button3;
    ItemCmd[ 4].EnBox := CheckBox4;  ItemCmd[ 4].RB_A := RadioButton7;  ItemCmd[ 4].RB_H := RadioButton8;  ItemCmd[ 4].ECmd := Edit4;  ItemCmd[ 4].BTOpenList := Button4;
    ItemCmd[ 5].EnBox := CheckBox5;  ItemCmd[ 5].RB_A := RadioButton9;  ItemCmd[ 5].RB_H := RadioButton10; ItemCmd[ 5].ECmd := Edit5;  ItemCmd[ 5].BTOpenList := Button5;
    ItemCmd[ 6].EnBox := CheckBox6;  ItemCmd[ 6].RB_A := RadioButton11; ItemCmd[ 6].RB_H := RadioButton12; ItemCmd[ 6].ECmd := Edit6;  ItemCmd[ 6].BTOpenList := Button6;
    ItemCmd[ 7].EnBox := CheckBox7;  ItemCmd[ 7].RB_A := RadioButton13; ItemCmd[ 7].RB_H := RadioButton14; ItemCmd[ 7].ECmd := Edit7;  ItemCmd[ 7].BTOpenList := Button7;
    ItemCmd[ 8].EnBox := CheckBox8;  ItemCmd[ 8].RB_A := RadioButton15; ItemCmd[ 8].RB_H := RadioButton16; ItemCmd[ 8].ECmd := Edit8;  ItemCmd[ 8].BTOpenList := Button8;
    ItemCmd[ 9].EnBox := CheckBox9;  ItemCmd[ 9].RB_A := RadioButton17; ItemCmd[ 9].RB_H := RadioButton18; ItemCmd[ 9].ECmd := Edit9;  ItemCmd[ 9].BTOpenList := Button9;
    ItemCmd[10].EnBox := CheckBox10; ItemCmd[10].RB_A := RadioButton19; ItemCmd[10].RB_H := RadioButton20; ItemCmd[10].ECmd := Edit10; ItemCmd[10].BTOpenList := Button10;
    ItemCmd[11].EnBox := CheckBox11; ItemCmd[11].RB_A := RadioButton21; ItemCmd[11].RB_H := RadioButton22; ItemCmd[11].ECmd := Edit11; ItemCmd[11].BTOpenList := Button11;
    ItemCmd[12].EnBox := CheckBox12; ItemCmd[12].RB_A := RadioButton23; ItemCmd[12].RB_H := RadioButton24; ItemCmd[12].ECmd := Edit12; ItemCmd[12].BTOpenList := Button12;
    ItemCmd[13].EnBox := CheckBox13; ItemCmd[13].RB_A := RadioButton25; ItemCmd[13].RB_H := RadioButton26; ItemCmd[13].ECmd := Edit13; ItemCmd[13].BTOpenList := Button13;
    ItemCmd[14].EnBox := CheckBox14; ItemCmd[14].RB_A := RadioButton27; ItemCmd[14].RB_H := RadioButton28; ItemCmd[14].ECmd := Edit14; ItemCmd[14].BTOpenList := Button14;
    ItemCmd[15].EnBox := CheckBox15; ItemCmd[15].RB_A := RadioButton29; ItemCmd[15].RB_H := RadioButton30; ItemCmd[15].ECmd := Edit15; ItemCmd[15].BTOpenList := Button15;
    ItemCmd[16].EnBox := CheckBox16; ItemCmd[16].RB_A := RadioButton31; ItemCmd[16].RB_H := RadioButton32; ItemCmd[16].ECmd := Edit16; ItemCmd[16].BTOpenList := Button16;

    ItemAns[ 1].EnBox := CheckBox17;  ItemAns[ 1].RB_A := RadioButton33;  ItemAns[ 1].RB_H := RadioButton34;  ItemAns[ 1].EAns := Edit33; ItemAns[ 1].ETail := Edit49;  ItemAns[ 1].BTSend := Button17;
    ItemAns[ 2].EnBox := CheckBox18;  ItemAns[ 2].RB_A := RadioButton35;  ItemAns[ 2].RB_H := RadioButton36;  ItemAns[ 2].EAns := Edit34; ItemAns[ 2].ETail := Edit50;  ItemAns[ 2].BTSend := Button18;
    ItemAns[ 3].EnBox := CheckBox19;  ItemAns[ 3].RB_A := RadioButton37;  ItemAns[ 3].RB_H := RadioButton38;  ItemAns[ 3].EAns := Edit35; ItemAns[ 3].ETail := Edit51;  ItemAns[ 3].BTSend := Button19;
    ItemAns[ 4].EnBox := CheckBox20;  ItemAns[ 4].RB_A := RadioButton39;  ItemAns[ 4].RB_H := RadioButton40;  ItemAns[ 4].EAns := Edit36; ItemAns[ 4].ETail := Edit52;  ItemAns[ 4].BTSend := Button20;
    ItemAns[ 5].EnBox := CheckBox21;  ItemAns[ 5].RB_A := RadioButton41;  ItemAns[ 5].RB_H := RadioButton42;  ItemAns[ 5].EAns := Edit37; ItemAns[ 5].ETail := Edit53;  ItemAns[ 5].BTSend := Button21;
    ItemAns[ 6].EnBox := CheckBox22;  ItemAns[ 6].RB_A := RadioButton43;  ItemAns[ 6].RB_H := RadioButton44;  ItemAns[ 6].EAns := Edit38; ItemAns[ 6].ETail := Edit54;  ItemAns[ 6].BTSend := Button22;
    ItemAns[ 7].EnBox := CheckBox23;  ItemAns[ 7].RB_A := RadioButton45;  ItemAns[ 7].RB_H := RadioButton46;  ItemAns[ 7].EAns := Edit39; ItemAns[ 7].ETail := Edit55;  ItemAns[ 7].BTSend := Button23;
    ItemAns[ 8].EnBox := CheckBox24;  ItemAns[ 8].RB_A := RadioButton47;  ItemAns[ 8].RB_H := RadioButton48;  ItemAns[ 8].EAns := Edit40; ItemAns[ 8].ETail := Edit56;  ItemAns[ 8].BTSend := Button24;
    ItemAns[ 9].EnBox := CheckBox25;  ItemAns[ 9].RB_A := RadioButton49;  ItemAns[ 9].RB_H := RadioButton50;  ItemAns[ 9].EAns := Edit41; ItemAns[ 9].ETail := Edit57;  ItemAns[ 9].BTSend := Button25;
    ItemAns[10].EnBox := CheckBox26;  ItemAns[10].RB_A := RadioButton51;  ItemAns[10].RB_H := RadioButton52;  ItemAns[10].EAns := Edit42; ItemAns[10].ETail := Edit58;  ItemAns[10].BTSend := Button26;
    ItemAns[11].EnBox := CheckBox27;  ItemAns[11].RB_A := RadioButton53;  ItemAns[11].RB_H := RadioButton54;  ItemAns[11].EAns := Edit43; ItemAns[11].ETail := Edit59;  ItemAns[11].BTSend := Button27;
    ItemAns[12].EnBox := CheckBox28;  ItemAns[12].RB_A := RadioButton55;  ItemAns[12].RB_H := RadioButton56;  ItemAns[12].EAns := Edit44; ItemAns[12].ETail := Edit60;  ItemAns[12].BTSend := Button28;
    ItemAns[13].EnBox := CheckBox29;  ItemAns[13].RB_A := RadioButton57;  ItemAns[13].RB_H := RadioButton58;  ItemAns[13].EAns := Edit45; ItemAns[13].ETail := Edit61;  ItemAns[13].BTSend := Button29;
    ItemAns[14].EnBox := CheckBox30;  ItemAns[14].RB_A := RadioButton59;  ItemAns[14].RB_H := RadioButton60;  ItemAns[14].EAns := Edit46; ItemAns[14].ETail := Edit62;  ItemAns[14].BTSend := Button30;
    ItemAns[15].EnBox := CheckBox31;  ItemAns[15].RB_A := RadioButton61;  ItemAns[15].RB_H := RadioButton62;  ItemAns[15].EAns := Edit47; ItemAns[15].ETail := Edit63;  ItemAns[15].BTSend := Button31;
    ItemAns[16].EnBox := CheckBox32;  ItemAns[16].RB_A := RadioButton63;  ItemAns[16].RB_H := RadioButton64;  ItemAns[16].EAns := Edit48; ItemAns[16].ETail := Edit64;  ItemAns[16].BTSend := Button32;

    ReplaceAnsGUI.ChUseTMPLAns[1] := CheckBox91;
    ReplaceAnsGUI.ChUseTMPLAns[2] := CheckBox90;
    ReplaceAnsGUI.ChUseTMPLAns[3] := CheckBox92;
    ReplaceAnsGUI.ChUseTMPLAns[4] := CheckBox93;
    ReplaceAnsGUI.ChUseTMPLAns[5] := CheckBox94;

    ReplaceAnsGUI.EdtTMPLAns[1] := Edt31;
    ReplaceAnsGUI.EdtTMPLAns[2] := Edt32;
    ReplaceAnsGUI.EdtTMPLAns[3] := Edt33;
    ReplaceAnsGUI.EdtTMPLAns[4] := Edt34;
    ReplaceAnsGUI.EdtTMPLAns[5] := Edt35;

    ReplaceAnsGUI.ChUseReplAns[1,1] := CheckBox64;
    ReplaceAnsGUI.ChUseReplAns[1,2] := CheckBox69;
    ReplaceAnsGUI.ChUseReplAns[1,3] := CheckBox74;
    ReplaceAnsGUI.ChUseReplAns[1,4] := CheckBox79;
    ReplaceAnsGUI.ChUseReplAns[1,5] := CheckBox84;

    ReplaceAnsGUI.ChUseReplAns[1,6] := chk1;
    ReplaceAnsGUI.ChUseReplAns[1,7] := chk6;
    ReplaceAnsGUI.ChUseReplAns[1,8] := chk11;
    ReplaceAnsGUI.ChUseReplAns[1,9] := chk21;
    ReplaceAnsGUI.ChUseReplAns[1,10] := chk16;



    ReplaceAnsGUI.ChUseReplAns[2,1] := CheckBox63;
    ReplaceAnsGUI.ChUseReplAns[2,2] := CheckBox68;
    ReplaceAnsGUI.ChUseReplAns[2,3] := CheckBox73;
    ReplaceAnsGUI.ChUseReplAns[2,4] := CheckBox78;
    ReplaceAnsGUI.ChUseReplAns[2,5] := CheckBox83;

    ReplaceAnsGUI.ChUseReplAns[2,6] := chk2;
    ReplaceAnsGUI.ChUseReplAns[2,7] := chk7;
    ReplaceAnsGUI.ChUseReplAns[2,8] := chk12;
    ReplaceAnsGUI.ChUseReplAns[2,9] := chk22;
    ReplaceAnsGUI.ChUseReplAns[2,10] := chk17;



    ReplaceAnsGUI.ChUseReplAns[3,1] := CheckBox62;
    ReplaceAnsGUI.ChUseReplAns[3,2] := CheckBox67;
    ReplaceAnsGUI.ChUseReplAns[3,3] := CheckBox72;
    ReplaceAnsGUI.ChUseReplAns[3,4] := CheckBox77;
    ReplaceAnsGUI.ChUseReplAns[3,5] := CheckBox82;

    ReplaceAnsGUI.ChUseReplAns[3,6] := chk3;
    ReplaceAnsGUI.ChUseReplAns[3,7] := chk8;
    ReplaceAnsGUI.ChUseReplAns[3,8] := chk13;
    ReplaceAnsGUI.ChUseReplAns[3,9] := chk23;
    ReplaceAnsGUI.ChUseReplAns[3,10] := chk18;



    ReplaceAnsGUI.ChUseReplAns[4,1] := CheckBox61;
    ReplaceAnsGUI.ChUseReplAns[4,2] := CheckBox66;
    ReplaceAnsGUI.ChUseReplAns[4,3] := CheckBox71;
    ReplaceAnsGUI.ChUseReplAns[4,4] := CheckBox76;
    ReplaceAnsGUI.ChUseReplAns[4,5] := CheckBox81;

    ReplaceAnsGUI.ChUseReplAns[4,6] := chk4;
    ReplaceAnsGUI.ChUseReplAns[4,7] := chk9;
    ReplaceAnsGUI.ChUseReplAns[4,8] := chk14;
    ReplaceAnsGUI.ChUseReplAns[4,9] := chk24;
    ReplaceAnsGUI.ChUseReplAns[4,10] := chk19;



    ReplaceAnsGUI.ChUseReplAns[5,1] := CheckBox60;
    ReplaceAnsGUI.ChUseReplAns[5,2] := CheckBox65;
    ReplaceAnsGUI.ChUseReplAns[5,3] := CheckBox70;
    ReplaceAnsGUI.ChUseReplAns[5,4] := CheckBox75;
    ReplaceAnsGUI.ChUseReplAns[5,5] := CheckBox80;

    ReplaceAnsGUI.ChUseReplAns[5,6] := chk5;
    ReplaceAnsGUI.ChUseReplAns[5,7] := chk10;
    ReplaceAnsGUI.ChUseReplAns[5,8] := chk15;
    ReplaceAnsGUI.ChUseReplAns[5,9] := chk25;
    ReplaceAnsGUI.ChUseReplAns[5,10] := chk20;





    ReplaceAnsGUI.EdtReplAns[1,1] := Edt36;
    ReplaceAnsGUI.EdtReplAns[1,2] := Edt41;
    ReplaceAnsGUI.EdtReplAns[1,3] := Edt46;
    ReplaceAnsGUI.EdtReplAns[1,4] := Edt51;
    ReplaceAnsGUI.EdtReplAns[1,5] := Edt56;

    ReplaceAnsGUI.EdtReplAns[1,6] := edt1;
    ReplaceAnsGUI.EdtReplAns[1,7] := edt6;
    ReplaceAnsGUI.EdtReplAns[1,8] := edt11;
    ReplaceAnsGUI.EdtReplAns[1,9] := edt21;
    ReplaceAnsGUI.EdtReplAns[1,10] := edt16;



    ReplaceAnsGUI.EdtReplAns[2,1] := Edt37;
    ReplaceAnsGUI.EdtReplAns[2,2] := Edt42;
    ReplaceAnsGUI.EdtReplAns[2,3] := Edt47;
    ReplaceAnsGUI.EdtReplAns[2,4] := Edt52;
    ReplaceAnsGUI.EdtReplAns[2,5] := Edt57;

    ReplaceAnsGUI.EdtReplAns[2,6] := edt2;
    ReplaceAnsGUI.EdtReplAns[2,7] := edt7;
    ReplaceAnsGUI.EdtReplAns[2,8] := edt12;
    ReplaceAnsGUI.EdtReplAns[2,9] := edt22;
    ReplaceAnsGUI.EdtReplAns[2,10] := edt17;



    ReplaceAnsGUI.EdtReplAns[3,1] := Edt38;
    ReplaceAnsGUI.EdtReplAns[3,2] := Edt43;
    ReplaceAnsGUI.EdtReplAns[3,3] := Edt48;
    ReplaceAnsGUI.EdtReplAns[3,4] := Edt53;
    ReplaceAnsGUI.EdtReplAns[3,5] := Edt58;

    ReplaceAnsGUI.EdtReplAns[3,6] := edt3;
    ReplaceAnsGUI.EdtReplAns[3,7] := edt8;
    ReplaceAnsGUI.EdtReplAns[3,8] := edt13;
    ReplaceAnsGUI.EdtReplAns[3,9] := edt23;
    ReplaceAnsGUI.EdtReplAns[3,10] := edt18;



    ReplaceAnsGUI.EdtReplAns[4,1] := Edt39;
    ReplaceAnsGUI.EdtReplAns[4,2] := Edt44;
    ReplaceAnsGUI.EdtReplAns[4,3] := Edt49;
    ReplaceAnsGUI.EdtReplAns[4,4] := Edt54;
    ReplaceAnsGUI.EdtReplAns[4,5] := Edt59;

    ReplaceAnsGUI.EdtReplAns[4,6] := edt4;
    ReplaceAnsGUI.EdtReplAns[4,7] := edt9;
    ReplaceAnsGUI.EdtReplAns[4,8] := edt14;
    ReplaceAnsGUI.EdtReplAns[4,9] := edt24;
    ReplaceAnsGUI.EdtReplAns[4,10] := edt19;



    ReplaceAnsGUI.EdtReplAns[5,1] := Edt40;
    ReplaceAnsGUI.EdtReplAns[5,2] := Edt45;
    ReplaceAnsGUI.EdtReplAns[5,3] := Edt50;
    ReplaceAnsGUI.EdtReplAns[5,4] := Edt55;
    ReplaceAnsGUI.EdtReplAns[5,5] := Edt60;

    ReplaceAnsGUI.EdtReplAns[5,6] := edt5;
    ReplaceAnsGUI.EdtReplAns[5,7] := edt10;
    ReplaceAnsGUI.EdtReplAns[5,8] := edt15;
    ReplaceAnsGUI.EdtReplAns[5,9] := edt25;
    ReplaceAnsGUI.EdtReplAns[5,10] := edt20;

    For i := 1 to CNT_TEMPLATE_REP_ANS do
      begin
        ReplaceAnsGUI.ChUseTMPLAns[i].OnClick := CheckBoxTemplateAnsClick;
        ReplaceAnsGUI.EdtTMPLAns[i].OnChange := EdtTemplateAnsChange;

        ReplaceAnsGUI.ChUseTMPLAns[i].Tag := i;
        ReplaceAnsGUI.EdtTMPLAns[i].Tag := i;

        for j := 1 to CNT_REPLACE_ANS do
          begin
            ReplaceAnsGUI.ChUseReplAns[i, j].OnClick := CheckBoxReplaceAnsClick;
            ReplaceAnsGUI.EdtReplAns[i, j].OnChange := EdtReplaceAnsChange;
            ReplaceAnsGUI.ChUseReplAns[i, j].Tag := (i shl 8) + j;
            ReplaceAnsGUI.EdtReplAns[i, j].Tag := (i shl 8) + j;
          end;
      end;


    for NumCmd := 1 to CNT_CMD do
      begin
        ItemCmd[NumCmd].EnBox.OnClick         := CBoxEnCmdClick;
        ItemCmd[NumCmd].EnBox.Tag             := NumCmd;
        ItemCmd[NumCmd].ECmd.OnClick          := EditCmdClick;
        ItemCmd[NumCmd].ECmd.OnExit           := EditCmdExit;
        ItemCmd[NumCmd].ECmd.OnKeyPress       := EditCmdKeyPress;
        ItemCmd[NumCmd].ECmd.OnChange         := EditCmdChange;
        ItemCmd[NumCmd].ECmd.Tag              := NumCmd;
        ItemCmd[NumCmd].BTOpenList.Tag        := NumCmd;
        ItemCmd[NumCmd].BTOpenList.OnClick    := OpenListClick;
        ItemCmd[NumCmd].BTOpenList.OnKeyDown  := BtOpenListKeyDown;
        ItemCmd[NumCmd].EnBox.Tag             := NumCmd;
        ItemCmd[NumCmd].RB_A.Tag              := NumCmd;
        ItemCmd[NumCmd].RB_H.Tag              := NumCmd;
        ItemCmd[NumCmd].RB_A.OnClick          := CmdRB_A_Click;
        ItemCmd[NumCmd].RB_H.OnClick          := CmdRB_H_Click;


      end;

    for NumAns := 1 to CNT_ANS do
      begin
        ItemAns[NumAns].EnBox.OnClick    := CBoxEnAnsClick;
        ItemAns[NumAns].EnBox.Tag        := NumAns;
        ItemAns[NumAns].EAns.Tag         := NumAns;
        ItemAns[NumAns].ETail.Tag        := NumAns;

        ItemAns[NumAns].ETail.Hint       := 'To display the templates of checksums, click the down arrow or double-click';
        ItemAns[NumAns].ETail.ShowHint   := True;
        ItemAns[NumAns].EAns.OnKeyPress  := EditAnsKeyPress;
        ItemAns[NumAns].ETail.OnKeyPress := EditAnsTailKeyPress;
        ItemAns[NumAns].EAns.OnExit      := EditAnsExit;
        ItemAns[NumAns].ETail.OnExit     := EditAnsTailExit;
        ItemAns[NumAns].ETail.OnClick    := EditAnsTailClick;
        ItemAns[NumAns].EAns.OnClick     := EditAnsTailClick;
        ItemAns[NumAns].EAns.OnChange    := EditAnsChange;
        ItemAns[NumAns].ETail.OnChange   := EditAnsTailChange;
        ItemAns[NumAns].ETail.OnKeyUp    := EditCSUMKeyUp;
        ItemAns[NumAns].ETail.OnDblClick := EditCsumDblClick;


        ItemAns[NumAns].RB_A.Tag         := NumAns;
        ItemAns[NumAns].RB_H.Tag         := NumAns;
        ItemAns[NumAns].RB_A.OnClick     := AnsRB_A_Click;
        ItemAns[NumAns].RB_H.OnClick     := AnsRB_H_Click;
        ItemAns[NumAns].BTSend.OnClick   := SendManualAns;
        ItemAns[NumAns].BTSend.Tag       := NumAns;
        ItemAns[NumAns].EAns.OnDblClick  := EditAnsDblClick;

      end;


    if TerminalST.CfgTerminal.ModeEmulAuto = 1 then
      begin
        isWorkModeAuto := true;
      end
    else if TerminalST.CfgTerminal.ModeEmulAuto = 0 then
      begin
        isWorkModeAuto := false;
      end;


    if TerminalST.CfgTerminal.OnlyThisOneEmul = 1 then
      begin
        isUseThisList := true;
      end
    else if TerminalST.CfgTerminal.OnlyThisOneEmul = 0 then
      begin
        isUseThisList := false;
      end;

    if (TerminalST.CfgTerminal.EmulList < 1) or (TerminalST.CfgTerminal.EmulList > CNT_LIST) then
      TerminalST.CfgTerminal.EmulList := 1;

    CurNumListCmd := TerminalST.CfgTerminal.EmulList;

    LoadListCmd(CurNumListCmd);



    RadioButton65.Checked := isWorkModeAuto;
    RadioButton66.Checked := not isWorkModeAuto;

    RadioButton67.Checked := isUseThisList;
    RadioButton68.Checked := not isUseThisList;



    isEnProcClickCB := true;
    isEnProcClickRB := true;
    Button33.Caption := '>';
    Button34.Font.Name:='Symbol';
    Button34.Caption:=chr($AF);
    SetActiv(false);
    ResetBuffers;


    
    for j := 1 to CNT_REPLACE_ANS do
      for i := 1 to CNT_TEMPLATE_REP_ANS  do
        begin
          ChUseReplAnsStartLeft[i, j] := ReplaceAnsGUI.ChUseReplAns[i, j].Left;
          EdtReplAnsStartLeft[i, j]   := ReplaceAnsGUI.EdtReplAns[i, j].Left;
          EdtReplAnsWidth[i, j]       := ReplaceAnsGUI.EdtReplAns[i, j].Width;
        end;

    ColorClear.Enabled := true;
end;

procedure TFormAnsSensor.Button35Click(Sender: TObject);
begin
  dec(CurNumListCmd);
  if CurNumListCmd = 0 then
    CurNumListCmd := CNT_LIST;
  Edit65.Color := clWindow;
  LoadListCmd(CurNumListCmd);
end;

procedure TFormAnsSensor.Button36Click(Sender: TObject);
begin
  inc(CurNumListCmd);

  if CurNumListCmd > CNT_LIST then
    CurNumListCmd := 1;

  LoadListCmd(CurNumListCmd);
end;

procedure TFormAnsSensor.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var
    ans : Integer;
begin
  if isWorkModeAuto then
    TerminalST.CfgTerminal.ModeEmulAuto := 1
  else
    TerminalST.CfgTerminal.ModeEmulAuto := 0;

  if isUseThisList then
    TerminalST.CfgTerminal.OnlyThisOneEmul := 1
  else
    TerminalST.CfgTerminal.OnlyThisOneEmul := 0;

  TerminalST.Form1.isFormAnsSensors := False;

  TerminalST.CfgTerminal.EmulList := CurNumListCmd;

  Button33.Caption := '>';
  SetActiv(false);
  ResetBuffers;
  TerminalST.Form1.BtAnsList.Font.Style := [];
  for ans := 1 to CNT_ANS do
    ItemAns[ans].BTSend.Enabled := false;
  isActiv := False;
end;

procedure TFormAnsSensor.RadioButton65Click(Sender: TObject);
begin
  isWorkModeAuto := true;
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
  //grp3.Visible := True;
end;

procedure TFormAnsSensor.RadioButton66Click(Sender: TObject);
begin
  isWorkModeAuto := false;
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
  //grp3.Visible := True;
end;

procedure TFormAnsSensor.RadioButton67Click(Sender: TObject);
begin
  isUseThisList := true;
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
  //grp3.Visible := True;
end;

procedure TFormAnsSensor.RadioButton68Click(Sender: TObject);
begin
  isUseThisList := false;
  ListGroup.Visible := false;
end;

procedure TFormAnsSensor.WriteInBufSend(var Msg : string; Tail : string; isHex : boolean);
  begin
    if (Msg <> '') or (Tail <> '') then
      begin
        RB_SendStr[RB_SendIndexWrite]   := Msg;
        RB_SendTail[RB_SendIndexWrite]  := Tail;
        RB_SendIsHex[RB_SendIndexWrite] := isHex;
        RB_SendIsNew[RB_SendIndexWrite] := true;
        RB_Delay[RB_SendIndexWrite] := DelayMin + Random(DelayMax - DelayMin) + 1;
        FormAnsSensor.SendAns.Interval := RB_Delay[RB_SendIndexWrite];
        inc(RB_SendIndexWrite);
        RB_SendIndexWrite := RB_SendIndexWrite and (LEN_RBUF_WRITE - 1);
      end;
  end;


procedure WriteInBufTmp(numList : integer; numCmd: integer);
  var
    i      : integer;
    lenCmd : integer;
  begin
    lenCmd := ListCmdAnsCfg[numList].StrCmdLen[numCmd];
    for i := 1 to lenCmd do
      begin
        BufInTmp[i] := ListCmdAnsCfg[numList].StrCmd[numCmd, i];
      end;
  end;


function ReplaceAnc(inStr : string; NumList : Integer; isHex : boolean) : string;
var
  ReplaceFlags : TReplaceFlags;
  i, j : Integer;
  Template : string;
  Replace  : string;
  res : string;
  tmp : string;
  cntAtt : Integer;
  cntReplace : Integer;
begin
  ReplaceFlags := [rfIgnoreCase];

  res := inStr;

  repeat
    tmp := res;
    begin
      For i := 1 to CNT_TEMPLATE_REP_ANS do
        begin
          if ReplaceAns.isUseTemPlate[i, NumList] and (ReplaceAns.TemplateRepAns[i, NumList] <> '') then
            begin
              Template := ReplaceAns.TemplateRepAns[i, NumList];
              cntAtt := 0;
              repeat
                j := 1 + random(CNT_REPLACE_ANS);
                inc(cntAtt);
              until ReplaceAns.ItemRep[NumList].isUseReplaceAnc[i, j] or (cntAtt > 50);
              if cntAtt < 50 then
                begin
                  Replace := ReplaceHexDetector(ReplaceAns.ItemRep[NumList].ReplaceAns[i,j], isHex);
                  res := StringReplace(res, Template, Replace, ReplaceFlags);
                end;
            end;
        end;
      Sleep(1);
    end;
  until tmp = res;
  Result := res;
end;

procedure TFormAnsSensor.TimerWriteSendMsgTimer(Sender: TObject);
  var
    numList  : integer;
    numAns   : integer;
    numCmd   : integer;
    isMatch  : boolean;
    i        : integer;
    matchList: integer;
    matchCmd : integer;
    ansList  : integer;
    ansCmd   : integer;
    ansAns   : integer;
    listMin  : integer;
    listMax  : integer;
    list     : integer;
    strAns  : string;
    strTail : string;
    lenCmd  : integer;
    iAns    : integer;

  begin
    (Sender as TTimer).Enabled := false;
    if RB_ReadIsNew[RB_ReadIndexRead] then
      begin
        if isUseThisList then
          begin
            list    := CurNumListCmd;
            listMin := CurNumListCmd;
            listMax := CurNumListCmd;
          end
        else
          begin
            list    := 1;
            listMin := 1;
            listMax := CNT_LIST;
          end;

        isMatch := false;

        while (list <= listMax) and (not isMatch) do
          begin
            numList := list;
            numCmd  := 1;
            while (numCmd <= CNT_CMD) and (not isMatch) do
              begin
                if ListCmdAnsCfg[numList].StrCmdActiv[numCmd] then
                  begin
                    lenCmd := ListCmdAnsCfg[numList].StrCmdLen[numCmd];
                    i      := 1;
                    while i <= lenCmd do
                      begin
                        isMatch   := true;
                        matchList := numList;
                        matchCmd  := numCmd;
                        if ListCmdAnsCfg[numList].StrCmd[numCmd, i] <> RB_ReadBuf[RB_ReadIndexRead, i] then
                          begin
                            isMatch := false;
                            i       := lenCmd;
                          end;
                        inc(i);
                      end;
                  end;
                inc(numCmd);
              end;
            inc(list);

            if isMatch then
              begin
                ansList := matchList;
                ansCmd  := matchCmd;

                if isWorkModeAuto then
                  isMatch := false;

                for ansAns := 1 to CNT_ANS do
                  if ListCmdAnsCfg[ansList].StrAnsActiv[ansCmd, ansAns] then
                    isMatch := true;

                if isMatch then
                  begin
                    Inc(StatCntRead[ansList]);
                    ReadLvl.Caption := 'Read : ' + IntToStr(StatCntRead[ansList]);
                    if isWorkModeAuto then
                      begin
                        repeat
                          ansAns := Random(CNT_ANS) + 1;
                        until ListCmdAnsCfg[ansList].StrAnsActiv[ansCmd, ansAns];

                        strAns  := ListCmdAnsCfg[ansList].StrAns[ansCmd,     ansAns];
                        strTail := ListCmdAnsCfg[ansList].StrAnsTail[ansCmd, ansAns];
                        strAns := ReplaceAnc(strAns, ansList, ListCmdAnsCfg[ansList].StrAnsModeHex[ansCmd, ansAns]);
                        WriteInBufSend(strAns, strTail, ListCmdAnsCfg[ansList].StrAnsModeHex[ansCmd, ansAns]);
                        Inc(StatCntSend[ansList][ansAns]);
                        SendLvl.Caption := 'Send : ' + IntToStr(StatCntSend[ansList][ 1]) +' '+
                                                       IntToStr(StatCntSend[ansList][ 2]) +' '+
                                                       IntToStr(StatCntSend[ansList][ 3]) +' '+
                                                       IntToStr(StatCntSend[ansList][ 4]) +' '+
                                                       IntToStr(StatCntSend[ansList][ 5]) +' '+
                                                       IntToStr(StatCntSend[ansList][ 6]) +' '+
                                                       IntToStr(StatCntSend[ansList][ 7]) +' '+
                                                       IntToStr(StatCntSend[ansList][ 8]) +' '+
                                                       IntToStr(StatCntSend[ansList][ 9]) +' '+
                                                       IntToStr(StatCntSend[ansList][10]) +' '+
                                                       IntToStr(StatCntSend[ansList][11]) +' '+
                                                       IntToStr(StatCntSend[ansList][12]) +' '+
                                                       IntToStr(StatCntSend[ansList][13]) +' '+
                                                       IntToStr(StatCntSend[ansList][14]) +' '+
                                                       IntToStr(StatCntSend[ansList][15]) +' '+
                                                       IntToStr(StatCntSend[ansList][16]);
                      end
                    else
                      begin
                        CurNumListCmd := ansList;
                        LoadListCmd(CurNumListCmd);
                        NumLoadAnsCmd := ansCmd;
                        LoadListAns(CurNumListCmd, NumLoadAnsCmd);
                      end;
                  end;
              end;


          end;



        RB_ReadIsNew[RB_ReadIndexRead] := false;
        inc(RB_ReadIndexRead);
        RB_ReadIndexRead := RB_ReadIndexRead and (LEN_RBUF_READE - 1);
      end;
      (Sender as TTimer).Enabled := isActiv;
  end;


procedure SaveCmd(TmpStr : string; numCmd : integer);
  var
    i      : integer;
    iBytes : integer;
    TmpLen : integer;
  begin
    if isEnSaveRAM then
      begin
        TmpLen := Length(TmpStr);
        if ListCmdAnsCfg[CurNumListCmd].StrCmdModeHex[numCmd] then
          begin
            i := 1;
            iBytes := 1;
            while i < TmpLen do
              begin
                ListCmdAnsCfg[CurNumListCmd].StrCmd[numCmd, iBytes] := HexToInt(TmpStr[i]) * 16 + HexToInt(TmpStr[i + 1]);
                inc(iBytes);
                i := i + 3;
              end;
            ListCmdAnsCfg[CurNumListCmd].StrCmdLen[numCmd] := iBytes - 1;
          end
        else
          begin
            for i := 1 to TmpLen do
              ListCmdAnsCfg[CurNumListCmd].StrCmd[numCmd, i] := Ord(TmpStr[i]);
            ListCmdAnsCfg[CurNumListCmd].StrCmdLen[numCmd]   := TmpLen;
          end;
      end;
  end;

procedure TFormAnsSensor.EditCmdExit(Sender: TObject);
  var
    TmpStr : string;
    numCmd : integer;

  begin
    TmpStr := (Sender as TEdit).Text;
    numCmd := (Sender as TEdit).Tag;

    if Length(TmpStr) < LEN_STR then
      begin
        SaveCmd(TmpStr, numCmd);
        (Sender as TEdit).Font.Style := [];
      end
    else
      begin
        (Sender as TEdit).Color := clRed;
      end;
  end;

procedure TFormAnsSensor.SendAnsTimer(Sender: TObject);
var
  StrSend : string;
  StrTail : string;
  SendMode   : TTypeSendMode;
  Delay: Integer;
begin
  if RB_SendIsNew[RB_SendIndexRead] then
    begin
      (Sender as TTimer).Enabled := False;
      StrSend := RB_SendStr[RB_SendIndexRead];
      StrTail := RB_SendTail[RB_SendIndexRead];
      if RB_SendIsHex[RB_SendIndexRead] then SendMode := SendHex else SendMode := SendAscii;
      while (Form1.GetIsSendingData) do begin sleep(1); end;
      TerminalST.Form1.SendPortData(StrSend, StrTail, SendMode, false);
      while (Form1.GetIsSendingData) do begin sleep(1); end;
      RB_SendIsNew[RB_SendIndexRead] := false;
      (Sender as TTimer).Interval := RB_Delay[RB_SendIndexRead];
      inc(RB_SendIndexRead);
      RB_SendIndexRead := RB_SendIndexRead and (LEN_RBUF_WRITE - 1);
      (Sender as TTimer).Enabled := isActiv;
    end;
 end;

procedure TFormAnsSensor.EditCmdKeyPress(Sender: TObject; var Key: Char);
var
  TmpStr : string;
  TmpLen : integer;
  i      : integer;
  numCmd : integer;

begin
  (Sender as TEdit).Font.Style := [fsBold];
   if Key = #13 then
     begin
       TmpStr := (Sender as TEdit).Text;
       numCmd := (Sender as TEdit).Tag;
       if Length(TmpStr) < LEN_STR then
         begin
           SaveCmd(TmpStr, numCmd);
         end
       else
         begin
           (Sender as TEdit).Color := clRed;
         end;
       Key := #0;
     end;

   if Key = #27 then
     Key := #0;

   if Key = #0 then
     (Sender as TEdit).Font.Style := [];
end;


procedure TFormAnsSensor.CmdRB_A_Click(Sender: TObject);
  var
    numCmd : integer;
    tmpStr : string;
  begin
    if isEnProcClickRB and isEnSaveRAM then
      begin
        ListGroup.Visible := false;
        lstCSUM.Visible   := False;
        //grp3.Visible := True;
        numCmd := (Sender as TRadioButton).Tag;
        tmpStr := ItemCmd[NumCmd].ECmd.Text;
        ListCmdAnsCfg[CurNumListCmd].StrCmdModeHex[numCmd]   := false;
        tmpStr := HexToStr(tmpStr);
        ItemCmd[NumCmd].ECmd.Text := tmpStr;
        SaveCmd(tmpStr, numCmd);
        //LoadListAns(CurNumListCmd, numCmd);
        //ItemCmd[numCmd].ECmd.Color := clYellow;
        ColorClear.Enabled := true;
      end;
  end;

procedure TFormAnsSensor.CmdRB_H_Click(Sender: TObject);
  var
    numCmd : integer;
    tmpStr : string;
  begin
    if isEnProcClickRB and isEnSaveRAM then
      begin
        ListGroup.Visible := false;
        lstCSUM.Visible   := False;
        //grp3.Visible := True;
        numCmd := (Sender as TRadioButton).Tag;
        tmpStr := ItemCmd[NumCmd].ECmd.Text;
        ListCmdAnsCfg[CurNumListCmd].StrCmdModeHex[numCmd]   := true;
        tmpStr := StrToHex(tmpStr);
        ItemCmd[NumCmd].ECmd.Text := tmpStr;
        SaveCmd(tmpStr, numCmd);
        //LoadListAns(CurNumListCmd, numCmd);
        //ItemCmd[numCmd].ECmd.Color := clYellow;
        ColorClear.Enabled := true;
      end;
  end;

procedure TFormAnsSensor.AnsRB_A_Click(Sender: TObject);
  begin
    if isEnProcClickRB then
      begin
        ListGroup.Visible := false;
        lstCSUM.Visible   := False;
        grp3.Visible := True;
        ListCmdAnsCfg[CurNumListCmd].StrAnsModeHex[NumLoadAnsCmd, (Sender as TRadioButton).Tag]   := false;
      end;
  end;

procedure TFormAnsSensor.AnsRB_H_Click(Sender: TObject);
  begin
    if isEnProcClickRB then
      begin
        ListGroup.Visible := false;
        lstCSUM.Visible   := False;
        grp3.Visible := True;
        ListCmdAnsCfg[CurNumListCmd].StrAnsModeHex[NumLoadAnsCmd, (Sender as TRadioButton).Tag]   := true;
      end;
  end;



procedure TFormAnsSensor.EditAnsKeyPress(Sender: TObject; var Key: Char);
var
  TmpStr : string;
  TmpLen : integer;
  i      : integer;
  numAns : integer;

begin
  numAns := (Sender as TEdit).Tag;
  (Sender as TEdit).Font.Style := [fsBold];
  if Key = #13 then
    begin
      TmpStr := (Sender as TEdit).Text;
      TmpLen := Length(TmpStr);
      numAns := (Sender as TEdit).Tag;
      if TmpLen < LEN_STR then
        begin
          if isEnSaveRAM then ListCmdAnsCfg[CurNumListCmd].StrAns[NumLoadAnsCmd, numAns] := TmpStr;
        end
      else
        begin
          (Sender as TEdit).Color := clRed;
        end;
      Key := #0;
    end;

    if Key = #27 then
      Key := #0;

    if Key = #0 then
      (Sender as TEdit).Font.Style := [];
end;


procedure TFormAnsSensor.EditAnsTailKeyPress(Sender: TObject; var Key: Char);
var
  TmpStr : string;
  TmpLen : integer;
  i      : integer;
  numAns : integer;

begin
  numAns := (Sender as TEdit).Tag;
  (Sender as TEdit).Font.Style := [fsBold];
  if Key = #13 then
    begin
      TmpStr := (Sender as TEdit).Text;
      TmpLen := Length(TmpStr);
      numAns := (Sender as TEdit).Tag;
      if TmpLen < LEN_TAIL then
        begin
          if isEnSaveRAM then ListCmdAnsCfg[CurNumListCmd].StrAnsTail[NumLoadAnsCmd, numAns] := TmpStr;
        end
      else
        begin
          (Sender as TEdit).Color := clRed;
        end;
      Key := #0;
    end;

    if Key = #27 then
      Key := #0;

    if Key = #0 then
      (Sender as TEdit).Font.Style := [];
end;



procedure TFormAnsSensor.CBoxEnCmdClick(Sender: TObject);
  var
    Cmd : integer;
    isAct : boolean;
  begin
    if isEnProcClickCB and isEnSaveRAM then
      begin
        ListGroup.Visible := false;
        lstCSUM.Visible   := False;
        grp3.Visible := True;
        Cmd   := (Sender as TCheckBox).Tag;
        isAct := ListCmdAnsCfg[CurNumListCmd].StrCmdActiv[Cmd];
        //ItemCmd[Cmd].BTOpenList.Enabled := (not isAct);
        ListCmdAnsCfg[CurNumListCmd].StrCmdActiv[Cmd] := not isAct;
        //LoadListAns(CurNumListCmd, Cmd);
      end;
  end;

procedure TFormAnsSensor.CBoxEnAnsClick(Sender: TObject);
  var
    Ans : integer;
    isAct : boolean;
  begin
    if isEnProcClickCB and isEnSaveRAM then
      begin
        ListGroup.Visible := false;
        lstCSUM.Visible   := False;
        grp3.Visible := True;
        Ans     := (Sender as TCheckBox).Tag;
        isAct := ListCmdAnsCfg[CurNumListCmd].StrAnsActiv[NumLoadAnsCmd, Ans];
        //ItemAns[Ans].BTSend.Enabled := (not isActiv);
        ListCmdAnsCfg[CurNumListCmd].StrAnsActiv[NumLoadAnsCmd, Ans] := not isAct;
      end;
  end;


procedure TFormAnsSensor.OpenListClick(Sender: TObject);
  var NumBTFocus : integer;
  begin
    lstCSUM.Visible   := False;
    ListGroup.Visible := false;
    grp3.Visible := True;
    NumLoadAnsCmd     := (Sender as TButton).Tag;
    NumBTFocus := NumLoadAnsCmd + 1;
    if NumBTFocus > 16 then NumBTFocus := 1;
    ItemCmd[NumLoadAnsCmd].BTOpenList.SetFocus;
    LoadListAns(CurNumListCmd, NumLoadAnsCmd);
  end;

procedure TFormAnsSensor.CheckBox33Click(Sender: TObject);
  var
    NumCmd : integer;
    Tag    : integer;
    Ch     : boolean;
  begin
    Tag := (Sender as TCheckBox).Tag;
    if Tag = 0 then
      begin
        Ch  := true;
        Tag := 1;
      end
    else
      begin
        Ch  := false;
        Tag := 0;
      end;

    isEnProcClickCB := false;
    for NumCmd := 1 to CNT_CMD do
      begin
        ItemCmd[NumCmd].EnBox.Checked                    := Ch;
        //ItemCmd[NumCmd].BTOpenList.Enabled               := Ch;
        ListCmdAnsCfg[CurNumListCmd].StrCmdActiv[NumCmd] := Ch;
      end;
    isEnProcClickCB := true;

    (Sender as TCheckBox).Tag := Tag;
  end;

procedure TFormAnsSensor.CheckBox34Click(Sender: TObject);
  var
    NumAns : integer;
    Tag    : integer;
    Ch     : boolean;
  begin
    Tag := (Sender as TCheckBox).Tag;
    if Tag = 0 then
      begin
        Ch  := true;
        Tag := 1;
      end
    else
      begin
        Ch  := false;
        Tag := 0;
      end;

    isEnProcClickCB := false;
    for NumAns := 1 to CNT_Ans do
      begin
        ItemAns[NumAns].EnBox.Checked                                   := Ch;
        //ItemAns[NumAns].BTSend.Enabled                                  := Ch;
        ListCmdAnsCfg[CurNumListCmd].StrAnsActiv[NumLoadAnsCmd, NumAns] := Ch;
      end;
    isEnProcClickCB := true;
    (Sender as TCheckBox).Tag := Tag;
  end;


procedure TFormAnsSensor.Button37Click(Sender: TObject);
  var
    NumCmd : integer;
  begin
    isEnProcClickRB := false;
    for NumCmd := 1 to CNT_CMD do
      begin
        ItemCmd[NumCmd].RB_A.Checked := true;
        ItemCmd[NumCmd].RB_H.Checked := false;
        if ListCmdAnsCfg[CurNumListCmd].StrCmdModeHex[NumCmd] = true then
          begin
            ListCmdAnsCfg[CurNumListCmd].StrCmdModeHex[NumCmd] := false;
            ItemCmd[NumCmd].ECmd.Text := HexToStr(ItemCmd[NumCmd].ECmd.Text);
            SaveCmd(ItemCmd[NumCmd].ECmd.Text, NumCmd);
            //ItemCmd[NumCmd].ECmd.Color := clYellow;
            ColorClear.Enabled := true;
          end;
      end;
    isEnProcClickRB := true;
  end;

procedure TFormAnsSensor.Button38Click(Sender: TObject);
  var
    NumCmd : integer;
  begin
    isEnProcClickRB := false;
    for NumCmd := 1 to CNT_CMD do
      begin
        ItemCmd[NumCmd].RB_A.Checked := false;
        ItemCmd[NumCmd].RB_H.Checked := true;
        if ListCmdAnsCfg[CurNumListCmd].StrCmdModeHex[NumCmd] = false then
          begin
            ListCmdAnsCfg[CurNumListCmd].StrCmdModeHex[NumCmd] := true;
            ItemCmd[NumCmd].ECmd.Text := StrToHex(ItemCmd[NumCmd].ECmd.Text);
            SaveCmd(ItemCmd[NumCmd].ECmd.Text, NumCmd);
            //ItemCmd[NumCmd].ECmd.Color := clYellow;
            ColorClear.Enabled := true;
          end;
      end;
    isEnProcClickRB := true;
  end;

procedure TFormAnsSensor.Button40Click(Sender: TObject);
 var
   NumAns : integer;
 begin
   isEnProcClickCB := false;
   for NumAns := 1 to CNT_ANS do
     begin
       ItemAns[NumAns].RB_A.Checked := true;
       ItemAns[NumAns].RB_H.Checked := false;
       ListCmdAnsCfg[CurNumListCmd].StrAnsModeHex[NumLoadAnsCmd, NumAns] := false;
     end;
   isEnProcClickCB := true;
 end;


procedure TFormAnsSensor.Button39Click(Sender: TObject);
 var
   NumAns : integer;
 begin
   isEnProcClickRB := false;
   for NumAns := 1 to CNT_ANS do
     begin
       ItemAns[NumAns].RB_A.Checked := false;
       ItemAns[NumAns].RB_H.Checked := true;
       ListCmdAnsCfg[CurNumListCmd].StrAnsModeHex[NumLoadAnsCmd, NumAns] := true;
     end;
   isEnProcClickRB := true;
 end;

procedure TFormAnsSensor.EditCmdClick(Sender: TObject);
  begin
    (Sender as TEdit).Color := clWindow;
    lstCSUM.Visible   := False;
    grp3.Visible := True;
    ListGroup.Visible := false;
    NumLoadAnsCmd     := (Sender as TEdit).Tag;
    LoadListAns(CurNumListCmd, NumLoadAnsCmd);
    //LoadListAns(CurNumListCmd, NumLoadAnsCmd);
  end;


procedure TFormAnsSensor.ColorClearTimer(Sender: TObject);
  var NumAns : integer;
      NumCmd : integer;
  begin
    for NumAns := 1 to CNT_ANS do
      begin
        ItemAns[NumAns].EAns.Color := clWindow;
        ItemAns[NumAns].ETail.Color := clWindow;
      end;
    for NumCmd := 1 to CNT_CMD do
      begin
        ItemCmd[NumCmd].ECmd.Color := clWindow;
      end;
    (Sender as TTimer).Enabled := false;
  end;

procedure TFormAnsSensor.SendManualAns(Sender: TObject);
  var
    strAns  : string;
    strTail : string;
    numAns  : integer;
  begin
    ListGroup.Visible := false;
    lstCSUM.Visible   := False;
    grp3.Visible := True;
    numAns := (Sender as TButton).Tag;
    strAns := ListCmdAnsCfg[CurNumListCmd].StrAns[NumLoadAnsCmd,     numAns];
    strAns := ReplaceAnc(strAns, CurNumListCmd, ListCmdAnsCfg[CurNumListCmd].StrAnsModeHex[NumLoadAnsCmd, numAns]);
    strTail := ListCmdAnsCfg[CurNumListCmd].StrAnsTail[NumLoadAnsCmd, numAns];
    WriteInBufSend(strAns, strTail, ListCmdAnsCfg[CurNumListCmd].StrAnsModeHex[NumLoadAnsCmd, numAns]);
    Inc(StatCntSend[CurNumListCmd][numAns]);
    SendLvl.Caption := 'Send : ' + IntToStr(StatCntSend[CurNumListCmd][ 1]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][ 2]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][ 3]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][ 4]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][ 5]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][ 6]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][ 7]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][ 8]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][ 9]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][10]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][11]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][12]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][13]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][14]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][15]) +' '+
                                   IntToStr(StatCntSend[CurNumListCmd][16]);
  end;

procedure TFormAnsSensor.Edit65KeyPress(Sender: TObject; var Key: Char);
  begin
    (Sender as TEdit).Font.Style := [fsBold];
    if Key = #13 then
      begin
        if Length((Sender as TEdit).Text) < LEN_LIST_NAME then
          begin
            ListCmdAnsCfg[CurNumListCmd].ListName := (Sender as TEdit).Text;
          end
        else
          Begin
            (Sender as TEdit).color := clRed;
          end;
        Key := #0;
      end;

     if Key = #27 then
       begin
         ListGroup.Visible := false;
         lstCSUM.Visible   := False;
         grp3.Visible := True;
         Key := #0;
       end;

     if Key = #0 then
       (Sender as TEdit).Font.Style := [];
  end;

procedure TFormAnsSensor.Edit65Exit(Sender: TObject);
  begin
    if Length((Sender as TEdit).Text) < LEN_LIST_NAME then
      begin
        ListCmdAnsCfg[CurNumListCmd].ListName := (Sender as TEdit).Text;
        (Sender as TEdit).Font.Style := [];
      end
    else
      begin
        (Sender as TEdit).Color := clRed;
      end;
  end;

procedure TFormAnsSensor.Button33Click(Sender: TObject);
  var
    ans : Integer;
    enSendManual : Boolean;
  begin
 ListGroup.Visible := false;
 lstCSUM.Visible   := False;
 grp3.Visible := True;
    if (Sender as TButton).Tag = 0 then
      begin
        enSendManual := True;
        (Sender as TButton).Caption := '||';
        (Sender as TButton).Tag := 1;
        (Sender as TButton).Hint := 'Stop work';
        SetActiv(true);
      end
    else
      begin
        enSendManual := False;
        (Sender as TButton).Caption := '>';
        (Sender as TButton).Tag  := 0;
        (Sender as TButton).Hint := 'Get started';
        SetActiv(false);
      end;
    for ans := 1 to CNT_ANS do
      ItemAns[ans].BTSend.Enabled := enSendManual;
  end;

procedure TFormAnsSensor.LoadListGroup;
  var i : integer;
  begin
    ListGroup.Items.Clear;
    i := 1;
    while i <= CNT_LIST do
      begin
        ListGroup.Items.Add(ListCmdAnsCfg[i].ListName);
        inc(i);
      end;
    ListGroup.Visible := true;
    lstCSUM.Visible   := False;
    grp3.Visible := True;
  end;

procedure TFormAnsSensor.Edit65DblClick(Sender: TObject);
  begin
    LoadListGroup;
  end;

procedure TFormAnsSensor.ListGroupExit(Sender: TObject);
begin
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
  grp3.Visible := True;
end;

procedure TFormAnsSensor.Button34Click(Sender: TObject);
begin
  LoadListGroup;
  ListGroup.ItemIndex := 0;
//  ListGroup.Visible := True;
  ActiveControl := ListGroup;
  lstCSUM.Visible   := False;
  grp3.Visible := True;
end;

procedure TFormAnsSensor.ListGroupDblClick(Sender: TObject);
begin
  CurNumListCmd := ListGroup.ItemIndex + 1;
  LoadListCmd(CurNumListCmd);
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
  grp3.Visible := True;
  ActiveControl := Edit65;
end;

procedure TFormAnsSensor.FormClick(Sender: TObject);
begin
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
  grp3.Visible := True;
end;

procedure TFormAnsSensor.GroupBox17Click(Sender: TObject);
begin
ListGroup.Visible := false;
lstCSUM.Visible   := False;
grp3.Visible := True;
end;

procedure TFormAnsSensor.GroupBox37Click(Sender: TObject);
begin
ListGroup.Visible := false;
lstCSUM.Visible   := False;
grp3.Visible := True;
end;

procedure TFormAnsSensor.GroupBox35Click(Sender: TObject);
begin
ListGroup.Visible := false;
lstCSUM.Visible   := False;
grp3.Visible := True;
end;

procedure TFormAnsSensor.EditAnsExit(Sender: TObject);
  var
    TmpStr : string;
    numAns : integer;
  begin
    TmpStr := (Sender as TEdit).Text;
    numAns := (Sender as TEdit).Tag;
    if isEnSaveRAM then ListCmdAnsCfg[CurNumListCmd].StrAns[NumLoadAnsCmd, numAns] := TmpStr;
    (Sender as TEdit).Font.Style := [];
  end;

procedure TFormAnsSensor.EditAnsTailExit(Sender: TObject);
  var
    TmpStr : string;
    numAns : integer;
  begin
    TmpStr := (Sender as TEdit).Text;
    numAns := (Sender as TEdit).Tag;
    if Length(TmpStr) < LEN_TAIL then
      begin
        if isEnSaveRAM then ListCmdAnsCfg[CurNumListCmd].StrAnsTail[NumLoadAnsCmd, numAns] := TmpStr;
      end
    else
      begin
        (Sender as TEdit).Color := clRed;
      end;
    (Sender as TEdit).Font.Style := [];
  end;

procedure TFormAnsSensor.Edit65Click(Sender: TObject);
begin
  (Sender as TEdit).Color := clWindow;
   ListGroup.Visible := false;
   lstCSUM.Visible   := False;
   grp3.Visible := True;
end;

procedure TFormAnsSensor.EditAnsTailClick(Sender: TObject);
begin
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
  grp3.Visible := True;
  (Sender as TEdit).Color := clWindow;
end;

procedure TFormAnsSensor.NulBTClick(Sender: TObject);
  var
    list, ans : Integer;
begin
 ListGroup.Visible := false;
 lstCSUM.Visible   := False;
 grp3.Visible := True;
  for list := 1 to CNT_LIST do
    begin
      StatCntRead[list] := 0;
      for ans := 1 to CNT_ANS do
        begin
          StatCntSend[list][ans] := 0;
        end;
    end;
   ReadLvl.Caption := 'Read : 0';
   SendLvl.Caption := 'Send : 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0';
end;

procedure TFormAnsSensor.ClrNoUseBTClick(Sender: TObject);
  var
    cmd, ans : integer;

begin
   ListGroup.Visible := false;
   lstCSUM.Visible   := False;
   grp3.Visible := True;
  ListCmdAnsCfgFRest := ListCmdAnsCfg[CurNumListCmd];
  numListBuf         := CurNumListCmd;
  RestListBT.Enabled := true;
  ListCmdAnsCfg[CurNumListCmd].ListName := 'CLEARED ' + IntToStr(CurNumListCmd);
  for cmd := 1 to CNT_CMD do
    begin
      FillChar(ListCmdAnsCfg[CurNumListCmd].StrCmd, LEN_STR, 0);
      ListCmdAnsCfg[CurNumListCmd].StrCmdLen[cmd]     := 0;
      ListCmdAnsCfg[CurNumListCmd].StrCmdHint[cmd]    := '';
      ListCmdAnsCfg[CurNumListCmd].StrCmdModeHex[cmd] := false;
      ListCmdAnsCfg[CurNumListCmd].StrCmdActiv[cmd]   := false;
      ListCmdAnsCfg[CurNumListCmd].isModeAuto         := false;
      ListCmdAnsCfg[CurNumListCmd].isModeManual       := true;
      ListCmdAnsCfg[CurNumListCmd].StrCmdReserv[cmd]  := '';
      ListCmdAnsCfg[CurNumListCmd].IsCmdReserv[cmd]   := false;
      ListCmdAnsCfg[CurNumListCmd].CntCmdReserv[cmd]  := 0;
      ListCmdAnsCfg[CurNumListCmd].TimeAnsMin         := 0;
      ListCmdAnsCfg[CurNumListCmd].TimeAnsMax         := 0;
      for ans := 1 to CNT_ANS do
        begin
          ListCmdAnsCfg[CurNumListCmd].StrAns[cmd, ans] := '';
          ListCmdAnsCfg[CurNumListCmd].StrAnsHint[cmd, ans] := '';
          ListCmdAnsCfg[CurNumListCmd].StrAnsTail[cmd, ans] := '$0D';
          ListCmdAnsCfg[CurNumListCmd].StrAnsModeHex[cmd, ans] := false;
          ListCmdAnsCfg[CurNumListCmd].StrAnsActiv[cmd, ans] := false;
          ListCmdAnsCfg[CurNumListCmd].StrAnsReserv[cmd, ans] := '';
          ListCmdAnsCfg[CurNumListCmd].IsAnsReserv[cmd, ans] := false;
          ListCmdAnsCfg[CurNumListCmd].CntAnsReserv[cmd, ans] := 0;
        end;
    end;
  LoadListCmd(CurNumListCmd);
end;

procedure TFormAnsSensor.ClearNUseBTClick(Sender: TObject);
  var
    cmd, ans : integer;

begin
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
  grp3.Visible := True;
  ListCmdAnsCfgFRest := ListCmdAnsCfg[CurNumListCmd];
  numListBuf         := CurNumListCmd;
  RestListBT.Enabled := true;
  for cmd := 1 to CNT_CMD do
    begin
      if not ListCmdAnsCfg[CurNumListCmd].StrCmdActiv[cmd] then
        begin
          FillChar(ListCmdAnsCfg[CurNumListCmd].StrCmd[cmd], LEN_STR, 0);
          ListCmdAnsCfg[CurNumListCmd].StrCmdLen[cmd]     := 0;
          ListCmdAnsCfg[CurNumListCmd].StrCmdHint[cmd]    := '';
          ListCmdAnsCfg[CurNumListCmd].StrCmdModeHex[cmd] := false;
          ListCmdAnsCfg[CurNumListCmd].isModeAuto         := false;
          ListCmdAnsCfg[CurNumListCmd].isModeManual       := true;
          ListCmdAnsCfg[CurNumListCmd].StrCmdReserv[cmd]  := '';
          ListCmdAnsCfg[CurNumListCmd].IsCmdReserv[cmd]   := false;
          ListCmdAnsCfg[CurNumListCmd].CntCmdReserv[cmd]  := 0;
          ListCmdAnsCfg[CurNumListCmd].TimeAnsMin         := 0;
          ListCmdAnsCfg[CurNumListCmd].TimeAnsMax         := 0;
        end;
    end;
  LoadListCmd(CurNumListCmd);
end;

procedure TFormAnsSensor.ClrNoUseAnsBTClick(Sender: TObject);
  var
    cmd, ans : integer;
begin
 ListGroup.Visible := false;
 lstCSUM.Visible   := False;
 grp3.Visible := True;
  ListCmdAnsCfgFRest := ListCmdAnsCfg[CurNumListCmd];
  numListBuf         := CurNumListCmd;
  RestListBT.Enabled := true;

  for cmd := 1 to CNT_CMD do
    begin
      for ans := 1 to CNT_ANS do
        begin
          if not ListCmdAnsCfg[CurNumListCmd].StrAnsActiv[cmd, ans] then
            begin
              ListCmdAnsCfg[CurNumListCmd].StrAns[cmd, ans] := '';
              ListCmdAnsCfg[CurNumListCmd].StrAnsHint[cmd, ans] := '';
              ListCmdAnsCfg[CurNumListCmd].StrAnsTail[cmd, ans] := '$0D';
              ListCmdAnsCfg[CurNumListCmd].StrAnsModeHex[cmd, ans] := false;
              ListCmdAnsCfg[CurNumListCmd].StrAnsReserv[cmd, ans] := '';
              ListCmdAnsCfg[CurNumListCmd].IsAnsReserv[cmd, ans] := false;
              ListCmdAnsCfg[CurNumListCmd].CntAnsReserv[cmd, ans] := 0;
            end;
        end;
    end;
  LoadListCmd(CurNumListCmd);
end;

procedure TFormAnsSensor.RestListBTClick(Sender: TObject);
begin
 ListGroup.Visible := false;
 lstCSUM.Visible   := False;
 grp3.Visible := True;
  if CurNumListCmd = numListBuf then
    ListCmdAnsCfg[CurNumListCmd] := ListCmdAnsCfgFRest;
  LoadListCmd(CurNumListCmd);
  (Sender as TButton).Enabled := false;
end;

procedure TFormAnsSensor.CopyCurListClick(Sender: TObject);
begin
 ListGroup.Visible := false;
 lstCSUM.Visible   := False;
 grp3.Visible := True;
  ListCmdAnsCfgFBuf := ListCmdAnsCfg[CurNumListCmd];
  PasteListBt.Enabled := true;
end;

procedure TFormAnsSensor.PasteListBTClick(Sender: TObject);
begin
 ListGroup.Visible := false;
 lstCSUM.Visible   := False;
 grp3.Visible := True;
  ListCmdAnsCfg[CurNumListCmd] := ListCmdAnsCfgFBuf;
  LoadListCmd(CurNumListCmd);
end;

procedure TFormAnsSensor.EditCmdChange(Sender: TObject);
var
  TmpStr : string;
  TmpLen : integer;
  numCmd : integer;
begin
  TmpStr := (Sender as TEdit).Text;
  numCmd := (Sender as TEdit).Tag;
  if Length(TmpStr) < LEN_STR then
    begin
      SaveCmd(TmpStr, numCmd);
    end
  else
    begin
     (Sender as TEdit).Color := clRed;
    end;
end;


procedure TFormAnsSensor.EditAnsChange(Sender: TObject);
var
  TmpStr : string;
  TmpLen : integer;
  numAns : integer;

begin
  numAns := (Sender as TEdit).Tag;
  TmpStr := (Sender as TEdit).Text;
  TmpLen := Length(TmpStr);
  numAns := (Sender as TEdit).Tag;
  if TmpLen < LEN_STR then
    begin
      if isEnSaveRAM then ListCmdAnsCfg[CurNumListCmd].StrAns[NumLoadAnsCmd, numAns] := TmpStr;
    end
  else
    begin
      (Sender as TEdit).Color := clRed;
    end;
end;


procedure TFormAnsSensor.EditAnsTailChange(Sender: TObject);
var
  TmpStr : string;
  TmpLen : integer;
  numAns : integer;

begin
  numAns := (Sender as TEdit).Tag;
  TmpStr := (Sender as TEdit).Text;
  TmpLen := Length(TmpStr);
  numAns := (Sender as TEdit).Tag;
  if TmpLen < LEN_TAIL then
    begin
      if isEnSaveRAM then ListCmdAnsCfg[CurNumListCmd].StrAnsTail[NumLoadAnsCmd, numAns] := TmpStr;
    end
  else
    begin
     (Sender as TEdit).Color := clRed;
    end;
end;

procedure TFormAnsSensor.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
var
  partDelta : integer;
  i, j         : integer;
begin

  deltaWidth       := FormAnsSensor.Width - StartWidth;
  partDelta        := Trunc(deltaWidth/2);

  Button34.Left    := StartLeftDown + deltaWidth;

  Button35.Left    := StartLeftLeft + deltaWidth;
  Button36.Left    := StartLeftRight+ deltaWidth;
  Edit65.Width     := WidthEditName + deltaWidth;
  ListGroup.Width  := WidthListName + deltaWidth;



  Button33.Left    := StartLeftStart   + deltaWidth;
  NulBT.Left       := StartLeftResStat + deltaWidth;
  StatPanel.Width  := StartWidthStat   + deltaWidth;

  GroupBox33.Width := WidthBoxCmd     + partDelta;
  GroupBox17.Width := WidthBoxAns     + partDelta;
  GroupBox17.Left  := StartLeftBoxAns + partDelta;

  NameCfg.Width    := StartWidthNCfg  + deltaWidth;
  req3.Width       := StartWidthInStr + deltaWidth;
  grp3.Width       := StartWidthReplGrp + deltaWidth;
  grp5.Left        := StartLeftGrpActsTemp + deltaWidth;
  grp4.Width       := StartWidthReplace + deltaWidth;


  lbl1.Left        := 80;
  lbl2.Left        := 80;
  lbl3.Left        := Edit49.Left + 20;

  for i := 1 to CNT_CMD do
    begin
      ItemCmd[i].ECmd.Width      := StartWidthEdtCmd   + partDelta;
      ItemCmd[i].BTOpenList.Left := StartLeftBtShow    + partDelta;
    end;
  PointList.Left := StartLeftPointList + partDelta;

  for i := 1 to CNT_ANS do
    begin
      ItemAns[i].EAns.Width  := StartWidthEdtAns + partDelta;
      ItemAns[i].ETail.Left  := ItemAns[i].EAns.Left + ItemAns[i].EAns.Width - 1;
      ItemAns[i].BTSend.Left := ItemAns[i].ETail.Left + ItemAns[i].ETail.Width + 3;
    end;


  lstCSUM.Left := GroupBox17.Left + Edit49.Left;

  deltaWidth := Round(deltaWidth/10);

  for i := 1 to CNT_TEMPLATE_REP_ANS  do
    for j := 2 to CNT_REPLACE_ANS do
      begin
        ReplaceAnsGUI.ChUseReplAns[i, j].Left := ChUseReplAnsStartLeft[i, j] + deltaWidth * (j - 1);
        ReplaceAnsGUI.EdtReplAns[i, j].Left   := EdtReplAnsStartLeft[i, j] + deltaWidth * (j - 1);
      end;

  for i := 1 to CNT_TEMPLATE_REP_ANS  do
    for j := 1 to CNT_REPLACE_ANS do
      begin
        ReplaceAnsGUI.EdtReplAns[i, j].Width  := EdtReplAnsWidth[i, j] + deltaWidth;
      end;

end;

procedure TFormAnsSensor.TimerDeltaWidthTimer(Sender: TObject);
  var
    i : integer;
    partDelta : integer;
begin
  
end;

procedure TFormAnsSensor.CtrlWidth(Sender: TObject);
  var
    i : integer;
    partDelta : integer;
begin
  if OldPosPrWidth <> PrWidth.Position then
  begin
  GroupBox33.Visible := false;
  GroupBox17.Visible := false;
  partDelta          := PrWidth.Position - OldPosPrWidth;
  OldPosPrWidth      := PrWidth.Position;

  WidthBoxCmd        := WidthBoxCmd + partDelta;

  WidthBoxAns        := WidthBoxAns     - partDelta;
  StartLeftBoxAns    := StartLeftBoxAns + partDelta;

  StartWidthEdtCmd   := StartWidthEdtCmd + partDelta;
  StartLeftBtShow    := StartLeftBtShow  + partDelta;
  StartLeftPointList := StartLeftPointList + partDelta;

  StartWidthEdtAns   := StartWidthEdtAns - partDelta;


  GroupBox33.Width := WidthBoxCmd;
  GroupBox17.Width := WidthBoxAns;
  GroupBox17.Left  := StartLeftBoxAns;

  for i := 1 to CNT_CMD do
    begin
      ItemCmd[i].ECmd.Width      := StartWidthEdtCmd;
      ItemCmd[i].BTOpenList.Left := StartLeftBtShow;
    end;
  PointList.Left := StartLeftPointList;

  for i := 1 to CNT_ANS do
    begin
      ItemAns[i].EAns.Width  := StartWidthEdtAns;
      ItemAns[i].ETail.Left  := ItemAns[i].EAns.Left + ItemAns[i].EAns.Width - 1;
      ItemAns[i].BTSend.Left := ItemAns[i].ETail.Left + ItemAns[i].ETail.Width + 3;
    end;

  lbl1.Left        := 80;
  lbl2.Left        := 80;
  lbl3.Left        := Edit49.Left + 20;
  
  GroupBox33.Visible := true;
  GroupBox17.Visible := true;
  end;
  Timer1.Enabled := false;
end;

procedure TFormAnsSensor.PrWidthChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  Timer1.Enabled := true;
   ListGroup.Visible := false;
   lstCSUM.Visible   := False;
   grp3.Visible := True;
end;

procedure TFormAnsSensor.Button41Click(Sender: TObject);
begin

  PrWidth.Position := 0;
  Timer1.Enabled := true;
end;

procedure TFormAnsSensor.OpenBTClick(Sender: TObject);
var
  NumList    : integer;
  isResetCfg : boolean;
begin
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
  grp3.Visible := True;
  isResetCfg := false;
  OpenCfg.InitialDir := TerminalST.CfgTerminal.CmdDir;
  OpenCfg.Title := 'Opening a configuration file';

  if OpenCfg.Execute then
    begin
      NameCfg.Caption := OpenCfg.FileName;
      AssignFile(ConfigFile, OpenCfg.FileName);
      if FileExists(OpenCfg.FileName) then
        begin
          Reset(ConfigFile);
          NumList := 1;
          while (NumList <= CNT_LIST) and (not isResetCfg) do
            begin
              if not eof(ConfigFile) then
                begin
                  Read(ConfigFile, ListCmdAnsCfg[NumList]);
                end
              else
                isResetCfg := true;
              inc(NumList);
            end;
          CloseFile(ConfigFile);
        end;
     CurNumListCmd := 1;
     LoadListCmd(CurNumListCmd);

    end;
end;

procedure TFormAnsSensor.SaveBTClick(Sender: TObject);
var
  NumList : integer;
  Name    : string;
begin
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
  grp3.Visible := True;
  SaveCfg.InitialDir := TerminalST.CfgTerminal.CmdDir;
  SaveCfg.Title := 'Saving the configuration file';



  if SaveCfg.Execute then
    begin
      if Pos('.ecfg', SaveCfg.FileName) = 0 then
        Name := SaveCfg.FileName + '.ecfg'
      else
        Name := SaveCfg.FileName;

      AssignFile(ConfigFile, Name);
      if not FileExists(Name) then
        begin
          Rewrite(ConfigFile);
        end;

      Reset(ConfigFile);
      for NumList := 1 to CNT_LIST do
        begin
          Write(ConfigFile, ListCmdAnsCfg[NumList]);
        end;
      CloseFile(ConfigFile);
    end;
end;


procedure TFormAnsSensor.GroupBox33Click(Sender: TObject);
begin
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
  grp3.Visible := True;
end;

procedure TFormAnsSensor.StatPanelClick(Sender: TObject);
begin
 ListGroup.Visible := false;
 lstCSUM.Visible   := False;
 grp3.Visible := True;
end;

procedure TFormAnsSensor.NameCfgClick(Sender: TObject);
begin
 ListGroup.Visible := false;
 lstCSUM.Visible   := False;
 grp3.Visible := True;
end;

procedure TFormAnsSensor.Edit65KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    begin
      ListGroup.Visible := true;
      lstCSUM.Visible   := False;
      grp3.Visible := True;
      LoadListGroup;
      ActiveControl := ListGroup;
    end;
end;

procedure TFormAnsSensor.ListGroupKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and ((Sender as TListBox).ItemIndex > -1) then
    begin
      CurNumListCmd := ListGroup.ItemIndex + 1;
      LoadListCmd(CurNumListCmd);
      ListGroup.Visible := false;
      lstCSUM.Visible   := False;
      grp3.Visible := True;
      ActiveControl := Edit65;
    end;

  if Key = #27 then
    begin
      ListGroup.Visible := false;
      lstCSUM.Visible   := False;
      grp3.Visible := True;
      ActiveControl := Edit65;
    end;
end;

procedure TFormAnsSensor.EditCSUMKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var NumCmd : Integer;
  begin
    if Key = VK_DOWN then
      begin
        NumCmd := (Sender as TEdit).Tag;
        lstCSUM.ItemIndex := 0;
        lstCSUM.Top     := (Sender as TEdit).Top  + (Sender as TEdit).Height + GroupBox17.Top;
        lstCSUM.Left    := (Sender as TEdit).Left + GroupBox17.Left;
        lstCSUM.Visible := True;
        //grp3.Visible    := false;
        ActiveControl   := lstCSUM;
        ActualTailCmd   := NumCmd;
        ItemAns[NumCmd].ETail.ShowHint := False;
      end;
  end;

procedure TFormAnsSensor.lstCSUMKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and ((Sender as TListBox).ItemIndex > -1) then
    begin
      if ActualTailCmd > 0 then
        begin
          ItemAns[ActualTailCmd].ETail.Text := lstCSUM.Items[lstCSUM.ItemIndex];
          lstCSUM.Visible := false;
          grp3.Visible := True;
          ActiveControl := ItemAns[ActualTailCmd].ETail;
        end;


    end;

  if Key = #27 then
    begin
      lstCSUM.Visible := false;
      grp3.Visible := True;
      if ActualTailCmd > 0 then
        begin
          ActiveControl := ItemAns[ActualTailCmd].ETail;
        end;
    end;
end;

procedure TFormAnsSensor.EditCsumDblClick(Sender: TObject);
  var
  NumCmd : Integer;
  i      : integer;
begin
  NumCmd := (Sender as TEdit).Tag;
  lstCSUM.ItemIndex := 0;
  lstCSUM.Top       := (Sender as TEdit).Top  + (Sender as TEdit).Height + GroupBox17.Top;
  lstCSUM.Left      := (Sender as TEdit).Left + GroupBox17.Left;
  lstCSUM.Visible   := True;
  //grp3.Visible := False;
  ActiveControl     := lstCSUM;
  ActualTailCmd     := NumCmd;
  ItemAns[NumCmd].ETail.ShowHint := False;
end;

procedure TFormAnsSensor.BtCopyAnsListClick(Sender: TObject);
var
  i : Integer;
begin
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
  grp3.Visible := True;
  for i := 1 to CNT_ANS do
    begin
      BufAnsIsAct[i] := ListCmdAnsCfg[CurNumListCmd].StrAnsActiv[NumLoadAnsCmd, i];
      BufAnsStr[i]   := ListCmdAnsCfg[CurNumListCmd].StrAns[NumLoadAnsCmd, i];
      BufAnsHint[i]  := ListCmdAnsCfg[CurNumListCmd].StrAnsHint[NumLoadAnsCmd, i];
      BufAnsTail[i]  := ListCmdAnsCfg[CurNumListCmd].StrAnsTail[NumLoadAnsCmd, i];
      BufAnsIsHex[i] := ListCmdAnsCfg[CurNumListCmd].StrAnsModeHex[NumLoadAnsCmd, i];
    end;

  BtPasteAnsList.Enabled := True;  
end;

procedure TFormAnsSensor.BtPasteAnsListClick(Sender: TObject);
var
  i : Integer;
begin
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
  grp3.Visible := True;
  for i := 1 to CNT_ANS do
    begin
      ListCmdAnsCfg[CurNumListCmd].StrAnsActiv[NumLoadAnsCmd, i]   := BufAnsIsAct[i];
      ListCmdAnsCfg[CurNumListCmd].StrAns[NumLoadAnsCmd, i]        := BufAnsStr[i];
      ListCmdAnsCfg[CurNumListCmd].StrAnsHint[NumLoadAnsCmd, i]    := BufAnsHint[i];
      ListCmdAnsCfg[CurNumListCmd].StrAnsTail[NumLoadAnsCmd, i]    := BufAnsTail[i];
      ListCmdAnsCfg[CurNumListCmd].StrAnsModeHex[NumLoadAnsCmd, i] := BufAnsIsHex[i];
    end;
  LoadListAns(CurNumListCmd, NumLoadAnsCmd);
end;

procedure TFormAnsSensor.BtOpenListKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
var
  NumBtFocus : integer;
begin
  if Key = VK_SHIFT then
    begin
      if (Sender as TButton).Tag > 1 then
        NumBtFocus := (Sender as TButton).Tag - 1
      else
        NumBtFocus := 16;
      ItemCmd[NumBtFocus].BTOpenList.SetFocus;
    end;
  if Key = VK_CONTROL then
    begin
      if (Sender as TButton).Tag < 16 then
        NumBtFocus := (Sender as TButton).Tag + 1
      else
        NumBtFocus := 1;
      ItemCmd[NumBtFocus].BTOpenList.SetFocus;
    end;
end;



procedure TFormAnsSensor.PointListMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ItemCmd[PointList.Tag].BTOpenList.SetFocus;
end;

procedure TFormAnsSensor.EditAnsDblClick(Sender: TObject);
var
  str : string;
begin
  if dlgSendFile.Execute then
    begin
      str := '[sendfile:]' + dlgSendFile.FileName;
      if Length(str) < LEN_STR then
        begin
          (Sender as TEdit).Text := str;
          ItemAns[(Sender as TEdit).Tag].ETail.Text := '';
        end
      else
        ShowMessage('Command length must be less than 255 characters');  
    end;

end;

procedure TFormAnsSensor.edtDelayKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;



procedure TFormAnsSensor.ud1Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
    begin
      if ListCmdAnsCfg[CurNumListCmd].DelayMin < 10000 then
        begin
          if ListCmdAnsCfg[CurNumListCmd].DelayMin < 50 then
            Inc(ListCmdAnsCfg[CurNumListCmd].DelayMin)
          else if ListCmdAnsCfg[CurNumListCmd].DelayMin < 500 then
            ListCmdAnsCfg[CurNumListCmd].DelayMin := ListCmdAnsCfg[CurNumListCmd].DelayMin + 10
          else if ListCmdAnsCfg[CurNumListCmd].DelayMin < 5000 then
            ListCmdAnsCfg[CurNumListCmd].DelayMin := ListCmdAnsCfg[CurNumListCmd].DelayMin + 100
          else if ListCmdAnsCfg[CurNumListCmd].DelayMin < 10000 then
            ListCmdAnsCfg[CurNumListCmd].DelayMin := ListCmdAnsCfg[CurNumListCmd].DelayMin + 200
          else
            ListCmdAnsCfg[CurNumListCmd].DelayMin := 10000;
        end;
      if ListCmdAnsCfg[CurNumListCmd].DelayMin > 10000 then
        ListCmdAnsCfg[CurNumListCmd].DelayMin := 10000;
    end;

  if Button = btPrev then
    begin
      if ListCmdAnsCfg[CurNumListCmd].DelayMin > 0 then
        begin
          if ListCmdAnsCfg[CurNumListCmd].DelayMin < 50 then
            Dec(ListCmdAnsCfg[CurNumListCmd].DelayMin)
          else if ListCmdAnsCfg[CurNumListCmd].DelayMin < 500 then
            ListCmdAnsCfg[CurNumListCmd].DelayMin := ListCmdAnsCfg[CurNumListCmd].DelayMin - 10
          else if ListCmdAnsCfg[CurNumListCmd].DelayMin < 5000 then
            ListCmdAnsCfg[CurNumListCmd].DelayMin := ListCmdAnsCfg[CurNumListCmd].DelayMin - 100
          else if ListCmdAnsCfg[CurNumListCmd].DelayMin <= 10000 then
            ListCmdAnsCfg[CurNumListCmd].DelayMin := ListCmdAnsCfg[CurNumListCmd].DelayMin - 200
          else
            ListCmdAnsCfg[CurNumListCmd].DelayMin := 10000;
        end;
      if ListCmdAnsCfg[CurNumListCmd].DelayMin < 0 then
        ListCmdAnsCfg[CurNumListCmd].DelayMin := 0;
    end;

  if ListCmdAnsCfg[CurNumListCmd].DelayMin >= ListCmdAnsCfg[CurNumListCmd].DelayMax then
    ListCmdAnsCfg[CurNumListCmd].DelayMax := ListCmdAnsCfg[CurNumListCmd].DelayMin;

  DelayMin := ListCmdAnsCfg[CurNumListCmd].DelayMin;
  req1.Caption := IntToStr(DelayMin);

  DelayMax := ListCmdAnsCfg[CurNumListCmd].DelayMax;
  req2.Caption := IntToStr(DelayMax);
end;

procedure TFormAnsSensor.ud2Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
    begin
      if ListCmdAnsCfg[CurNumListCmd].DelayMax < 10000 then
        begin
          if ListCmdAnsCfg[CurNumListCmd].DelayMax < 50 then
            Inc(ListCmdAnsCfg[CurNumListCmd].DelayMax)
          else if ListCmdAnsCfg[CurNumListCmd].DelayMax < 500 then
            ListCmdAnsCfg[CurNumListCmd].DelayMax := ListCmdAnsCfg[CurNumListCmd].DelayMax + 10
          else if ListCmdAnsCfg[CurNumListCmd].DelayMax < 5000 then
            ListCmdAnsCfg[CurNumListCmd].DelayMax := ListCmdAnsCfg[CurNumListCmd].DelayMax + 100
          else if ListCmdAnsCfg[CurNumListCmd].DelayMin < 10000 then
            ListCmdAnsCfg[CurNumListCmd].DelayMax := ListCmdAnsCfg[CurNumListCmd].DelayMax + 200
          else
            ListCmdAnsCfg[CurNumListCmd].DelayMax := 10000;
        end;
      if ListCmdAnsCfg[CurNumListCmd].DelayMax >= 10000 then
        ListCmdAnsCfg[CurNumListCmd].DelayMax := 10000;
    end;

  if Button = btPrev then
    begin
      if ListCmdAnsCfg[CurNumListCmd].DelayMax > 0 then
        begin
          if ListCmdAnsCfg[CurNumListCmd].DelayMax < 50 then
            Dec(ListCmdAnsCfg[CurNumListCmd].DelayMax)
          else if ListCmdAnsCfg[CurNumListCmd].DelayMax < 500 then
            ListCmdAnsCfg[CurNumListCmd].DelayMax := ListCmdAnsCfg[CurNumListCmd].DelayMax - 10
          else if ListCmdAnsCfg[CurNumListCmd].DelayMax < 5000 then
            ListCmdAnsCfg[CurNumListCmd].DelayMax := ListCmdAnsCfg[CurNumListCmd].DelayMax - 100
          else if ListCmdAnsCfg[CurNumListCmd].DelayMax <= 10000 then
            ListCmdAnsCfg[CurNumListCmd].DelayMax := ListCmdAnsCfg[CurNumListCmd].DelayMax - 200
          else
            ListCmdAnsCfg[CurNumListCmd].DelayMax := 10000;
        end;
      if ListCmdAnsCfg[CurNumListCmd].DelayMax < 0 then
        ListCmdAnsCfg[CurNumListCmd].DelayMax := 0;
    end;

  if ListCmdAnsCfg[CurNumListCmd].DelayMax <= ListCmdAnsCfg[CurNumListCmd].DelayMin then
    ListCmdAnsCfg[CurNumListCmd].DelayMin := ListCmdAnsCfg[CurNumListCmd].DelayMax;

  DelayMin := ListCmdAnsCfg[CurNumListCmd].DelayMin;
  req1.Caption := IntToStr(DelayMin);

  DelayMax := ListCmdAnsCfg[CurNumListCmd].DelayMax;
  req2.Caption := IntToStr(DelayMax);

end;

procedure TFormAnsSensor.Bt1Click(Sender: TObject);
begin
  ListCmdAnsCfg[CurNumListCmd].DelayMin := 0;
  DelayMin := ListCmdAnsCfg[CurNumListCmd].DelayMin;
  req1.Caption := IntToStr(DelayMin);
  ud1.Position := 0;


  ListCmdAnsCfg[CurNumListCmd].DelayMax := 0;
  DelayMax := ListCmdAnsCfg[CurNumListCmd].DelayMax;
  req2.Caption := IntToStr(DelayMax);
  ud2.Position := 0;

end;

procedure TFormAnsSensor.CheckBoxReplaceAnsClick(Sender: TObject);
var
  indexY, indexX : Integer;
begin
  //IntToStr(ReplaceAnsGUI.EdtReplAns[i, j].Tag shr 8) + '_' + IntToStr(ReplaceAnsGUI.EdtReplAns[i, j].Tag and $FF);
  indexY := ((Sender as TCheckBox).Tag shr 8) and $FF;
  indexX := (Sender as TCheckBox).Tag and $FF;
  ReplaceAns.ItemRep[CurNumListCmd].isUseReplaceAnc[indexY, indexX] := (Sender as TCheckBox).Checked;

  if ReplaceAns.ItemRep[CurNumListCmd].isUseReplaceAnc[indexY, indexX] then
    ReplaceAnsGUI.EdtReplAns[indexY, indexX].Color := clLime
  else
    ReplaceAnsGUI.EdtReplAns[indexY, indexX].Color := clWindow;
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
end;

procedure TFormAnsSensor.EdtReplaceAnsChange(Sender: TObject);
var
  indexY, indexX : Integer;
  teststr : string;
begin
  indexY := ((Sender as TEdit).Tag shr 8) and $FF;
  indexX := (Sender as TEdit).Tag and $FF;
  ReplaceAns.ItemRep[CurNumListCmd].ReplaceAns[indexY, indexX] := (Sender as TEdit).Text;
  ReplaceAnsGUI.EdtReplAns[indexY, indexX].Hint := (Sender as TEdit).Text;
  teststr := (Sender as TEdit).Text;

  if ReplaceAnsGUI.ChUseReplAns[indexY, indexX].Checked then
    (Sender as TEdit).Color := clLime
  else
    (Sender as TEdit).Color := clWindow;



  if teststr <> '' then
    if Length(teststr) mod 3 = 0 then
      if teststr[1] = '$' then
        if AnsiPos('$00', teststr) > 0 then
          (Sender as TEdit).Color := clYellow;

  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
end;

procedure TFormAnsSensor.CheckBoxTemplateAnsClick(Sender: TObject);
var
  index : Integer;
begin
  index := (Sender as TCheckBox).Tag;
  ReplaceAns.isUseTemPlate[index, CurNumListCmd] := (Sender as TCheckBox).Checked;

  if ReplaceAns.isUseTemPlate[index, CurNumListCmd] then
    ReplaceAnsGUI.EdtTMPLAns[index].Color := clLime
  else
    ReplaceAnsGUI.EdtTMPLAns[index].Color := clWindow;
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
end;

procedure TFormAnsSensor.EdtTemplateAnsChange(Sender: TObject);
var
  index : Integer;
begin
  index := (Sender as TEdit).Tag;
  ReplaceAns.TemplateRepAns[index, CurNumListCmd] := (Sender as TEdit).Text;
  ReplaceAnsGUI.EdtTMPLAns[index].Hint := (Sender as TEdit).Text;
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
end;



procedure TFormAnsSensor.Bt2Click(Sender: TObject);
  var
    i, j : Integer;
  begin
    For i := 1 to CNT_TEMPLATE_REP_ANS do
      begin
        ReplaceAns.isUseTemPlate[i, CurNumListCmd] := false;
        //ReplaceAns.TemplateRepAns[i, CurNumListCmd] := '';

        for j := 1 to CNT_REPLACE_ANS do
          begin
            ReplaceAns.ItemRep[CurNumListCmd].isUseReplaceAnc[i, j] := false;
            //ReplaceAns.ItemRep[CurNumListCmd].ReplaceAns[i, j] := '';
          end;
      end;
    UpdateListReplace(CurNumListCmd);
    ListGroup.Visible := false;
    lstCSUM.Visible   := False;
  end;

procedure TFormAnsSensor.btnBt3Click(Sender: TObject);
  var
    i, j : Integer;
  begin
    For i := 1 to CNT_TEMPLATE_REP_ANS do
      begin
        ReplaceAns.isUseTemPlate[i, CurNumListCmd] := false;
        ReplaceAns.TemplateRepAns[i, CurNumListCmd] := '';

        for j := 1 to CNT_REPLACE_ANS do
          begin
            ReplaceAns.ItemRep[CurNumListCmd].isUseReplaceAnc[i, j] := false;
            ReplaceAns.ItemRep[CurNumListCmd].ReplaceAns[i, j] := '';
          end;
      end;
    UpdateListReplace(CurNumListCmd);
    ListGroup.Visible := false;
    lstCSUM.Visible   := False;
  end;


procedure TFormAnsSensor.tmr1Timer(Sender: TObject);
begin
  //req3.Color := FormAnsSensor.Color;
  req4.Color := FormAnsSensor.Color;
  (Sender as TTimer).Enabled := False;
end;

procedure TFormAnsSensor.lstCSUMExit(Sender: TObject);
begin
  lstCSUM.Visible := False;
end;

procedure TFormAnsSensor.Bt4Click(Sender: TObject);
var
  i: integer;
begin
  ItemRepBuf := ReplaceAns.ItemRep[CurNumListCmd];

  for i := 1 to CNT_TEMPLATE_REP_ANS do
    begin
      TemplateRepAnsBuf[i] := ReplaceAns.TemplateRepAns[i,CurNumListCmd];
      isUseTemPlateBuf[i]  := ReplaceAns.isUseTemPlate[i,CurNumListCmd];
    end;

  btnPasteListRep.Enabled := True;
end;

procedure TFormAnsSensor.btnPasteListRepClick(Sender: TObject);
var i: Integer;
begin
  ReplaceAns.ItemRep[CurNumListCmd] := ItemRepBuf;
  for i := 1 to CNT_TEMPLATE_REP_ANS do
    begin
      ReplaceAns.TemplateRepAns[i,CurNumListCmd] := TemplateRepAnsBuf[i];
      ReplaceAns.isUseTemPlate[i,CurNumListCmd] := isUseTemPlateBuf[i];
    end;

  UpdateListReplace(CurNumListCmd);
  ListGroup.Visible := false;
  lstCSUM.Visible   := False;
end;

procedure TFormAnsSensor.btnBt6Click(Sender: TObject);
  var
    i, j : Integer;
  begin
    For i := 1 to CNT_TEMPLATE_REP_ANS do
      begin
        ReplaceAns.isUseTemPlate[i, CurNumListCmd] := ReplaceAns.TemplateRepAns[i, CurNumListCmd] <> '';

        for j := 1 to CNT_REPLACE_ANS do
          begin
            ReplaceAns.ItemRep[CurNumListCmd].isUseReplaceAnc[i, j] := ReplaceAns.ItemRep[CurNumListCmd].ReplaceAns[i, j] <> '';
          end;
      end;
    UpdateListReplace(CurNumListCmd);
    ListGroup.Visible := false;
    lstCSUM.Visible   := False;
  end;

procedure TFormAnsSensor.FormActivate(Sender: TObject);
begin
  if GroupBox17.Color > $202020 then
    begin
      GroupBox17.Color := FormAnsSensor.Color - $101010;
      grp3.Color := FormAnsSensor.Color - $101010;
    end;
end;

end.



