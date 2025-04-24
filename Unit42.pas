unit Unit42;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TerminalST,  StdCtrls, Registry, ExtCtrls, Common, ComCtrls, DateUtils, ShellAPI, Unit43;

type
  TRxThread = class(TThread)
  public
    numPort : Byte;
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

type TSettLineLog = record
  isSendPort : Boolean;
  isSendTime : Boolean;
  isSendCnt  : Boolean;
  isSendDir  : Boolean;

  ReadMode   : TTypeReadMode;
  ColorLine  : TColor;
  isSep_0D   : Boolean;
  isSep_0A   : Boolean;
  isSep_00   : Boolean;
  isSep_0D0A : Boolean;
  isSepPause : Boolean;
  SepTime    : Cardinal;
  isSepByteRec : Boolean;
  SepByteRec : Cardinal;
  isSep_1_4  : Boolean;
  isSep_2_4  : Boolean;
  isSep_1_3  : Boolean;
  isSep_2_3  : Boolean;
  isSep_1_2  : Boolean;
  isSep_2_2  : Boolean;
  isSep_1_1  : Boolean;
  isSep_2_1  : Boolean;

  Sep_1_4_1  : Byte;
  Sep_1_4_2  : Byte;
  Sep_1_4_3  : Byte;
  Sep_1_4_4  : Byte;

  Sep_2_4_1  : Byte;
  Sep_2_4_2  : Byte;
  Sep_2_4_3  : Byte;
  Sep_2_4_4  : Byte;

  Sep_1_3_1  : Byte;
  Sep_1_3_2  : Byte;
  Sep_1_3_3  : Byte;

  Sep_2_3_1  : Byte;
  Sep_2_3_2  : Byte;
  Sep_2_3_3  : Byte;

  Sep_1_2_1  : Byte;
  Sep_1_2_2  : Byte;

  Sep_2_2_1  : Byte;
  Sep_2_2_2  : Byte;

  Sep_1_1_1  : Byte;
  Sep_2_1_1  : Byte;

  isSepBef_1 : Boolean;
  isSepBef_2 : Boolean;

  SepBef_1 : Byte;
  SepBef_2 : Byte;

  isClearBuffer : Boolean;

  BGLogColor : TColor;

  PName : string[10];
end;

type
  TPortSett = record
  FileNameTxt : string[255];
  FileNameBin : string[255];
  Name : string[10];
  Speed : Cardinal;
  indexBits : Integer;
  indexParity : Integer;
  indexStopBits : Integer;
  indexH : Integer;

  isSendMainLog : Boolean;
  isSendSecondLog : Boolean;
  isSendParser : Boolean;
  isSendTextFile : Boolean;
  isSendBinFile : Boolean;
  SettLineLog : TSettLineLog;
end;

type
  TRingBuf = record
    Mutex    : THandle;
    Cnt      : Cardinal;
    head     : Cardinal;
    tail     : Cardinal;
    BufData  : array[0..BUF_SIZE_ADD_PORTS - 1] of byte;
    BufTime  : array[0..BUF_SIZE_ADD_PORTS - 1] of TDateTime;
  end;



type
  TFormMultiPort = class(TForm)
    grp1: TGroupBox; Bt2: TButton; cbb1: TComboBox; cbb2: TComboBox; cbb3: TComboBox; cbb4: TComboBox; cbb5: TComboBox; cbb6: TComboBox;
    Button1: TButton; lbl1: TLabel;                CheckBox1: TCheckBox; CheckBox2: TCheckBox;   CheckBox3: TCheckBox; CheckBox4: TCheckBox;    CheckBox5: TCheckBox;  Bt4: TButton;                   cbb7: TComboBox; cbb8: TComboBox;             cbb9: TComboBox; cbb10: TComboBox;             cbb11: TComboBox; cbb12: TComboBox;
    lbl2: TLabel;     CheckBox6: TCheckBox;        CheckBox7: TCheckBox;  CheckBox8: TCheckBox;  CheckBox9: TCheckBox;  CheckBox10: TCheckBox;  Bt5: TButton;             Bt7: TButton;          cbb13: TComboBox;       cbb14: TComboBox;      cbb15: TComboBox;      cbb16: TComboBox;      cbb17: TComboBox;       cbb18: TComboBox;      lbl3: TLabel;
    CheckBox11: TCheckBox; CheckBox12: TCheckBox;  CheckBox13: TCheckBox; CheckBox14: TCheckBox; CheckBox15: TCheckBox; Bt8: TButton;          Bt10: TButton;            cbb19: TComboBox;      cbb20: TComboBox;       cbb21: TComboBox;      cbb22: TComboBox;      cbb23: TComboBox;      cbb24: TComboBox;       lbl4: TLabel;          CheckBox16: TCheckBox;
    CheckBox17: TCheckBox; CheckBox18: TCheckBox;  CheckBox19: TCheckBox; CheckBox20: TCheckBox; Bt11: TButton;          Bt13: TButton;         cbb25: TComboBox;         cbb26: TComboBox;      cbb27: TComboBox;       cbb28: TComboBox;      cbb29: TComboBox;      cbb30: TComboBox;      lbl5: TLabel;           CheckBox21: TCheckBox; CheckBox22: TCheckBox;
    CheckBox23: TCheckBox; CheckBox24: TCheckBox;  CheckBox25: TCheckBox; Bt14: TButton;         Bt16: TButton;          cbb31: TComboBox;      cbb32: TComboBox;         cbb33: TComboBox;      cbb34: TComboBox;       cbb35: TComboBox;      cbb36: TComboBox;      lbl6: TLabel;          CheckBox26: TCheckBox;  CheckBox27: TCheckBox; CheckBox28: TCheckBox;
    CheckBox29: TCheckBox; CheckBox30: TCheckBox;  Bt17: TButton;         Bt19: TButton;         cbb37: TComboBox;       cbb38: TComboBox;      cbb39: TComboBox;         cbb40: TComboBox;      cbb41: TComboBox;       cbb42: TComboBox;      lbl7: TLabel;          CheckBox31: TCheckBox; CheckBox32: TCheckBox;  CheckBox33: TCheckBox; CheckBox34: TCheckBox;
    CheckBox35: TCheckBox; Bt20: TButton;         Bt22: TButton;         cbb43: TComboBox;      cbb44: TComboBox;       cbb45: TComboBox;      cbb46: TComboBox;         cbb47: TComboBox;      cbb48: TComboBox;       lbl8: TLabel;          CheckBox36: TCheckBox; CheckBox37: TCheckBox; CheckBox38: TCheckBox;  CheckBox39: TCheckBox; CheckBox40: TCheckBox;
    Bt23: TButton;          Bt25: TButton;         cbb49: TComboBox;      cbb50: TComboBox;      cbb51: TComboBox;       cbb52: TComboBox;      cbb53: TComboBox;         cbb54: TComboBox;      lbl9: TLabel;           CheckBox41: TCheckBox; CheckBox42: TCheckBox; CheckBox43: TCheckBox; CheckBox44: TCheckBox;  CheckBox45: TCheckBox; Bt26: TButton;         Bt28: TButton;          cbb55: TComboBox;      cbb56: TComboBox;      cbb57: TComboBox;      cbb58: TComboBox;       cbb59: TComboBox;      cbb60: TComboBox;         lbl10: TLabel;         CheckBox46: TCheckBox;  CheckBox47: TCheckBox; CheckBox48: TCheckBox; CheckBox49: TCheckBox; CheckBox50: TCheckBox;  Bt29: TButton;
    Bt31: TButton;         cbb61: TComboBox;       cbb62: TComboBox;      cbb63: TComboBox;      cbb64: TComboBox;      cbb65: TComboBox;       cbb66: TComboBox;      lbl11: TLabel;            CheckBox51: TCheckBox; CheckBox52: TCheckBox;  CheckBox53: TCheckBox; CheckBox54: TCheckBox; CheckBox55: TCheckBox; Bt32: TButton;         Bt34: TButton;
    cbb67: TComboBox;      cbb68: TComboBox;       cbb69: TComboBox;      cbb70: TComboBox;      cbb71: TComboBox;      cbb72: TComboBox;       lbl12: TLabel;         CheckBox56: TCheckBox;    CheckBox57: TCheckBox; CheckBox58: TCheckBox;  CheckBox59: TCheckBox; CheckBox60: TCheckBox; Bt35: TButton;          Bt37: TButton;         cbb73: TComboBox;
    cbb74: TComboBox;      cbb75: TComboBox;       cbb76: TComboBox;      cbb77: TComboBox;      cbb78: TComboBox;      lbl13: TLabel;          CheckBox61: TCheckBox; CheckBox62: TCheckBox;    CheckBox63: TCheckBox; CheckBox64: TCheckBox;  CheckBox65: TCheckBox; Bt38: TButton;         Bt40: TButton;          cbb79: TComboBox;      cbb80: TComboBox;
    cbb81: TComboBox;      cbb82: TComboBox;       cbb83: TComboBox;      cbb84: TComboBox;      lbl14: TLabel;         CheckBox66: TCheckBox;  CheckBox67: TCheckBox; CheckBox68: TCheckBox;    CheckBox69: TCheckBox; CheckBox70: TCheckBox;  Bt41: TButton;         Bt43: TButton;         cbb85: TComboBox;       cbb86: TComboBox;      cbb87: TComboBox;
    cbb88: TComboBox;      cbb89: TComboBox;       cbb90: TComboBox;      lbl15: TLabel;         CheckBox71: TCheckBox; CheckBox72: TCheckBox;  CheckBox73: TCheckBox; CheckBox74: TCheckBox;    CheckBox75: TCheckBox; Bt44: TButton;         Bt46: TButton;         cbb91: TComboBox;      cbb92: TComboBox;       cbb93: TComboBox;      cbb94: TComboBox;
    cbb95: TComboBox;      cbb96: TComboBox;       lbl16: TLabel;         CheckBox76: TCheckBox; CheckBox77: TCheckBox; CheckBox78: TCheckBox;  CheckBox79: TCheckBox; CheckBox80: TCheckBox;    Bt47: TButton;         grp2: TGroupBox;        grp3: TGroupBox;         reqTime1: TStaticText; Chchk3: TCheckBox;      Chchk1: TCheckBox;     Chchk2: TCheckBox;
    cbb97: TComboBox;      req5: TStaticText;      ChDir0: TCheckBox;     grp4: TGroupBox;       grp11: TGroupBox;      ChChSep0D0A: TCheckBox; ChChSep00: TCheckBox;  ChChSep0A: TCheckBox;     ChChSep0D: TCheckBox;  ChChSepTime: TCheckBox; EdtEdtPauseRx1: TEdit; ud1: TUpDown;          ChChSepCnt: TCheckBox; EdtEdtCntSep1: TEdit;          grp12: TGroupBox;
    edtEdtedt1_4_1: TEdit; edtEdtedt1_4_2: TEdit;  edtEdtedt1_4_3: TEdit; edtEdtedt1_4_4: TEdit; Chchk7: TCheckBox;     Chchk8: TCheckBox;      edtEdtedt1_3_1: TEdit; edtEdtedt1_3_2: TEdit;         edtEdtedt1_3_3: TEdit; Chchk9: TCheckBox;      edtEdtedt1_2_1: TEdit; edtEdtedt1_2_2: TEdit; edtEdtedt1_1_1: TEdit; ChChSepSymbol: TCheckBox; edtEdtedt2_1_1: TEdit; Chchk10: TCheckBox;
    Chchk11: TCheckBox;    edtEdtedt2_4_1: TEdit;    edtEdtedt2_4_2: TEdit; edtEdtedt2_4_3: TEdit; edtEdtedt2_4_4: TEdit; Chchk12: TCheckBox;       edtEdtedt2_3_1: TEdit; edtEdtedt2_3_2: TEdit;     edtEdtedt2_3_3: TEdit; Chchk13: TCheckBox;       edtEdtedt2_2_1: TEdit; edtEdtedt2_2_2: TEdit; grp5: TGroupBox;       lbl18: TLabel;            ChChCBBefByte2: TCheckBox; EdtEdtBefSym21: TEdit;
    ChChCBBefByte1: TCheckBox; EdtEdtBefSym11: TEdit; Bt48: TButton;             Bt49: TButton;    Edt1: TEdit;               grp6: TGroupBox;       Bt50: TButton;             req1: TStaticText;    lbl19: TLabel;             lbl20: TLabel;         req3: TStaticText;         lbl21: TLabel;    req4: TStaticText;         ChClrBuf0: TCheckBox;  grp7: TGroupBox;           Bt51: TButton;
    Bt52: TButton;             Button2: TButton;      grp8: TGroupBox;      Bt53: TButton;             Bt54: TButton;         tmrRead: TTimer;           ctxt1: TStaticText;   ColorDialog1: TColorDialog;
    req_1: TStaticText;     req_2: TStaticText;
    req_3: TStaticText;     req_4: TStaticText;
    req_5: TStaticText;     req_6: TStaticText;
    req_12: TStaticText;    req_11: TStaticText;
    req_10: TStaticText;    req_9: TStaticText;
    req_8: TStaticText;     req_7: TStaticText;
    req_16: TStaticText;    req_15: TStaticText;
    req_14: TStaticText;    req_13: TStaticText;          rb1: TRadioButton;
    rb2: TRadioButton;      rb3: TRadioButton;
    rb4: TRadioButton;      rb5: TRadioButton;
    rb6: TRadioButton;      rb7: TRadioButton;
    rb8: TRadioButton;      rb9: TRadioButton;
    rb10: TRadioButton;     rb11: TRadioButton;
    rb12: TRadioButton;     rb13: TRadioButton;
    rb14: TRadioButton;     rb15: TRadioButton;
    rb16: TRadioButton;     req2: TStaticText;
    dlgOpenSelFile: TOpenDialog;
    Bt3: TButton;
    Bt6: TButton;
    Bt1: TButton;
    ud2: TUpDown;
    btn1: TButton;
    CWinOut: TRichEdit;
    req6: TStaticText;
    req7: TStaticText;
    req8: TStaticText;
    req9: TStaticText;
    req10: TStaticText;
    req11: TStaticText;
    req12: TStaticText;
    req13: TStaticText;
    req14: TStaticText;
    req15: TStaticText;
    req16: TStaticText;
    req17: TStaticText;
    req18: TStaticText;
    req19: TStaticText;
    req20: TStaticText;
    req21: TStaticText;
    req22: TStaticText;
    req23: TStaticText;
    req24: TStaticText;
    req25: TStaticText;
    req26: TStaticText;
    req27: TStaticText;
    req28: TStaticText;
    req29: TStaticText;
    req30: TStaticText;
    req31: TStaticText;
    req32: TStaticText;
    req33: TStaticText;
    req34: TStaticText;
    req35: TStaticText;
    req36: TStaticText;
    req37: TStaticText;
    req38: TStaticText;
    req39: TStaticText;
    CheckBox81: TCheckBox;
    CheckBox82: TCheckBox;
    CheckBox83: TCheckBox;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Bt49Click(Sender: TObject);
    procedure BtConnectClick(Sender: TObject);
    procedure Bt48Click(Sender: TObject);
    procedure tmrReadTimer(Sender: TObject);
    procedure BtPortSettClick(Sender: TObject);
    procedure Edt1Change(Sender: TObject);
    procedure Chchk3Click(Sender: TObject);
    procedure Chchk1Click(Sender: TObject);
    procedure Chchk2Click(Sender: TObject);
    procedure ChDir0Click(Sender: TObject);
    procedure ChChSep0DClick(Sender: TObject);
    procedure ChChSep0AClick(Sender: TObject);
    procedure ChChSep00Click(Sender: TObject);
    procedure ChChSep0D0AClick(Sender: TObject);
    procedure ChChSepTimeClick(Sender: TObject);
    procedure ChChSepCntClick(Sender: TObject);
    procedure Chchk7Click(Sender: TObject);
    procedure Chchk11Click(Sender: TObject);
    procedure Chchk8Click(Sender: TObject);
    procedure Chchk12Click(Sender: TObject);
    procedure Chchk9Click(Sender: TObject);
    procedure Chchk13Click(Sender: TObject);
    procedure ChChSepSymbolClick(Sender: TObject);
    procedure Chchk10Click(Sender: TObject);
    procedure ChChCBBefByte2Click(Sender: TObject);
    procedure ChChCBBefByte1Click(Sender: TObject);
    procedure ChClrBuf0Click(Sender: TObject);
    procedure edtEdtedt1_4_1Change(Sender: TObject);
    procedure edtEdtedt2_4_1Change(Sender: TObject);
    procedure edtEdtedt1_4_2Change(Sender: TObject);
    procedure edtEdtedt2_4_2Change(Sender: TObject);
    procedure edtEdtedt1_4_3Change(Sender: TObject);
    procedure edtEdtedt2_4_3Change(Sender: TObject);
    procedure edtEdtedt1_4_4Change(Sender: TObject);
    procedure edtEdtedt2_4_4Change(Sender: TObject);
    procedure edtEdtedt1_3_1Change(Sender: TObject);
    procedure edtEdtedt2_3_1Change(Sender: TObject);
    procedure edtEdtedt1_3_2Change(Sender: TObject);
    procedure edtEdtedt1_3_3Change(Sender: TObject);
    procedure edtEdtedt2_3_3Change(Sender: TObject);
    procedure edtEdtedt2_3_2Change(Sender: TObject);
    procedure edtEdtedt1_2_1Change(Sender: TObject);
    procedure edtEdtedt1_2_2Change(Sender: TObject);
    procedure edtEdtedt2_2_1Change(Sender: TObject);
    procedure edtEdtedt2_2_2Change(Sender: TObject);
    procedure edtEdtedt1_1_1Change(Sender: TObject);
    procedure edtEdtedt2_1_1Change(Sender: TObject);
    procedure EdtEdtBefSym21Change(Sender: TObject);
    procedure EdtEdtBefSym11Change(Sender: TObject);
    procedure EdtEdtPauseRx1Change(Sender: TObject);
    procedure EdtEdtCntSep1Change(Sender: TObject);
    procedure EdtEdtPauseRx1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtEdtCntSep1KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt1_4_1KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt1_4_2KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt1_4_3KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt1_4_4KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt1_3_1KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt1_3_2KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt1_2_1KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt1_2_2KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt1_1_1KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt2_4_1KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt2_4_2KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt2_4_3KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt2_4_4KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt2_3_1KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt2_3_2KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt2_3_3KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt2_2_1KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt2_2_2KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtedt2_1_1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtEdtBefSym21KeyPress(Sender: TObject; var Key: Char);
    procedure EdtEdtBefSym11KeyPress(Sender: TObject; var Key: Char);
    procedure cbb97Change(Sender: TObject);
    procedure req5Click(Sender: TObject);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure CheckBoxSendMainLogClick(Sender: TObject);
    procedure Bt53Click(Sender: TObject);
    procedure Bt54Click(Sender: TObject);
    procedure req2Click(Sender: TObject);
    procedure CheckSecondLogClick(Sender: TObject);
    procedure CheckSendParserClick(Sender: TObject);
    procedure EdtSpeed(Sender: TObject; var Key: Char);
    procedure EdtSpeedChange(Sender: TObject);
    procedure IndexBitsChange(Sender: TObject);

    procedure IndexParityChange(Sender: TObject);
    procedure IndexStopBitsChange(Sender: TObject);
    procedure IndexHChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure OpenLogClick(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure Bt50Click(Sender: TObject);
    procedure Bt51Click(Sender: TObject);
    procedure Bt52Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBoxSelectTextFileClick(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure ud2Click(Sender: TObject; Button: TUDBtnType);
    procedure CheckBoxSelectBinFileClick(Sender: TObject);
    procedure Bt6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edtSepEnter(Sender: TObject);
    procedure edtSepExit(Sender: TObject);
    procedure CheckBox81Click(Sender: TObject);
    procedure CheckBox82Click(Sender: TObject);
    procedure CheckBox83Click(Sender: TObject);



  private
    { Private declarations }
  public
    BufCntBytesRead : array[1..CNT_PORTS, 0..255] of Cardinal;
    BufCntBytesSend : array[1..CNT_PORTS, 0..255] of Cardinal;
    FontSizeInLog : Integer;
    isSendFormAddLog: array[1..CNT_PORTS] of Boolean;
    procedure SetSendDataInParser(numPort : byte);
    procedure SetSendFromMainForm(Buf : pByte; numPort : Byte; Time : TDateTime; Cnt : Cardinal; StrLog : string; ColorLog : TColor);
    function GetNamePort(port : integer) : string;
    { Public declarations }
  end;

const CFG_FILE_NAME = 'CfgPortsB_test1';

var
  FormMultiPort: TFormMultiPort;
  BStrTmp : string;
  RbSettings      : array[1..CNT_PORTS] of TRadioButton;
  BtConnect       : array[1..CNT_PORTS] of TButton;
  ListPorts       : array[1..CNT_PORTS] of TComboBox;
  ListSpeed       : array[1..CNT_PORTS] of TComboBox;
  ListBits        : array[1..CNT_PORTS] of TComboBox;
  ListParity      : array[1..CNT_PORTS] of TComboBox;
  ListStopBits    : array[1..CNT_PORTS] of TComboBox;
  ListH           : array[1..CNT_PORTS] of TComboBox;
  CBSendMainLog   : array[1..CNT_PORTS] of TCheckBox;
  CBSendSecondLog : array[1..CNT_PORTS] of TCheckBox;
  CBSendParserS   : array[1..CNT_PORTS] of TCheckBox;
  CBSendTextFile  : array[1..CNT_PORTS] of TCheckBox;
  CBSendBinFile   : array[1..CNT_PORTS] of TCheckBox;
  BtLog           : array[1..CNT_PORTS] of TButton;
  ReadInd         : array[1..CNT_PORTS] of TStaticText;
  FormLogPort     : array[1..CNT_PORTS] of TFormLogPort;
  STCntErrTxt     : array[1..CNT_PORTS] of TStaticText;
  STCntErrBin     : array[1..CNT_PORTS] of TStaticText;

  CntErrIOTxt        : array[1..CNT_PORTS] of Cardinal;
  CntErrIOBin        : array[1..CNT_PORTS] of Cardinal;


  CntDataRead : array[1..CNT_PORTS] of DWORD;
  ErrorsRead  : array[1..CNT_PORTS] of DWORD;

  isDataResend  : array[1..CNT_PORTS, 1..CNT_PORTS] of Boolean;
  BufSendInPort  : array[0..BUF_SIZE_ADD_PORTS - 1] of byte;

  FileLog_1,
  FileLog_2,
  FileLog_3,
  FileLog_4,
  FileLog_5,
  FileLog_6,
  FileLog_7,
  FileLog_8,
  FileLog_9,
  FileLog_10,
  FileLog_11,
  FileLog_12,
  FileLog_13,
  FileLog_14,
  FileLog_15,
  FileLog_16 : TextFile;

  FileBin_1   : file of byte;
  FileBin_2   : file of byte;
  FileBin_3   : file of byte;
  FileBin_4   : file of byte;
  FileBin_5   : file of byte;
  FileBin_6   : file of byte;
  FileBin_7   : file of byte;
  FileBin_8   : file of byte;
  FileBin_9   : file of byte;
  FileBin_10  : file of byte;
  FileBin_11  : file of byte;
  FileBin_12  : file of byte;
  FileBin_13  : file of byte;
  FileBin_14  : file of byte;
  FileBin_15  : file of byte;
  FileBin_16  : file of byte;




  SettLineLogBuf  : TSettLineLog;

  PortSett : array[1..CNT_PORTS] of TPortSett;

  RingBuf  : array[1..CNT_PORTS] of TRingBuf;
  RxThread : array[1..CNT_PORTS] of TRxThread;
  //TmpBuf   : array[1..CNT_PORTS] of TTmpBuf;    '

  BufDataTmp1  : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp2  : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp3  : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp4  : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp5  : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp6  : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp7  : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp8  : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp9  : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp10 : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp11 : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp12 : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp13 : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp14 : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp15 : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp16 : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;


  ReadDataCnt : array[1..CNT_PORTS] of Cardinal;
  OutDataCnt  : array[1..CNT_PORTS] of Cardinal;
  ByteLostCnt : array[1..CNT_PORTS] of Cardinal;

  isOpenPort  : array[1..CNT_PORTS] of boolean;
  hCom        : array[1..CNT_PORTS] of tHandle;
  DCB         : array[1..CNT_PORTS] of tDCB;


  ComBoudRate    :array[1..CNT_PORTS] of DWord;
  Bits           :array[1..CNT_PORTS] of byte;
  StopBitsCur    :array[1..CNT_PORTS] of byte;

  LastTime    : array[1..CNT_PORTS] of TDateTime;
  BufOut      : array[1..CNT_PORTS , 0..BUF_SIZE_ADD_PORTS - 1] of byte;
  CntOut      : array[1..CNT_PORTS] of Cardinal;
  isThr       : array[1..CNT_PORTS] of Boolean;

  ByteReadCnt    : array[1..CNT_PORTS] of Cardinal;
  ByteReadCntTmp : array[1..CNT_PORTS] of Cardinal;
  TimeOutByteRead : array[1..CNT_PORTS] of Cardinal;

  BufSendFromMainForm     : array[1..CNT_PORTS, 0..BUF_SIZE_SEND_FROM_MAIN_FORM - 1] of byte;
  CntBytesFromMainForm    : array[1..CNT_PORTS] of Cardinal;
  TimeFromMainForm        : array[1..CNT_PORTS] of TDateTime;
  StrLogFromMainForm      : array[1..CNT_PORTS] of string;
  ColorLogFromMainForm    : array[1..CNT_PORTS] of TColor;


  NumPortCur     : Byte;
implementation

uses Unit32, Unit39, Unit38, Unit24, Unit34, Unit44, Unit3, Unit9;

{$R *.dfm}

procedure AssignFileMyText(port : integer; fileName : string);
begin
  case port of
    1: AssignFile(FileLog_1, fileName);
    2: AssignFile(FileLog_2, fileName);
    3: AssignFile(FileLog_3, fileName);
    4: AssignFile(FileLog_4, fileName);
    5: AssignFile(FileLog_5, fileName);
    6: AssignFile(FileLog_6, fileName);
    7: AssignFile(FileLog_7, fileName);
    8: AssignFile(FileLog_8, fileName);
    9: AssignFile(FileLog_9, fileName);
    10: AssignFile(FileLog_10, fileName);
    11: AssignFile(FileLog_11, fileName);
    12: AssignFile(FileLog_12, fileName);
    13: AssignFile(FileLog_13, fileName);
    14: AssignFile(FileLog_14, fileName);
    15: AssignFile(FileLog_15, fileName);
    16: AssignFile(FileLog_16, fileName);
  end;
  CntErrIOTxt[port] := 0;
  STCntErrTxt[port].Caption := '';
end;

procedure AssignFileMyBin(port : integer; fileName : string);
begin
  case port of
    1: AssignFile(FileBin_1, fileName);
    2: AssignFile(FileBin_2, fileName);
    3: AssignFile(FileBin_3, fileName);
    4: AssignFile(FileBin_4, fileName);
    5: AssignFile(FileBin_5, fileName);
    6: AssignFile(FileBin_6, fileName);
    7: AssignFile(FileBin_7, fileName);
    8: AssignFile(FileBin_8, fileName);
    9: AssignFile(FileBin_9, fileName);
    10: AssignFile(FileBin_10, fileName);
    11: AssignFile(FileBin_11, fileName);
    12: AssignFile(FileBin_12, fileName);
    13: AssignFile(FileBin_13, fileName);
    14: AssignFile(FileBin_14, fileName);
    15: AssignFile(FileBin_15, fileName);
    16: AssignFile(FileBin_16, fileName);
  end;
  CntErrIOBin[port] := 0;
  STCntErrBin[port].Caption := '';
end;


procedure RewriteMyText(port : integer);
begin
  case port of
    1: Rewrite(FileLog_1);
    2: Rewrite(FileLog_2);
    3: Rewrite(FileLog_3);
    4: Rewrite(FileLog_4);
    5: Rewrite(FileLog_5);
    6: Rewrite(FileLog_6);
    7: Rewrite(FileLog_7);
    8: Rewrite(FileLog_8);
    9: Rewrite(FileLog_9);
    10: Rewrite(FileLog_10);
    11: Rewrite(FileLog_11);
    12: Rewrite(FileLog_12);
    13: Rewrite(FileLog_13);
    14: Rewrite(FileLog_14);
    15: Rewrite(FileLog_15);
    16: Rewrite(FileLog_16);
  end;
end;

procedure RewriteMyBin(port : integer);
begin
  case port of
    1: Rewrite(FileBin_1);
    2: Rewrite(FileBin_2);
    3: Rewrite(FileBin_3);
    4: Rewrite(FileBin_4);
    5: Rewrite(FileBin_5);
    6: Rewrite(FileBin_6);
    7: Rewrite(FileBin_7);
    8: Rewrite(FileBin_8);
    9: Rewrite(FileBin_9);
    10: Rewrite(FileBin_10);
    11: Rewrite(FileBin_11);
    12: Rewrite(FileBin_12);
    13: Rewrite(FileBin_13);
    14: Rewrite(FileBin_14);
    15: Rewrite(FileBin_15);
    16: Rewrite(FileBin_16);
  end;
end;

procedure ResetMyBin(port : integer);
begin
  case port of
    1: Reset(FileBin_1);
    2: Reset(FileBin_2);
    3: Reset(FileBin_3);
    4: Reset(FileBin_4);
    5: Reset(FileBin_5);
    6: Reset(FileBin_6);
    7: Reset(FileBin_7);
    8: Reset(FileBin_8);
    9: Reset(FileBin_9);
    10: Reset(FileBin_10);
    11: Reset(FileBin_11);
    12: Reset(FileBin_12);
    13: Reset(FileBin_13);
    14: Reset(FileBin_14);
    15: Reset(FileBin_15);
    16: Reset(FileBin_16);
  end;
end;


procedure AppendMyText(port : integer);
begin
{$IOChecks off}
  case port of
    1: Append(FileLog_1);
    2: Append(FileLog_2);
    3: Append(FileLog_3);
    4: Append(FileLog_4);
    5: Append(FileLog_5);
    6: Append(FileLog_6);
    7: Append(FileLog_7);
    8: Append(FileLog_8);
    9: Append(FileLog_9);
    10: Append(FileLog_10);
    11: Append(FileLog_11);
    12: Append(FileLog_12);
    13: Append(FileLog_13);
    14: Append(FileLog_14);
    15: Append(FileLog_15);
    16: Append(FileLog_16);
  end;
  if IOResult = 0 then
    CBSendTextFile[port].Color := FormMultiPort.Color
  else
    CBSendTextFile[port].Color := clRed;
{$IOChecks on}
end;

procedure SeekMyBin(port : integer);
begin
  case port of
    1:  Seek(FileBin_1,  FileSize(FileBin_1));
    2:  Seek(FileBin_2,  FileSize(FileBin_2));
    3:  Seek(FileBin_3,  FileSize(FileBin_3));
    4:  Seek(FileBin_4,  FileSize(FileBin_4));
    5:  Seek(FileBin_5,  FileSize(FileBin_5));
    6:  Seek(FileBin_6,  FileSize(FileBin_6));
    7:  Seek(FileBin_7,  FileSize(FileBin_7));
    8:  Seek(FileBin_8,  FileSize(FileBin_8));
    9:  Seek(FileBin_9,  FileSize(FileBin_9));
    10: Seek(FileBin_10, FileSize(FileBin_10));
    11: Seek(FileBin_11, FileSize(FileBin_11));
    12: Seek(FileBin_12, FileSize(FileBin_12));
    13: Seek(FileBin_13, FileSize(FileBin_13));
    14: Seek(FileBin_14, FileSize(FileBin_14));
    15: Seek(FileBin_15, FileSize(FileBin_15));
    16: Seek(FileBin_16, FileSize(FileBin_16));
  end;
end;


procedure CloseFileMyText(port : integer);
begin
  try
    case port of
      1: CloseFile(FileLog_1);
      2: CloseFile(FileLog_2);
      3: CloseFile(FileLog_3);
      4: CloseFile(FileLog_4);
      5: CloseFile(FileLog_5);
      6: CloseFile(FileLog_6);
      7: CloseFile(FileLog_7);
      8: CloseFile(FileLog_8);
      9: CloseFile(FileLog_9);
      10: CloseFile(FileLog_10);
      11: CloseFile(FileLog_11);
      12: CloseFile(FileLog_12);
      13: CloseFile(FileLog_13);
      14: CloseFile(FileLog_14);
      15: CloseFile(FileLog_15);
      16: CloseFile(FileLog_16);
    end;
  except
    PortSett[port].isSendTextFile := False;
  end;
end;


procedure CloseFileMyBin(port : integer);
begin
  try
    case port of
      1: CloseFile(FileBin_1);
      2: CloseFile(FileBin_2);
      3: CloseFile(FileBin_3);
      4: CloseFile(FileBin_4);
      5: CloseFile(FileBin_5);
      6: CloseFile(FileBin_6);
      7: CloseFile(FileBin_7);
      8: CloseFile(FileBin_8);
      9: CloseFile(FileBin_9);
      10: CloseFile(FileBin_10);
      11: CloseFile(FileBin_11);
      12: CloseFile(FileBin_12);
      13: CloseFile(FileBin_13);
      14: CloseFile(FileBin_14);
      15: CloseFile(FileBin_15);
      16: CloseFile(FileBin_16);
    end;
  except
    PortSett[port].isSendTextFile := False;
  end;
end;



procedure WriteLnMyText(port : integer; str : string);
begin
  {$IOChecks off}
    case port of
      1: Writeln(FileLog_1, str);
      2: Writeln(FileLog_2, str);
      3: Writeln(FileLog_3, str);
      4: Writeln(FileLog_4, str);
      5: Writeln(FileLog_5, str);
      6: Writeln(FileLog_6, str);
      7: Writeln(FileLog_7, str);
      8: Writeln(FileLog_8, str);
      9: Writeln(FileLog_9, str);
      10: Writeln(FileLog_10, str);
      11: Writeln(FileLog_11, str);
      12: Writeln(FileLog_12, str);
      13: Writeln(FileLog_13, str);
      14: Writeln(FileLog_14, str);
      15: Writeln(FileLog_15, str);
      16: Writeln(FileLog_16, str);
    end;

    if IOResult = 0 then
      CBSendTextFile[port].Color := FormMultiPort.Color
    else
      begin
        Inc(CntErrIOTxt[port]);
        STCntErrTxt[port].Caption := IntToStr(CntErrIOTxt[port]);
        CBSendTextFile[port].Color := clRed;
      end;
  {$IOChecks on}
end;

procedure BlockWriteBinFile(port : integer; Buf : pByte; Cnt : Cardinal);
//var
  //tmp : array[1..100] of Byte;
  //i : Integer;
begin
  //for i := 1 to Cnt do
  //  begin
  //  tmp[i] := Buf^;
  //  inc(Buf);
  //  end;
{$IOChecks off}
  case port of
    1:  BlockWrite(FileBin_1, Buf, Cnt);
    2:  BlockWrite(FileBin_2, Buf, Cnt);
    3:  BlockWrite(FileBin_3, Buf, Cnt);
    4:  BlockWrite(FileBin_4, Buf, Cnt);
    5:  BlockWrite(FileBin_5, Buf, Cnt);
    6:  BlockWrite(FileBin_6, Buf, Cnt);
    7:  BlockWrite(FileBin_7, Buf, Cnt);
    8:  BlockWrite(FileBin_8, Buf, Cnt);
    9:  BlockWrite(FileBin_9, Buf, Cnt);
    10: BlockWrite(FileBin_10, Buf, Cnt);
    11: BlockWrite(FileBin_11, Buf, Cnt);
    12: BlockWrite(FileBin_12, Buf, Cnt);
    13: BlockWrite(FileBin_13, Buf, Cnt);
    14: BlockWrite(FileBin_14, Buf, Cnt);
    15: BlockWrite(FileBin_15, Buf, Cnt);
    16: BlockWrite(FileBin_16, Buf, Cnt);
  end;
  if IOResult = 0 then
    CBSendBinFile[port].Color := FormMultiPort.Color
  else
    begin
      Inc(CntErrIOBin[port]);
      STCntErrBin[port].Caption := IntToStr(CntErrIOBin[port]);
      CBSendBinFile[port].Color := clRed;
    end;
{$IOChecks on}

end;


function ReadRingBuf(numPort: Byte; Buf : pByte; DateTime : PDateTime) : Boolean;
var
  res : Boolean;
begin
  WaitForSingleObject(RingBuf[numPort].Mutex, INFINITE);
  res := RingBuf[numPort].Cnt > 0;
  if res then
    begin
      Buf^      := RingBuf[numPort].BufData[RingBuf[numPort].tail];
      DateTime^ := RingBuf[numPort].BufTime[RingBuf[numPort].tail];
      Inc(RingBuf[numPort].tail);
      RingBuf[numPort].tail := RingBuf[numPort].tail and (BUF_SIZE_ADD_PORTS - 1);
      Dec(RingBuf[numPort].Cnt);
    end;
  ReleaseMutex(RingBuf[numPort].Mutex);
  Result := res;
end;


procedure WriteRing(Buf : pByte; Cnt : Cardinal; numPort : byte);
var tmp: Byte;
begin
  WaitForSingleObject(RingBuf[numPort].Mutex, INFINITE);
  while Cnt > 0 do
    begin
      tmp := Buf^;
      RingBuf[numPort].BufData[RingBuf[numPort].head] := tmp;
      RingBuf[numPort].BufTime[RingBuf[numPort].head] := Now;
      if (RingBuf[numPort].head = RingBuf[numPort].tail) and (RingBuf[numPort].Cnt = BUF_SIZE_ADD_PORTS) then
        begin
          Inc(ByteLostCnt[numPort]);
          Inc(RingBuf[numPort].tail);
          RingBuf[numPort].tail := RingBuf[numPort].tail and (BUF_SIZE_ADD_PORTS - 1);
          Dec(RingBuf[numPort].Cnt);
        end;
      Inc(RingBuf[numPort].Cnt);
      Dec(Cnt);
      inc(Buf);
      inc(RingBuf[numPort].head);
      RingBuf[numPort].head := RingBuf[numPort].head and (BUF_SIZE_ADD_PORTS - 1);
      Inc(ReadDataCnt[numPort]);
    end;
  ReleaseMutex(RingBuf[numPort].Mutex);
end;

procedure ResetRing(numPort : byte);
begin
  WaitForSingleObject(RingBuf[numPort].Mutex, INFINITE);
  RingBuf[numPort].Cnt := 0;
  RingBuf[numPort].head := 0;
  RingBuf[numPort].tail := 0;
  ReleaseMutex(RingBuf[numPort].Mutex);
end;

Procedure ScanPorts(numPort : byte);
var reg  : TRegistry;
    l    : TStringList;
    i    : integer;
    port     : integer;
    Ports    : array[0..255] of string[12];


begin
  l := TStringList.Create;
  reg:=TRegistry.Create;

  for i:= 0 to 255 do
    Ports[i] := '';

  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    reg.OpenKeyReadOnly('HARDWARE\DEVICEMAP\SERIALCOMM');
    reg.GetValueNames(l);

    //for i:=0 to l.Count-1 do
    //  if reg.ReadString(l[i]) = NameCom[numPort] then
    //    begin
    //      Ports[0] := reg.ReadString(l[i]);
    //    end;

    for i:=0 to l.Count-1 do
      //if reg.ReadString(l[i]) <> NameCom[numPort] then
        Ports[i] := reg.ReadString(l[i]);

  finally
    reg.Free;
    l.Free;
  end;
  ListPorts[numPort].Clear;

  if PortSett[numPort].Name <> '' then
    for i:= 0 to 255 do
      if Ports[i] = PortSett[numPort].Name then
        begin
          ListPorts[numPort].Items.Add(Ports[i]);
          Ports[i] := '';
        end;

  i:=0;
  while (i < 256) do
    begin
      if Ports[i] <> '' then
        ListPorts[numPort].Items.Add(Ports[i]);
      inc(i);
    end;
  ListPorts[numPort].ItemIndex := 0;
end;


Function OpenPort(numPort : byte) : boolean;
  var
    CurrentComPort : Pchar;
  begin
    OpenPort := false;
    //if Length(Form1.ComPort.Text) = 4 then
    //  CurrentComPort := PChar(Form1.ComPort.Text);//(Form1.ComPort.Items[Form1.ComPort.ItemIndex]);
    //if Length(Form1.ComPort.Text) > 4 then

    CurrentComPort := PChar('\\.\' + ListPorts[numPort].Text);//(Form1.ComPort.Items[Form1.ComPort.ItemIndex]);

    if Length(ListSpeed[numPort].Text) < 8 then
      begin
        ComBoudRate[numPort]    := StrToInt(ListSpeed[numPort].Text);
      end
    else
      begin
        ListSpeed[numPort].Color := clRed;
        ComBoudRate[numPort]          := 1200;
      end;



    Bits[numPort] := StrToInt(ListBits[numPort].Items[ListBits[numPort].ItemIndex]);

    if ListStopBits[numPort].ItemIndex = 0 then
      StopBitsCur[numPort] := ONESTOPBIT
    else if ListStopBits[numPort].ItemIndex = 2 then
      StopBitsCur[numPort] := ONE5STOPBITS
    else if ListStopBits[numPort].ItemIndex = 3 then
      StopBitsCur[numPort] := TWOSTOPBITS;

    if ListPorts[numPort].Text = '' then
      ShowMessage('Choose your port!');



    if SetCommState(hCom[numPort],DCB[numPort]) then CloseHandle(hCom[numPort]);
      Sleep(5);

    hCom[numPort]:=CreateFile(CurrentComPort,Generic_Read or Generic_Write,0,nil,Open_Existing,File_Attribute_Normal,0);
    if hCom[numPort]=INVALID_HANDLE_VALUE then
      begin

      end
    else
      begin
        OpenPort := true;
        SetupComm(hCom[numPort],65536,65536); //30,30);//60,60);

        with DCB[numPort] do begin
          BaudRate := ComBoudRate[numPort];
          ByteSize := Bits[numPort];
          Parity   := ListParity[numPort].ItemIndex;
          StopBits := StopBitsCur[numPort];
        end;

        if PortSett[numPort].indexH = 1 then
          DCB[numPort].Flags := (RTS_CONTROL_ENABLE shl 12);

        isOpenPort[numPort] := true;

        if not SetCommState(hCom[numPort],DCB[numPort]) then
          begin
            OpenPort   := false;
            isOpenPort[numPort] := false;
          end;
      end;
  end;

procedure CloseComPort(numPort : Byte);
  var
    Cnt, Errors : Dword;
    Stat        : tComStat;
  begin
    if (isOpenPort[numPort] = true) then
      begin
        repeat
          ClearCommError(hCom[numPort], Errors ,@Stat);
          Cnt := Stat.cbOutQue;
          Sleep(1);
        until Cnt = 0;
        try
          PurgeComm(hCom[numPort], PURGE_TXABORT or PURGE_RXABORT or PURGE_TXCLEAR or PURGE_RXCLEAR);
          CloseHandle(hCom[numPort]);
        finally
          isOpenPort[numPort] := false;
        end;
      end;

    if PortSett[numPort].SettLineLog.isClearBuffer then
      begin
        ResetRing(numPort);
        CntOut[numPort] := 0;
      end;
  end;

procedure TRxThread.Execute;
var
  Cnt, Errors : DWORD;
  Stat        : tComStat;
begin
  while not Terminated do
    begin
      repeat
        ClearCommError(hCom[numport], Errors ,@Stat);
        if Stat.cbOutQue = 0 then
          Sleep(1);
      until Stat.cbOutQue = 0;

      if Stat.cbInQue > 0 then
        begin                    
          Cnt := Stat.cbInQue;
          case numPort of
            1:  begin ReadFile(hCom[numport], BufDataTmp1,  Cnt, Cnt,nil);  WriteRing(@BufDataTmp1[0],  Cnt, numPort); end;
            2:  begin ReadFile(hCom[numport], BufDataTmp2,  Cnt, Cnt,nil);  WriteRing(@BufDataTmp2[0],  Cnt, numPort); end;
            3:  begin ReadFile(hCom[numport], BufDataTmp3,  Cnt, Cnt,nil);  WriteRing(@BufDataTmp3[0],  Cnt, numPort); end;
            4:  begin ReadFile(hCom[numport], BufDataTmp4,  Cnt, Cnt,nil);  WriteRing(@BufDataTmp4[0],  Cnt, numPort); end;
            5:  begin ReadFile(hCom[numport], BufDataTmp5,  Cnt, Cnt,nil);  WriteRing(@BufDataTmp5[0],  Cnt, numPort); end;
            6:  begin ReadFile(hCom[numport], BufDataTmp6,  Cnt, Cnt,nil);  WriteRing(@BufDataTmp6[0],  Cnt, numPort); end;
            7:  begin ReadFile(hCom[numport], BufDataTmp7,  Cnt, Cnt,nil);  WriteRing(@BufDataTmp7[0],  Cnt, numPort); end;
            8:  begin ReadFile(hCom[numport], BufDataTmp8,  Cnt, Cnt,nil);  WriteRing(@BufDataTmp8[0],  Cnt, numPort); end;
            9:  begin ReadFile(hCom[numport], BufDataTmp9,  Cnt, Cnt,nil);  WriteRing(@BufDataTmp9[0],  Cnt, numPort); end;
            10: begin ReadFile(hCom[numport], BufDataTmp10, Cnt, Cnt,nil);  WriteRing(@BufDataTmp10[0], Cnt, numPort); end;
            11: begin ReadFile(hCom[numport], BufDataTmp11, Cnt, Cnt,nil);  WriteRing(@BufDataTmp11[0], Cnt, numPort); end;
            12: begin ReadFile(hCom[numport], BufDataTmp12, Cnt, Cnt,nil);  WriteRing(@BufDataTmp12[0], Cnt, numPort); end;
            13: begin ReadFile(hCom[numport], BufDataTmp13, Cnt, Cnt,nil);  WriteRing(@BufDataTmp13[0], Cnt, numPort); end;
            14: begin ReadFile(hCom[numport], BufDataTmp14, Cnt, Cnt,nil);  WriteRing(@BufDataTmp14[0], Cnt, numPort); end;
            15: begin ReadFile(hCom[numport], BufDataTmp15, Cnt, Cnt,nil);  WriteRing(@BufDataTmp15[0], Cnt, numPort); end;
            16: begin ReadFile(hCom[numport], BufDataTmp16, Cnt, Cnt,nil);  WriteRing(@BufDataTmp16[0], Cnt, numPort); end;
          end;
          ByteReadCnt[numPort] := ByteReadCnt[numPort] + Cnt;
        end;
    end;
end;



procedure TFormMultiPort.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  numPort, TimeOut : Integer;
  CfgAddPortsBFile : file of TPortSett;

begin
  AssignFile(CfgAddPortsBFile, ExtractFilePath(Application.ExeName) + CFG_FILE_NAME);
  ReWrite(CfgAddPortsBFile);
  ReSet(CfgAddPortsBFile);
  for numPort := 1 to CNT_PORTS do
    begin
      Write(CfgAddPortsBFile, PortSett[numPort]);
    end;
  CloseFile(CfgAddPortsBFile);

  TerminalST.Form1.isSaveFileAddPortsB := False;

  for numPort := 1 to CNT_PORTS do
    begin
      if FormLogPort[numPort] <> nil then
        begin
          //FormLogPort[numPort].Close;
          FormLogPort[numPort].Free;
          FormLogPort[numPort] := nil;
        end;
        
      CloseComPort(numPort);
      isOpenPort[numPort] := False;
      ListPorts[numPort].Enabled := not isOpenPort[numPort];
      ListSpeed[numPort].Enabled := not isOpenPort[numPort];
      ListBits[numPort].Enabled := not isOpenPort[numPort];
      ListStopBits[numPort].Enabled := not isOpenPort[numPort];
      ListParity[numPort].Enabled := not isOpenPort[numPort];
      ListH[numPort].Enabled := not isOpenPort[numPort];
      ListPorts[numPort].Color := clWindow;
      BtConnect[numPort].Caption := 'Connect';

      if isThr[numPort] then
        begin
          RxThread[numPort].Terminate;
          TimeOut := 1000;
          while (not RxThread[numPort].Terminated) and (TimeOut > 0) do
            begin
              Sleep(1);
              Dec(TimeOut);
            end;
          RxThread[numPort].Free;
          isThr[numPort] := False;
        end;

      if PortSett[numPort].isSendTextFile then
        CloseFileMyText(numPort);

      if PortSett[numPort].isSendBinFile then
        CloseFileMyBin(numPort);

      TerminalST.Form1.SetActBtSendInAdd(numPort + 2, false, PortSett[numPort].SettLineLog.PName, '');
    end;

  tmrRead.Enabled := False;

  TerminalST.Form1.BtMultiPort.Font.Style := [];
end;



procedure SetCurPort(nPort : byte);
var
  numPort : Byte;
begin
  NumPortCur := nPort;
  FormMultiPort.ctxt1.Caption := 'Port ' + IntToStr(nPort);
  FormMultiPort.Edt1.Text := PortSett[nPort].SettLineLog.PName;
  FormMultiPort.Chchk3.Checked := PortSett[nPort].SettLineLog.isSendPort;
  FormMultiPort.Chchk1.Checked := PortSett[nPort].SettLineLog.isSendTime;
  FormMultiPort.Chchk2.Checked := PortSett[nPort].SettLineLog.isSendCnt;
  FormMultiPort.Chdir0.Checked := PortSett[nPort].SettLineLog.isSendDir;
  FormMultiPort.cbb97.ItemIndex := Integer(PortSett[nPort].SettLineLog.ReadMode);
  FormMultiPort.req5.Color := PortSett[nPort].SettLineLog.ColorLine;
  FormMultiPort.req5.Font.Color := $FFFFFF - PortSett[nPort].SettLineLog.ColorLine;

  FormMultiPort.ChChSep0D.Checked := PortSett[nPort].SettLineLog.isSep_0D;
  FormMultiPort.ChChSep0A.Checked := PortSett[nPort].SettLineLog.isSep_0A;
  FormMultiPort.ChChSep00.Checked := PortSett[nPort].SettLineLog.isSep_00;
  FormMultiPort.ChChSep0D0A.Checked := PortSett[nPort].SettLineLog.isSep_0D0A;

  FormMultiPort.ChChSepTime.Checked := PortSett[nPort].SettLineLog.isSepPause;
  FormMultiPort.EdtEdtPauseRx1.Text := IntToStr(PortSett[nPort].SettLineLog.SepTime);
  FormMultiPort.ChChSepCnt.Checked := PortSett[nPort].SettLineLog.isSepByteRec;
  FormMultiPort.EdtEdtCntSep1.Text := IntToStr(PortSett[nPort].SettLineLog.SepByteRec);

  FormMultiPort.chchk7.Checked := PortSett[nPort].SettLineLog.isSep_1_4;
  FormMultiPort.chchk11.Checked := PortSett[nPort].SettLineLog.isSep_2_4;

  FormMultiPort.chchk8.Checked := PortSett[nPort].SettLineLog.isSep_1_3;
  FormMultiPort.chchk12.Checked := PortSett[nPort].SettLineLog.isSep_2_3;

  FormMultiPort.chchk9.Checked := PortSett[nPort].SettLineLog.isSep_1_2;
  FormMultiPort.chchk13.Checked := PortSett[nPort].SettLineLog.isSep_2_2;

  FormMultiPort.chchSepSymbol.Checked := PortSett[nPort].SettLineLog.isSep_1_1;
  FormMultiPort.chchk10.Checked := PortSett[nPort].SettLineLog.isSep_2_1;

  FormMultiPort.ChChCBBefByte2.Checked := PortSett[nPort].SettLineLog.isSepBef_1;
  FormMultiPort.ChChCBBefByte1.Checked := PortSett[nPort].SettLineLog.isSepBef_2;

  FormMultiPort.ChClrBuf0.Checked := PortSett[nPort].SettLineLog.isClearBuffer;

  FormMultiPort.EdtEdtPauseRx1.Text := IntToStr(PortSett[nPort].SettLineLog.SepTime);
  FormMultiPort.EdtEdtCntSep1.Text := IntToStr(PortSett[nPort].SettLineLog.SepByteRec);

  FormMultiPort.edtEdtedt1_4_1.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_1_4_1, 2);
  FormMultiPort.edtEdtedt2_4_1.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_2_4_1, 2);
  FormMultiPort.edtEdtedt1_4_2.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_1_4_2, 2);
  FormMultiPort.edtEdtedt2_4_2.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_2_4_2, 2);
  FormMultiPort.edtEdtedt1_4_3.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_1_4_3, 2);
  FormMultiPort.edtEdtedt2_4_3.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_2_4_3, 2);
  FormMultiPort.edtEdtedt1_4_4.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_1_4_4, 2);
  FormMultiPort.edtEdtedt2_4_4.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_2_4_4, 2);
  FormMultiPort.edtEdtedt1_3_1.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_1_3_1, 2);
  FormMultiPort.edtEdtedt2_3_1.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_2_3_1, 2);
  FormMultiPort.edtEdtedt1_3_2.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_1_3_2, 2);
  FormMultiPort.edtEdtedt2_3_2.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_2_3_2, 2);
  FormMultiPort.edtEdtedt1_3_3.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_1_3_3, 2);
  FormMultiPort.edtEdtedt2_3_3.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_2_3_3, 2);
  FormMultiPort.edtEdtedt1_2_1.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_1_2_1, 2);
  FormMultiPort.edtEdtedt2_2_1.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_2_2_1, 2);
  FormMultiPort.edtEdtedt1_2_2.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_1_2_2, 2);
  FormMultiPort.edtEdtedt2_2_2.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_2_2_2, 2);
  FormMultiPort.edtEdtedt1_1_1.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_1_1_1, 2);
  FormMultiPort.edtEdtedt2_1_1.Text := IntToHex(PortSett[nPort].SettLineLog.Sep_2_1_1, 2);

  FormMultiPort.EdtEdtBefSym21.Text := IntToHex(PortSett[nPort].SettLineLog.SepBef_1, 2);
  FormMultiPort.EdtEdtBefSym11.Text := IntToHex(PortSett[nPort].SettLineLog.SepBef_2, 2);

  FormMultiPort.edtEdtedt1_4_1.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_1_4_1);
  FormMultiPort.edtEdtedt2_4_1.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_2_4_1);
  FormMultiPort.edtEdtedt1_4_2.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_1_4_2);
  FormMultiPort.edtEdtedt2_4_2.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_2_4_2);
  FormMultiPort.edtEdtedt1_4_3.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_1_4_3);
  FormMultiPort.edtEdtedt2_4_3.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_2_4_3);
  FormMultiPort.edtEdtedt1_4_4.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_1_4_4);
  FormMultiPort.edtEdtedt2_4_4.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_2_4_4);
  FormMultiPort.edtEdtedt1_3_1.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_1_3_1);
  FormMultiPort.edtEdtedt2_3_1.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_2_3_1);
  FormMultiPort.edtEdtedt1_3_2.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_1_3_2);
  FormMultiPort.edtEdtedt2_3_2.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_2_3_2);
  FormMultiPort.edtEdtedt1_3_3.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_1_3_3);
  FormMultiPort.edtEdtedt2_3_3.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_2_3_3);
  FormMultiPort.edtEdtedt1_2_1.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_1_2_1);
  FormMultiPort.edtEdtedt2_2_1.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_2_2_1);
  FormMultiPort.edtEdtedt1_2_2.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_1_2_2);
  FormMultiPort.edtEdtedt2_2_2.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_2_2_2);
  FormMultiPort.edtEdtedt1_1_1.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_1_1_1);
  FormMultiPort.edtEdtedt2_1_1.Hint := IntToStr(PortSett[nPort].SettLineLog.Sep_2_1_1);

  FormMultiPort.EdtEdtBefSym21.Hint := IntToStr(PortSett[nPort].SettLineLog.SepBef_1);
  FormMultiPort.EdtEdtBefSym11.Hint := IntToStr(PortSett[nPort].SettLineLog.SepBef_2);

  FormMultiPort.req5.Color := PortSett[nPort].SettLineLog.ColorLine;
  FormMultiPort.req5.Font.Color := $FFFFFF - PortSett[nPort].SettLineLog.ColorLine;

  FormMultiPort.CWinOut.SelAttributes.Color := PortSett[nPort].SettLineLog.ColorLine;
  FormMultiPort.CWinOut.Color := PortSett[nPort].SettLineLog.BGLogColor;
  FormMultiPort.req2.Color := PortSett[nPort].SettLineLog.BGLogColor;
  FormMultiPort.req2.Font.Color := $FFFFFF - PortSett[nPort].SettLineLog.BGLogColor;

  for numPort := 1 to CNT_PORTS do
    begin
      if numPort = NumPortCur then
        begin
          RbSettings[numPort].Color := clBlack;
          RbSettings[numPort].Font.Color := clWhite;
          //BtConnect[numPort].Font.Style := [fsBold];
          //ListPorts[numPort].Font.Style := [fsBold];
          //ListSpeed[numPort].Font.Style := [fsBold];
          //ListBits[numPort].Font.Style := [fsBold];
          //ListParity[numPort].Font.Style := [fsBold];
          //ListStopBits[numPort].Font.Style := [fsBold];
          //ListH[numPort].Font.Style := [fsBold];
          //CBSendMainLog[numPort].Font.Style := [fsBold];
          //CBSendSecondLog[numPort].Font.Style := [fsBold];
          //CBSendParserHex[numPort].Font.Style := [fsBold];
          //CBSendTextFile[numPort].Font.Style := [fsBold];
          //CBSendBinFile[numPort].Font.Style := [fsBold];
          //BtLog[numPort].Font.Style := [fsBold];
        end
      else
        begin
          RbSettings[numPort].Color := FormMultiPort.Color;
          RbSettings[numPort].Font.Color := clBlack;
          //BtConnect[numPort].Font.Style := [];
          //ListPorts[numPort].Font.Style := [];
          //ListSpeed[numPort].Font.Style := [];
          //ListBits[numPort].Font.Style := [];
          //ListParity[numPort].Font.Style := [];
          //ListStopBits[numPort].Font.Style := [];
          //ListH[numPort].Font.Style := [];
          //CBSendMainLog[numPort].Font.Style := [];
          //CBSendSecondLog[numPort].Font.Style := [];
          //CBSendParserHex[numPort].Font.Style := [];
          //CBSendTextFile[numPort].Font.Style := [];
          //CBSendBinFile[numPort].Font.Style := [];
          //BtLog[numPort].Font.Style := [];
        end;
    end;

  for numPort := 1 to CNT_PORTS do
    begin
      if isDataResend[nPort, numPort] then
        RbSettings[numPort].Caption := Format('%02d', [numPort]) + ' >>'
      else
        RbSettings[numPort].Caption := Format('%02d', [numPort]);
    end;
  TimeOutByteRead[nPort] := 0;


  if PortSett[nPort].SettLineLog.isSep_0D then
    begin
      FormMultiPort.ChChSep0D.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.ChChSep0D.Color := Form1.Color;
    end;


  if PortSett[nPort].SettLineLog.isSepBef_2 then
    begin
      FormMultiPort.EdtEdtBefSym11.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.EdtEdtBefSym11.Color := Form1.Color;
    end;

  if PortSett[nPort].SettLineLog.isSepBef_1 then
    begin
      FormMultiPort.EdtEdtBefSym21.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.EdtEdtBefSym21.Color := Form1.Color;
    end;


  if PortSett[nPort].SettLineLog.isSep_2_1 then
    begin
      FormMultiPort.edtEdtedt2_1_1.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.edtEdtedt2_1_1.Color := Form1.Color;
    end;


  if PortSett[nPort].SettLineLog.isSep_2_2 then
    begin
      FormMultiPort.edtEdtedt2_2_1.Color := COLOR_LINE_SEP;
      FormMultiPort.edtEdtedt2_2_2.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.edtEdtedt2_2_1.Color := Form1.Color;
      FormMultiPort.edtEdtedt2_2_2.Color := Form1.Color;
    end;

  if PortSett[nPort].SettLineLog.isSep_2_3 then
    begin
      FormMultiPort.edtEdtedt2_3_1.Color := COLOR_LINE_SEP;
      FormMultiPort.edtEdtedt2_3_2.Color := COLOR_LINE_SEP;
      FormMultiPort.edtEdtedt2_3_3.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.edtEdtedt2_3_1.Color := Form1.Color;
      FormMultiPort.edtEdtedt2_3_2.Color := Form1.Color;
      FormMultiPort.edtEdtedt2_3_3.Color := Form1.Color;
    end;

  if PortSett[nPort].SettLineLog.isSep_2_4 then
    begin
      FormMultiPort.edtEdtedt2_4_1.Color := COLOR_LINE_SEP;
      FormMultiPort.edtEdtedt2_4_2.Color := COLOR_LINE_SEP;
      FormMultiPort.edtEdtedt2_4_3.Color := COLOR_LINE_SEP;
      FormMultiPort.edtEdtedt2_4_4.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.edtEdtedt2_4_1.Color := Form1.Color;
      FormMultiPort.edtEdtedt2_4_2.Color := Form1.Color;
      FormMultiPort.edtEdtedt2_4_3.Color := Form1.Color;
      FormMultiPort.edtEdtedt2_4_4.Color := Form1.Color;
    end;

  if PortSett[nPort].SettLineLog.isSep_1_1 then
    begin
      FormMultiPort.edtEdtedt1_1_1.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.edtEdtedt1_1_1.Color := Form1.Color;
    end;

  if PortSett[nPort].SettLineLog.isSep_1_2 then
    begin
      FormMultiPort.edtEdtedt1_2_1.Color := COLOR_LINE_SEP;
      FormMultiPort.edtEdtedt1_2_2.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.edtEdtedt1_2_1.Color := Form1.Color;
      FormMultiPort.edtEdtedt1_2_2.Color := Form1.Color;
    end;

  if PortSett[nPort].SettLineLog.isSep_1_3 then
    begin
      FormMultiPort.edtEdtedt1_3_1.Color := COLOR_LINE_SEP;
      FormMultiPort.edtEdtedt1_3_2.Color := COLOR_LINE_SEP;
      FormMultiPort.edtEdtedt1_3_3.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.edtEdtedt1_3_1.Color := Form1.Color;
      FormMultiPort.edtEdtedt1_3_2.Color := Form1.Color;
      FormMultiPort.edtEdtedt1_3_3.Color := Form1.Color;
    end;


  if PortSett[nPort].SettLineLog.isSep_1_4 then
    begin
      FormMultiPort.edtEdtedt1_4_1.Color := COLOR_LINE_SEP;
      FormMultiPort.edtEdtedt1_4_2.Color := COLOR_LINE_SEP;
      FormMultiPort.edtEdtedt1_4_3.Color := COLOR_LINE_SEP;
      FormMultiPort.edtEdtedt1_4_4.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.edtEdtedt1_4_1.Color := Form1.Color;
      FormMultiPort.edtEdtedt1_4_2.Color := Form1.Color;
      FormMultiPort.edtEdtedt1_4_3.Color := Form1.Color;
      FormMultiPort.edtEdtedt1_4_4.Color := Form1.Color;
    end;

  if PortSett[nPort].SettLineLog.isSepByteRec then
    begin
      FormMultiPort.EdtEdtCntSep1.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.EdtEdtCntSep1.Color := Form1.Color;
    end;

  if PortSett[nPort].SettLineLog.isSepPause then
    begin
      FormMultiPort.EdtEdtPauseRx1.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.EdtEdtPauseRx1.Color := Form1.Color;
    end;

  if PortSett[nPort].SettLineLog.isSep_0D0A then
    begin
      FormMultiPort.ChChSep0D0A.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.ChChSep0D0A.Color := Form1.Color;
    end;

  if PortSett[nPort].SettLineLog.isSep_0A then
    begin
      FormMultiPort.ChChSep0A.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.ChChSep0A.Color := Form1.Color;
    end;

  if PortSett[nPort].SettLineLog.isSep_00 then
    begin
      FormMultiPort.ChChSep00.Color := COLOR_LINE_SEP;
    end
  else
    begin
      FormMultiPort.ChChSep00.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.FormCreate(Sender: TObject);
var
  numPort, i : Integer;

  CfgAddPortsBFile : file of TPortSett;
  isDefaultCfg : Boolean;
begin
  isDefaultCfg := False;
  AssignFile(CfgAddPortsBFile, ExtractFilePath(Application.ExeName) + CFG_FILE_NAME);
  if FileExists(ExtractFilePath(Application.ExeName) + CFG_FILE_NAME) and (Get_File_Size(ExtractFilePath(Application.ExeName) + CFG_FILE_NAME, True) > 0) then
    begin
      try
        Reset(CfgAddPortsBFile);
        for numPort := 1 to CNT_PORTS do
          Read(CfgAddPortsBFile, PortSett[numPort]);
        CloseFile(CfgAddPortsBFile);
      except
        isDefaultCfg := True;
      end;
    end
  else
    begin
      isDefaultCfg := True;
    end;

  if isDefaultCfg then
    begin

      ReWrite(CfgAddPortsBFile);
      ReSet(CfgAddPortsBFile);
      for numPort := 1 to CNT_PORTS do
        begin
          PortSett[numPort].FileNameTxt := '';
          PortSett[numPort].FileNameBin := '';
          PortSett[numPort].SettLineLog.PName := 'Port' + IntToStr(numPort);
          PortSett[numPort].Name  := '';
          PortSett[numPort].Speed := 1200;
          PortSett[numPort].indexBits := 3;
          PortSett[numPort].indexParity := 0;
          PortSett[numPort].indexStopBits := 0;
          PortSett[numPort].indexH := 0;
          PortSett[numPort].SettLineLog.isSendPort := True;
          PortSett[numPort].SettLineLog.isSendTime := false;
          PortSett[numPort].SettLineLog.isSendCnt  := False;
          PortSett[numPort].SettLineLog.isSendDir  := False;
          PortSett[numPort].SettLineLog.ReadMode   := ReadASCII;
          PortSett[numPort].SettLineLog.ColorLine  := clBlack;
          PortSett[numPort].SettLineLog.isSep_0D   := True;
          PortSett[numPort].SettLineLog.isSep_0A   := False;
          PortSett[numPort].SettLineLog.isSep_00   := False;
          PortSett[numPort].SettLineLog.isSep_0D0A := False;
          PortSett[numPort].SettLineLog.isSepPause := true;
          PortSett[numPort].SettLineLog.isSepByteRec := False;
          PortSett[numPort].SettLineLog.isSep_1_4 := False;
          PortSett[numPort].SettLineLog.isSep_2_4 := False;
          PortSett[numPort].SettLineLog.isSep_1_3 := False;
          PortSett[numPort].SettLineLog.isSep_2_3 := False;
          PortSett[numPort].SettLineLog.isSep_1_2 := False;
          PortSett[numPort].SettLineLog.isSep_2_2 := False;
          PortSett[numPort].SettLineLog.isSep_1_1 := False;
          PortSett[numPort].SettLineLog.isSep_2_1 := False;
          PortSett[numPort].SettLineLog.SepTime := 500;
          PortSett[numPort].SettLineLog.SepByteRec := 0;
          PortSett[numPort].SettLineLog.Sep_1_4_1 := 0;
          PortSett[numPort].SettLineLog.Sep_1_4_2 := 0;
          PortSett[numPort].SettLineLog.Sep_1_4_3 := 0;
          PortSett[numPort].SettLineLog.Sep_1_4_4 := 0;
          PortSett[numPort].SettLineLog.Sep_2_4_1 := 0;
          PortSett[numPort].SettLineLog.Sep_2_4_2 := 0;
          PortSett[numPort].SettLineLog.Sep_2_4_3 := 0;
          PortSett[numPort].SettLineLog.Sep_2_4_4 := 0;
          PortSett[numPort].SettLineLog.Sep_1_3_1 := 0;
          PortSett[numPort].SettLineLog.Sep_1_3_2 := 0;
          PortSett[numPort].SettLineLog.Sep_1_3_3 := 0;
          PortSett[numPort].SettLineLog.Sep_2_3_1 := 0;
          PortSett[numPort].SettLineLog.Sep_2_3_2 := 0;
          PortSett[numPort].SettLineLog.Sep_2_3_3 := 0;
          PortSett[numPort].SettLineLog.Sep_1_2_1 := 0;
          PortSett[numPort].SettLineLog.Sep_1_2_2 := 0;
          PortSett[numPort].SettLineLog.Sep_2_2_1 := 0;
          PortSett[numPort].SettLineLog.Sep_2_2_2 := 0;
          PortSett[numPort].SettLineLog.Sep_1_1_1 := 0;
          PortSett[numPort].SettLineLog.Sep_2_1_1 := 0;

          PortSett[numPort].SettLineLog.isSepBef_1 := False;
          PortSett[numPort].SettLineLog.isSepBef_2 := False;
          PortSett[numPort].SettLineLog.SepBef_1 := 0;
          PortSett[numPort].SettLineLog.SepBef_2 := 0;

          PortSett[numPort].SettLineLog.isClearBuffer := True;
          PortSett[numPort].isSendMainLog := True;
          PortSett[numPort].isSendSecondLog := false;
          PortSett[numPort].isSendParser    := false;
          PortSett[numPort].SettLineLog.BGLogColor      := clWindow;


          Write(CfgAddPortsBFile, PortSett[numPort]);
        end;
      CloseFile(CfgAddPortsBFile);
    end;

  TerminalST.Form1.isSaveFileAddPortsB := True;


  RbSettings[1]  := rb1;
  RbSettings[2]  := rb2;
  RbSettings[3]  := rb3;
  RbSettings[4]  := rb4;
  RbSettings[5]  := rb5;
  RbSettings[6]  := rb6;
  RbSettings[7]  := rb7;
  RbSettings[8]  := rb8;
  RbSettings[9]  := rb9;
  RbSettings[10] := rb10;
  RbSettings[11] := rb11;
  RbSettings[12] := rb12;
  RbSettings[13] := rb13;
  RbSettings[14] := rb14;
  RbSettings[15] := rb15;
  RbSettings[16] := rb16;

  BtConnect[1]  := Bt2;
  BtConnect[2]  := Bt4;
  BtConnect[3]  := Bt7;
  BtConnect[4]  := Bt10;
  BtConnect[5]  := Bt13;
  BtConnect[6]  := Bt16;
  BtConnect[7]  := Bt19;
  BtConnect[8]  := Bt22;
  BtConnect[9]  := Bt25;
  BtConnect[10] := Bt28;
  BtConnect[11] := Bt31;
  BtConnect[12] := Bt34;
  BtConnect[13] := Bt37;
  BtConnect[14] := Bt40;
  BtConnect[15] := Bt43;
  BtConnect[16] := Bt46;

  ListPorts[1]  := cbb1;
  ListPorts[2]  := cbb7;
  ListPorts[3]  := cbb13;
  ListPorts[4]  := cbb19;
  ListPorts[5]  := cbb25;
  ListPorts[6]  := cbb31;
  ListPorts[7]  := cbb37;
  ListPorts[8]  := cbb43;
  ListPorts[9]  := cbb49;
  ListPorts[10] := cbb55;
  ListPorts[11] := cbb61;
  ListPorts[12] := cbb67;
  ListPorts[13] := cbb73;
  ListPorts[14] := cbb79;
  ListPorts[15] := cbb85;
  ListPorts[16] := cbb91;

  ListSpeed[1]  := cbb2;
  ListSpeed[2]  := cbb8;
  ListSpeed[3]  := cbb14;
  ListSpeed[4]  := cbb20;
  ListSpeed[5]  := cbb26;
  ListSpeed[6]  := cbb32;
  ListSpeed[7]  := cbb38;
  ListSpeed[8]  := cbb44;
  ListSpeed[9]  := cbb50;
  ListSpeed[10] := cbb56;
  ListSpeed[11] := cbb62;
  ListSpeed[12] := cbb68;
  ListSpeed[13] := cbb74;
  ListSpeed[14] := cbb80;
  ListSpeed[15] := cbb86;
  ListSpeed[16] := cbb92;

  ListBits[1]  := cbb3;
  ListBits[2]  := cbb9;
  ListBits[3]  := cbb15;
  ListBits[4]  := cbb21;
  ListBits[5]  := cbb27;
  ListBits[6]  := cbb33;
  ListBits[7]  := cbb39;
  ListBits[8]  := cbb45;
  ListBits[9]  := cbb51;
  ListBits[10] := cbb57;
  ListBits[11] := cbb63;
  ListBits[12] := cbb69;
  ListBits[13] := cbb75;
  ListBits[14] := cbb81;
  ListBits[15] := cbb87;
  ListBits[16] := cbb93;

  ListParity[1]  := cbb4;
  ListParity[2]  := cbb10;
  ListParity[3]  := cbb16;
  ListParity[4]  := cbb22;
  ListParity[5]  := cbb28;
  ListParity[6]  := cbb34;
  ListParity[7]  := cbb40;
  ListParity[8]  := cbb46;
  ListParity[9]  := cbb52;
  ListParity[10] := cbb58;
  ListParity[11] := cbb64;
  ListParity[12] := cbb70;
  ListParity[13] := cbb76;
  ListParity[14] := cbb82;
  ListParity[15] := cbb88;
  ListParity[16] := cbb94;

  ListStopBits[1]  := cbb5;
  ListStopBits[2]  := cbb11;
  ListStopBits[3]  := cbb17;
  ListStopBits[4]  := cbb23;
  ListStopBits[5]  := cbb29;
  ListStopBits[6]  := cbb35;
  ListStopBits[7]  := cbb41;
  ListStopBits[8]  := cbb47;
  ListStopBits[9]  := cbb53;
  ListStopBits[10] := cbb59;
  ListStopBits[11] := cbb65;
  ListStopBits[12] := cbb71;
  ListStopBits[13] := cbb77;
  ListStopBits[14] := cbb83;
  ListStopBits[15] := cbb89;
  ListStopBits[16] := cbb95;

  ListH[1]  := cbb6;
  ListH[2]  := cbb12;
  ListH[3]  := cbb18;
  ListH[4]  := cbb24;
  ListH[5]  := cbb30;
  ListH[6]  := cbb36;
  ListH[7]  := cbb42;
  ListH[8]  := cbb48;
  ListH[9]  := cbb54;
  ListH[10] := cbb60;
  ListH[11] := cbb66;
  ListH[12] := cbb72;
  ListH[13] := cbb78;
  ListH[14] := cbb84;
  ListH[15] := cbb90;
  ListH[16] := cbb96;

  CBSendMainLog[1]  := CheckBox1;
  CBSendMainLog[2]  := CheckBox6;
  CBSendMainLog[3]  := CheckBox11;
  CBSendMainLog[4]  := CheckBox16;
  CBSendMainLog[5]  := CheckBox21;
  CBSendMainLog[6]  := CheckBox26;
  CBSendMainLog[7]  := CheckBox31;
  CBSendMainLog[8]  := CheckBox36;
  CBSendMainLog[9]  := CheckBox41;
  CBSendMainLog[10] := CheckBox46;
  CBSendMainLog[11] := CheckBox51;
  CBSendMainLog[12] := CheckBox56;
  CBSendMainLog[13] := CheckBox61;
  CBSendMainLog[14] := CheckBox66;
  CBSendMainLog[15] := CheckBox71;
  CBSendMainLog[16] := CheckBox76;

  CBSendSecondLog[1]  := CheckBox2;
  CBSendSecondLog[2]  := CheckBox7;
  CBSendSecondLog[3]  := CheckBox12;
  CBSendSecondLog[4]  := CheckBox17;
  CBSendSecondLog[5]  := CheckBox22;
  CBSendSecondLog[6]  := CheckBox27;
  CBSendSecondLog[7]  := CheckBox32;
  CBSendSecondLog[8]  := CheckBox37;
  CBSendSecondLog[9]  := CheckBox42;
  CBSendSecondLog[10] := CheckBox47;
  CBSendSecondLog[11] := CheckBox52;
  CBSendSecondLog[12] := CheckBox57;
  CBSendSecondLog[13] := CheckBox62;
  CBSendSecondLog[14] := CheckBox67;
  CBSendSecondLog[15] := CheckBox72;
  CBSendSecondLog[16] := CheckBox77;

  CBSendParserS[1]  := CheckBox3;
  CBSendParserS[2]  := CheckBox8;
  CBSendParserS[3]  := CheckBox13;
  CBSendParserS[4]  := CheckBox18;
  CBSendParserS[5]  := CheckBox23;
  CBSendParserS[6]  := CheckBox28;
  CBSendParserS[7]  := CheckBox33;
  CBSendParserS[8]  := CheckBox38;
  CBSendParserS[9]  := CheckBox43;
  CBSendParserS[10] := CheckBox48;
  CBSendParserS[11] := CheckBox53;
  CBSendParserS[12] := CheckBox58;
  CBSendParserS[13] := CheckBox63;
  CBSendParserS[14] := CheckBox68;
  CBSendParserS[15] := CheckBox73;
  CBSendParserS[16] := CheckBox78;

  CBSendTextFile[1]  := CheckBox4;
  CBSendTextFile[2]  := CheckBox9;
  CBSendTextFile[3]  := CheckBox14;
  CBSendTextFile[4]  := CheckBox19;
  CBSendTextFile[5]  := CheckBox24;
  CBSendTextFile[6]  := CheckBox29;
  CBSendTextFile[7]  := CheckBox34;
  CBSendTextFile[8]  := CheckBox39;
  CBSendTextFile[9]  := CheckBox44;
  CBSendTextFile[10] := CheckBox49;
  CBSendTextFile[11] := CheckBox54;
  CBSendTextFile[12] := CheckBox59;
  CBSendTextFile[13] := CheckBox64;
  CBSendTextFile[14] := CheckBox69;
  CBSendTextFile[15] := CheckBox74;
  CBSendTextFile[16] := CheckBox79;

  CBSendBinFile[1]  := CheckBox5;
  CBSendBinFile[2]  := CheckBox10;
  CBSendBinFile[3]  := CheckBox15;
  CBSendBinFile[4]  := CheckBox20;
  CBSendBinFile[5]  := CheckBox25;
  CBSendBinFile[6]  := CheckBox30;
  CBSendBinFile[7]  := CheckBox35;
  CBSendBinFile[8]  := CheckBox40;
  CBSendBinFile[9]  := CheckBox45;
  CBSendBinFile[10] := CheckBox50;
  CBSendBinFile[11] := CheckBox55;
  CBSendBinFile[12] := CheckBox60;
  CBSendBinFile[13] := CheckBox65;
  CBSendBinFile[14] := CheckBox70;
  CBSendBinFile[15] := CheckBox75;
  CBSendBinFile[16] := CheckBox80;

  BtLog[1]  := Button1;
  BtLog[2]  := Bt5;
  BtLog[3]  := Bt8;
  BtLog[4]  := Bt11;
  BtLog[5]  := Bt14;
  BtLog[6]  := Bt17;
  BtLog[7]  := Bt20;
  BtLog[8]  := Bt23;
  BtLog[9]  := Bt26;
  BtLog[10] := Bt29;
  BtLog[11] := Bt32;
  BtLog[12] := Bt35;
  BtLog[13] := Bt38;
  BtLog[14] := Bt41;
  BtLog[15] := Bt44;
  BtLog[16] := Bt47;

  ReadInd[1]  := req_1;
  ReadInd[2]  := req_2;
  ReadInd[3]  := req_3;
  ReadInd[4]  := req_4;
  ReadInd[5]  := req_5;
  ReadInd[6]  := req_6;
  ReadInd[7]  := req_7;
  ReadInd[8]  := req_8;
  ReadInd[9]  := req_9;
  ReadInd[10] := req_10;
  ReadInd[11] := req_11;
  ReadInd[12] := req_12;
  ReadInd[13] := req_13;
  ReadInd[14] := req_14;
  ReadInd[15] := req_15;
  ReadInd[16] := req_16;

  STCntErrTxt[1]  := req6;
  STCntErrTxt[2]  := req7;
  STCntErrTxt[3]  := req8;
  STCntErrTxt[4]  := req9;
  STCntErrTxt[5]  := req10;
  STCntErrTxt[6]  := req11;
  STCntErrTxt[7]  := req12;
  STCntErrTxt[8]  := req13;
  STCntErrTxt[9]  := req14;
  STCntErrTxt[10] := req15;
  STCntErrTxt[11] := req16;
  STCntErrTxt[12] := req17;
  STCntErrTxt[13] := req18;
  STCntErrTxt[14] := req19;
  STCntErrTxt[15] := req20;
  STCntErrTxt[16] := req21;

  STCntErrBin[1]  := req24;
  STCntErrBin[2]  := req25;
  STCntErrBin[3]  := req26;
  STCntErrBin[4]  := req27;
  STCntErrBin[5]  := req28;
  STCntErrBin[6]  := req29;
  STCntErrBin[7]  := req30;
  STCntErrBin[8]  := req31;
  STCntErrBin[9]  := req32;
  STCntErrBin[10] := req33;
  STCntErrBin[11] := req34;
  STCntErrBin[12] := req35;
  STCntErrBin[13] := req36;
  STCntErrBin[14] := req37;
  STCntErrBin[15] := req38;
  STCntErrBin[16] := req39;



  for numPort := 1 to CNT_PORTS do
    begin
      for i:= 1 to CNT_PORTS do
        isDataResend[numPort, i] := False;

      isSendFormAddLog[numPOrt] := False;
      if not isOpenPort[numPort] then
        ScanPorts(numPort);
      BtConnect[numPort].OnClick := BtConnectClick;
      RbSettings[numPort].OnClick := BtPortSettClick;
      RbSettings[numPort].Tag := numPort;
      ReadInd[numPort].Color := FormMultiPort.Color;
      ByteReadCnt[numPort] := 0;
      CBSendMainLog[numPort].Checked := PortSett[numPort].isSendMainLog;
      CBSendSecondLog[numPort].Checked := PortSett[numPort].isSendSecondLog;
      CBSendParserS[numPort].Checked := PortSett[numPort].isSendParser;

      CBSendMainLog[numPort].OnClick   := CheckBoxSendMainLogClick;
      CBSendSecondLog[numPort].OnClick := CheckSecondLogClick;
      CBSendParserS[numPort].OnClick := CheckSendParserClick;

      ListSpeed[numPort].OnKeyPress := EdtSpeed;
      ListSpeed[numPort].Text := IntToStr(PortSett[numPort].Speed);
      ListSpeed[numPort].OnChange := EdtSpeedChange;

      ListBits[numPort].OnChange := IndexBitsChange;
      ListBits[numPort].ItemIndex := PortSett[numPort].indexBits;

      ListParity[numPort].OnChange := IndexParityChange;
      ListParity[numPort].ItemIndex := PortSett[numPort].indexParity;

      ListStopBits[numPort].OnChange := IndexStopBitsChange;
      ListStopBits[numPort].ItemIndex := PortSett[numPort].indexStopBits;

      ListH[numPort].OnChange := IndexHChange;
      ListH[numPort].ItemIndex := PortSett[numPort].indexH;

      BtLog[numPort].OnClick := OpenLogClick;

      FormLogPort[numPort] := nil; //TFormLogPort.Create(nil);
      //FormLogPort[numPort].isUseMultiPort := True;

      if (PortSett[numPort].isSendTextFile) and (PortSett[numPort].FileNameTxt <> '') then
        begin
          try
            AssignFileMyText(numPort, PortSett[numPort].FileNameTxt);
            AppendMyText(numPort);
            CBSendTextFile[numPort].Hint := PortSett[numPort].FileNameTxt;
          except
            PortSett[numPort].isSendTextFile := False;
            PortSett[numPort].FileNameTxt := '';
          end;
        end;

      CBSendTextFile[numPort].ShowHint := PortSett[numPort].isSendTextFile;
      CBSendTextFile[numPort].Checked := PortSett[numPort].isSendTextFile;
      CBSendTextFile[numPort].OnClick := CheckBoxSelectTextFileClick;

      /////////////////
      if (PortSett[numPort].isSendBinFile) and (PortSett[numPort].FileNameBin <> '') then
        begin
          try
            AssignFileMyBin(numPort, PortSett[numPort].FileNameBin);
            SeekMyBin(numPort);
            CBSendBinFile[numPort].Hint := PortSett[numPort].FileNameBin;
          except
            PortSett[numPort].isSendBinFile := False;
            PortSett[numPort].FileNameBin := '';
          end;
        end;

      CBSendBinFile[numPort].ShowHint := true;
      CBSendBinFile[numPort].Checked := PortSett[numPort].isSendBinFile;
      CBSendBinFile[numPort].OnClick := CheckBoxSelectBinFileClick;

      isOpenPort[numPort] := False;
      RingBuf[numPort].Mutex := CreateMutex(nil, False, '');
      ReleaseMutex(RingBuf[numPort].Mutex);

      STCntErrTxt[numPort].Caption := '';
      STCntErrBin[numPort].Caption := '';

      CntErrIOTxt[numPort] := 0;
      CntErrIOBin[numPort] := 0;

      //PortSett[numPort].isSepByteRec := True;
      //PortSett[numPort].SepByteRec := 10;
      //PortSett[numPort].ReadMode := ReadASCII;
    end;
  NumPortCur := 1;
  SetCurPort(NumPortCur);
end;

procedure TFormMultiPort.Bt49Click(Sender: TObject);
var
  numPort : Integer;
begin
  for numPort := 1 to CNT_PORTS do
    if not isOpenPort[numPort] then
      ScanPorts(numPort);
end;

procedure TFormMultiPort.BtConnectClick(Sender: TObject);
var
  numPort : Integer;
  TimeOut : Integer;
begin
  numPort := (Sender as TButton).Tag;
  TimeOutByteRead[numPort] := 0;
  if isOpenPort[numPort] then
    begin
      CloseComPort(numPort);
      isOpenPort[numPort] := False;
    end
  else
    begin
      isOpenPort[numPort] := OpenPort(numPort);
      if not isOpenPort[numPort] then
        ShowMessage('Port open error!');
    end;

  if isOpenPort[numPort] then
    begin
      TerminalST.Form1.SetActBtSendInAdd(numPort + 2, true, ListPorts[numPort].Text, PortSett[numPort].SettLineLog.PName);
      if PortSett[numPort].SettLineLog.isClearBuffer then
        begin
          ResetRing(numPort);
          CntOut[numPort] := 0;
          ReadDataCnt[numPort] := 0;
          OutDataCnt[numPort] := 0;
          ByteLostCnt[numPort] := 0;
        end;
      ListPorts[numPort].Color := clLime;
      tmrRead.Interval := 1;
      (Sender as TButton).Caption := 'Disconnect';
      PortSett[numPort].Name := ListPorts[numPort].Text;

      //NumPortCur := numPort;
      RbSettings[numPort].Checked := True;
      //SetCurPort(NumPortCur);

      if not isThr[numPort] then
        begin
          RxThread[numPort] := TRxThread.Create(True);
          isThr[numPort] := True;
        end;
      RxThread[numPort].numPort := numPort;
      RxThread[numPort].Priority := tpIdle;
      RxThread[numPort].Resume;
    end
  else
    begin
      TerminalST.Form1.SetActBtSendInAdd(numPort + 2, false, PortSett[numPort].SettLineLog.PName, '');
      ListPorts[numPort].Color := clWindow;
      (Sender as TButton).Caption := 'Connect';

      if isThr[numPort] then
        begin
          RxThread[numPort].Terminate;
          TimeOut := 1000;
          while (not RxThread[numPort].Terminated) and (TimeOut > 0) do
            begin
              Sleep(1);
              Dec(TimeOut);
            end;
          RxThread[numPort].Free;
          isThr[numPort] := False;
        end;
      ScanPorts(numPort);
    end;

  ListPorts[numPort].Enabled := not isOpenPort[numPort];
  ListSpeed[numPort].Enabled := not isOpenPort[numPort];
  ListBits[numPort].Enabled := not isOpenPort[numPort];
  ListStopBits[numPort].Enabled := not isOpenPort[numPort];
  ListParity[numPort].Enabled := not isOpenPort[numPort];
  ListH[numPort].Enabled := not isOpenPort[numPort];
end;

procedure TFormMultiPort.Bt48Click(Sender: TObject);
var
  numPort, TimeOut : Integer;
begin
  for numPort := 1 to CNT_PORTS do
    begin
      CloseComPort(numPort);
      TerminalST.Form1.SetActBtSendInAdd(numPort + 2, false, PortSett[numPort].SettLineLog.PName, '');
      isOpenPort[numPort] := False;
      ListPorts[numPort].Enabled := not isOpenPort[numPort];
      ListSpeed[numPort].Enabled := not isOpenPort[numPort];
      ListBits[numPort].Enabled := not isOpenPort[numPort];
      ListStopBits[numPort].Enabled := not isOpenPort[numPort];
      ListParity[numPort].Enabled := not isOpenPort[numPort];
      ListH[numPort].Enabled := not isOpenPort[numPort];
      ListPorts[numPort].Color := clWindow;
      BtConnect[numPort].Caption := 'Connect';

      tmrRead.Interval := 1;


      if isThr[numPort] then
        begin
          RxThread[numPort].Terminate;
          TimeOut := 1000;
          while (not RxThread[numPort].Terminated) and (TimeOut > 0) do
            begin
              Sleep(1);
              Dec(TimeOut);
            end;
          RxThread[numPort].Free;
          isThr[numPort] := False;
        end;

      if PortSett[numPort].SettLineLog.isClearBuffer then
        begin
          ResetRing(numPort);
          CntOut[numPort] := 0;
          ReadDataCnt[numPort] := 0;
          OutDataCnt[numPort] := 0;
          ByteLostCnt[numPort] := 0;
          if NumPortCur = numPort then
            begin
              req1.Caption := '0';
              req3.Caption := '0';
              req4.Caption := '0';
            end;
        end;

    end;
end;

procedure SendInPort(numPort : byte; cntSend : Cardinal);
var
  Errors : DWORD;
  CntBytes : Cardinal;
begin
  PurgeComm(hCom[numPort], PURGE_TXABORT or PURGE_RXABORT or PURGE_TXCLEAR or PURGE_RXCLEAR);
  repeat
    ClearCommError(hCom[numPort], Errors ,@Stat[numPort]);
    if Stat[numPort].cbOutQue > 0 then Sleep(1);
  until Stat[numPort].cbOutQue = 0;

  WriteFile(hCom[numPort], BufSendInPort, cntSend, CntBytes,nil);
end;


procedure LogOut(numPort : byte);
var
  i, nPortTmp : integer;
  BeginStr : string;
  ResendStr : string;
  ColorLogCur : TColor;
begin
  if CntOut[numPort] > 0 then
    begin
      ColorLogCur := PortSett[numPort].SettLineLog.ColorLine;
      BeginStr := '';
      strOut := '';
      if PortSett[numPort].SettLineLog.isSendPort then
        begin
          if PortSett[numPort].SettLineLog.PName = '' then
            BeginStr := BeginStr + '[' + Format('%08s',[ListPorts[numPort].Text]) + ']'
          else
            BeginStr := BeginStr + '[' + Format('%08s', [PortSett[numPort].SettLineLog.PName] ) + ']'
        end;

      BeginStr := BeginStr + SetTimeStamp(PortSett[numPort].SettLineLog.isSendTime, TerminalST.Form1.isAddDate, LastTime[numPort]);

      if PortSett[numPort].SettLineLog.isSendCnt then
        BeginStr := BeginStr + '[' + Format('%03d', [CntOut[numPort]]) + ']';


      if PortSett[numPort].isSendBinFile then
        begin
          try
              case numPort of
              1:  BlockWrite(FileBin_1, BufOut[numPort], CntOut[numPort]);
              2:  BlockWrite(FileBin_2, BufOut[numPort], CntOut[numPort]);
              3:  BlockWrite(FileBin_3, BufOut[numPort], CntOut[numPort]);
              4:  BlockWrite(FileBin_4, BufOut[numPort], CntOut[numPort]);
              5:  BlockWrite(FileBin_5, BufOut[numPort], CntOut[numPort]);
              6:  BlockWrite(FileBin_6, BufOut[numPort], CntOut[numPort]);
              7:  BlockWrite(FileBin_7, BufOut[numPort], CntOut[numPort]);
              8:  BlockWrite(FileBin_8, BufOut[numPort], CntOut[numPort]);
              9:  BlockWrite(FileBin_9, BufOut[numPort], CntOut[numPort]);
              10: BlockWrite(FileBin_10, BufOut[numPort], CntOut[numPort]);
              11: BlockWrite(FileBin_11, BufOut[numPort], CntOut[numPort]);
              12: BlockWrite(FileBin_12, BufOut[numPort], CntOut[numPort]);
              13: BlockWrite(FileBin_13, BufOut[numPort], CntOut[numPort]);
              14: BlockWrite(FileBin_14, BufOut[numPort], CntOut[numPort]);
              15: BlockWrite(FileBin_15, BufOut[numPort], CntOut[numPort]);
              16: BlockWrite(FileBin_16, BufOut[numPort], CntOut[numPort]);
              end;

            //BlockWriteBinFile(numPort, @BufOut[numPort, 0], CntOut[numPort]);
          except
            PortSett[numPort].isSendBinFile := False;
            CloseFileMyBin(numPort);
            CBSendBinFile[numPort].Checked := False;
            ShowMessage('Error write binary file ' + IntToStr(numPort));
            CBSendBinFile[numPort].Color := clRed;
          end;
        end;

      for i := 0 to (CntOut[numPort] - 1) do
        begin
          Inc(FormMultiPort.BufCntBytesRead[numPort, BufOut[numPort, i]]);

          BufSendInPort[i] := BufOut[numPort, i];

          case PortSett[numPort].SettLineLog.ReadMode of
            ReadASCII: strOut := strOut + ChrZ(BufOut[numPort, i]);
            ReadHEX:   strOut := strOut + IntToHex(BufOut[numPort, i], 2) + ' ';
            ReadDEC:   strOut := strOut + Format('%03d', [BufOut[numPort, i]]) + ' ';
            ReadCUSTOM:strOut := strOut + ChrCustom(BufOut[numPort, i]);
          end;
          Inc(OutDataCnt[numPort]);
        end;

      //////////////
      if PortSett[numPort].isSendTextFile then
        begin
          if PortSett[numPort].SettLineLog.isSendDir then
            WriteLnMyText(numPort, BeginStr + '< ' + strOut)
          else
            WriteLnMyText(numPort, BeginStr + strOut);
        end;


      if Length(FormMultiPort.CWinOut.Text) > 15000 then
        FormMultiPort.CWinOut.Clear;

      if PortSett[numPort].SettLineLog.isSendDir then
        BeginStr := BeginStr + '< ';

      if NumPortCur = numPort then
        begin
          FormMultiPort.CWinOut.SelAttributes.Color := PortSett[numPort].SettLineLog.ColorLine;
          FormMultiPort.CWinOut.Lines.Add(BeginStr + strOut);
        end;

      if FormMultiPort.isSendFormAddLog[numPort] and (FormLogPort[NumPort] <> nil) then
        begin
          FormLogPort[NumPort].SendLineLog(BeginStr + strOut);
        end;

      FormPacketsCNT.CheckSubString(TTypeSrcData(NumPort + 2), BeginStr, strOut, DirRx);

      for nPortTmp := 1 to CNT_PORTS do
        begin
          if isOpenPort[nPortTmp] and isDataResend[numPort, nPortTmp] then
            begin
               SendInPort(nPortTmp, CntOut[numPort]);

               ResendStr := '';

               if PortSett[numPort].SettLineLog.isSendPort then
                 begin
                   if PortSett[nPortTmp].SettLineLog.PName = '' then
                     ResendStr := ResendStr + '[' + Format('%08s', [ListPorts[nPortTmp].Text]) + ']'
                   else
                     ResendStr := ResendStr + '[' + Format('%08s', [PortSett[nPortTmp].SettLineLog.PName] ) + ']'
                 end;

               ResendStr := ResendStr + SetTimeStamp(PortSett[numPort].SettLineLog.isSendTime, TerminalST.Form1.isAddDate, LastTime[numPort]);


               if PortSett[numPort].SettLineLog.isSendCnt then
                 ResendStr := ResendStr + '[' + Format('%03d', [CntOut[numPort]]) + ']';

               strOut := '';

               for i := 0 to (CntOut[numPort] - 1) do
                 begin
                   case PortSett[numPort].SettLineLog.ReadMode of
                     ReadASCII: strOut := strOut + ChrZ(BufSendInPort[i]);
                     ReadHEX:   strOut := strOut + IntToHex(BufSendInPort[i], 2) + ' ';
                     ReadDEC:   strOut := strOut + Format('%03d', [BufSendInPort[i]]) + ' ';
                     ReadCUSTOM:strOut := strOut + ChrCustom(BufSendInPort[i]);
                   end;
                 end;


               if PortSett[numPort].SettLineLog.isSendDir then
                 ResendStr := ResendStr + '> ';

               FormPacketsCNT.CheckSubString(TTypeSrcData(nPortTmp + 2), ResendStr, strOut, DirTx);

               ResendStr := ResendStr + strOut;

               if NumPortCur = numPort then
                 begin
                   FormMultiPort.CWinOut.SelAttributes.Color := PortSett[numPort].SettLineLog.ColorLine;
                   FormMultiPort.CWinOut.Lines.Add(ResendStr);
                 end;

               if FormMultiPort.isSendFormAddLog[numPort] and (FormLogPort[numPort] <> nil) then
                 begin
                   FormLogPort[numPort].SendLineLog(ResendStr);
                 end;

               if PortSett[numPort].isSendTextFile then
                 WriteLnMyText(numPort, ResendStr);


               ///////
               //if PortSett[numPort].isSendBinFile then
               //  begin
               //    try
               //      case numPort of
               //        1:  BlockWrite(FileBin_1,  BufSendInPort[numPort], CntOut[numPort]);
               //        2:  BlockWrite(FileBin_2,  BufSendInPort[numPort], CntOut[numPort]);
               //        3:  BlockWrite(FileBin_3,  BufSendInPort[numPort], CntOut[numPort]);
               //        4:  BlockWrite(FileBin_4,  BufSendInPort[numPort], CntOut[numPort]);
               //        5:  BlockWrite(FileBin_5,  BufSendInPort[numPort], CntOut[numPort]);
               //        6:  BlockWrite(FileBin_6,  BufSendInPort[numPort], CntOut[numPort]);
               //        7:  BlockWrite(FileBin_7,  BufSendInPort[numPort], CntOut[numPort]);
               //        8:  BlockWrite(FileBin_8,  BufSendInPort[numPort], CntOut[numPort]);
               //        9:  BlockWrite(FileBin_9,  BufSendInPort[numPort], CntOut[numPort]);
               //        10: BlockWrite(FileBin_10, BufSendInPort[numPort], CntOut[numPort]);
               //        11: BlockWrite(FileBin_11, BufSendInPort[numPort], CntOut[numPort]);
               //        12: BlockWrite(FileBin_12, BufSendInPort[numPort], CntOut[numPort]);
               //        13: BlockWrite(FileBin_13, BufSendInPort[numPort], CntOut[numPort]);
               //        14: BlockWrite(FileBin_14, BufSendInPort[numPort], CntOut[numPort]);
               //        15: BlockWrite(FileBin_15, BufSendInPort[numPort], CntOut[numPort]);
               //        16: BlockWrite(FileBin_16, BufSendInPort[numPort], CntOut[numPort]);
               //      end;
            //BlockWriteBinFile(numPort, @BufOut[numPort, 0], CntOut[numPort]);
               //    except
               //      PortSett[numPort].isSendBinFile := False;
               //      CloseFileMyBin(numPort);
               //      CBSendBinFile[numPort].Checked := False;
               //      ShowMessage('Error write binary file ' + IntToStr(numPort));
               //      CBSendBinFile[numPort].Color := clRed;
               //    end;
               //  end;

            ////////



               for i := 0 to (CntOut[numPort] - 1) do
                 Inc(FormMultiPort.BufCntBytesSend[nPortTmp, BufSendInPort[i]]);

            end;
        end;



      //////////////

      if PortSett[numPOrt].isSendMainLog then
        TerminalST.Form1.MemoUpd(LastTime[numPort], BeginStr, strOut, '', '', '', '', TRUE, ColorLogCur);




      if PortSett[numPOrt].isSendSecondLog then
        TerminalST.Form1.MemoUpd(LastTime[numPort], '', '', '', BeginStr + strOut, '', '', TRUE, ColorLogCur);

      if PortSett[numPort].isSendParser and TerminalST.Form1.isUseParserHEX then
        begin
          FormParser.SetNewStr(TTypeSrcData(numPort + 2), strOut, PortSett[numPort].SettLineLog.ReadMode = ReadHEX, LastTime[numPort])
        end;

      if PortSett[numPort].isSendParser and TerminalST.Form1.isUseParserASCII then
        FormParserASCII.SetNewStr1(TTypeSrcData(numPort + 2), strOut, PortSett[numPort].SettLineLog.ReadMode = ReadHEX, LastTime[numPort],  CntOut[numPort]);


      CntOut[numPort] := 0;
    end;
end;



procedure TFormMultiPort.tmrReadTimer(Sender: TObject);
var
  numPort : Byte;
  DateTime, dtTmp : TDateTime;
  i : Integer;
  isOut, isExit : Boolean;
  dt : Integer;
  tmp: byte;
begin
  reqTime1.Caption := TimeToStr(Now);
  for numPort := 1 to CNT_PORTS do
    begin
      isOut := FALSE;
      isExit := false;
      dtTmp := now;
      DateTime := 0;

      if (CntBytesFromMainForm[numPort] > 0) and isOpenPort[numPort] then
        begin
          for i := 0 to CntBytesFromMainForm[numPort] - 1 do
            begin
              BufSendInPort[i] := BufSendFromMainForm[numPort, i];
              Inc(FormMultiPort.BufCntBytesSend[numPort, BufSendFromMainForm[numPort, i]]);
            end;
          SendInPort(numPort, CntBytesFromMainForm[numPort]);

          if PortSett[numPort].isSendTextFile then
            begin
              WriteLnMyText(numPort, StrLogFromMainForm[numPort]);
            end;

          if NumPortCur = numPort then
            begin
              if Length(FormMultiPort.CWinOut.Text) > 15000 then
                FormMultiPort.CWinOut.Clear;
              FormMultiPort.CWinOut.SelAttributes.Color := ColorLogFromMainForm[numPort];
              FormMultiPort.CWinOut.Lines.Add(StrLogFromMainForm[numPort]);
            end;

          if FormMultiPort.isSendFormAddLog[numPort] and (FormLogPort[numPort] <> nil) then
            begin
              FormLogPort[NumPort].SendLineLog(StrLogFromMainForm[numPort]);
            end;

          CntBytesFromMainForm[numPort] := 0;
        end;

      while (not isOut) and (not isExit) do
        begin
          isExit := not ReadRingBuf(numPort, @tmp, @DateTime);

          if PortSett[numPort].SettLineLog.isSepBef_1 and (not isExit) and (tmp = PortSett[numPort].SettLineLog.SepBef_1) then
            begin
              LogOut(numPort);
            end;

          if PortSett[numPort].SettLineLog.isSepBef_2 and (not isExit) and (tmp = PortSett[numPort].SettLineLog.SepBef_2) then
            begin
              LogOut(numPort);
            end;

          if PortSett[numPort].SettLineLog.isSepPause then
            begin
              if not isExit then
                begin
                  if (IncMilliSecond(LastTime[numPort], PortSett[numPort].SettLineLog.SepTime) < DateTime) and (LastTime[numPort] > 0) then
                    begin
                      LogOut(numPort);
                    end;
                end
              else
                begin
                  if (IncMilliSecond(LastTime[numPort], PortSett[numPort].SettLineLog.SepTime) < now) and (LastTime[numPort] > 0) then
                    begin
                      LogOut(numPort);
                    end;
                end;
            end;

          if not isExit then
            begin
              BufOut[numPort, CntOut[numPort]] := tmp;
              LastTime[numPort] := DateTime;
              inc(CntOut[numPort]);
            end;

          isOut := CntOut[numPort] >= BUF_SIZE_ADD_PORTS;

          if PortSett[numPort].SettLineLog.ReadMode = ReadASCII then
            begin
              isOut := isOut or (PortSett[numPort].SettLineLog.isSep_0D   and (CntOut[numPort] > 0)   and (BufOut[numPort, CntOut[numPort] - 1] = $0D));
              isOut := isOut or (PortSett[numPort].SettLineLog.isSep_0A   and (CntOut[numPort] > 0)   and (BufOut[numPort, CntOut[numPort] - 1] = $0A));
              isOut := isOut or (PortSett[numPort].SettLineLog.isSep_00   and (CntOut[numPort] > 0)   and (BufOut[numPort, CntOut[numPort] - 1] = $00));
              isOut := isOut or (PortSett[numPort].SettLineLog.isSep_0D0A and (CntOut[numPort] > 1)   and (BufOut[numPort, CntOut[numPort] - 2] = $0D)
                                                                                                      and (BufOut[numPort, CntOut[numPort] - 1] = $0A));
            end;

          isOut := isOut or (PortSett[numPort].SettLineLog.isSepByteRec and (CntOut[numPort] >= PortSett[numPort].SettLineLog.SepByteRec));

          isOut := isOut or (PortSett[numPort].SettLineLog.isSep_1_4 and (CntOut[numPort] > 3) and (BufOut[numPort, CntOut[numPort] - 1] = PortSett[numPort].SettLineLog.Sep_1_4_4)
                                                                                               and (BufOut[numPort, CntOut[numPort] - 2] = PortSett[numPort].SettLineLog.Sep_1_4_3)
                                                                                               and (BufOut[numPort, CntOut[numPort] - 3] = PortSett[numPort].SettLineLog.Sep_1_4_2)
                                                                                               and (BufOut[numPort, CntOut[numPort] - 4] = PortSett[numPort].SettLineLog.Sep_1_4_1));

          isOut := isOut or (PortSett[numPort].SettLineLog.isSep_2_4 and (CntOut[numPort] > 3) and (BufOut[numPort, CntOut[numPort] - 1] = PortSett[numPort].SettLineLog.Sep_2_4_4)
                                                                                               and (BufOut[numPort, CntOut[numPort] - 2] = PortSett[numPort].SettLineLog.Sep_2_4_3)
                                                                                               and (BufOut[numPort, CntOut[numPort] - 3] = PortSett[numPort].SettLineLog.Sep_2_4_2)
                                                                                               and (BufOut[numPort, CntOut[numPort] - 4] = PortSett[numPort].SettLineLog.Sep_2_4_1));

          isOut := isOut or (PortSett[numPort].SettLineLog.isSep_1_3 and (CntOut[numPort] > 2) and (BufOut[numPort, CntOut[numPort] - 1] = PortSett[numPort].SettLineLog.Sep_1_3_3)
                                                                                               and (BufOut[numPort, CntOut[numPort] - 2] = PortSett[numPort].SettLineLog.Sep_1_3_2)
                                                                                               and (BufOut[numPort, CntOut[numPort] - 3] = PortSett[numPort].SettLineLog.Sep_1_3_1));

          isOut := isOut or (PortSett[numPort].SettLineLog.isSep_2_3 and (CntOut[numPort] > 2) and (BufOut[numPort, CntOut[numPort] - 1] = PortSett[numPort].SettLineLog.Sep_2_3_3)
                                                                                               and (BufOut[numPort, CntOut[numPort] - 2] = PortSett[numPort].SettLineLog.Sep_2_3_2)
                                                                                               and (BufOut[numPort, CntOut[numPort] - 3] = PortSett[numPort].SettLineLog.Sep_2_3_1));

          isOut := isOut or (PortSett[numPort].SettLineLog.isSep_1_2 and (CntOut[numPort] > 1) and (BufOut[numPort, CntOut[numPort] - 1] = PortSett[numPort].SettLineLog.Sep_1_2_2)
                                                                                               and (BufOut[numPort, CntOut[numPort] - 2] = PortSett[numPort].SettLineLog.Sep_1_2_1));

          isOut := isOut or (PortSett[numPort].SettLineLog.isSep_2_2 and (CntOut[numPort] > 1) and (BufOut[numPort, CntOut[numPort] - 1] = PortSett[numPort].SettLineLog.Sep_2_2_2)
                                                                                               and (BufOut[numPort, CntOut[numPort] - 2] = PortSett[numPort].SettLineLog.Sep_2_2_1));

          isOut := isOut or (PortSett[numPort].SettLineLog.isSep_1_1 and (CntOut[numPort] > 0) and (BufOut[numPort, CntOut[numPort] - 1] = PortSett[numPort].SettLineLog.Sep_1_1_1));

          isOut := isOut or (PortSett[numPort].SettLineLog.isSep_2_1 and (CntOut[numPort] > 0) and (BufOut[numPort, CntOut[numPort] - 1] = PortSett[numPort].SettLineLog.Sep_2_1_1));

          if isOut then
            LogOut(numPort);
        end;

      if ByteReadCnt[numPort] <> ByteReadCntTmp[numPort] then
        TimeOutByteRead[numPort] := 50;

      if TimeOutByteRead[numPort] > 0 then
        Dec(TimeOutByteRead[numPort]);

      if TimeOutByteRead[numPort] > 0 then
        ReadInd[numPort].Color := clLime
      else
        ReadInd[numPort].Color := FormMultiPort.Color;

      ByteReadCntTmp[numPort] := ByteReadCnt[numPort];
    end;

  req1.Caption := IntToStr(ReadDataCnt[NumPortCur]);
  req3.Caption := IntToStr(OutDataCnt[NumPortCur]);
  req4.Caption := IntToStr(ByteLostCnt[NumPortCur]);

  if ByteLostCnt[NumPortCur] > 0 then
    req4.Color := clYellow
  else
    req4.Color := FormMultiPort.Color;
end;

procedure TFormMultiPort.BtPortSettClick(Sender: TObject);
begin
  FormMultiPort.CWinOut.Clear;
  SetCurPort((Sender as TRadioButton).Tag);
end;

procedure TFormMultiPort.Edt1Change(Sender: TObject);
begin
  PortSett[NumPortCur].SettLineLog.PName := (Sender as TEdit).Text;
end;

procedure TFormMultiPort.Chchk3Click(Sender: TObject);
begin
  PortSett[NumPortCur].SettLineLog.isSendPort := (Sender as TCheckBox).Checked;
end;

procedure TFormMultiPort.Chchk1Click(Sender: TObject);
begin
  PortSett[NumPortCur].SettLineLog.isSendTime := (Sender as TCheckBox).Checked;
end;

procedure TFormMultiPort.Chchk2Click(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSendCnt := (Sender as TCheckBox).Checked;
end;

procedure TFormMultiPort.ChDir0Click(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSendDir := (Sender as TCheckBox).Checked;
end;

procedure TFormMultiPort.ChChSep0DClick(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSep_0D := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSep_0D then
    begin
      ChChSep0D.Color := COLOR_LINE_SEP;
    end
  else
    begin
      ChChSep0D.Color := Form1.Color;
    end;
end;

procedure TFormMultiPort.ChChSep0AClick(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSep_0A := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSep_0A then
    begin
      ChChSep0A.Color := COLOR_LINE_SEP;
    end
  else
    begin
      ChChSep0A.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.ChChSep00Click(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSep_00 := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSep_00 then
    begin
      ChChSep00.Color := COLOR_LINE_SEP;
    end
  else
    begin
      ChChSep00.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.ChChSep0D0AClick(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSep_0D0A := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSep_0D0A then
    begin
      ChChSep0D0A.Color := COLOR_LINE_SEP;
    end
  else
    begin
      ChChSep0D0A.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.ChChSepTimeClick(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSepPause := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSepPause then
    begin
      EdtEdtPauseRx1.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtEdtPauseRx1.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.ChChSepCntClick(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSepByteRec := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSepByteRec then
    begin
      EdtEdtCntSep1.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtEdtCntSep1.Color := Form1.Color;
    end;
end;

procedure TFormMultiPort.Chchk7Click(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSep_1_4 := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSep_1_4 then
    begin
      edtEdtedt1_4_1.Color := COLOR_LINE_SEP;
      edtEdtedt1_4_2.Color := COLOR_LINE_SEP;
      edtEdtedt1_4_3.Color := COLOR_LINE_SEP;
      edtEdtedt1_4_4.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtedt1_4_1.Color := Form1.Color;
      edtEdtedt1_4_2.Color := Form1.Color;
      edtEdtedt1_4_3.Color := Form1.Color;
      edtEdtedt1_4_4.Color := Form1.Color;
    end;
end;

procedure TFormMultiPort.Chchk11Click(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSep_2_4 := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSep_2_4 then
    begin
      edtEdtedt2_4_1.Color := COLOR_LINE_SEP;
      edtEdtedt2_4_2.Color := COLOR_LINE_SEP;
      edtEdtedt2_4_3.Color := COLOR_LINE_SEP;
      edtEdtedt2_4_4.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtedt2_4_1.Color := Form1.Color;
      edtEdtedt2_4_2.Color := Form1.Color;
      edtEdtedt2_4_3.Color := Form1.Color;
      edtEdtedt2_4_4.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.Chchk8Click(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSep_1_3 := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSep_1_3 then
    begin
      edtEdtedt1_3_1.Color := COLOR_LINE_SEP;
      edtEdtedt1_3_2.Color := COLOR_LINE_SEP;
      edtEdtedt1_3_3.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtedt1_3_1.Color := Form1.Color;
      edtEdtedt1_3_2.Color := Form1.Color;
      edtEdtedt1_3_3.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.Chchk12Click(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSep_2_3 := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSep_2_3 then
    begin
      edtEdtedt2_3_1.Color := COLOR_LINE_SEP;
      edtEdtedt2_3_2.Color := COLOR_LINE_SEP;
      edtEdtedt2_3_3.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtedt2_3_1.Color := Form1.Color;
      edtEdtedt2_3_2.Color := Form1.Color;
      edtEdtedt2_3_3.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.Chchk9Click(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSep_1_2 := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSep_1_2 then
    begin
      edtEdtedt1_2_1.Color := COLOR_LINE_SEP;
      edtEdtedt1_2_2.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtedt1_2_1.Color := Form1.Color;
      edtEdtedt1_2_2.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.Chchk13Click(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSep_2_2 := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSep_2_2 then
    begin
      edtEdtedt2_2_1.Color := COLOR_LINE_SEP;
      edtEdtedt2_2_2.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtedt2_2_1.Color := Form1.Color;
      edtEdtedt2_2_2.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.ChChSepSymbolClick(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSep_1_1 := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSep_1_1 then
    begin
      edtEdtedt1_1_1.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtedt1_1_1.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.Chchk10Click(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSep_2_1 := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSep_2_1 then
    begin
      edtEdtedt2_1_1.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtedt2_1_1.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.ChChCBBefByte2Click(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSepBef_1 := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSepBef_1 then
    begin
      EdtEdtBefSym21.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtEdtBefSym21.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.ChChCBBefByte1Click(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isSepBef_2 := (Sender as TCheckBox).Checked;

  if PortSett[NumPortCur].SettLineLog.isSepBef_2 then
    begin
      EdtEdtBefSym11.Color := COLOR_LINE_SEP;
    end
  else
    begin
      EdtEdtBefSym11.Color := Form1.Color;
    end;

end;

procedure TFormMultiPort.ChClrBuf0Click(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.isClearBuffer := (Sender as TCheckBox).Checked;
end;



function SetHexEdit(Sender: TObject; oldData : Byte) : Byte;
var Str: string[3];
    res: Integer;
begin
  res := oldData;
  if ((Sender as TEdit).Text <> '') and (Length((Sender as TEdit).Text) = 2) then
    begin
      Str := (Sender as TEdit).Text;
      res := HexToInt(Str[1]) * 16 + HexToInt(Str[2]);
    end;
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(res);
  Result := res;
end;



procedure TFormMultiPort.edtEdtedt1_4_1Change(Sender: TObject);
begin
  PortSett[NumPortCur].SettLineLog.Sep_1_4_1 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_1_4_1);
end;

procedure TFormMultiPort.edtEdtedt2_4_1Change(Sender: TObject);
begin
  PortSett[NumPortCur].SettLineLog.Sep_2_4_1 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_2_4_1);
end;

procedure TFormMultiPort.edtEdtedt1_4_2Change(Sender: TObject);
begin
  PortSett[NumPortCur].SettLineLog.Sep_1_4_2 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_1_4_2);
end;

procedure TFormMultiPort.edtEdtedt2_4_2Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_2_4_2 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_2_4_2);
end;

procedure TFormMultiPort.edtEdtedt1_4_3Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_1_4_3 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_1_4_3);
end;

procedure TFormMultiPort.edtEdtedt2_4_3Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_2_4_3 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_2_4_3);
end;

procedure TFormMultiPort.edtEdtedt1_4_4Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_1_4_4 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_1_4_4);
end;

procedure TFormMultiPort.edtEdtedt2_4_4Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_2_4_4 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_2_4_4);
end;

procedure TFormMultiPort.edtEdtedt1_3_1Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_1_3_1 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_1_3_1);
end;

procedure TFormMultiPort.edtEdtedt2_3_1Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_2_3_1 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_2_3_1);
end;

procedure TFormMultiPort.edtEdtedt1_3_2Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_1_3_2 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_1_3_2);
end;

procedure TFormMultiPort.edtEdtedt1_3_3Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_1_3_3 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_1_3_3);
end;

procedure TFormMultiPort.edtEdtedt2_3_3Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_2_3_3 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_2_3_3);
end;

procedure TFormMultiPort.edtEdtedt2_3_2Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_2_3_2 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_2_3_2);
end;

procedure TFormMultiPort.edtEdtedt1_2_1Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_1_2_1 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_1_2_1);
end;

procedure TFormMultiPort.edtEdtedt1_2_2Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_1_2_2 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_1_2_2);
end;

procedure TFormMultiPort.edtEdtedt2_2_1Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_2_2_1 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_2_2_1);
end;

procedure TFormMultiPort.edtEdtedt2_2_2Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_2_2_2 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_2_2_2);
end;

procedure TFormMultiPort.edtEdtedt1_1_1Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_1_1_1 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_1_1_1);
end;

procedure TFormMultiPort.edtEdtedt2_1_1Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.Sep_2_1_1 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.Sep_2_1_1);
end;

procedure TFormMultiPort.EdtEdtBefSym21Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.SepBef_1 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.SepBef_1);
end;

procedure TFormMultiPort.EdtEdtBefSym11Change(Sender: TObject);
begin
PortSett[NumPortCur].SettLineLog.SepBef_2 := SetHexEdit(Sender, PortSett[NumPortCur].SettLineLog.SepBef_2);
end;


function SetDecEdit(Sender: TObject; oldData : Cardinal) : Cardinal;
var Str: string[3];
    res: Cardinal;
begin
  res := oldData;
  if (Sender as TEdit).Text <> '' then
    begin
      res := StrToInt((Sender as TEdit).Text);
      //(Sender as TEdit).Color := clWindow;
    end;
  //else
    //(Sender as TEdit).Color := clYellow;
  Result := res;
end;


procedure TFormMultiPort.EdtEdtPauseRx1Change(Sender: TObject);
begin
  PortSett[NumPortCur].SettLineLog.SepTime := SetDecEdit(Sender, PortSett[NumPortCur].SettLineLog.SepTime);
end;

procedure TFormMultiPort.EdtEdtCntSep1Change(Sender: TObject);
begin
  PortSett[NumPortCur].SettLineLog.SepByteRec := SetDecEdit(Sender, PortSett[NumPortCur].SettLineLog.SepByteRec);
end;

procedure TFormMultiPort.EdtEdtPauseRx1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TFormMultiPort.EdtEdtCntSep1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;


procedure TFormMultiPort.EdtSpeed(Sender: TObject; var Key: Char);
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



procedure TFormMultiPort.edtEdtedt1_4_1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt1_4_2KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt1_4_3KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt1_4_4KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt1_3_1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt1_3_2KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt1_2_1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt1_2_2KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt1_1_1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt2_4_1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt2_4_2KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt2_4_3KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt2_4_4KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt2_3_1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt2_3_2KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt2_3_3KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt2_2_1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt2_2_2KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.edtEdtedt2_1_1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.EdtEdtBefSym21KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.EdtEdtBefSym11KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormMultiPort.cbb97Change(Sender: TObject);
begin
  PortSett[NumPortCur].SettLineLog.ReadMode :=  TTypeReadMode((Sender as TCombobox).ItemIndex);
end;

procedure TFormMultiPort.req5Click(Sender: TObject);
begin
  ColorDialog1.Color := PortSett[NumPortCur].SettLineLog.ColorLine;
  if ColorDialog1.Execute then
    begin
      PortSett[NumPortCur].SettLineLog.ColorLine := ColorDialog1.Color;
      (Sender as TStaticText).Color := PortSett[NumPortCur].SettLineLog.ColorLine;
      (Sender as TStaticText).Font.Color := $FFFFFF - PortSett[NumPortCur].SettLineLog.ColorLine;
      FormMultiPort.CWinOut.SelAttributes.Color := PortSett[NumPortCur].SettLineLog.ColorLine;
    end;
end;

procedure TFormMultiPort.ud1Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
    begin
      if PortSett[NumPortCur].SettLineLog.SepTime < 10 then
        PortSett[NumPortCur].SettLineLog.SepTime  := PortSett[NumPortCur].SettLineLog.SepTime  + 1
      else if PortSett[NumPortCur].SettLineLog.SepTime  < 100 then
        PortSett[NumPortCur].SettLineLog.SepTime  := PortSett[NumPortCur].SettLineLog.SepTime  + 5
      else if PortSett[NumPortCur].SettLineLog.SepTime  < 1000 then
        PortSett[NumPortCur].SettLineLog.SepTime  := PortSett[NumPortCur].SettLineLog.SepTime  + 50
      else if PortSett[NumPortCur].SettLineLog.SepTime  < 10000 then
        PortSett[NumPortCur].SettLineLog.SepTime  := PortSett[NumPortCur].SettLineLog.SepTime  + 500
      else if PortSett[NumPortCur].SettLineLog.SepTime  < 100000 then
        PortSett[NumPortCur].SettLineLog.SepTime  := PortSett[NumPortCur].SettLineLog.SepTime  + 5000
      else if PortSett[NumPortCur].SettLineLog.SepTime  < 1000000 then
        PortSett[NumPortCur].SettLineLog.SepTime  := PortSett[NumPortCur].SettLineLog.SepTime  + 50000;
      if PortSett[NumPortCur].SettLineLog.SepTime  > 999999 then
        PortSett[NumPortCur].SettLineLog.SepTime  :=  999999;
    end;

  if Button = btPrev then
    begin
      if (PortSett[NumPortCur].SettLineLog.SepTime  = 999999) then PortSett[NumPortCur].SettLineLog.SepTime  := 1000000;

      if (PortSett[NumPortCur].SettLineLog.SepTime  < 10) and (PortSett[NumPortCur].SettLineLog.SepTime  > 0) then
        PortSett[NumPortCur].SettLineLog.SepTime  := PortSett[NumPortCur].SettLineLog.SepTime  - 1
      else if (PortSett[NumPortCur].SettLineLog.SepTime  < 100) and (PortSett[NumPortCur].SettLineLog.SepTime  >= 10) then
        PortSett[NumPortCur].SettLineLog.SepTime  := PortSett[NumPortCur].SettLineLog.SepTime  - 5
      else if (PortSett[NumPortCur].SettLineLog.SepTime  < 1000) and (PortSett[NumPortCur].SettLineLog.SepTime  >= 100) then
        PortSett[NumPortCur].SettLineLog.SepTime  := PortSett[NumPortCur].SettLineLog.SepTime  - 50
      else if (PortSett[NumPortCur].SettLineLog.SepTime  < 10000) and (PortSett[NumPortCur].SettLineLog.SepTime  >= 1000) then
        PortSett[NumPortCur].SettLineLog.SepTime  := PortSett[NumPortCur].SettLineLog.SepTime  - 500
      else if (PortSett[NumPortCur].SettLineLog.SepTime  < 100000) and (PortSett[NumPortCur].SettLineLog.SepTime  >= 10000)then
        PortSett[NumPortCur].SettLineLog.SepTime  := PortSett[NumPortCur].SettLineLog.SepTime  - 5000
      else if PortSett[NumPortCur].SettLineLog.SepTime  >= 100000 then
        PortSett[NumPortCur].SettLineLog.SepTime  := PortSett[NumPortCur].SettLineLog.SepTime  - 50000;
    end;

    EdtEdtPauseRx1.Text := IntToStr(PortSett[NumPortCur].SettLineLog.SepTime);
end;


procedure TFormMultiPort.CheckBoxSendMainLogClick(Sender: TObject);
var
  numPort : Integer;
begin
  numPort := (Sender as TCheckBox).Tag;
  PortSett[numPOrt].isSendMainLog := (Sender as TCheckBox).Checked;
end;

procedure TFormMultiPort.Bt53Click(Sender: TObject);
begin
  CWinOut.Clear;
end;

procedure TFormMultiPort.Bt54Click(Sender: TObject);
begin
  CWinOut.SelectAll;
  CWinOut.CopyToClipboard;
end;

procedure TFormMultiPort.req2Click(Sender: TObject);
begin
  ColorDialog1.Color := PortSett[NumPortCur].SettLineLog.BGLogColor;
  if ColorDialog1.Execute then
    begin
      PortSett[NumPortCur].SettLineLog.BGLogColor := ColorDialog1.Color;
      (Sender as TStaticText).Color := PortSett[NumPortCur].SettLineLog.BGLogColor;
      (Sender as TStaticText).Font.Color := $FFFFFF - PortSett[NumPortCur].SettLineLog.BGLogColor;
      FormMultiPort.CWinOut.Color := PortSett[NumPortCur].SettLineLog.BGLogColor;
    end;
end;

procedure TFormMultiPort.CheckSecondLogClick(Sender: TObject);
var
  numPort : Integer;
begin
  numPort := (Sender as TCheckBox).Tag;
  PortSett[numPOrt].isSendSecondLog := (Sender as TCheckBox).Checked;
end;


procedure TFormMultiPort.CheckSendParserClick(Sender: TObject);
var
  numPort : Integer;
begin
  numPort := (Sender as TCheckBox).Tag;
  PortSett[numPOrt].isSendParser := (Sender as TCheckBox).Checked;
end;

procedure TFormMultiPort.EdtSpeedChange(Sender: TObject);
var
  numPort : Integer;
  speedStr : string[10];
begin
  NumPort := (Sender as TComboBox).Tag;
  speedStr := (Sender as TComboBox).Text;
  if speedStr <> '' then
    PortSett[numPort].Speed := StrToInt(speedStr);
end;

procedure TFormMultiPort.IndexBitsChange(Sender: TObject);
  var
    numPort : Integer;
begin
  NumPort := (Sender as TComboBox).Tag;
  PortSett[numPort].indexBits := (Sender as TComboBox).ItemIndex;
end;

procedure TFormMultiPort.IndexParityChange(Sender: TObject);
  var
    numPort : Integer;
begin
  NumPort := (Sender as TComboBox).Tag;
  PortSett[numPort].indexParity := (Sender as TComboBox).ItemIndex;
end;

procedure TFormMultiPort.IndexStopBitsChange(Sender: TObject);
  var
    numPort : Integer;
begin
  NumPort := (Sender as TComboBox).Tag;
  PortSett[numPort].indexStopBits := (Sender as TComboBox).ItemIndex;
end;

procedure TFormMultiPort.IndexHChange(Sender: TObject);
  var
    numPort : Integer;
begin
  NumPort := (Sender as TComboBox).Tag;
  PortSett[numPort].indexH := (Sender as TComboBox).ItemIndex;
end;

procedure TFormMultiPort.FormActivate(Sender: TObject);
begin
  FontSizeInLog := TerminalSt.Form1.FontSize;
  CWinOut.Font.Size := FontSizeInLog;
  tmrRead.Enabled :=True;
end;

procedure TFormMultiPort.OpenLogClick(Sender: TObject);
var
  numPort : Integer;
begin
  numPort := (Sender as TButton).Tag;

  if FormLogPort[numPort] = nil then
    begin
      FormLogPort[numPort] := TFormLogPort.Create(nil);
      FormLogPort[numPort].isUseMultiPort := True;
    end;
  FormLogPort[numPort].NumPort := numPort;
  FormLogPort[numPort].BGColor := PortSett[numPort].SettLineLog.BGLogColor;
  FormLogPort[numPort].FontColor := PortSett[numPort].SettLineLog.ColorLine;
  FormLogPort[numPort].FontSize := TerminalST.Form1.FontSize;
  FormLogPort[numPort].Caption := 'PortB_' + IntToStr(numPort) + ' ' + PortSett[numPort].Name + ' ' + PortSett[numPort].SettLineLog.PName;
  FormLogPort[numPort].Show;
  FormLogPort[numPort].WindowState := wsNormal;
  isSendFormAddLog[numPort] := True;
end;

procedure TFormMultiPort.Bt1Click(Sender: TObject);
var
  numPort : Integer;
  Ws, Hs : Integer;
  Width : Integer;
  CntUse : Integer;
  numW   : Integer;
begin
  Ws := Screen.Width;
  Hs := Screen.Height;

  CntUse := 0;

  for numPort := 1 to CNT_PORTS do
    begin
      if isOpenPort[numPOrt] then
        Inc(CntUse);
    end;

  if CntUse > 0 then
    begin
      numW := 0;
      Width := Round(Ws / CntUse);
      for numPort := 1 to CNT_PORTS do
        begin
          if isOpenPort[numPOrt] then
            begin
              inc(numW);
              if FormLogPort[numPort] = nil then
                begin
                  FormLogPort[numPort] := TFormLogPort.Create(nil);
                  FormLogPort[numPort].isUseMultiPort := True;
                end;
              FormLogPort[numPort].NumPort := numPort;
              FormLogPort[numPort].Left := (Round(Ws / CntUse)) * (numW - 1) + 5;
              FormLogPort[numPort].Top := 30;
              FormLogPort[numPort].Height := Hs - 60;
              FormLogPort[numPort].Width := Width;
              FormLogPort[numPort].BGColor := PortSett[numPort].SettLineLog.BGLogColor;
              FormLogPort[numPort].FontColor := PortSett[numPort].SettLineLog.ColorLine;
              FormLogPort[numPort].FontSize := TerminalST.Form1.FontSize;
              FormLogPort[numPort].Caption := 'PortB_' + IntToStr(numPort) + ' ' + PortSett[numPort].Name + ' ' + PortSett[numPort].SettLineLog.PName;
              FormLogPort[numPort].Show;
              FormLogPort[numPort].WindowState := wsNormal;
              isSendFormAddLog[numPort] := True;
            end;
        end;
    end;
end;

procedure TFormMultiPort.Bt50Click(Sender: TObject);
begin
  ResetRing(NumPortCur);
  CntOut[NumPortCur] := 0;
  ReadDataCnt[NumPortCur] := 0;
  OutDataCnt[NumPortCur] := 0;
  ByteLostCnt[NumPortCur] := 0;
  req1.Caption   := IntToStr(ReadDataCnt[NumPortCur]);
  req3.Caption  := IntToStr(OutDataCnt[NumPortCur]);
  req4.Caption := IntToStr(ByteLostCnt[NumPortCur]);
  req4.Color := FormMultiPort.Color;
end;

procedure TFormMultiPort.Bt51Click(Sender: TObject);
begin
  Bt52.Enabled := True;
  Button2.Enabled := True;
  SettLineLogBuf := PortSett[NumPortCur].SettLineLog;
end;

procedure TFormMultiPort.Bt52Click(Sender: TObject);
begin
  PortSett[NumPortCur].SettLineLog := SettLineLogBuf;
  SetCurPort(NumPortCur);
end;

procedure TFormMultiPort.Button2Click(Sender: TObject);
var
  numPort : Integer;
  BufPName : string[10];
  BufBGColor : TColor;
  BufLineColor : TColor;

begin
  for numPort := 1 to CNT_PORTS do
    begin
      BufPName := PortSett[numPort].SettLineLog.PName;
      BufBGColor := PortSett[numPort].SettLineLog.BGLogColor;
      BufLineColor := PortSett[numPort].SettLineLog.ColorLine;
      PortSett[numPort].SettLineLog := SettLineLogBuf;
      PortSett[numPort].SettLineLog.PName := BufPName;
      PortSett[numPort].SettLineLog.BGLogColor := BufBGColor;
      PortSett[numPort].SettLineLog.ColorLine := BufLineColor;
    end;
  SetCurPort(NumPortCur);
end;

procedure TFormMultiPort.SetSendDataInParser(numPort : byte);
begin
  CBSendParserS[numPort].Checked := True;
  PortSett[numPOrt].isSendParser := True;
end;

procedure TFormMultiPort.CheckBoxSelectTextFileClick(Sender: TObject);
var
  numPort : Integer;
begin
  numPort := (Sender as TCheckBox).Tag;
  if (Sender as TCheckBox).Checked then
    begin
      (Sender as TCheckBox).Color := clYellow;
      dlgOpenSelFile.Title := 'Select a file to record the log';
      dlgOpenSelFile.InitialDir := CfgTerminal.LogDir;
      if dlgOpenSelFile.Execute then
        begin
          try
            AssignFileMyText(numPort, dlgOpenSelFile.FileName);
            ActFileLog.FileName.Caption := dlgOpenSelFile.FileName;
            ActFileLog.ShowModal;
            if ActFileLog.isRewrite then
              begin
                RewriteMyText(numPort);
              end;
            if ActFileLog.isAppend then
              begin
                AppendMyText(numPort);
              end;
            if not ActFileLog.isChangeMind then
              begin
                PortSett[numPort].isSendTextFile := True;
               (Sender as TCheckBox).Hint := dlgOpenSelFile.FileName;
              end;
            PortSett[numPort].FileNameTxt := dlgOpenSelFile.FileName;
          except
            PortSett[numPort].isSendTextFile := False;
            ShowMessage('Error opening file');
          end;
        end
      else
        begin
          (Sender as TCheckBox).Checked := False;
        end;
    end
  else if PortSett[numPort].isSendTextFile then
    begin
      PortSett[numPort].isSendTextFile := False;
      CloseFileMyText(numPort);
      dlgOpenSelFile.Title := 'Select a file to view the log';
      dlgOpenSelFile.InitialDir := CfgTerminal.LogDir;
      if dlgOpenSelFile.Execute then
        ShellExecute(Handle, 'open' , 'notepad.exe', PChar(dlgOpenSelFile.FileName), nil, SW_SHOWNORMAL);
    end;
  (Sender as TCheckBox).ShowHint := PortSett[numPort].isSendTextFile;
  (Sender as TCheckBox).Checked := PortSett[numPort].isSendTextFile;
  (Sender as TCheckBox).Color := FormMultiPort.Color;
end;



procedure TFormMultiPort.CheckBoxSelectBinFileClick(Sender: TObject);
var
  numPort : Integer;
begin
  numPort := (Sender as TCheckBox).Tag;
  if (Sender as TCheckBox).Checked then
    begin
      (Sender as TCheckBox).Color := clYellow;
      dlgOpenSelFile.Title := 'Select a file to record';
      dlgOpenSelFile.InitialDir := CfgTerminal.LogDir;
      if dlgOpenSelFile.Execute then
        begin
          try
            AssignFileMyBin(numPort, dlgOpenSelFile.FileName);
            ActFileLog.FileName.Caption := dlgOpenSelFile.FileName;
            ActFileLog.ShowModal;
            if ActFileLog.isRewrite then
              begin
                RewriteMyBin(numPort);
              end;
            if ActFileLog.isAppend then
              begin
                ResetMyBin(numPort);
                SeekMyBin(numPort);
              end;
            if not ActFileLog.isChangeMind then
              begin
                PortSett[numPort].isSendBinFile := True;
               (Sender as TCheckBox).Hint := dlgOpenSelFile.FileName;
              end;
          except
            PortSett[numPort].isSendBinFile := False;
            ShowMessage('Error opening file');
          end;
        end
      else
        begin
          (Sender as TCheckBox).Checked := False;
        end;
    end
  else if PortSett[numPort].isSendBinFile then
    begin
      PortSett[numPort].isSendBinFile := False;
      CloseFileMyBin(numPort);
      (Sender as TCheckBox).Hint := 'Write only received data to file';
    end;
  (Sender as TCheckBox).ShowHint := true;
  (Sender as TCheckBox).Checked := PortSett[numPort].isSendBinFile;
  (Sender as TCheckBox).Color := FormMultiPort.Color;
end;





procedure TFormMultiPort.Bt3Click(Sender: TObject);
var
  numPort : integer;
begin
  (Sender as TButton).ShowHint := False;
  for numPort := 1 to CNT_PORTS do
    if PortSett[numPort].isSendTextFile then
      begin
        try
          RewriteMyText(numPort);
        except
          CBSendTextFile[numPort].Color := clRed;
        end;
      end;
end;

procedure TFormMultiPort.ud2Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
    if PortSett[NumPortCur].SettLineLog.SepByteRec < 10000 then
      Inc(PortSett[NumPortCur].SettLineLog.SepByteRec);

  if Button = btPrev then
    if PortSett[NumPortCur].SettLineLog.SepByteRec > 0 then
      Dec(PortSett[NumPortCur].SettLineLog.SepByteRec);

  EdtEdtCntSep1.Text := IntToStr(PortSett[NumPortCur].SettLineLog.SepByteRec);
end;

procedure TFormMultiPort.Bt6Click(Sender: TObject);
var
  numPort : integer;
begin
  (Sender as TButton).ShowHint := False;
  for numPort := 1 to CNT_PORTS do
    if PortSett[numPort].isSendBinFile then
      begin
        try
          RewriteMyBin(numPort);
        except
          CBSendBinFile[numPort].Color := clRed;
        end;
      end;
end;

procedure TFormMultiPort.btn1Click(Sender: TObject);
var numPort, numSend : Byte;
begin
  for numPort := 1 to CNT_PORTS do
    FormSetSendData.SendInPort[numPort] := isDataResend[NumPortCur, numPort];


  FormSetSendData.Caption := 'PortB_' + IntToStr(NumPortCur) + ' Data Forwarding';

  FormSetSendData.ShowModal;

  for numPort := 1 to CNT_PORTS do
    isDataResend[NumPortCur, numPort] := FormSetSendData.SendInPort[numPort];

  if FormSetSendData.IsResetAll then
    begin
      for numPort := 1 to CNT_PORTS do
        for numSend := 1 to CNT_PORTS do
          isDataResend[numPort, numSend] := False;
    end;

  SetCurPort(NumPortCur);  
end;


procedure TFormMultiPort.SetSendFromMainForm(Buf : pByte; numPort : Byte; Time : TDateTime; Cnt : Cardinal; StrLog : string; ColorLog : TColor);
var
  i : Integer;
begin
  for i:= 0 to Cnt - 1 do
    begin
      BufSendFromMainForm[numPort, i] := Buf^;
      Inc(Buf);
    end;
  CntBytesFromMainForm[numPort] := Cnt;
  TimeFromMainForm[numPort] := Time;
  StrLogFromMainForm[numPort] := StrLog;
  ColorLogFromMainForm[numPort] := ColorLog;
end;

function TFormMultiPort.GetNamePort(port : integer) : string;
  begin
    if PortSett[port].SettLineLog.PName = '' then
      Result := ListPorts[port].Text
    else
      Result := PortSett[port].SettLineLog.PName;
  end;


procedure TFormMultiPort.edtSepEnter(Sender: TObject);
begin
  BStrTmp := (Sender as TEdit).Text;
end;

procedure TFormMultiPort.edtSepExit(Sender: TObject);
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

  
procedure TFormMultiPort.CheckBox81Click(Sender: TObject);
var
  i : Integer;
begin
  for i:= 1 to 16 do
    CBSendMainLog[i].Checked := (Sender as TCheckBox).Checked;
end;

procedure TFormMultiPort.CheckBox82Click(Sender: TObject);
var
  i : Integer;
begin
  for i:= 1 to 16 do
    CBSendSecondLog[i].Checked := (Sender as TCheckBox).Checked;
end;

procedure TFormMultiPort.CheckBox83Click(Sender: TObject);
var
  i : Integer;
begin
  for i:= 1 to 16 do
    CBSendParserS[i].Checked := (Sender as TCheckBox).Checked;
end;

end.
