unit Unit32;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TerminalST, StdCtrls, Registry, ExtCtrls, Common, ComCtrls, DateUtils, ShellAPI;

type
TRxThread = class(TThread)
  public
    numPort : Byte;
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;


const LIST_SETT = 100;
const NameFileCFG = 'PortsAddCfg';


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
  TReadPort = record
    Name        : string[128];
    strRes1     : string[128];
    strRes2     : string[128];
    strRes3     : string[128];
    strRes4     : string[128];
    strRes5     : string[128];
    strRes6     : string[128];
    strRes7     : string[128];
    strRes8     : string[128];
    strRes9     : string[128];
    strRes10     : string[128];
    strRes11     : string[128];
    strRes12     : string[128];
    strRes13     : string[128];
    strRes14     : string[128];
    strRes15     : string[128];
    strRes16     : string[128];



    nres1       : Cardinal;
    nres2       : Cardinal;
    nres3       : Cardinal;
    nres4       : Cardinal;
    nres5       : Cardinal;
    nres6       : Cardinal;
    nres7       : Cardinal;
    nres8       : Cardinal;

    bres1       : Boolean;
    bres2       : Boolean;
    bres3       : Boolean;
    bres4       : Boolean;
    bres5       : Boolean;
    bres6       : Boolean;
    bres7       : Boolean;
    bres8       : Boolean;

    byteRes1    : Byte;
    byteRes2    : Byte;
    byteRes3    : Byte;
    byteRes4    : Byte;
    byteRes5    : Byte;
    byteRes6    : Byte;
    byteRes7    : Byte;
    byteRes8    : Byte;

    ColorBG     : TColor;
    ColorRes2   : TColor;
    ColorRes3   : TColor;
    ColorRes4   : TColor;
    ColorRes5   : TColor;
    ColorRes6   : TColor;
    ColorRes7   : TColor;
    ColorRes8   : TColor;

    Speed       : Cardinal;                                                                                            
    Bits        : Byte;
    Parity      : Byte;
    StopBits    : Byte;
    HandsHaking : Byte;
    numList     : Byte;
  end;

type
  TSettOutData = record
    isOutPort   : Boolean;
    isOutTime   : Boolean;
    isOutCnt    : Boolean;
    isOutDir    : Boolean;

    isSendMainLog : Boolean;
    isSendParser  : Boolean;
    isSendAddPort : Boolean;
    isClearBufClose : Boolean;

    isSendPort  : Boolean;
    isSendTime  : Boolean;
    isSendCnt   : Boolean;
    ReadMode    : TTypeReadMode;
    ColorLog    : TColor;
    Name        : string[128];

    isSep0A     : Boolean;
    isSep0D     : Boolean;
    isSep00     : Boolean;
    isSep0D0A   : Boolean;

    isSepTime   : Boolean;
    isSepCnt    : Boolean;

    isSepSeq1_4 : Boolean;
    isSepSeq1_3 : Boolean;
    isSepSeq1_2 : Boolean;
    isSepSeq1_1 : Boolean;

    isSepSeq2_4 : Boolean;
    isSepSeq2_3 : Boolean;
    isSepSeq2_2 : Boolean;
    isSepSeq2_1 : Boolean;

    isSepBef1   : Boolean;
    isSepBef2   : Boolean;

    SepTime     : Cardinal;
    SepCnt      : Cardinal;

    SepSeq1_4_1 : Byte;
    SepSeq1_4_2 : Byte;
    SepSeq1_4_3 : Byte;
    SepSeq1_4_4 : Byte;

    SepSeq1_3_1 : Byte;
    SepSeq1_3_2 : Byte;
    SepSeq1_3_3 : Byte;

    SepSeq1_2_1 : Byte;
    SepSeq1_2_2 : Byte;

    SepSeq1_1_1 : Byte;

    SepSeq2_4_1 : Byte;
    SepSeq2_4_2 : Byte;
    SepSeq2_4_3 : Byte;
    SepSeq2_4_4 : Byte;

    SepSeq2_3_1 : Byte;
    SepSeq2_3_2 : Byte;
    SepSeq2_3_3 : Byte;

    SepSeq2_2_1 : Byte;
    SepSeq2_2_2 : Byte;

    SepSeq2_1_1 : Byte;

    SepBef1   : Byte;
    SepBef2   : Byte;
    isFastRead : Boolean;

    StrRef1           : string[128];
    StrRef2           : string[128];

    strRes3           : string[128];
    strRes4           : string[128];
    strRes5           : string[128];
    strRes6           : string[128];
    strRes7           : string[128];
    strRes8           : string[128];
    strRes9           : string[128];
    strRes10          : string[128];
    strRes11          : string[128];
    strRes12          : string[128];
    strRes13          : string[128];
    strRes14          : string[128];
    strRes15          : string[128];
    strRes16          : string[128];
    strRes17          : string[128];
    strRes18          : string[128];
    strRes19          : string[128];
    strRes20          : string[128];
    BufRes1           : array[0..256] of Byte;
    BufRes2           : array[0..256] of Byte;
    BufRes3           : array[0..256] of Byte;
    BufRes4           : array[0..256] of Byte;
    FlagsRes1         : array[0..256] of Boolean;
    FlagsRes2         : array[0..256] of Boolean;
    FlagsRes3         : array[0..256] of Boolean;
    FlagsRes4         : array[0..256] of Boolean;



    ChangeBR1        : Cardinal;
    ChangeBR2        : Cardinal;
    nres3            : Cardinal;
    nres4            : Cardinal;
    nres5            : Cardinal;
    nres6            : Cardinal;
    nres7            : Cardinal;
    nres8            : Cardinal;
    nres9            : Cardinal;
    nres10           : Cardinal;
    nres11           : Cardinal;
    nres12           : Cardinal;
    nres13           : Cardinal;
    nres14           : Cardinal;
    nres15           : Cardinal;
    nres16           : Cardinal;
    nres17           : Cardinal;
    nres18           : Cardinal;
    nres19           : Cardinal;
    nres20           : Cardinal;
    nres21           : Cardinal;
    nres22           : Cardinal;
    nres23           : Cardinal;
    nres24           : Cardinal;
    nres25           : Cardinal;
    nres26          : Cardinal;
    nres27           : Cardinal;
    nres28           : Cardinal;
    nres29           : Cardinal;
    nres30           : Cardinal;
    nres31           : Cardinal;
    nres32           : Cardinal;
    nres33           : Cardinal;
    nres34           : Cardinal;
    nres35           : Cardinal;
    nres36           : Cardinal;
    nres37           : Cardinal;
    nres38           : Cardinal;
    nres39           : Cardinal;
    nres40           : Cardinal;

    isSendAddLog       : Boolean;




    isSetBR1         : Boolean;  //-
    isSetBR2         : Boolean;  //-
    isClosePort1     : Boolean;  //-
    isSetColor1      : Boolean;  //+
    isSetColor2      : Boolean;  //+
    bres7            : Boolean;  //+
    bres8            : Boolean;  //+
    isExpandWindow1  : Boolean;  //-
    isExpandWindow2  : Boolean;  //-
    isClosePort2     : Boolean;  //-
    bres12      : Boolean;  //-
    bres13      : Boolean;
    bres14      : Boolean;
    bres15      : Boolean;
    bres16      : Boolean;
    bres17      : Boolean;
    bres18      : Boolean;
    bres19      : Boolean;
    bres20      : Boolean;
    bres21      : Boolean;
    bres22      : Boolean;
    bres23      : Boolean;
    bres24      : Boolean;
    bres25      : Boolean;
    bres26      : Boolean;
    bres27      : Boolean;
    bres28      : Boolean;
    bres29      : Boolean;
    bres30      : Boolean;
    bres31      : Boolean;
    bres32      : Boolean;
    bres33      : Boolean;
    bres34      : Boolean;
    bres35      : Boolean;
    bres36      : Boolean;
    bres37      : Boolean;
    bres38      : Boolean;
    bres39      : Boolean;
    bres40      : Boolean;
    bres41      : Boolean;
    bres42      : Boolean;
    bres43      : Boolean;
    bres44      : Boolean;
    bres45      : Boolean;
    bres46      : Boolean;
    bres47      : Boolean;
    bres48      : Boolean;
    bres49      : Boolean;
    bres50      : Boolean;
    bres51      : Boolean;
    bres52      : Boolean;
    bres53      : Boolean;
    bres54      : Boolean;
    bres55      : Boolean;
    bres56      : Boolean;
    bres57      : Boolean;
    bres58      : Boolean;
    bres59      : Boolean;
    bres60      : Boolean;
    bres61      : Boolean;
    bres62      : Boolean;
    bres63      : Boolean;
    bres64      : Boolean;
    bres65      : Boolean;
    bres66      : Boolean;
    bres67      : Boolean;
    bres68      : Boolean;
    bres69      : Boolean;
    bres70      : Boolean;
    bres71      : Boolean;
    bres72      : Boolean;
    bres73      : Boolean;
    bres74      : Boolean;
    bres75      : Boolean;
    bres76      : Boolean;
    bres77      : Boolean;
    bres78      : Boolean;
    bres79      : Boolean;
    bres80      : Boolean;
    bres81      : Boolean;
    bres82      : Boolean;
    bres83      : Boolean;
    bres84      : Boolean;
    bres85      : Boolean;
    bres86      : Boolean;
    bres87      : Boolean;
    bres88      : Boolean;
    bres89      : Boolean;
    bres90     : Boolean;
    bres91     : Boolean;
    bres92     : Boolean;
    bres93     : Boolean;
    bres94     : Boolean;
    bres95     : Boolean;
    bres96     : Boolean;
    bres97     : Boolean;
    bres98     : Boolean;
    bres99     : Boolean;

    byteRes1    : Byte;
    byteRes2    : Byte;
    byteRes3    : Byte;
    byteRes4    : Byte;
    byteRes5    : Byte;
    byteRes6    : Byte;
    byteRes7    : Byte;
    byteRes8    : Byte;
    byteRes9    : Byte;
    byteRes0    : Byte;
    byteRes11   : Byte;
    byteRes12    : Byte;
    byteRes13    : Byte;
    byteRes14    : Byte;
    byteRes15    : Byte;
    byteRes16    : Byte;
    byteRes17    : Byte;
    byteRes18    : Byte;
    byteRes19    : Byte;
    byteRes20    : Byte;
    byteRes21    : Byte;
    byteRes22    : Byte;
    byteRes23    : Byte;
    byteRes24    : Byte;
    byteRes25    : Byte;
    byteRes26    : Byte;
    byteRes27    : Byte;
    byteRes28    : Byte;
    byteRes29    : Byte;
    byteRes30    : Byte;
    byteRes31    : Byte;
    byteRes32    : Byte;
    byteRes33    : Byte;
    byteRes34    : Byte;
    byteRes35    : Byte;
    byteRes36    : Byte;
    byteRes37    : Byte;
    byteRes38    : Byte;
    byteRes39    : Byte;
    byteRes40    : Byte;
    byteRes41    : Byte;
    byteRes42    : Byte;
    byteRes43    : Byte;
    byteRes44    : Byte;
    byteRes45    : Byte;
    byteRes46    : Byte;
    byteRes47    : Byte;
    byteRes48    : Byte;
    byteRes49    : Byte;
    byteRes50    : Byte;
    byteRes51    : Byte;
    byteRes52    : Byte;
    byteRes53    : Byte;
    byteRes54    : Byte;
    byteRes55    : Byte;
    byteRes56    : Byte;
    byteRes57    : Byte;
    byteRes58    : Byte;
    byteRes59    : Byte;
    byteRes60    : Byte;

    ColorEv1   : TColor;
    ColorEv2   : TColor;
    ColorRes3   : TColor;
    ColorRes4   : TColor;
    ColorRes5   : TColor;
    ColorRes6   : TColor;
    ColorRes7   : TColor;
    ColorRes8   : TColor;


  end;

type
  TSettingsCommon = record
    ReadPort    : TReadPort;
    SettOutData : array[1..LIST_SETT] of TSettOutData;
  end;


type
  TFormAddPorts = class(TForm)
    grp1: TGroupBox;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    cbb4: TComboBox;
    cbb5: TComboBox;
    cbb6: TComboBox;
    grp2: TGroupBox;
    reqTime1: TStaticText;
    chk3: TCheckBox;
    chk1: TCheckBox;
    chk2: TCheckBox;
    cbb7: TComboBox;
    req5: TStaticText;
    grp3: TGroupBox;
    Bt2: TButton;
    Button3: TButton;
    grp6: TGroupBox;
    cbb8: TComboBox;
    cbb9: TComboBox;
    cbb10: TComboBox;
    cbb11: TComboBox;
    cbb12: TComboBox;
    cbb13: TComboBox;
    grp7: TGroupBox;
    cbb14: TComboBox;
    Button6: TButton;
    Button7: TButton;
    grp11: TGroupBox;
    chkChSep0D0A: TCheckBox;
    chkChSep00: TCheckBox;
    chkChSep0A: TCheckBox;
    chkChSep0D: TCheckBox;
    chkChSepTime: TCheckBox;
    edtEdtPauseRx: TEdit;
    ud1: TUpDown;
    chkChSepCnt: TCheckBox;
    edtEdtCntSep: TEdit;
    ud2: TUpDown;
    grp12: TGroupBox;
    edt100: TEdit;
    edt101: TEdit;
    edt102: TEdit;
    edt103: TEdit;
    chk7: TCheckBox;
    chk8: TCheckBox;
    edt2: TEdit;
    edt99: TEdit;
    edt104: TEdit;
    chk9: TCheckBox;
    edt105: TEdit;
    edt106: TEdit;
    edtEdtSymAdd: TEdit;
    chkChSepSymbol: TCheckBox;
    edtEdt98: TEdit;
    chk10: TCheckBox;
    chk11: TCheckBox;
    edt107: TEdit;
    edt108: TEdit;
    edt109: TEdit;
    edt110: TEdit;
    chk12: TCheckBox;
    edt111: TEdit;
    edt112: TEdit;
    edt113: TEdit;
    chk13: TCheckBox;
    edt114: TEdit;
    edt115: TEdit;
    grp4: TGroupBox;
    grp8: TGroupBox;
    grp9: TGroupBox;
    chk14: TCheckBox;
    chk15: TCheckBox;
    chk16: TCheckBox;
    chk17: TCheckBox;
    chk18: TCheckBox;
    edt1: TEdit;
    ud3: TUpDown;
    chk19: TCheckBox;
    edt3: TEdit;
    ud4: TUpDown;
    grp13: TGroupBox;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    chk20: TCheckBox;
    chk21: TCheckBox;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    chk22: TCheckBox;
    edt11: TEdit;
    edt12: TEdit;
    edt13: TEdit;
    chk23: TCheckBox;
    edt14: TEdit;
    chk24: TCheckBox;
    chk25: TCheckBox;
    edt15: TEdit;
    edt16: TEdit;
    edt17: TEdit;
    edt18: TEdit;
    chk26: TCheckBox;
    edt19: TEdit;
    edt20: TEdit;
    edt21: TEdit;
    chk27: TCheckBox;
    edt22: TEdit;
    edt23: TEdit;
    grp14: TGroupBox;
    grp5: TGroupBox;
    lbl1: TLabel;
    chkChCBBefByte2: TCheckBox;
    edtEdtBefSym2: TEdit;
    chkChCBBefByte1: TCheckBox;
    edtEdtBefSym1: TEdit;
    grp10: TGroupBox;
    lbl2: TLabel;
    chkChCBBefByte21: TCheckBox;
    edtEdtBefSym21: TEdit;
    chkChCBBefByte11: TCheckBox;
    edtEdtBefSym11: TEdit;
    tmrTmrReadData: TTimer;
    reqTime2: TStaticText;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    req2: TStaticText;
    dlgColor1: TColorDialog;
    ChFastRead1: TCheckBox;
    ChFastRead2: TCheckBox;
    ChDir0: TCheckBox;
    ChDir1: TCheckBox;
    grp15: TGroupBox;
    ChSendMainLog0: TCheckBox;
    ChSendParser0: TCheckBox;
    ChSendAddPort0: TCheckBox;
    grp16: TGroupBox;
    ChSendMainLog1: TCheckBox;
    ChSendParser1: TCheckBox;
    ChSendAddPort1: TCheckBox;
    Edt24: TEdit;
    Bt1: TButton;
    Bt3: TButton;
    Edt25: TEdit;
    Bt4: TButton;
    Bt5: TButton;
    req1: TStaticText;
    req3: TStaticText;
    req4: TStaticText;
    req6: TStaticText;
    req7: TStaticText;
    req8: TStaticText;
    ChClrBuf0: TCheckBox;
    ChClrBuf1: TCheckBox;
    Bt6: TButton;
    Bt7: TButton;
    lbl9: TLabel;
    lbl10: TLabel;
    lst1: TListBox;
    lst2: TListBox;
    Bt8: TButton;
    Bt9: TButton;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    req9: TStaticText;
    grp17: TGroupBox;
    grp18: TGroupBox;
    Edt26: TEdit;
    ChChangeBR: TCheckBox;
    Edt27: TEdit;
    ChClosePort: TCheckBox;
    ChExpandWindow: TCheckBox;
    grp19: TGroupBox;
    Edt28: TEdit;
    CheckBox8: TCheckBox;
    Edt29: TEdit;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    ChSetColor: TCheckBox;
    req10: TStaticText;
    CheckBox11: TCheckBox;
    req11: TStaticText;
    grp20: TGroupBox;
    grp21: TGroupBox;
    Edt30: TEdit;
    CheckBox12: TCheckBox;
    Edt31: TEdit;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    req12: TStaticText;
    grp22: TGroupBox;
    Edt32: TEdit;
    CheckBox16: TCheckBox;
    Edt33: TEdit;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    req13: TStaticText;
    Bt10: TButton;
    ChSecondWindow0: TCheckBox;
    ChSecondWindow1: TCheckBox;
    dlgOpenSelFile: TOpenDialog;
    Button1: TButton;
    Button2: TButton;
    ctxt1: TStaticText;
    ctxt2: TStaticText;
    ctxt3: TStaticText;
    ctxt4: TStaticText;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    Bt11: TButton;
    Bt12: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cbb2KeyPress(Sender: TObject; var Key: Char);
    procedure Bt2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure cbb6Change(Sender: TObject);
    procedure cbb13Change(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure edt99KeyPress(Sender: TObject; var Key: Char);
    procedure chkChSep0DClick(Sender: TObject);
    procedure chkChSep0AClick(Sender: TObject);
    procedure chkChSep00Click(Sender: TObject);
    procedure chkChSep0D0AClick(Sender: TObject);
    procedure chk17Click(Sender: TObject);
    procedure chk16Click(Sender: TObject);
    procedure chk15Click(Sender: TObject);
    procedure chk14Click(Sender: TObject);
    procedure chkChSepTimeClick(Sender: TObject);
    procedure chkChSepCntClick(Sender: TObject);
    procedure chk18Click(Sender: TObject);
    procedure chk19Click(Sender: TObject);
    procedure chk7Click(Sender: TObject);
    procedure chk8Click(Sender: TObject);
    procedure chk9Click(Sender: TObject);
    procedure chkChSepSymbolClick(Sender: TObject);
    procedure chk11Click(Sender: TObject);
    procedure chk12Click(Sender: TObject);
    procedure chk13Click(Sender: TObject);
    procedure chk10Click(Sender: TObject);
    procedure chk20Click(Sender: TObject);
    procedure chk21Click(Sender: TObject);
    procedure chk22Click(Sender: TObject);
    procedure chk23Click(Sender: TObject);
    procedure chk25Click(Sender: TObject);
    procedure chk26Click(Sender: TObject);
    procedure chk27Click(Sender: TObject);
    procedure chk24Click(Sender: TObject);
    procedure chkChCBBefByte2Click(Sender: TObject);
    procedure chkChCBBefByte1Click(Sender: TObject);
    procedure chkChCBBefByte21Click(Sender: TObject);
    procedure chkChCBBefByte11Click(Sender: TObject);
    procedure edt100Change(Sender: TObject);
    procedure edt101Change(Sender: TObject);
    procedure edt102Change(Sender: TObject);
    procedure edt103Change(Sender: TObject);
    procedure edt2Change(Sender: TObject);
    procedure edt99Change(Sender: TObject);
    procedure edt104Change(Sender: TObject);
    procedure edt105Change(Sender: TObject);
    procedure edt106Change(Sender: TObject);
    procedure edtEdtSymAddChange(Sender: TObject);
    procedure edt107Change(Sender: TObject);
    procedure edt108Change(Sender: TObject);
    procedure edt109Change(Sender: TObject);
    procedure edt110Change(Sender: TObject);
    procedure edt111Change(Sender: TObject);
    procedure edt112Change(Sender: TObject);
    procedure edt113Change(Sender: TObject);
    procedure edt114Change(Sender: TObject);
    procedure edt115Change(Sender: TObject);
    procedure edtEdt98Change(Sender: TObject);
    procedure edt4Change(Sender: TObject);
    procedure edt5Change(Sender: TObject);
    procedure edt6Change(Sender: TObject);
    procedure edt7Change(Sender: TObject);
    procedure edt8Change(Sender: TObject);
    procedure edt9Change(Sender: TObject);
    procedure edt10Change(Sender: TObject);
    procedure edt11Change(Sender: TObject);
    procedure edt12Change(Sender: TObject);
    procedure edt13Change(Sender: TObject);
    procedure edt15Change(Sender: TObject);
    procedure edt16Change(Sender: TObject);
    procedure edt17Change(Sender: TObject);
    procedure edt18Change(Sender: TObject);
    procedure edt19Change(Sender: TObject);
    procedure edt20Change(Sender: TObject);
    procedure edt21Change(Sender: TObject);
    procedure edt22Change(Sender: TObject);
    procedure edt23Change(Sender: TObject);
    procedure edt14Change(Sender: TObject);
    procedure edtEdtBefSym2Change(Sender: TObject);
    procedure edtEdtBefSym1Change(Sender: TObject);
    procedure edtEdtBefSym21Change(Sender: TObject);
    procedure edtEdtBefSym11Change(Sender: TObject);
    procedure edtEdtPauseRxKeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtPauseRxChange(Sender: TObject);
    procedure edtEdtCntSepChange(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure edt3Change(Sender: TObject);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure ud3Click(Sender: TObject; Button: TUDBtnType);
    procedure ud2Click(Sender: TObject; Button: TUDBtnType);
    procedure ud4Click(Sender: TObject; Button: TUDBtnType);
    procedure tmrTmrReadDataTimer(Sender: TObject);
    procedure cbb7Change(Sender: TObject);
    procedure cbb14Change(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure Bt4Click(Sender: TObject);
    procedure Bt5Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure req5Click(Sender: TObject);
    procedure req2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Edt24Change(Sender: TObject);
    procedure Edt25Change(Sender: TObject);
    procedure ChFastRead1Click(Sender: TObject);
    procedure ChFastRead2Click(Sender: TObject);
    procedure ChDir0Click(Sender: TObject);
    procedure ChDir1Click(Sender: TObject);
    procedure ChSendMainLog0Click(Sender: TObject);
    procedure ChSendMainLog1Click(Sender: TObject);
    procedure ChSendParser0Click(Sender: TObject);
    procedure ChSendParser1Click(Sender: TObject);
    procedure ChSendAddPort0Click(Sender: TObject);
    procedure ChSendAddPort1Click(Sender: TObject);
    procedure ChClrBuf0Click(Sender: TObject);
    procedure ChClrBuf1Click(Sender: TObject);
    procedure Bt6Click(Sender: TObject);
    procedure Bt7Click(Sender: TObject);
    procedure Bt8Click(Sender: TObject);
    procedure lst1Click(Sender: TObject);
    procedure lst1Exit(Sender: TObject);
    procedure Bt9Click(Sender: TObject);
    procedure lst2Click(Sender: TObject);
    procedure lst2Exit(Sender: TObject);
    procedure grp4Click(Sender: TObject);
    procedure edtEdtBefSym21KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdtBefSym11KeyPress(Sender: TObject; var Key: Char);
    procedure Edt26Change(Sender: TObject);
    procedure Edt28Change(Sender: TObject);
    procedure Edt30Change(Sender: TObject);
    procedure Edt32Change(Sender: TObject);
    procedure Edt27KeyPress(Sender: TObject; var Key: Char);
    procedure Edt29KeyPress(Sender: TObject; var Key: Char);
    procedure Edt31KeyPress(Sender: TObject; var Key: Char);
    procedure Edt33KeyPress(Sender: TObject; var Key: Char);
    procedure Edt27Change(Sender: TObject);
    procedure Edt29Change(Sender: TObject);
    procedure Edt31Change(Sender: TObject);
    procedure Edt33Change(Sender: TObject);
    procedure Edt27Exit(Sender: TObject);
    procedure Edt29Exit(Sender: TObject);
    procedure Edt31Exit(Sender: TObject);
    procedure Edt33Exit(Sender: TObject);
    procedure Bt10Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure ChSecondWindow0Click(Sender: TObject);
    procedure ChSecondWindow1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure ChChangeBRClick(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox16Click(Sender: TObject);
    procedure ChClosePortClick(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox17Click(Sender: TObject);
    procedure ChExpandWindowClick(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox18Click(Sender: TObject);
    procedure ChSetColorClick(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox15Click(Sender: TObject);
    procedure CheckBox19Click(Sender: TObject);
    procedure req10Click(Sender: TObject);
    procedure req11Click(Sender: TObject);
    procedure req12Click(Sender: TObject);
    procedure req13Click(Sender: TObject);
    procedure Edt26Click(Sender: TObject);
    procedure Bt11Click(Sender: TObject);
    procedure Bt12Click(Sender: TObject);

    procedure edtSepEnter(Sender: TObject);
    procedure edtSepExit(Sender: TObject);
  private
    { Private declarations }
  public
    BufCntBytesRead : array[0..1, 0..255] of Cardinal;
    BufCntBytesSend : array[0..1, 0..255] of Cardinal;
       isSendWinLog : array[0..1] of boolean;
    procedure SetLogBGColor(numPort : Byte; Color : TColor);
    procedure SetSendDataInParser(numPort : byte);
    procedure SetSendFromMainForm(Buf : pByte; numPort : Byte; Time : TDateTime; Cnt : Cardinal; StrLog : string; ColorLog : TColor);
    function GetNamePort(port : integer) : string;
    { Public declarations }
  end;

var
  FormAddPorts: TFormAddPorts;
  SettingsCommon : array[0..1] of TSettingsCommon;
  FileSettings : File of TSettingsCommon;

  BStrTmp : string;

  ReadDataCnt : array[0..1] of Cardinal;
  OutDataCnt  : array[0..1] of Cardinal;
  ByteLostCnt : array[0..1] of Cardinal;

  ReadPortSett : array[0..1] of TReadPort;

  isEventUse : Boolean;

  Ports       : array[0..255] of string[12];
  //NameCom     : array[0..1] of string[10];
  CSelPort    : array[0..1] of TComboBox;
  CBaudRate   : array[0..1] of TComboBox;
  CComBits    : array[0..1] of TComboBox;
  CComStopBits: array[0..1] of TComboBox;
  CParityCOM  : array[0..1] of TComboBox;
  HandsHaking : array[0..1] of TComboBox;

  STBytesRec  : array[0..1] of TStaticText;
  STBytesSent : array[0..1] of TStaticText;
  STBytesinBuf: array[0..1] of TStaticText;
  ListSett    : array[0..1] of TListBox;

  BtConnect   : array[0..1] of TButton;



  BtnScan     : array[0..1] of TButton;
  BtnConnect  : array[0..1] of TButton;

  isOpenPort  : array[0..1] of boolean;
  hCom        : array[0..1] of tHandle;

  DCB         : array[0..1] of tDCB;
  Stat        : array[0..1] of tComStat;
  CurrentComPort :array[0..1] of Pchar;
  ComBoudRate    :array[0..1] of DWord;
  Bits           :array[0..1] of byte;
  StopBitsCur    :array[0..1] of byte;




  Rx1Thread, Rx2Thread : TRxThread;
  RingBuf : array[0..1] of TRingBuf;
  isThr1 : boolean;
  isThr2 : boolean;
//

  isClearBufClose : array[0..1] of Boolean;


  isOutPort   : array[0..1] of Boolean;
  isOutTime   : array[0..1] of Boolean;
  isOutCnt    : array[0..1] of Boolean;
  isOutDir    : array[0..1] of Boolean;

  grpEv1      : array[0..1] of TGroupBox;
  grpEv2      : array[0..1] of TGroupBox;

  StrRef1     : array[0..1] of string[128];
  StrRef2     : array[0..1] of string[128];

  BaudRate1   : array[0..1] of Cardinal;
  BaudRate2   : array[0..1] of Cardinal;

  isSetBR1    : array[0..1] of Boolean;
  isSetBR2    : array[0..1] of Boolean;

  isClosePort1: array[0..1] of Boolean;
  isClosePort2: array[0..1] of Boolean;

  isExpandWindow1: array[0..1] of Boolean;
  isExpandWindow2: array[0..1] of Boolean;

  isSetColor1: array[0..1] of Boolean;
  isSetColor2: array[0..1] of Boolean;

  ColorEv1 : array[0..1] of TColor;
  ColorEv2 : array[0..1] of TColor;

  STCntEv1 : array[0..1] of TStaticText;
  STCntEv2 : array[0..1] of TStaticText;

  CntEv1 : array[0..1] of Cardinal;
  CntEv2 : array[0..1] of Cardinal;


  isSendMainLog : array[0..1] of Boolean;
  isSendAddLog : array[0..1] of Boolean;


  isSendParser  : array[0..1] of Boolean;
  isSendAddPort : array[0..1] of Boolean;

  NameList    : array[0..1] of string[20];
  ColorLog    : array[0..1] of TColor;

  isSep0A     : array[0..1] of Boolean;
  isSep0D     : array[0..1] of Boolean;
  isSep00     : array[0..1] of Boolean;
  isSep0D0A   : array[0..1] of Boolean;

  isSepTime   : array[0..1] of Boolean;
  isSepCnt    : array[0..1] of Boolean;

  isSepSeq1_4 : array[0..1] of Boolean;
  isSepSeq1_3 : array[0..1] of Boolean;
  isSepSeq1_2 : array[0..1] of Boolean;
  isSepSeq1_1 : array[0..1] of Boolean;

  isSepSeq2_4 : array[0..1] of Boolean;
  isSepSeq2_3 : array[0..1] of Boolean;
  isSepSeq2_2 : array[0..1] of Boolean;
  isSepSeq2_1 : array[0..1] of Boolean;

  isSepBef1   : array[0..1] of Boolean;
  isSepBef2   : array[0..1] of Boolean;

  SepTime   : array[0..1] of Cardinal;
  SepCnt    : array[0..1] of Cardinal;

  SepSeq1_4_1 : array[0..1] of Byte;
  SepSeq1_4_2 : array[0..1] of Byte;
  SepSeq1_4_3 : array[0..1] of Byte;
  SepSeq1_4_4 : array[0..1] of Byte;

  SepSeq1_3_1 : array[0..1] of Byte;
  SepSeq1_3_2 : array[0..1] of Byte;
  SepSeq1_3_3 : array[0..1] of Byte;

  SepSeq1_2_1 : array[0..1] of Byte;
  SepSeq1_2_2 : array[0..1] of Byte;

  SepSeq1_1_1 : array[0..1] of Byte;

  SepSeq2_4_1 : array[0..1] of Byte;
  SepSeq2_4_2 : array[0..1] of Byte;
  SepSeq2_4_3 : array[0..1] of Byte;
  SepSeq2_4_4 : array[0..1] of Byte;

  SepSeq2_3_1 : array[0..1] of Byte;
  SepSeq2_3_2 : array[0..1] of Byte;
  SepSeq2_3_3 : array[0..1] of Byte;

  SepSeq2_2_1 : array[0..1] of Byte;
  SepSeq2_2_2 : array[0..1] of Byte;


  SepSeq2_1_1 : array[0..1] of Byte;

  SepBef1   : array[0..1] of Byte;
  SepBef2   : array[0..1] of Byte;
  isFastReadPort: array[0..1] of Boolean;
  BufOut    : array[0..1 , 0..BUF_SIZE_ADD_PORTS - 1] of byte;
  BufSendInPort  : array[0..BUF_SIZE_ADD_PORTS - 1] of byte;

  BufSendFromMainForm     : array[0..1, 0..BUF_SIZE_SEND_FROM_MAIN_FORM - 1] of byte;
  CntBytesFromMainForm    : array[0..1] of Cardinal;
  TimeFromMainForm        : array[0..1] of TDateTime;
  StrLogFromMainForm      : array[0..1] of string;
  ColorLogFromMainForm    : array[0..1] of TColor;

  CntOut    : array[0..1] of Cardinal;
  LastTime  : array[0..1] of TDateTime;
  ReadMode  : array[0..1] of TTypeReadMode;
  strOut    : string;

  BufDataTmp0 : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;
  BufDataTmp1 : array[0..BUF_SIZE_ADD_PORTS - 1] of Byte;

  TextLogFile_0   : TextFile;
  TextLogFile_1   : TextFile;
  isTextLogFile : array[0..1] of Boolean;


  BinLogFile_0   : file of byte;
  BinLogFile_1   : file of byte;
  isBinLogFile : array[0..1] of Boolean;

implementation

uses Unit24, Unit34, Unit38, Unit39, Unit3, Unit9;

{$R *.dfm}

procedure TFormAddPorts.SetLogBGColor(numPort : Byte; Color : TColor);
begin
  ReadPortSett[numPort].ColorBG := Color;
end;


function CheskDecKey(Key : Char) : Char;
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
begin
  WaitForSingleObject(RingBuf[numPort].Mutex, INFINITE);
  while Cnt > 0 do
    begin
      RingBuf[numPort].BufData[RingBuf[numPort].head] := Buf^;
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



procedure TRxThread.Execute;
var
  Cnt, Errors : DWORD;
begin
  while not Terminated do
    begin
      repeat
        ClearCommError(hCom[numport], Errors ,@Stat[numport]);
        if (Stat[numport].cbOutQue = 0) and not isFastReadPort[numport] then Sleep(1);
      until Stat[numport].cbOutQue = 0;

      if Stat[numport].cbInQue > 0 then
        begin
          Cnt := Stat[numport].cbInQue;
          if numPort = 0 then
            begin
              ReadFile(hCom[numport],BufDataTmp0,Cnt,Cnt,nil);
              WriteRing(@BufDataTmp0[0], Cnt, numPort);
            end;
          if numPort = 1 then
            begin
              ReadFile(hCom[numport],BufDataTmp1,Cnt,Cnt,nil);
              WriteRing(@BufDataTmp1[0], Cnt, numPort);
            end;
        end;
    end;
end;




Procedure ScanPorts(numPort : byte);
var reg  : TRegistry;
    l    : TStringList;
    i    : integer;
    port     : integer;

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
  CSelPort[numPort].Clear;

  i:=0;
  while (i < 256) do
    begin
      if Ports[i] <> '' then
        CSelPort[numPort].Items.Add(Ports[i]);
      inc(i);
    end;
  CSelPort[numPort].ItemIndex := 0;
end;

Function OpenPort(numPort : byte) : boolean;
  begin
    OpenPort := false;
    //if Length(Form1.ComPort.Text) = 4 then
    //  CurrentComPort := PChar(Form1.ComPort.Text);//(Form1.ComPort.Items[Form1.ComPort.ItemIndex]);
    //if Length(Form1.ComPort.Text) > 4 then

    CurrentComPort[numPort] := PChar('\\.\' + CSelPort[numPort].Text);//(Form1.ComPort.Items[Form1.ComPort.ItemIndex]);

    if Length(CBaudRate[numPort].Text) < 8 then
      begin
        ComBoudRate[numPort]    := StrToInt(CBaudRate[numPort].Text);
      end
    else
      begin
        CBaudRate[numPort].Color := clRed;
        ComBoudRate[numPort]          := 1200;
      end;



    Bits[numPort] := StrToInt(CComBits[numPort].Items[CComBits[numPort].ItemIndex]);

    if CComStopBits[numPort].ItemIndex = 0 then
      StopBitsCur[numPort] := ONESTOPBIT
    else if CComStopBits[numPort].ItemIndex = 2 then
      StopBitsCur[numPort] := ONE5STOPBITS
    else if CComStopBits[numPort].ItemIndex = 3 then
      StopBitsCur[numPort] := TWOSTOPBITS;

    if CSelPort[numPort].Text = '' then
      ShowMessage('Choose your port!');



    if SetCommState(hCom[numPort],DCB[numPort]) then CloseHandle(hCom[numPort]);
    Sleep(5);

    hCom[numPort]:=CreateFile(CurrentComPort[numPort],Generic_Read or Generic_Write,0,nil,Open_Existing,File_Attribute_Normal,0);
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
          Parity   := CParityCOM[numPort].ItemIndex;
          StopBits := StopBitsCur[numPort];
        end;

        if ReadPortSett[numPort].HandsHaking = 1 then
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
  begin
    if (isOpenPort[numPort] = true) then
      begin
        repeat
          ClearCommError(hCom[numPort], Errors ,@Stat[numPort]);
          Cnt := Stat[numPort].cbOutQue;
          Sleep(1);
        until Cnt = 0;
        try
          PurgeComm(hCom[numPort], PURGE_TXABORT or PURGE_RXABORT or PURGE_TXCLEAR or PURGE_RXCLEAR);
          CloseHandle(hCom[numPort]);
        finally
          isOpenPort[numPort] := false;
        end;
      end;

    if isClearBufClose[numPort] then
      begin
        ResetRing(numPort);
        CntOut[numPort] := 0;
      end;
  end;




procedure TFormAddPorts.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var numPort : Byte;
begin
  TerminalST.Form1.BtAddPorts.Font.Style := [];

  for numPort := 0 to 1 do
    begin
      CloseComPort(numPort);
      TerminalST.Form1.SetActBtSendInAdd(numPort + 1, false, '', '');

      CSelPort[numPort].Enabled := true;
      CBaudRate[numPort].Enabled := true;
      CComBits[numPort].Enabled := true;
      CComStopBits[numPort].Enabled := true;
      CParityCOM[numPort].Enabled := true;
      BtnScan[numPort].Enabled := true;
      HandsHaking[numPort].Enabled := true;
      BtnConnect[numPort].Caption := 'Connect';
      CSelPort[numPort].Color := clWindow;

      ReadDataCnt[numPort] := 0;
      OutDataCnt[numPort] := 0;
      ByteLostCnt[numPort] := 0;
    end;

  if isThr1 then
    begin
      Rx1Thread.Terminate;
      Sleep(5);
      Rx1Thread.Free;
    end;

  if isThr2 then
    begin
      Rx2Thread.Terminate;
      Sleep(5);
      Rx2Thread.Free;
    end;

  isThr1 := False;
  isThr2 := False;

  if isSendWinLog[0] then
    FormPort1Log.Close;

  if isSendWinLog[1] then
    FormPort2Log.Close;

  SettingsCommon[0].ReadPort := ReadPortSett[0];
  SettingsCommon[1].ReadPort := ReadPortSett[1];
  AssignFile(FileSettings, ExtractFilePath(Application.ExeName) + NameFileCFG);
  if FileExists(ExtractFilePath(Application.ExeName) + NameFileCFG) and (Get_File_Size(ExtractFilePath(Application.ExeName) + NameFileCFG, True) > 0) then
    begin
      Reset(FileSettings);
      Write(FileSettings, SettingsCommon[0]);
      Write(FileSettings, SettingsCommon[1]);
    end
  else
    begin
      Rewrite(FileSettings);
      Write(FileSettings, SettingsCommon[0]);
      Write(FileSettings, SettingsCommon[1]);
    end;
  CloseFile(FileSettings);
  TerminalST.Form1.isSaveFileAddPortsA := False;

  tmrTmrReadData.Enabled := False;

  if isTextLogFile[0] then
    CloseFile(TextLogFile_0);

  if isTextLogFile[1] then
    CloseFile(TextLogFile_1);

  if isBinLogFile[0] then
    CloseFile(BinLogFile_0);

  if isBinLogFile[1] then
    CloseFile(BinLogFile_1);

  isTextLogFile[0] := False;
  isTextLogFile[1] := False;
  isBinLogFile[0]  := False;
  isBinLogFile[1]  := False;



end;

procedure TFormAddPorts.FormActivate(Sender: TObject);
begin
  //if not isOpenPort[0] then ScanPorts(0);
  //Sleep(1);
  //if not isOpenPort[1] then ScanPorts(1);
  //Sleep(1);
  FormAddPorts.CheckBox4.Checked := isTextLogFile[0];
  FormAddPorts.CheckBox6.Checked := isTextLogFile[1];

  FormAddPorts.CheckBox5.Checked := isBinLogFile[0];
  FormAddPorts.CheckBox7.Checked := isBinLogFile[1];


  tmrTmrReadData.Enabled := True;
end;

procedure UpdSettings(port : Byte; numlist : byte);
begin
  if port = 0 then
    begin
      FormAddPorts.chk3.Checked := SettingsCommon[0].SettOutData[numList].isOutPort;
      FormAddPorts.chk1.Checked := SettingsCommon[0].SettOutData[numList].isOutTime;
      FormAddPorts.chk2.Checked := SettingsCommon[0].SettOutData[numList].isOutCnt;
      FormAddPorts.ChDir0.Checked := SettingsCommon[0].SettOutData[numList].isOutDir;

      FormAddPorts.ChSendMainLog0.Checked := SettingsCommon[0].SettOutData[numList].isSendMainLog;
      FormAddPorts.ChSendParser0.Checked := SettingsCommon[0].SettOutData[numList].isSendParser;
      FormAddPorts.ChSendAddPort0.Checked := SettingsCommon[0].SettOutData[numList].isSendAddPort;
      FormAddPorts.ChClrBuf0.Checked := SettingsCommon[0].SettOutData[numList].isClearBufClose;
      FormAddPorts.ChSecondWindow0.Checked := SettingsCommon[0].SettOutData[numList].isSendAddLog;


      FormAddPorts.req5.Color   := SettingsCommon[0].SettOutData[numList].ColorLog;
      FormAddPorts.chkChSep0D.Checked := SettingsCommon[0].SettOutData[numList].isSep0D;
      FormAddPorts.chkChSep0A.Checked := SettingsCommon[0].SettOutData[numList].isSep0A;
      FormAddPorts.chkChSep00.Checked := SettingsCommon[0].SettOutData[numList].isSep00;
      FormAddPorts.chkChSep0D0A.Checked := SettingsCommon[0].SettOutData[numList].isSep0D0A;
      FormAddPorts.chkChSepTime.Checked := SettingsCommon[0].SettOutData[numList].isSepTime;
      FormAddPorts.chkChSepCnt.Checked := SettingsCommon[0].SettOutData[numList].isSepCnt;
      FormAddPorts.chk7.Checked := SettingsCommon[0].SettOutData[numList].isSepSeq1_4;
      FormAddPorts.chk8.Checked := SettingsCommon[0].SettOutData[numList].isSepSeq1_3;
      FormAddPorts.chk9.Checked := SettingsCommon[0].SettOutData[numList].isSepSeq1_2;
      FormAddPorts.chkChSepSymbol.Checked := SettingsCommon[0].SettOutData[numList].isSepSeq1_1;
      FormAddPorts.chk11.Checked := SettingsCommon[0].SettOutData[numList].isSepSeq2_4;
      FormAddPorts.chk12.Checked := SettingsCommon[0].SettOutData[numList].isSepSeq2_3;
      FormAddPorts.chk13.Checked := SettingsCommon[0].SettOutData[numList].isSepSeq2_2;
      FormAddPorts.chk10.Checked := SettingsCommon[0].SettOutData[numList].isSepSeq2_1;
      FormAddPorts.chkChCBBefByte2.Checked := SettingsCommon[0].SettOutData[numList].isSepBef1;
      FormAddPorts.chkChCBBefByte1.Checked := SettingsCommon[0].SettOutData[numList].isSepBef2;

      FormAddPorts.edtEdtPauseRx.Text := IntToStr(SettingsCommon[0].SettOutData[numList].SepTime);
      FormAddPorts.edtEdtCntSep.Text :=  IntToStr(SettingsCommon[0].SettOutData[numList].SepCnt);
      FormAddPorts.edt100.Text       := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq1_4_1, 2);
      FormAddPorts.edt101.Text       := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq1_4_2, 2);
      FormAddPorts.edt102.Text       := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq1_4_3, 2);
      FormAddPorts.edt103.Text       := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq1_4_4, 2);
      FormAddPorts.edt2.Text       := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq1_3_1, 2);
      FormAddPorts.edt99.Text       := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq1_3_2, 2);
      FormAddPorts.edt104.Text       := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq1_3_3, 2);
      FormAddPorts.edt105.Text       := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq1_2_1, 2);
      FormAddPorts.edt106.Text       := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq1_2_2, 2);
      FormAddPorts.edtEdtSymAdd.Text := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq1_1_1, 2);
      FormAddPorts.edt107.Text := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq2_4_1, 2);
      FormAddPorts.edt108.Text := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq2_4_2, 2);
      FormAddPorts.edt109.Text := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq2_4_3, 2);
      FormAddPorts.edt110.Text := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq2_4_4, 2);
      FormAddPorts.edt111.Text := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq2_3_1, 2);
      FormAddPorts.edt112.Text := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq2_3_2, 2);
      FormAddPorts.edt113.Text := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq2_3_3, 2);
      FormAddPorts.edt114.Text := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq2_2_1, 2);
      FormAddPorts.edt115.Text := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq2_2_2, 2);
      FormAddPorts.edtEdt98.Text := IntToHex(SettingsCommon[0].SettOutData[numList].SepSeq2_1_1, 2);
      FormAddPorts.edtEdtBefSym2.Text := IntToHex(SettingsCommon[0].SettOutData[numList].SepBef1, 2);
      FormAddPorts.edtEdtBefSym1.Text := IntToHex(SettingsCommon[0].SettOutData[numList].SepBef2, 2);

      FormAddPorts.Bt1.Enabled := ReadPortSett[0].numList > 1;
      FormAddPorts.Bt3.Enabled := ReadPortSett[0].numList < LIST_SETT;
      FormAddPorts.Edt24.Text := SettingsCommon[0].SettOutData[numList].Name;

      FormAddPorts.cbb7.ItemIndex := Integer(SettingsCommon[0].SettOutData[numList].ReadMode);
      ColorLog[0] := SettingsCommon[0].SettOutData[numList].ColorLog;
      FormAddPorts.ChFastRead1.Checked := SettingsCommon[0].SettOutData[numList].isFastRead;
      isFastReadPort[0] := SettingsCommon[0].SettOutData[numList].isFastRead;
      ReadMode[0] := SettingsCommon[0].SettOutData[numList].ReadMode;

      isOutPort[0] := SettingsCommon[0].SettOutData[numList].isOutPort;
      isOutTime[0] := SettingsCommon[0].SettOutData[numList].isOutTime;
      isOutCnt[0] := SettingsCommon[0].SettOutData[numList].isOutCnt;
      isOutDir[0] := SettingsCommon[0].SettOutData[numList].isOutDir;
      isSendMainLog[0] := SettingsCommon[0].SettOutData[numList].isSendMainLog;
      isSendParser[0] := SettingsCommon[0].SettOutData[numList].isSendParser;
      isSendAddPort[0] := SettingsCommon[0].SettOutData[numList].isSendAddPort;
      isClearBufClose[0] := SettingsCommon[0].SettOutData[numList].isClearBufClose;
      isSendAddLog[0] := SettingsCommon[0].SettOutData[numList].isSendAddLog;



      StrRef1[0] := SettingsCommon[0].SettOutData[numList].strRef1;
      StrRef2[0] := SettingsCommon[0].SettOutData[numList].strRef2;

      FormAddPorts.edt26.Text := StrRef1[0];
      FormAddPorts.edt28.Text := StrRef2[0];

      BaudRate1[0] := SettingsCommon[0].SettOutData[numList].ChangeBR1;
      BaudRate2[0] := SettingsCommon[0].SettOutData[numList].ChangeBR2;

      FormAddPorts.edt27.Text := IntToStr(BaudRate1[0]);
      FormAddPorts.edt29.Text := IntToStr(BaudRate2[0]);

      isSetBR1[0] := SettingsCommon[0].SettOutData[numList].isSetBR1;
      isSetBR2[0] := SettingsCommon[0].SettOutData[numList].isSetBR2;

      isClosePort1[0] := SettingsCommon[0].SettOutData[numList].isClosePort1;
      isClosePort2[0] := SettingsCommon[0].SettOutData[numList].isClosePort2;

      isSetColor1[0] := SettingsCommon[0].SettOutData[numList].isSetColor1;
      isSetColor2[0] := SettingsCommon[0].SettOutData[numList].isSetColor2;



      isExpandWindow1[0] := SettingsCommon[0].SettOutData[numList].isExpandWindow1;
      isExpandWindow2[0] := SettingsCommon[0].SettOutData[numList].isExpandWindow2;

      ColorEv1[0] := SettingsCommon[0].SettOutData[numList].ColorEv1;
      ColorEv2[0] := SettingsCommon[0].SettOutData[numList].ColorEv2;



      FormAddPorts.ChChangeBR.Checked := isSetBR1[0];
      FormAddPorts.CheckBox8.Checked  := isSetBR1[0];

      FormAddPorts.ChClosePort.Checked := isClosePort1[0];
      FormAddPorts.CheckBox9.Checked  := isClosePort2[0];

      FormAddPorts.ChExpandWindow.Checked  := isExpandWindow1[0];
      FormAddPorts.CheckBox10.Checked      := isExpandWindow2[0];

      FormAddPorts.ChSetColor.Checked  := isSetColor1[0];
      FormAddPorts.CheckBox11.Checked  := isSetColor2[0];

      FormAddPorts.req10.Color := ColorEv1[0];
      FormAddPorts.req11.Color := ColorEv2[0];


      if isSepBef2[0] then
        begin
          FormAddPorts.edtEdtBefSym1.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edtEdtBefSym1.Color := FormAddPorts.Color;
        end;

      if isSepBef1[0] then
        begin
          FormAddPorts.edtEdtBefSym2.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edtEdtBefSym2.Color := FormAddPorts.Color;
        end;

      if isSepSeq2_1[0] then
        begin
          FormAddPorts.edtEdt98.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edtEdt98.Color := FormAddPorts.Color;
        end;


      if isSepSeq2_2[0] then
        begin
          FormAddPorts.edt114.Color := COLOR_LINE_SEP;
          FormAddPorts.edt115.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt114.Color := FormAddPorts.Color;
          FormAddPorts.edt115.Color := FormAddPorts.Color;
        end;

      if isSepSeq2_3[0] then
        begin
          FormAddPorts.edt111.Color := COLOR_LINE_SEP;
          FormAddPorts.edt112.Color := COLOR_LINE_SEP;
          FormAddPorts.edt113.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt111.Color := FormAddPorts.Color;
          FormAddPorts.edt112.Color := FormAddPorts.Color;
          FormAddPorts.edt113.Color := FormAddPorts.Color;
        end;

      if isSepSeq2_4[0] then
        begin
          FormAddPorts.edt107.Color := COLOR_LINE_SEP;
          FormAddPorts.edt108.Color := COLOR_LINE_SEP;
          FormAddPorts.edt109.Color := COLOR_LINE_SEP;
          FormAddPorts.edt110.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt107.Color := FormAddPorts.Color;
          FormAddPorts.edt108.Color := FormAddPorts.Color;
          FormAddPorts.edt109.Color := FormAddPorts.Color;
          FormAddPorts.edt110.Color := FormAddPorts.Color;
        end;

      if isSepSeq1_1[0] then
        begin
          FormAddPorts.edtEdtSymAdd.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edtEdtSymAdd.Color := FormAddPorts.Color;
        end;


      if isSepSeq1_2[0] then
        begin
          FormAddPorts.edt105.Color := COLOR_LINE_SEP;
          FormAddPorts.edt106.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt105.Color := FormAddPorts.Color;
          FormAddPorts.edt106.Color := FormAddPorts.Color;
        end;

      if isSepSeq1_3[0] then
        begin
          FormAddPorts.edt2.Color := COLOR_LINE_SEP;
          FormAddPorts.edt99.Color := COLOR_LINE_SEP;
          FormAddPorts.edt104.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt2.Color := FormAddPorts.Color;
          FormAddPorts.edt99.Color := FormAddPorts.Color;
          FormAddPorts.edt104.Color := FormAddPorts.Color;
        end;


      if isSepSeq1_4[0] then
        begin
          FormAddPorts.edt100.Color := COLOR_LINE_SEP;
          FormAddPorts.edt101.Color := COLOR_LINE_SEP;
          FormAddPorts.edt102.Color := COLOR_LINE_SEP;
          FormAddPorts.edt103.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt100.Color := FormAddPorts.Color;
          FormAddPorts.edt101.Color := FormAddPorts.Color;
          FormAddPorts.edt102.Color := FormAddPorts.Color;
          FormAddPorts.edt103.Color := FormAddPorts.Color;
        end;


      if isSepCnt[0] then
        begin
          FormAddPorts.edtEdtCntSep.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edtEdtCntSep.Color := FormAddPorts.Color;
        end;

      if isSep0D[0] then
        begin
          FormAddPorts.chkChSep0D.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.chkChSep0D.Color := FormAddPorts.Color;
        end;


      if isSep0A[0] then
        begin
          FormAddPorts.chkChSep0A.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.chkChSep0A.Color := FormAddPorts.Color;
        end;

      if isSep00[0] then
        begin
          FormAddPorts.chkChSep00.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.chkChSep00.Color := FormAddPorts.Color;
        end;

      if isSep0D0A[0] then
        begin
          FormAddPorts.chkChSep0D0A.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.chkChSep0D0A.Color := FormAddPorts.Color;
        end;

      if isSepTime[0] then
        begin
          FormAddPorts.edtEdtPauseRx.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edtEdtPauseRx.Color := FormAddPorts.Color;
        end;
    end;

  if port = 1 then
    begin
      FormAddPorts.CheckBox1.Checked := SettingsCommon[1].SettOutData[numList].isOutPort;
      FormAddPorts.CheckBox2.Checked := SettingsCommon[1].SettOutData[numList].isOutTime;
      FormAddPorts.CheckBox3.Checked := SettingsCommon[1].SettOutData[numList].isOutCnt;
      FormAddPorts.ChDir1.Checked := SettingsCommon[1].SettOutData[numList].isOutDir;

      FormAddPorts.ChSendMainLog1.Checked := SettingsCommon[1].SettOutData[numList].isSendMainLog;
      FormAddPorts.ChSendParser1.Checked := SettingsCommon[1].SettOutData[numList].isSendParser;
      FormAddPorts.ChSendAddPort1.Checked := SettingsCommon[1].SettOutData[numList].isSendAddPort;
      FormAddPorts.ChClrBuf1.Checked := SettingsCommon[1].SettOutData[numList].isClearBufClose;
      FormAddPorts.ChSecondWindow1.Checked := SettingsCommon[1].SettOutData[numList].isSendAddLog;


      FormAddPorts.req2.Color   := SettingsCommon[1].SettOutData[numList].ColorLog;

      FormAddPorts.chk17.Checked := SettingsCommon[1].SettOutData[numList].isSep0D;
      FormAddPorts.chk16.Checked := SettingsCommon[1].SettOutData[numList].isSep0A;
      FormAddPorts.chk15.Checked := SettingsCommon[1].SettOutData[numList].isSep00;
      FormAddPorts.chk14.Checked := SettingsCommon[1].SettOutData[numList].isSep0D0A;
      FormAddPorts.chk18.Checked := SettingsCommon[1].SettOutData[numList].isSepTime;
      FormAddPorts.chk19.Checked := SettingsCommon[1].SettOutData[numList].isSepCnt;
      FormAddPorts.chk20.Checked := SettingsCommon[1].SettOutData[numList].isSepSeq1_4;
      FormAddPorts.chk21.Checked := SettingsCommon[1].SettOutData[numList].isSepSeq1_3;
      FormAddPorts.chk22.Checked := SettingsCommon[1].SettOutData[numList].isSepSeq1_2;
      FormAddPorts.chk23.Checked := SettingsCommon[1].SettOutData[numList].isSepSeq1_1;
      FormAddPorts.chk25.Checked := SettingsCommon[1].SettOutData[numList].isSepSeq2_4;
      FormAddPorts.chk26.Checked := SettingsCommon[1].SettOutData[numList].isSepSeq2_3;
      FormAddPorts.chk27.Checked := SettingsCommon[1].SettOutData[numList].isSepSeq2_2;
      FormAddPorts.chk24.Checked := SettingsCommon[1].SettOutData[numList].isSepSeq2_1;
      FormAddPorts.chkChCBBefByte21.Checked := SettingsCommon[1].SettOutData[numList].isSepBef1;
      FormAddPorts.chkChCBBefByte11.Checked := SettingsCommon[1].SettOutData[numList].isSepBef2;

      FormAddPorts.edt1.Text := IntToStr(SettingsCommon[1].SettOutData[numList].SepTime);
      FormAddPorts.edt3.Text := IntToStr(SettingsCommon[1].SettOutData[numList].SepCnt);
      FormAddPorts.edt4.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq1_4_1, 2);
      FormAddPorts.edt5.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq1_4_2, 2);
      FormAddPorts.edt6.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq1_4_3, 2);
      FormAddPorts.edt7.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq1_4_4, 2);
      FormAddPorts.edt8.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq1_3_1, 2);
      FormAddPorts.edt9.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq1_3_2, 2);
      FormAddPorts.edt10.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq1_3_3, 2);
      FormAddPorts.edt11.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq1_2_1, 2);
      FormAddPorts.edt12.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq1_2_2, 2);
      FormAddPorts.edt13.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq1_1_1, 2);

      FormAddPorts.edt15.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq2_4_1, 2);
      FormAddPorts.edt16.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq2_4_2, 2);
      FormAddPorts.edt17.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq2_4_3, 2);
      FormAddPorts.edt18.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq2_4_4, 2);
      FormAddPorts.edt19.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq2_3_1, 2);
      FormAddPorts.edt20.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq2_3_2, 2);
      FormAddPorts.edt21.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq2_3_3, 2);
      FormAddPorts.edt22.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq2_2_1, 2);
      FormAddPorts.edt23.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq2_2_2, 2);
      FormAddPorts.edt14.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepSeq2_1_1, 2);
      FormAddPorts.edtEdtBefSym21.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepBef1, 2);
      FormAddPorts.edtEdtBefSym11.Text := IntToHex(SettingsCommon[1].SettOutData[numList].SepBef2, 2);

      FormAddPorts.Bt4.Enabled := ReadPortSett[1].numList > 1;
      FormAddPorts.Bt5.Enabled := ReadPortSett[1].numList < LIST_SETT;
      FormAddPorts.Edt25.Text := SettingsCommon[1].SettOutData[numList].Name;


      FormAddPorts.cbb14.ItemIndex := Integer(SettingsCommon[1].SettOutData[numList].ReadMode);
      ColorLog[1] := SettingsCommon[1].SettOutData[numList].ColorLog;
      FormAddPorts.ChFastRead2.Checked := SettingsCommon[1].SettOutData[numList].isFastRead;
      isFastReadPort[1] := SettingsCommon[0].SettOutData[numList].isFastRead;
      ReadMode[1] := SettingsCommon[1].SettOutData[numList].ReadMode;

      isOutPort[1] := SettingsCommon[1].SettOutData[numList].isOutPort;
      isOutTime[1] := SettingsCommon[1].SettOutData[numList].isOutTime;
      isOutCnt[1] := SettingsCommon[1].SettOutData[numList].isOutCnt;
      isOutDir[1] := SettingsCommon[1].SettOutData[numList].isOutDir;
      isSendMainLog[1] := SettingsCommon[1].SettOutData[numList].isSendMainLog;
      isSendParser[1] := SettingsCommon[1].SettOutData[numList].isSendParser;
      isSendAddPort[1] := SettingsCommon[1].SettOutData[numList].isSendAddPort;
      isSendAddLog[1] := SettingsCommon[1].SettOutData[numList].isSendAddLog;



      isClearBufClose[1] := SettingsCommon[1].SettOutData[numList].isClearBufClose;

      StrRef1[1] := SettingsCommon[1].SettOutData[numList].strRef1;
      StrRef2[1] := SettingsCommon[1].SettOutData[numList].strRef2;

      FormAddPorts.edt30.Text := StrRef1[1];
      FormAddPorts.edt32.Text := StrRef2[1];

      BaudRate1[1] := SettingsCommon[1].SettOutData[numList].ChangeBR1;
      BaudRate2[1] := SettingsCommon[1].SettOutData[numList].ChangeBR2;

      FormAddPorts.edt31.Text := IntToStr(BaudRate1[1]);
      FormAddPorts.edt33.Text := IntToStr(BaudRate2[1]);

      isSetBR1[1] := SettingsCommon[1].SettOutData[numList].isSetBR1;
      isSetBR2[1] := SettingsCommon[1].SettOutData[numList].isSetBR2;

      isClosePort1[1] := SettingsCommon[1].SettOutData[numList].isClosePort1;
      isClosePort2[1] := SettingsCommon[1].SettOutData[numList].isClosePort2;

      isSetColor1[1] := SettingsCommon[1].SettOutData[numList].isSetColor1;
      isSetColor2[1] := SettingsCommon[1].SettOutData[numList].isSetColor2;

      isExpandWindow1[1] := SettingsCommon[1].SettOutData[numList].isExpandWindow1;
      isExpandWindow2[1] := SettingsCommon[1].SettOutData[numList].isExpandWindow2;

      ColorEv1[1] := SettingsCommon[0].SettOutData[numList].ColorEv1;
      ColorEv2[1] := SettingsCommon[0].SettOutData[numList].ColorEv2;


      FormAddPorts.CheckBox12.Checked := isSetBR1[1];
      FormAddPorts.CheckBox16.Checked := isSetBR1[1];

      FormAddPorts.CheckBox13.Checked := isClosePort1[1];
      FormAddPorts.CheckBox17.Checked := isClosePort2[1];

      FormAddPorts.CheckBox14.Checked := isExpandWindow1[1];
      FormAddPorts.CheckBox18.Checked := isExpandWindow2[1];

      FormAddPorts.CheckBox15.Checked := isSetColor1[1];
      FormAddPorts.CheckBox19.Checked := isSetColor2[1];

      FormAddPorts.req12.Color := ColorEv1[1];
      FormAddPorts.req13.Color := ColorEv2[1];


      if isSepBef2[1] then
        begin
          FormAddPorts.edtEdtBefSym11.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edtEdtBefSym11.Color := FormAddPorts.Color;
        end;


      if isSepBef1[1] then
        begin
          FormAddPorts.edtEdtBefSym21.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edtEdtBefSym21.Color := FormAddPorts.Color;
        end;


      if isSepSeq2_1[1] then
        begin
          FormAddPorts.edt14.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt14.Color := FormAddPorts.Color;
        end;


      if isSepSeq2_2[1] then
        begin
          FormAddPorts.edt22.Color := COLOR_LINE_SEP;
          FormAddPorts.edt23.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt22.Color := FormAddPorts.Color;
          FormAddPorts.edt23.Color := FormAddPorts.Color;
        end;

      if isSepSeq2_3[1] then
        begin
          FormAddPorts.edt19.Color := COLOR_LINE_SEP;
          FormAddPorts.edt20.Color := COLOR_LINE_SEP;
          FormAddPorts.edt21.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt19.Color := FormAddPorts.Color;
          FormAddPorts.edt20.Color := FormAddPorts.Color;
          FormAddPorts.edt21.Color := FormAddPorts.Color;
        end;


      if isSepSeq2_4[1] then
        begin
          FormAddPorts.edt15.Color := COLOR_LINE_SEP;
          FormAddPorts.edt16.Color := COLOR_LINE_SEP;
          FormAddPorts.edt17.Color := COLOR_LINE_SEP;
          FormAddPorts.edt18.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt15.Color := FormAddPorts.Color;
          FormAddPorts.edt16.Color := FormAddPorts.Color;
          FormAddPorts.edt17.Color := FormAddPorts.Color;
          FormAddPorts.edt18.Color := FormAddPorts.Color;
        end;

      if isSepSeq1_1[1] then
        begin
          FormAddPorts.edt13.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt13.Color := FormAddPorts.Color;
        end;



      if isSepSeq1_2[1] then
        begin
          FormAddPorts.edt11.Color := COLOR_LINE_SEP;
          FormAddPorts.edt12.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt11.Color := FormAddPorts.Color;
          FormAddPorts.edt12.Color := FormAddPorts.Color;
        end;

      if isSepSeq1_3[1] then
        begin
          FormAddPorts.edt8.Color := COLOR_LINE_SEP;
          FormAddPorts.edt9.Color := COLOR_LINE_SEP;
          FormAddPorts.edt10.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt8.Color := FormAddPorts.Color;
          FormAddPorts.edt9.Color := FormAddPorts.Color;
          FormAddPorts.edt10.Color := FormAddPorts.Color;
        end;


      if isSepSeq1_4[1] then
        begin
          FormAddPorts.edt4.Color := COLOR_LINE_SEP;
          FormAddPorts.edt5.Color := COLOR_LINE_SEP;
          FormAddPorts.edt6.Color := COLOR_LINE_SEP;
          FormAddPorts.edt7.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt4.Color := FormAddPorts.Color;
          FormAddPorts.edt5.Color := FormAddPorts.Color;
          FormAddPorts.edt6.Color := FormAddPorts.Color;
          FormAddPorts.edt7.Color := FormAddPorts.Color;
        end;


      if isSepCnt[1] then
        begin
          FormAddPorts.edt3.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt3.Color := FormAddPorts.Color;
        end;

      if isSepTime[1] then
        begin
          FormAddPorts.edt1.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.edt1.Color := FormAddPorts.Color;
        end;

      if isSep0D0A[1] then
        begin
          FormAddPorts.chk14.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.chk14.Color := FormAddPorts.Color;
        end;


      if isSep0A[1] then
        begin
          FormAddPorts.chk16.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.chk16.Color := FormAddPorts.Color;
        end;

      if isSep0D[1] then
        begin
          FormAddPorts.chk17.Color := COLOR_LINE_SEP;
        end
      else
        begin
          FormAddPorts.chk17.Color := FormAddPorts.Color;
        end;
    end;
end;

procedure UpListSett(numPort : byte);
var
  i : Integer;
begin
  ListSett[numPort].Clear;
  For i := 1 to LIST_SETT do
    begin
      ListSett[numPort].Items.Add(SettingsCommon[numPort].SettOutData[i].Name);
    end;
end;


procedure TFormAddPorts.FormCreate(Sender: TObject);
var
  numPort, numList : Byte;
  i : integer;
begin
  isTextLogFile[0] := False;
  isTextLogFile[1] := False;

  isBinLogFile[0] := False;
  isBinLogFile[1] := False;

  isSendWinLog[0] := False;
  isSendWinLog[1] := False;

  //NameCom[0] := 'COM1';
  //NameCom[1] := 'COM2';
  CSelPort[0] := cbb1;
  CSelPort[1] := cbb8;

  CBaudRate[0] := cbb2;
  CBaudRate[1] := cbb9;

  CComBits[0] := cbb3;
  CComBits[1] := cbb10;

  CComStopBits[0] := cbb5;
  CComStopBits[1] := cbb12;

  CParityCOM[0] := cbb4;
  CParityCOM[1] := cbb11;

  HandsHaking[0] := cbb6;
  HandsHaking[1] := cbb13;

  BtnScan[0] := Button3;
  BtnScan[1] := Button7;

  BtnConnect[0] := Bt2;
  BtnConnect[1] := Button6;

  STBytesRec[0] := req1;
  STBytesSent[0] := req3;
  STBytesinBuf[0]:= req4;

  STBytesRec[1] := req8;
  STBytesSent[1] := req7;
  STBytesinBuf[1]:= req6;

  ListSett[0] := lst1;
  ListSett[1] := lst2;

  grpEv1[0] := grp18;
  grpEv2[0] := grp19;

  grpEv1[1] := grp21;
  grpEv2[1] := grp22;

  BtConnect[0] := Bt2;
  BtConnect[1] := Button6;

  STCntEv1[0] := ctxt1;
  STCntEv2[0] := ctxt2;

  STCntEv1[1] := ctxt3;
  STCntEv2[1] := ctxt4;

  CntEv1[0] := 0;
  CntEv2[0] := 0;

  CntEv1[1] := 0;
  CntEv2[1] := 0;

  STCntEv1[0].Caption := '0';
  STCntEv2[0].Caption := '0';

  STCntEv1[1].Caption := '0';
  STCntEv2[1].Caption := '0';

  isThr1 := False;
  isThr2 := False;

  TerminalST.Form1.isSaveFileAddPortsA := True;

  Bt8.Font.Name:='Symbol';
  Bt9.Font.Name:='Symbol';
  Bt8.Caption := chr($AF);
  Bt9.Caption := chr($AF);

  ListSett[0].Visible := False;
  ListSett[1].Visible := False;

  AssignFile(FileSettings, ExtractFilePath(Application.ExeName) + NameFileCFG);
  if FileExists(ExtractFilePath(Application.ExeName) + NameFileCFG) and (Get_File_Size(ExtractFilePath(Application.ExeName) + NameFileCFG, True) > 0) then
    begin
      Reset(FileSettings);
      Read(FileSettings, SettingsCommon[0]);
      Read(FileSettings, SettingsCommon[1]);
      ReadPortSett[0] := SettingsCommon[0].ReadPort;
      ReadPortSett[1] := SettingsCommon[1].ReadPort;
    end
  else
    begin
      Rewrite(FileSettings);
      for numPort := 0 to 1 do
        begin
          with ReadPortSett[numPort] do begin
            Name := '';
            Speed := 1200;
            Bits := 8;
            Parity := 0;
            StopBits := 0;
            HandsHaking := 0;
            numList := 1;
          end;

          isOutPort[numPort] := True;
          isOutTime[numPort] := False;
          isOutCnt[numPort]  := False;
          isOutDir[numPort]  := False;
          isSendMainLog[numPort] := True;
          isSendParser[numPort] := True;
          isSendAddPort[numPort] := False;
          isClearBufClose[numPort] := False;

          isSetBR1[numPort] := False;
          isSetBR2[numPort] := False;
          isClosePort1[numPort]:= false;
          isClosePort2[numPort]:= false;

          isExpandWindow1[numPort]:= false;
          isExpandWindow2[numPort]:= false;

          isSetColor1[numPort]:= false;
          isSetColor2[numPort]:= false;

          ColorEv1[numPort] := clBlack;
          ColorEv2[numPort] := clBlack;

          NameList[numPort]  := '[----]';
          ColorLog[numPort]  := clBlack;

          isSep0A[numPort] := True;
          isSep0D[numPort] := True;
          isSep00[numPort] := True;
          isSep0D0A[numPort] := True;

          isSepTime[numPort] := True;
          isSepCnt[numPort] := False;

          isSepSeq1_4[numPort] := False;
          isSepSeq1_3[numPort] := False;
          isSepSeq1_2[numPort] := False;
          isSepSeq1_1[numPort] := False;

          isSepSeq2_4[numPort] := False;
          isSepSeq2_3[numPort] := False;
          isSepSeq2_2[numPort] := False;
          isSepSeq2_1[numPort] := False;

          isSepBef1[numPort] := False;
          isSepBef2[numPort] := False;

          SepTime[numPort] := 100;
          SepCnt[numPort] := 0;

          SepSeq1_4_1[numPort] := 0;
          SepSeq1_4_2[numPort] := 0;
          SepSeq1_4_3[numPort] := 0;
          SepSeq1_4_4[numPort] := 0;

          SepSeq1_3_1[numPort] := 0;
          SepSeq1_3_2[numPort] := 0;
          SepSeq1_3_3[numPort] := 0;

          SepSeq1_2_1[numPort] := 0;
          SepSeq1_2_2[numPort] := 0;

          SepSeq1_1_1[numPort] := 0;

          SepSeq2_4_1[numPort] := 0;
          SepSeq2_4_2[numPort] := 0;
          SepSeq2_4_3[numPort] := 0;
          SepSeq2_4_4[numPort] := 0;

          SepSeq2_3_1[numPort] := 0;
          SepSeq2_3_2[numPort] := 0;
          SepSeq2_3_3[numPort] := 0;

          SepSeq2_2_1[numPort] := 0;
          SepSeq2_2_2[numPort] := 0;

          SepSeq2_1_1[numPort] := 0;

          SepBef1[numPort] := 0;
          SepBef2[numPort] := 0;
          ReadMode[numPort] := ReadASCII;
          isFastReadPort[numPort] := False;

          StrRef1[numPort] := '';
          StrRef2[numPort] := '';


          SettingsCommon[0].ReadPort := ReadPortSett[0];
          SettingsCommon[1].ReadPort := ReadPortSett[1];

          for numList := 1 to LIST_SETT do
            begin
              SettingsCommon[numPort].SettOutData[numList].isOutPort := isOutPort[numPort];
              SettingsCommon[numPort].SettOutData[numList].isOutTime := isOutTime[numPort];
              SettingsCommon[numPort].SettOutData[numList].isOutCnt := isOutCnt[numPort];
              SettingsCommon[numPort].SettOutData[numList].isOutDir := isOutDir[numPort];

              SettingsCommon[numPort].SettOutData[numList].isSendMainLog := isSendMainLog[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSendParser  := isSendParser[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSendAddPort := isSendAddPort[numPort];

              SettingsCommon[numPort].SettOutData[numList].Name := NameList[numPort];
              SettingsCommon[numPort].SettOutData[numList].ColorLog := ColorLog[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSep0A := isSep0A[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSep0D := isSep0D[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSep00 := isSep00[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSep0D0A := isSep0D0A[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSepTime := isSepTime[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSepCnt := isSepCnt[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSepSeq1_4 := isSepSeq1_4[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSepSeq1_3 := isSepSeq1_3[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSepSeq1_2 := isSepSeq1_2[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSepSeq1_1 := isSepSeq1_1[numPort];

              SettingsCommon[numPort].SettOutData[numList].isSepSeq2_4 := isSepSeq2_4[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSepSeq2_3 := isSepSeq2_3[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSepSeq2_2 := isSepSeq2_2[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSepSeq2_1 := isSepSeq2_1[numPort];

              SettingsCommon[numPort].SettOutData[numList].isSepBef1 := isSepBef1[numPort];
              SettingsCommon[numPort].SettOutData[numList].isSepBef2 := isSepBef2[numPort];

              SettingsCommon[numPort].SettOutData[numList].SepTime := SepTime[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepCnt := SepCnt[numPort];

              SettingsCommon[numPort].SettOutData[numList].SepSeq1_4_1 := SepSeq1_4_1[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepSeq1_4_2 := SepSeq1_4_2[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepSeq1_4_3 := SepSeq1_4_3[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepSeq1_4_4 := SepSeq1_4_4[numPort];

              SettingsCommon[numPort].SettOutData[numList].SepSeq1_3_1 := SepSeq1_3_1[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepSeq1_3_2 := SepSeq1_3_2[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepSeq1_3_3 := SepSeq1_3_3[numPort];

              SettingsCommon[numPort].SettOutData[numList].SepSeq1_2_1 := SepSeq1_2_1[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepSeq1_2_2 := SepSeq1_2_2[numPort];

              SettingsCommon[numPort].SettOutData[numList].SepSeq1_1_1 := SepSeq1_1_1[numPort];

              SettingsCommon[numPort].SettOutData[numList].SepSeq2_4_1 := SepSeq2_4_1[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepSeq2_4_2 := SepSeq2_4_2[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepSeq2_4_3 := SepSeq2_4_3[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepSeq2_4_4 := SepSeq2_4_4[numPort];

              SettingsCommon[numPort].SettOutData[numList].SepSeq2_3_1 := SepSeq2_3_1[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepSeq2_3_2 := SepSeq2_3_2[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepSeq2_3_3 := SepSeq2_3_3[numPort];

              SettingsCommon[numPort].SettOutData[numList].SepSeq2_2_1 := SepSeq2_2_1[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepSeq2_2_2 := SepSeq2_2_2[numPort];

              SettingsCommon[numPort].SettOutData[numList].SepSeq2_1_1 := SepSeq2_1_1[numPort];

              SettingsCommon[numPort].SettOutData[numList].SepBef1 := SepBef1[numPort];
              SettingsCommon[numPort].SettOutData[numList].SepBef2 := SepBef2[numPort];
              SettingsCommon[numPort].SettOutData[numList].ReadMode := ReadMode[numPort];
              SettingsCommon[numPort].SettOutData[numList].isFastRead := isFastReadPort[numPort];

              SettingsCommon[numPort].SettOutData[numList].strRef1     := StrRef1[numPort];
              SettingsCommon[numPort].SettOutData[numList].strRef2     := StrRef2[numPort];
              SettingsCommon[numPort].SettOutData[numList].strRes3     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes4     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes5     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes6     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes7     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes8     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes9     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes10     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes11     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes12     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes13     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes14     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes15     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes16     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes17     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes18     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes19     := '';
              SettingsCommon[numPort].SettOutData[numList].strRes20     := '';



              SettingsCommon[numPort].SettOutData[numList].ChangeBR1   := 0;
              SettingsCommon[numPort].SettOutData[numList].ChangeBR2   := 0;
              SettingsCommon[numPort].SettOutData[numList].nres3       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres4       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres5       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres6       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres7       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres8       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres9       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres10      := 0;
              SettingsCommon[numPort].SettOutData[numList].nres11       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres12       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres13       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres14       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres15       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres16       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres17       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres18       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres19       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres20       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres21       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres22       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres23       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres24       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres25       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres26       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres27       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres28       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres29       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres20       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres21       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres22       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres23       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres24       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres25       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres26       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres27       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres28       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres29       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres30       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres31       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres32       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres33       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres34       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres35       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres36       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres37       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres38       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres39       := 0;
              SettingsCommon[numPort].SettOutData[numList].nres40       := 0;

              SettingsCommon[numPort].SettOutData[numList].isSendAddLog := isSendAddLog[numPort];


              SettingsCommon[numPort].SettOutData[numList].isSetBR1       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].isSetBR2       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].isClosePort1   := FALSE;
              SettingsCommon[numPort].SettOutData[numList].isSetColor1    := TRUE;
              SettingsCommon[numPort].SettOutData[numList].isSetColor2    := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres7          := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres8          := TRUE;
              SettingsCommon[numPort].SettOutData[numList].isExpandWindow1:= FALSE;
              SettingsCommon[numPort].SettOutData[numList].isExpandWindow2:= FALSE;
              SettingsCommon[numPort].SettOutData[numList].isClosePort2   := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres12       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres13       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres14       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres15       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres16       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres17       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres18       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres19       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres20       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres21       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres22       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres23       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres24       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres25       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres26       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres27       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres28       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres29       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres30       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres31       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres32       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres33       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres34       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres35       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres36       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres37       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres38       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres39       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres40       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres41       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres42       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres43       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres44       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres45       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres46       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres47       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres48       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres49       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres50       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres51       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres52       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres53       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres54       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres55       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres56       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres57       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres58       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres59       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres60       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres61       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres62       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres63       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres64       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres65       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres66       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres67       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres68       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres69       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres70       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres71       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres72       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres73       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres74       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres75       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres76       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres77       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres78       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres79       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres80       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres81       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres82       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres83       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres84       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres85       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres86       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres87       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres88       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres89       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres90       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres91       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres92       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres93       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres94       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres95       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres96       := TRUE;
              SettingsCommon[numPort].SettOutData[numList].bres97       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres98       := FALSE;
              SettingsCommon[numPort].SettOutData[numList].bres99       := FALSE;




              SettingsCommon[numPort].SettOutData[numList].byteRes1    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes2    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes3    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes4    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes5    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes6    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes7    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes8    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes9    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes0    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes11    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes12    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes13    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes14    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes15    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes16    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes17    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes18    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes19    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes20    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes21    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes22    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes23    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes24    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes25    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes26    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes27    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes28    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes29    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes30    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes31    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes32    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes33    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes34    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes35    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes36    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes37    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes38    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes39    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes40    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes41    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes42    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes43    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes44    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes45    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes46    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes47    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes48    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes49    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes50    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes51    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes52    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes53    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes54    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes55    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes56    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes57    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes58    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes59    := 0;
              SettingsCommon[numPort].SettOutData[numList].byteRes60    := 0;



              SettingsCommon[numPort].SettOutData[numList].ColorEv1   := clBlack;
              SettingsCommon[numPort].SettOutData[numList].ColorEv2   := clBlack;
              SettingsCommon[numPort].SettOutData[numList].ColorRes3   := clBlack;
              SettingsCommon[numPort].SettOutData[numList].ColorRes4   := clBlack;
              SettingsCommon[numPort].SettOutData[numList].ColorRes5   := clWindow;
              SettingsCommon[numPort].SettOutData[numList].ColorRes6   := clWindow;
              SettingsCommon[numPort].SettOutData[numList].ColorRes7   := clWindow;
              SettingsCommon[numPort].SettOutData[numList].ColorRes8   := clWindow;

              for i := 0 to 256 do
                begin
                  SettingsCommon[numPort].SettOutData[numList].BufRes1[i]  := 0;
                  SettingsCommon[numPort].SettOutData[numList].BufRes2[i]  := 0;
                  SettingsCommon[numPort].SettOutData[numList].BufRes3[i]  := 0;
                  SettingsCommon[numPort].SettOutData[numList].BufRes4[i]  := 0;
                  SettingsCommon[numPort].SettOutData[numList].FlagsRes1[i] := FAlse;
                  SettingsCommon[numPort].SettOutData[numList].FlagsRes2[i] := FAlse;
                  SettingsCommon[numPort].SettOutData[numList].FlagsRes3[i] := FAlse;
                  SettingsCommon[numPort].SettOutData[numList].FlagsRes4[i] := FAlse;
                end;

           end;
          Write(FileSettings, SettingsCommon[numPort]);
        end;
    end;
  CloseFile(FileSettings);

  for numPort := 0 to 1 do
    begin
      isOpenPort[numPort] := False;
      RingBuf[numPort].Mutex := CreateMutex(nil, False, '');
      ReleaseMutex(RingBuf[numPort].Mutex);
      ReadPortSett[numPort] := SettingsCommon[numPort].ReadPort;

      ReadDataCnt[numPort] := 0;
      OutDataCnt[numPort] := 0;
      ByteLostCnt[numPort] := 0;

      UpdSettings(numPort, ReadPortSett[numPort].numList);
    end;


  grp1.Width := 571;
  grp6.Width := 571;
  req9.Width := 571;
  bt10.Width := 571;
  FormAddPorts.Width := 585;
  isEventUse := False;
  Bt10.Caption := 'Track events';

  ScanPorts(0);
  ScanPorts(1);
end;

procedure TFormAddPorts.Button3Click(Sender: TObject);
begin
  ScanPorts(0);
end;

procedure TFormAddPorts.cbb2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TFormAddPorts.Bt2Click(Sender: TObject);
var TimeOut : Integer;
begin
  TimeOut := 1000;
  if not isOpenPort[0] then
    begin
      isOpenPort[0] := OpenPort(0);
      if not isOpenPort[0] then
        ShowMessage('Port open error!');
    end
  else
    begin
      CloseComPort(0);
    end;

  if isOpenPort[0] then
    begin
      TerminalST.Form1.SetActBtSendInAdd(1, True, cbb1.Text, cbb1.Text);
      if isClearBufClose[0] then
        begin
          ResetRing(0);
          CntOut[0] := 0;
          ReadDataCnt[0] := 0;
          OutDataCnt[0] := 0;
          ByteLostCnt[0] := 0;
          STBytesRec[0].Caption   := IntToStr(ReadDataCnt[0]);
          STBytesSent[0].Caption  := IntToStr(OutDataCnt[0]);
          STBytesinBuf[0].Caption := IntToStr(ByteLostCnt[0]);
          STBytesinBuf[0].Color := FormAddPorts.Color;
        end;


      CSelPort[0].Color := clLime;
      (Sender as TButton).Caption := 'Disconnect';

      if not isThr1 then
        begin
          Rx1Thread := TRxThread.Create(True);
          isThr1 := True;
        end;
      Rx1Thread.numPort := 0;
      Rx1Thread.Priority := tpIdle;
      Rx1Thread.Resume;
    end
  else
    begin
      TerminalST.Form1.SetActBtSendInAdd(1, False, '', '');
      CSelPort[0].Color := clWindow;
      (Sender as TButton).Caption := 'Connect';
      if isThr1 then
        begin
          Rx1Thread.Terminate;
          while (not Rx1Thread.Terminated) and (TimeOut > 0) do
            begin
              Sleep(1);
              Dec(TimeOut);
            end;
          Rx1Thread.Free;
          isThr1 := False;
        end;
    end;

  CSelPort[0].Enabled := not isOpenPort[0];
  CBaudRate[0].Enabled := not isOpenPort[0];
  CComBits[0].Enabled := not isOpenPort[0];
  CComStopBits[0].Enabled := not isOpenPort[0];
  CParityCOM[0].Enabled := not isOpenPort[0];
  BtnScan[0].Enabled := not isOpenPort[0];
  HandsHaking[0].Enabled := not isOpenPort[0];
end;

procedure TFormAddPorts.Button6Click(Sender: TObject);
var
  TimeOut : Integer;
begin
  if not isOpenPort[1] then
    begin
      isOpenPort[1] := OpenPort(1);
      if not isOpenPort[1] then
        ShowMessage('Port open error!')
    end
  else
    begin
      CloseComPort(1);
    end;

  if isOpenPort[1] then
    begin
      TerminalST.Form1.SetActBtSendInAdd(2, True, cbb8.Text, cbb8.Text);
      if isClearBufClose[1] then
        begin
          ResetRing(1);
          CntOut[1] := 0;
          ReadDataCnt[1] := 0;
          OutDataCnt[1] := 0;
          ByteLostCnt[1] := 0;
          STBytesRec[1].Caption   := IntToStr(ReadDataCnt[1]);
          STBytesSent[1].Caption  := IntToStr(OutDataCnt[1]);
          STBytesinBuf[1].Caption := IntToStr(ByteLostCnt[1]);
          STBytesinBuf[1].Color := FormAddPorts.Color;
        end;

      CSelPort[1].Color := clLime;
      (Sender as TButton).Caption := 'Disconnect';
      if not isThr2 then
        begin
          Rx2Thread := TRxThread.Create(True);
          isThr2 := True;
        end;

      Rx2Thread.numPort := 1;
      Rx2Thread.Priority := tpIdle;
      Rx2Thread.Resume;
    end
  else
    begin
      TerminalST.Form1.SetActBtSendInAdd(2, false, '', '');
      CSelPort[1].Color := clWindow;
      (Sender as TButton).Caption := 'Connect';
      if isThr2 then
        begin
          Rx2Thread.Terminate;
          while (not Rx2Thread.Terminated) and (TimeOut > 0) do
            begin
              Sleep(1);
              Dec(TimeOut);
            end;
          Rx2Thread.Free;
          isThr2 := False;
        end;

    end;

  CSelPort[1].Enabled := not isOpenPort[1];
  CBaudRate[1].Enabled := not isOpenPort[1];
  CComBits[1].Enabled := not isOpenPort[1];
  CComStopBits[1].Enabled := not isOpenPort[1];
  CParityCOM[1].Enabled := not isOpenPort[1];
  BtnScan[1].Enabled := not isOpenPort[1];
  HandsHaking[1].Enabled := not isOpenPort[1];

end;

procedure TFormAddPorts.cbb6Change(Sender: TObject);
begin
  ReadPortSett[0].HandsHaking := (Sender as TComboBox).ItemIndex;
end;

procedure TFormAddPorts.cbb13Change(Sender: TObject);
begin
  ReadPortSett[1].HandsHaking := (Sender as TComboBox).ItemIndex;
end;

procedure TFormAddPorts.Bt1Click(Sender: TObject);
begin
  if ReadPortSett[0].numList > 1 then
    Dec(ReadPortSett[0].numList);
  UpdSettings(0, ReadPortSett[0].numList);
end;

procedure TFormAddPorts.edt99KeyPress(Sender: TObject; var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormAddPorts.chkChSep0DClick(Sender: TObject);
begin
  isSep0D[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSep0D := isSep0D[0];


  if isSep0D[0] then
    begin
      chkChSep0D.Color := COLOR_LINE_SEP;
    end
  else
    begin
      chkChSep0D.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chkChSep0AClick(Sender: TObject);
begin
  isSep0A[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSep0A := isSep0A[0];

  if isSep0A[0] then
    begin
      chkChSep0A.Color := COLOR_LINE_SEP;
    end
  else
    begin
      chkChSep0A.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chkChSep00Click(Sender: TObject);
begin
  isSep00[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSep00 := isSep00[0];

  if isSep00[0] then
    begin
      chkChSep00.Color := COLOR_LINE_SEP;
    end
  else
    begin
      chkChSep00.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chkChSep0D0AClick(Sender: TObject);
begin
  isSep0D0A[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSep0D0A := isSep0D0A[0];

  if isSep0D0A[0] then
    begin
      chkChSep0D0A.Color := COLOR_LINE_SEP;
    end
  else
    begin
      chkChSep0D0A.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk17Click(Sender: TObject);
begin
  isSep0D[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSep0D := isSep0D[1];

  if isSep0D[1] then
    begin
      chk17.Color := COLOR_LINE_SEP;
    end
  else
    begin
      chk17.Color := FormAddPorts.Color;
    end;
end;

procedure TFormAddPorts.chk16Click(Sender: TObject);
begin
    isSep0A[1] := (Sender as TCheckBox).Checked;
SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSep0A := isSep0A[1];

  if isSep0A[1] then
    begin
      chk16.Color := COLOR_LINE_SEP;
    end
  else
    begin
      chk16.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk15Click(Sender: TObject);
begin
    isSep00[1] := (Sender as TCheckBox).Checked;
    SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSep00 := isSep00[1];


          if isSep00[1] then
    begin
      chk15.Color := COLOR_LINE_SEP;
    end
  else
    begin
      chk15.Color := FormAddPorts.Color;
    end;

      if isSep00[1] then
    begin
      chk15.Color := COLOR_LINE_SEP;
    end
  else
    begin
      chk15.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk14Click(Sender: TObject);
begin
    isSep0D0A[1] := (Sender as TCheckBox).Checked;
    SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSep0D0A := isSep0D0A[1];

      if isSep0D0A[1] then
    begin
      chk14.Color := COLOR_LINE_SEP;
    end
  else
    begin
      chk14.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chkChSepTimeClick(Sender: TObject);
begin
  isSepTime[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSepTime := isSepTime[0];

  if isSepTime[0] then
    begin
      edtEdtPauseRx.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtPauseRx.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chkChSepCntClick(Sender: TObject);
begin
  isSepCnt[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSepCnt := isSepCnt[0];

  if isSepCnt[0] then
    begin
      edtEdtCntSep.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtCntSep.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk18Click(Sender: TObject);
begin
  isSepTime[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSepTime := isSepTime[1];

  if isSepTime[1] then
    begin
      edt1.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt1.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk19Click(Sender: TObject);
begin
  isSepCnt[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSepCnt := isSepCnt[1];

  if isSepCnt[1] then
    begin
      edt3.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt3.Color := FormAddPorts.Color;
    end;
end;

procedure TFormAddPorts.chk7Click(Sender: TObject);
begin
  isSepSeq1_4[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSepSeq1_4 := isSepSeq1_4[0];

  if isSepSeq1_4[0] then
    begin
      edt100.Color := COLOR_LINE_SEP;
      edt101.Color := COLOR_LINE_SEP;
      edt102.Color := COLOR_LINE_SEP;
      edt103.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt100.Color := FormAddPorts.Color;
      edt101.Color := FormAddPorts.Color;
      edt102.Color := FormAddPorts.Color;
      edt103.Color := FormAddPorts.Color;
    end;
end;

procedure TFormAddPorts.chk8Click(Sender: TObject);
begin
  isSepSeq1_3[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSepSeq1_3 := isSepSeq1_3[0];

  if isSepSeq1_3[0] then
    begin
      edt2.Color := COLOR_LINE_SEP;
      edt99.Color := COLOR_LINE_SEP;
      edt104.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt2.Color := FormAddPorts.Color;
      edt99.Color := FormAddPorts.Color;
      edt104.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk9Click(Sender: TObject);
begin
isSepSeq1_2[0] := (Sender as TCheckBox).Checked;
SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSepSeq1_2 := isSepSeq1_2[0];

  if isSepSeq1_2[0] then
    begin
      edt105.Color := COLOR_LINE_SEP;
      edt106.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt105.Color := FormAddPorts.Color;
      edt106.Color := FormAddPorts.Color;
    end;
end;

procedure TFormAddPorts.chkChSepSymbolClick(Sender: TObject);
begin
  isSepSeq1_1[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSepSeq1_1 := isSepSeq1_1[0];

  if isSepSeq1_1[0] then
    begin
      edtEdtSymAdd.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtSymAdd.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk11Click(Sender: TObject);
begin
  isSepSeq2_4[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSepSeq2_4 := isSepSeq2_4[0];

  if isSepSeq2_4[0] then
    begin
      edt107.Color := COLOR_LINE_SEP;
      edt108.Color := COLOR_LINE_SEP;
      edt109.Color := COLOR_LINE_SEP;
      edt110.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt107.Color := FormAddPorts.Color;
      edt108.Color := FormAddPorts.Color;
      edt109.Color := FormAddPorts.Color;
      edt110.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk12Click(Sender: TObject);
begin
  isSepSeq2_3[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSepSeq2_3 := isSepSeq2_3[0];

  if isSepSeq2_3[0] then
    begin
      edt111.Color := COLOR_LINE_SEP;
      edt112.Color := COLOR_LINE_SEP;
      edt113.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt111.Color := FormAddPorts.Color;
      edt112.Color := FormAddPorts.Color;
      edt113.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk13Click(Sender: TObject);
begin
  isSepSeq2_2[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSepSeq2_2 := isSepSeq2_2[0];
  if isSepSeq2_2[0] then
    begin
      edt114.Color := COLOR_LINE_SEP;
      edt115.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt114.Color := FormAddPorts.Color;
      edt115.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk10Click(Sender: TObject);
begin
  isSepSeq2_1[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSepSeq2_1 := isSepSeq2_1[0];
  if isSepSeq2_1[0] then
    begin
      edtEdt98.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdt98.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk20Click(Sender: TObject);
begin
  isSepSeq1_4[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSepSeq1_4 := isSepSeq1_4[1];

  if isSepSeq1_4[1] then
    begin
      edt4.Color := COLOR_LINE_SEP;
      edt5.Color := COLOR_LINE_SEP;
      edt6.Color := COLOR_LINE_SEP;
      edt7.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt4.Color := FormAddPorts.Color;
      edt5.Color := FormAddPorts.Color;
      edt6.Color := FormAddPorts.Color;
      edt7.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk21Click(Sender: TObject);
begin
  isSepSeq1_3[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSepSeq1_3 := isSepSeq1_3[1];

  if isSepSeq1_3[1] then
    begin
      edt8.Color := COLOR_LINE_SEP;
      edt9.Color := COLOR_LINE_SEP;
      edt10.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt8.Color := FormAddPorts.Color;
      edt9.Color := FormAddPorts.Color;
      edt10.Color := FormAddPorts.Color;
    end;
end;

procedure TFormAddPorts.chk22Click(Sender: TObject);
begin
  isSepSeq1_2[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSepSeq1_2 := isSepSeq1_2[1];

  if isSepSeq1_2[1] then
    begin
      edt11.Color := COLOR_LINE_SEP;
      edt12.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt11.Color := FormAddPorts.Color;
      edt12.Color := FormAddPorts.Color;
    end;
end;

procedure TFormAddPorts.chk23Click(Sender: TObject);
begin
  isSepSeq1_1[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSepSeq1_1 := isSepSeq1_1[1];

  if isSepSeq1_1[1] then
    begin
      edt13.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt13.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk25Click(Sender: TObject);
begin
  isSepSeq2_4[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSepSeq2_4 := isSepSeq2_4[1];

  if isSepSeq2_4[1] then
    begin
      edt15.Color := COLOR_LINE_SEP;
      edt16.Color := COLOR_LINE_SEP;
      edt17.Color := COLOR_LINE_SEP;
      edt18.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt15.Color := FormAddPorts.Color;
      edt16.Color := FormAddPorts.Color;
      edt17.Color := FormAddPorts.Color;
      edt18.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk26Click(Sender: TObject);
begin
  isSepSeq2_3[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSepSeq2_3 := isSepSeq2_3[1];



  if isSepSeq2_3[1] then
    begin
      edt19.Color := COLOR_LINE_SEP;
      edt20.Color := COLOR_LINE_SEP;
      edt21.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt19.Color := FormAddPorts.Color;
      edt20.Color := FormAddPorts.Color;
      edt21.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk27Click(Sender: TObject);
begin
  isSepSeq2_2[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSepSeq2_2 := isSepSeq2_2[1];

  if isSepSeq2_2[1] then
    begin
      edt22.Color := COLOR_LINE_SEP;
      edt23.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt22.Color := FormAddPorts.Color;
      edt23.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chk24Click(Sender: TObject);
begin
  isSepSeq2_1[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSepSeq2_1 := isSepSeq2_1[1];

  if isSepSeq2_1[1] then
    begin
      edt14.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edt14.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chkChCBBefByte2Click(Sender: TObject);
begin
  isSepBef1[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSepBef1 := isSepBef1[0];

  if isSepBef1[0] then
    begin
      edtEdtBefSym2.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtBefSym2.Color := FormAddPorts.Color;
    end;
end;

procedure TFormAddPorts.chkChCBBefByte1Click(Sender: TObject);
begin
  isSepBef2[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSepBef2 := isSepBef2[0];

  if isSepBef2[0] then
    begin
      edtEdtBefSym1.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtBefSym1.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chkChCBBefByte21Click(Sender: TObject);
begin
  isSepBef1[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSepBef1 := isSepBef1[1];

  if isSepBef1[1] then
    begin
      edtEdtBefSym21.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtBefSym21.Color := FormAddPorts.Color;
    end;

end;

procedure TFormAddPorts.chkChCBBefByte11Click(Sender: TObject);
begin
  isSepBef2[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSepBef2 := isSepBef2[1];

  if isSepBef2[1] then
    begin
      edtEdtBefSym11.Color := COLOR_LINE_SEP;
    end
  else
    begin
      edtEdtBefSym11.Color := FormAddPorts.Color;
    end;

end;

function SetDecEdit(Sender: TObject; oldData : Cardinal) : Cardinal;
var Str: string[3];
    res: Cardinal;
begin
  res := oldData;
  if (Sender as TEdit).Text <> '' then
    begin
      res := StrToInt((Sender as TEdit).Text);
    end;
  Result := res;
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
      //(Sender as TEdit).Color := clWindow;
    end;
  //else
    //(Sender as TEdit).Color := clYellow;
  (Sender as TEdit).Hint := 'Dec: ' + IntToStr(res);
  Result := res;
end;


procedure TFormAddPorts.edt100Change(Sender: TObject);
begin
  SepSeq1_4_1[0] := SetHexEdit(Sender, SepSeq1_4_1[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq1_4_1 := SepSeq1_4_1[0];
end;

procedure TFormAddPorts.edt101Change(Sender: TObject);
begin
  SepSeq1_4_2[0] := SetHexEdit(Sender, SepSeq1_4_2[0]);
SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq1_4_2 := SepSeq1_4_2[0];
end;

procedure TFormAddPorts.edt102Change(Sender: TObject);
begin
  SepSeq1_4_3[0] := SetHexEdit(Sender, SepSeq1_4_3[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq1_4_3 := SepSeq1_4_3[0];
end;

procedure TFormAddPorts.edt103Change(Sender: TObject);
begin
  SepSeq1_4_4[0] := SetHexEdit(Sender, SepSeq1_4_4[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq1_4_4 := SepSeq1_4_4[0];
end;

procedure TFormAddPorts.edt2Change(Sender: TObject);
begin
  SepSeq1_3_1[0] := SetHexEdit(Sender, SepSeq1_3_1[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq1_3_1 := SepSeq1_3_1[0];
end;


procedure TFormAddPorts.edt99Change(Sender: TObject);
begin
  SepSeq1_3_2[0] := SetHexEdit(Sender, SepSeq1_3_2[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq1_3_2 := SepSeq1_3_2[0];
end;


procedure TFormAddPorts.edt104Change(Sender: TObject);
begin
  SepSeq1_3_3[0] := SetHexEdit(Sender, SepSeq1_3_3[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq1_3_3 := SepSeq1_3_3[0];
end;

procedure TFormAddPorts.edt105Change(Sender: TObject);
begin
  SepSeq1_2_1[0] := SetHexEdit(Sender, SepSeq1_2_1[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq1_2_1 := SepSeq1_2_1[0];
end;

procedure TFormAddPorts.edt106Change(Sender: TObject);
begin
  SepSeq1_2_2[0] := SetHexEdit(Sender, SepSeq1_2_2[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq1_2_2 := SepSeq1_2_2[0];
end;

procedure TFormAddPorts.edtEdtSymAddChange(Sender: TObject);
begin
  SepSeq1_1_1[0] := SetHexEdit(Sender, SepSeq1_1_1[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq1_1_1 := SepSeq1_1_1[0];
end;

procedure TFormAddPorts.edt107Change(Sender: TObject);
begin
  SepSeq2_4_1[0] := SetHexEdit(Sender, SepSeq2_4_1[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq2_4_1 := SepSeq2_4_1[0];
end;


procedure TFormAddPorts.edt108Change(Sender: TObject);
begin
  SepSeq2_4_2[0] := SetHexEdit(Sender, SepSeq2_4_2[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq2_4_2 := SepSeq2_4_2[0];
end;

procedure TFormAddPorts.edt109Change(Sender: TObject);
begin
  SepSeq2_4_3[0] := SetHexEdit(Sender, SepSeq2_4_3[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq2_4_3 := SepSeq2_4_3[0];
end;

procedure TFormAddPorts.edt110Change(Sender: TObject);
begin
  SepSeq2_4_4[0] := SetHexEdit(Sender, SepSeq2_4_4[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq2_4_4 := SepSeq2_4_4[0];
end;

procedure TFormAddPorts.edt111Change(Sender: TObject);
begin
  SepSeq2_3_1[0] := SetHexEdit(Sender, SepSeq2_3_1[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq2_3_1 := SepSeq2_3_1[0];
end;

procedure TFormAddPorts.edt112Change(Sender: TObject);
begin
  SepSeq2_3_2[0] := SetHexEdit(Sender, SepSeq2_3_2[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq2_3_2 := SepSeq2_3_2[0];
end;

procedure TFormAddPorts.edt113Change(Sender: TObject);
begin
  SepSeq2_3_3[0] := SetHexEdit(Sender, SepSeq2_3_3[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq2_3_3 := SepSeq2_3_3[0];
end;

procedure TFormAddPorts.edt114Change(Sender: TObject);
begin
  SepSeq2_2_1[0] := SetHexEdit(Sender, SepSeq2_2_1[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq2_2_1 := SepSeq2_2_1[0];
end;


procedure TFormAddPorts.edt115Change(Sender: TObject);
begin
  SepSeq2_2_2[0] := SetHexEdit(Sender, SepSeq2_2_2[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq2_2_2 := SepSeq2_2_2[0];
end;

procedure TFormAddPorts.edtEdt98Change(Sender: TObject);
begin
  SepSeq2_1_1[0] := SetHexEdit(Sender, SepSeq2_1_1[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepSeq2_1_1 := SepSeq2_1_1[0];
end;

procedure TFormAddPorts.edt4Change(Sender: TObject);
begin
  SepSeq1_4_1[1] := SetHexEdit(Sender, SepSeq1_4_1[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq1_4_1 := SepSeq1_4_1[1];
end;


procedure TFormAddPorts.edt5Change(Sender: TObject);
begin
  SepSeq1_4_2[1] := SetHexEdit(Sender, SepSeq1_4_2[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq1_4_2 := SepSeq1_4_2[1];
end;

procedure TFormAddPorts.edt6Change(Sender: TObject);
begin
  SepSeq1_4_3[1] := SetHexEdit(Sender, SepSeq1_4_3[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq1_4_3 := SepSeq1_4_3[1];
end;

procedure TFormAddPorts.edt7Change(Sender: TObject);
begin
  SepSeq1_4_4[1] := SetHexEdit(Sender, SepSeq1_4_4[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq1_4_4 := SepSeq1_4_4[1];
end;

procedure TFormAddPorts.edt8Change(Sender: TObject);
begin
  SepSeq1_3_1[1] := SetHexEdit(Sender, SepSeq1_3_1[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq1_3_1 := SepSeq1_3_1[1];
end;

procedure TFormAddPorts.edt9Change(Sender: TObject);
begin
  SepSeq1_3_2[1] := SetHexEdit(Sender, SepSeq1_3_2[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq1_3_2 := SepSeq1_3_2[1];
end;

procedure TFormAddPorts.edt10Change(Sender: TObject);
begin
  SepSeq1_3_3[1] := SetHexEdit(Sender, SepSeq1_3_3[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq1_3_3 := SepSeq1_3_3[1];
end;

procedure TFormAddPorts.edt11Change(Sender: TObject);
begin
  SepSeq1_2_1[1] := SetHexEdit(Sender, SepSeq1_2_1[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq1_2_1 := SepSeq1_2_1[1];
end;

procedure TFormAddPorts.edt12Change(Sender: TObject);
begin
  SepSeq1_2_2[1] := SetHexEdit(Sender, SepSeq1_2_2[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq1_2_2 := SepSeq1_2_2[1];
end;

procedure TFormAddPorts.edt13Change(Sender: TObject);
begin
  SepSeq1_1_1[1] := SetHexEdit(Sender, SepSeq1_1_1[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq1_1_1 := SepSeq1_1_1[1];
end;

procedure TFormAddPorts.edt15Change(Sender: TObject);
begin
  SepSeq2_4_1[1] := SetHexEdit(Sender, SepSeq2_4_1[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq2_4_1 := SepSeq2_4_1[1];
end;

procedure TFormAddPorts.edt16Change(Sender: TObject);
begin
  SepSeq2_4_2[1] := SetHexEdit(Sender, SepSeq2_4_2[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq2_4_2 := SepSeq2_4_2[1];
end;

procedure TFormAddPorts.edt17Change(Sender: TObject);
begin
  SepSeq2_4_3[1] := SetHexEdit(Sender, SepSeq2_4_3[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq2_4_3 := SepSeq2_4_3[1];
end;

procedure TFormAddPorts.edt18Change(Sender: TObject);
begin
  SepSeq2_4_4[1] := SetHexEdit(Sender, SepSeq2_4_4[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq2_4_4 := SepSeq2_4_4[1];
end;

procedure TFormAddPorts.edt19Change(Sender: TObject);
begin
  SepSeq2_3_1[1] := SetHexEdit(Sender, SepSeq2_3_1[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq2_3_1 := SepSeq2_3_1[1];
end;

procedure TFormAddPorts.edt20Change(Sender: TObject);
begin
  SepSeq2_3_2[1] := SetHexEdit(Sender, SepSeq2_3_2[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq2_3_2 := SepSeq2_3_2[1];
end;

procedure TFormAddPorts.edt21Change(Sender: TObject);
begin
  SepSeq2_3_3[1] := SetHexEdit(Sender, SepSeq2_3_3[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq2_3_3 := SepSeq2_3_3[1];
end;

procedure TFormAddPorts.edt22Change(Sender: TObject);
begin
  SepSeq2_2_1[1] := SetHexEdit(Sender, SepSeq2_2_1[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq2_2_1 := SepSeq2_2_1[1];
end;

procedure TFormAddPorts.edt23Change(Sender: TObject);
begin
  SepSeq2_2_2[1] := SetHexEdit(Sender, SepSeq2_2_2[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq2_2_2 := SepSeq2_2_2[1];
end;

procedure TFormAddPorts.edt14Change(Sender: TObject);
begin
  SepSeq2_1_1[1] := SetHexEdit(Sender, SepSeq2_1_1[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepSeq2_1_1 := SepSeq2_1_1[1];
end;

procedure TFormAddPorts.edtEdtBefSym2Change(Sender: TObject);
begin
  SepBef1[0] := SetHexEdit(Sender, SepBef1[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepBef1 := SepBef1[0];
end;

procedure TFormAddPorts.edtEdtBefSym1Change(Sender: TObject);
begin
  SepBef2[0] := SetHexEdit(Sender, SepBef2[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepBef2 := SepBef2[0];
end;

procedure TFormAddPorts.edtEdtBefSym21Change(Sender: TObject);
begin
  SepBef1[1] := SetHexEdit(Sender, SepBef1[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepBef1 := SepBef1[1];
end;

procedure TFormAddPorts.edtEdtBefSym11Change(Sender: TObject);
begin
  SepBef2[1] := SetHexEdit(Sender, SepBef2[1]);
SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepBef2 := SepBef2[1];
end;

procedure TFormAddPorts.edtEdtPauseRxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TFormAddPorts.edtEdtPauseRxChange(Sender: TObject);
begin
  SepTime[0] := SetDecEdit(Sender, SepTime[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepTime := SepTime[0];
end;

procedure TFormAddPorts.edtEdtCntSepChange(Sender: TObject);
begin
  SepCnt[0] := SetDecEdit(Sender, SepCnt[0]);
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].SepCnt := SepCnt[0];
end;

procedure TFormAddPorts.edt1Change(Sender: TObject);
begin
  SepTime[1] := SetDecEdit(Sender, SepTime[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepTime := SepTime[1];
end;

procedure TFormAddPorts.edt3Change(Sender: TObject);
begin
  SepCnt[1] := SetDecEdit(Sender, SepCnt[1]);
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].SepCnt := SepCnt[1];
end;

procedure TFormAddPorts.ud1Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
    begin
      if SepTime[0] < 10 then
        SepTime[0]  := SepTime[0]  + 1
      else if SepTime[0]  < 100 then
        SepTime[0]  := SepTime[0]  + 5
      else if SepTime[0]  < 1000 then
        SepTime[0]  := SepTime[0]  + 50
      else if SepTime[0]  < 10000 then
        SepTime[0]  := SepTime[0]  + 500
      else if SepTime[0]  < 100000 then
        SepTime[0]  := SepTime[0]  + 5000
      else if SepTime[0]  < 1000000 then
        SepTime[0]  := SepTime[0]  + 50000;
      if SepTime[0]  > 999999 then
        SepTime[0]  :=  999999;
    end;

  if Button = btPrev then
    begin
      if (SepTime[0]  = 999999) then SepTime[0]  := 1000000;

      if (SepTime[0]  < 10) and (SepTime[0]  > 0) then
        SepTime[0]  := SepTime[0]  - 1
      else if (SepTime[0]  < 100) and (SepTime[0]  >= 10) then
        SepTime[0]  := SepTime[0]  - 5
      else if (SepTime[0]  < 1000) and (SepTime[0]  >= 100) then
        SepTime[0]  := SepTime[0]  - 50
      else if (SepTime[0]  < 10000) and (SepTime[0]  >= 1000) then
        SepTime[0]  := SepTime[0]  - 500
      else if (SepTime[0]  < 100000) and (SepTime[0]  >= 10000)then
        SepTime[0]  := SepTime[0]  - 5000
      else if SepTime[0]  >= 100000 then
        SepTime[0]  := SepTime[0]  - 50000;
    end;

    edtEdtPauseRx.Text := IntToStr(SepTime[0]);

end;

procedure TFormAddPorts.ud3Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
    begin
      if SepTime[1] < 10 then
        SepTime[1]  := SepTime[1]  + 1
      else if SepTime[1]  < 100 then
        SepTime[1]  := SepTime[1]  + 5
      else if SepTime[1]  < 1000 then
        SepTime[1]  := SepTime[1]  + 50
      else if SepTime[1]  < 10000 then
        SepTime[1]  := SepTime[1]  + 500
      else if SepTime[1]  < 100000 then
        SepTime[1]  := SepTime[1]  + 5000
      else if SepTime[1]  < 1000000 then
        SepTime[1]  := SepTime[1]  + 50000;
      if SepTime[1]  > 999999 then
        SepTime[1]  :=  999999;
    end;

  if Button = btPrev then
    begin
      if (SepTime[1]  = 999999) then SepTime[1]  := 1000000;

      if (SepTime[1]  < 10) and (SepTime[1]  > 0) then
        SepTime[1]  := SepTime[1]  - 1
      else if (SepTime[1]  < 100) and (SepTime[1]  >= 10) then
        SepTime[1]  := SepTime[1]  - 5
      else if (SepTime[1]  < 1000) and (SepTime[1]  >= 100) then
        SepTime[1]  := SepTime[1]  - 50
      else if (SepTime[1]  < 10000) and (SepTime[1]  >= 1000) then
        SepTime[1]  := SepTime[1]  - 500
      else if (SepTime[1]  < 100000) and (SepTime[1]  >= 10000)then
        SepTime[1]  := SepTime[1]  - 5000
      else if SepTime[1]  >= 100000 then
        SepTime[1]  := SepTime[1]  - 50000;
    end;

    edt1.Text := IntToStr(SepTime[1]);

end;

procedure TFormAddPorts.ud2Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
    if SepCnt[0] < 10000 then
      Inc(SepCnt[0]);

  if Button = btPrev then
    if SepCnt[0] > 0 then
      Dec(SepCnt[0]);

  edtEdtCntSep.Text := IntToStr(SepCnt[0]);

end;

procedure TFormAddPorts.ud4Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
    if SepCnt[1] < 10000 then
      Inc(SepCnt[1]);

  if Button = btPrev then
    if SepCnt[1] > 0 then
      Dec(SepCnt[1]);

  edt3.Text := IntToStr(SepCnt[1]);

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

  WriteFile(hCom[numPort],BufSendInPort,cntSend,CntBytes,nil);
end;


procedure LogOut(numPort : byte);
var
  i : integer;
  BeginStr : string;
  ColorLogCur : TColor;
begin
  if CntOut[numPort] > 0 then
    begin
      ColorLogCur := ColorLog[numPort];
      BeginStr := '';
      strOut := '';
      if isOutPort[numPort] then
        BeginStr := BeginStr + '[' + Format('%08s',[CSelPort[numPort].Text]) + ']';

      BeginStr := BeginStr + SetTimeStamp(isOutTime[numPort], TerminalST.Form1.isAddDate, LastTime[numPort]);

      if isOutCnt[numPort] then
        BeginStr := BeginStr + '[' + Format('%03d', [CntOut[numPort]]) + ']';

      if isBinLogFile[0] and (numPort = 0) then
        begin
          try
            BlockWrite(BinLogFile_0, BufOut[0], CntOut[numPort]);
          except
            isBinLogFile[0] := False;
            CloseFile(BinLogFile_0);
            FormAddPorts.CheckBox5.Checked := False;
            ShowMessage('Error write binary file 1');
          end;
        end;

      if isBinLogFile[1] and (numPort = 1) then
        begin
          try
            BlockWrite(BinLogFile_1, BufOut[1], CntOut[numPort]);
          except
            isBinLogFile[0] := False;
            CloseFile(BinLogFile_1);
            FormAddPorts.CheckBox5.Checked := False;
            ShowMessage('Error write binary file 2');
          end;
        end;

      for i := 0 to CntOut[numPort] - 1 do
        begin
          Inc(FormAddPorts.BufCntBytesRead[numPort, BufOut[numPort, i]]);

          if isSendAddPort[numPort] then
            begin
              BufSendInPort[i] := BufOut[numPort, i];
              Inc(FormAddPorts.BufCntBytesSend[numPort, BufOut[numPort, i]]);
            end;


          case ReadMode[numPort] of
            ReadASCII: strOut := strOut + ChrZ(BufOut[numPort, i]);
            ReadHEX:   strOut := strOut + IntToHex(BufOut[numPort, i], 2) + ' ';
            ReadDEC:   strOut := strOut + Format('%03d', [BufOut[numPort, i]]) + ' ';
            ReadCUSTOM:strOut := strOut + ChrCustom(BufOut[numPort, i]);
          end;
          Inc(OutDataCnt[numPort]);
        end;


      if isTextLogFile[0] and (numPort = 0) then
        begin
          if isOutDir[numPort] then
            Writeln(TextLogFile_0, BeginStr + '< ' + strOut)
          else
            Writeln(TextLogFile_0, BeginStr + strOut);
        end;

      if isTextLogFile[1] and (numPort = 1) then
        begin
          if isOutDir[numPort] then
            Writeln(TextLogFile_1, BeginStr + '< '  + strOut)
          else
            Writeln(TextLogFile_1, BeginStr + strOut);
        end;

      if isSendAddPort[numPort] then
        begin
          case numPort of
            0 : if isOpenPort[1] then
                  begin
                     SendInPort(1, CntOut[numPort]);
                     if FormAddPorts.isSendWinLog[1] then
                       begin
                         if isOutDir[numPort] then
                           FormPort2Log.OutLog(BeginStr + '> ' + strOut, ColorLogCur, DirTx)
                         else
                           FormPort2Log.OutLog(BeginStr + strOut, ColorLogCur, DirTx);
                       end;
                     FormPacketsCNT.CheckSubString(TTypeSrcData(2), BeginStr, strOut, DirTx);
                  end;

            1 : if isOpenPort[0] then
                  begin
                     SendInPort(0, CntOut[numPort]);
                     if FormAddPorts.isSendWinLog[0] then
                       begin
                         if isOutDir[numPort] then
                           FormPort1Log.OutLog(BeginStr + '> ' + strOut, ColorLogCur, DirTx)
                         else
                           FormPort1Log.OutLog(BeginStr + strOut, ColorLogCur, DirTx);
                       end;
                     FormPacketsCNT.CheckSubString(TTypeSrcData(1), BeginStr, strOut, DirTx);
                  end;
          end;
        end;

      FormPacketsCNT.CheckSubString(TTypeSrcData(numPort + 1), BeginStr, strOut, DirRx);



      //BufSendFromMainForm[numPort, i] := Buf^;
      //CntBytesFromMainForm[numPort] := Cnt;
      //TimeFromMainForm[numPort] := Time;



      if isEventUse then
        begin
          if (StrRef1[numPort] <> '') and (AnsiPos(StrRef1[numPort], strOut) > 0) then
            begin
              Inc(CntEv1[numPort]);
              STCntEv1[numPort].Caption := IntToStr(CntEv1[numPort]);
              grpEv1[numPort].Color := clYellow;

              if isSetColor1[numPort] then
                ColorLogCur := ColorEv1[numPort];
              if isExpandWindow1[numPort] and not FormAddPorts.Active then
                Begin
                  FormAddPorts.WindowState:=wsNormal;
                  FormAddPorts.Position := poDesktopCenter;
                end;

              if isClosePort1[numPort] and isOpenPort[numPort] then
                begin
                  BtConnect[numPort].Click;
                end;

              if isSetBR1[numPort] and (BaudRate1[numPort] > 0) then
                begin
                  if BaudRate1[numPort] <> DCB[numPort].BaudRate then
                    begin
                      DCB[numPort].BaudRate := BaudRate1[numPort];
                      if SetCommState(hCom[numPort],DCB[numPort]) then
                        CBaudRate[numPort].Text := IntToStr(BaudRate1[numPort]);
                    end;
                end;
            end
          else
            grpEv1[numPort].Color := FormAddPorts.Color;

          if (StrRef2[numPort] <> '') and (AnsiPos(StrRef2[numPort], strOut) > 0) then
            begin
              Inc(CntEv2[numPort]);
              STCntEv2[numPort].Caption := IntToStr(CntEv2[numPort]);

              grpEv2[numPort].Color := clYellow;

              if isSetColor2[numPort] then
                ColorLogCur := ColorEv2[numPort];

              if isExpandWindow2[numPort] and not FormAddPorts.Active then
                Begin
                  FormAddPorts.WindowState:=wsNormal;
                  FormAddPorts.Position := poDesktopCenter;
                end;

              if isClosePort2[numPort] and isOpenPort[numPort] then
                begin
                  BtConnect[numPort].Click;
                end;

              if isSetBR2[numPort] and (BaudRate2[numPort] > 0) then
                begin
                  if BaudRate2[numPort] <> DCB[numPort].BaudRate then
                    begin
                      DCB[numPort].BaudRate := BaudRate1[numPort];
                      if SetCommState(hCom[numPort],DCB[numPort]) then
                        CBaudRate[numPort].Text := IntToStr(BaudRate1[numPort]);
                    end;
                end;
            end
          else
            grpEv2[numPort].Color := FormAddPorts.Color;
        end;


      if isOutDir[numPort] then
        BeginStr := BeginStr + '< ';

      if isSendMainLog[numPort] then
        TerminalST.Form1.MemoUpd(LastTime[numPort], BeginStr, strOut, '', '', '', '', TRUE, ColorLogCur);

      if isSendAddLog[numPort] then
        begin
          TerminalST.Form1.MemoUpd(LastTime[numPort], '', '', '', BeginStr + strOut, '', '', TRUE, ColorLogCur);
        end;

      if isSendParser[numPort] and TerminalST.Form1.isUseParserHEX then
        begin
          FormParser.SetNewStr(TTypeSrcData(numPort + 1), strOut, ReadMode[numPort] = ReadHEX, LastTime[numPort]);
        end;


      if isSendParser[numPort] and TerminalST.Form1.isUseParserASCII then
        FormParserASCII.SetNewStr1(TTypeSrcData(numPort + 1), strOut, ReadMode[numPort] = ReadHEX, LastTime[numPort],  CntOut[numPort]);

      if (numPort = 0) and FormAddPorts.isSendWinLog[0] then
        FormPort1Log.OutLog(BeginStr + strOut, ColorLogCur, DirRx);

      if (numPort = 1) and FormAddPorts.isSendWinLog[1] then
        FormPort2Log.OutLog(BeginStr + strOut, ColorLogCur, DirRx);


      CntOut[numPort] := 0;
    end;
end;




procedure TFormAddPorts.tmrTmrReadDataTimer(Sender: TObject);
var
  numPort : Byte;
  DateTime, dtTmp : TDateTime;
  i : Integer;
  isOut, isExit : Boolean;
  dt : Integer;
  tmp: byte;
  CntTmp : Cardinal;
begin
  reqTime1.Caption := TimeToStr(Now);
  reqTime2.Caption := TimeToStr(Now);
  for numPort := 0 to 1 do
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
              Inc(FormAddPorts.BufCntBytesSend[numPort, BufSendFromMainForm[numPort, i]]);
            end;



          SendInPort(numPort, CntBytesFromMainForm[numPort]);

          if isTextLogFile[0] and (numPort = 0) then
            begin
              Writeln(TextLogFile_0, StrLogFromMainForm[numPort]);
            end;

          if isTextLogFile[1] and (numPort = 1) then
            begin
              Writeln(TextLogFile_1, StrLogFromMainForm[numPort]);
            end;

          if (numPort = 0) and FormAddPorts.isSendWinLog[0] then
            begin
              FormPort1Log.OutLog(StrLogFromMainForm[0], ColorLogFromMainForm[0], DirTx);
              //FormPacketsCNT.CheckSubString(TTypeSrcData(1), '', StrLogFromMainForm[0], DirTx);
            end;

          if (numPort = 1) and FormAddPorts.isSendWinLog[1] then
            begin
              FormPort2Log.OutLog(StrLogFromMainForm[1], ColorLogFromMainForm[1], DirTx);
              //FormPacketsCNT.CheckSubString(TTypeSrcData(2), '', StrLogFromMainForm[1], DirTx);
            end;
          CntBytesFromMainForm[numPort] := 0;
        end;

      while (not isOut) and (not isExit) do
        begin
          isExit := not ReadRingBuf(numPort, @tmp, @DateTime);

          if isSepBef1[numPort] and not isExit and (tmp = SepBef1[numPort]) then
            begin
              LogOut(numPort);
            end;

          if isSepBef2[numPort] and not isExit and (tmp = SepBef2[numPort]) then
            begin
              LogOut(numPort);
            end;

          if isSepTime[numPort] then
            begin
              if not isExit then
                begin
                  if (IncMilliSecond(LastTime[numPort], SepTime[numPort]) < DateTime) and (LastTime[numPort] > 0) then
                    begin
                      LogOut(numPort);
                    end;
                end
              else
                begin
                  if (IncMilliSecond(LastTime[numPort], SepTime[numPort]) < now) and (LastTime[numPort] > 0) then
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

          if ReadMode[numPort] = ReadASCII then
            begin
              isOut := isOut or (isSep0D[numPort] and (CntOut[numPort] > 0)   and (BufOut[numPort, CntOut[numPort] - 1] = $0D));
              isOut := isOut or (isSep0A[numPort] and (CntOut[numPort] > 0)   and (BufOut[numPort, CntOut[numPort] - 1] = $0A));
              isOut := isOut or (isSep00[numPort] and (CntOut[numPort] > 0)   and (BufOut[numPort, CntOut[numPort] - 1] = $00));
              isOut := isOut or (isSep0D0A[numPort] and (CntOut[numPort] > 1) and (BufOut[numPort, CntOut[numPort] - 2] = $0D)
                                                                              and (BufOut[numPort, CntOut[numPort] - 1] = $0A));
            end;

          isOut := isOut or (isSepCnt[numPort] and (CntOut[numPort] >= SepCnt[numPort]));

          isOut := isOut or (isSepSeq1_4[numPort] and (CntOut[numPort] > 3) and (BufOut[numPort, CntOut[numPort] - 1] = SepSeq1_4_4[numPort])
                                                                            and (BufOut[numPort, CntOut[numPort] - 2] = SepSeq1_4_3[numPort])
                                                                            and (BufOut[numPort, CntOut[numPort] - 3] = SepSeq1_4_2[numPort])
                                                                            and (BufOut[numPort, CntOut[numPort] - 4] = SepSeq1_4_1[numPort]));

          isOut := isOut or (isSepSeq2_4[numPort] and (CntOut[numPort] > 3) and (BufOut[numPort, CntOut[numPort] - 1] = SepSeq2_4_4[numPort])
                                                                            and (BufOut[numPort, CntOut[numPort] - 2] = SepSeq2_4_3[numPort])
                                                                            and (BufOut[numPort, CntOut[numPort] - 3] = SepSeq2_4_2[numPort])
                                                                            and (BufOut[numPort, CntOut[numPort] - 4] = SepSeq2_4_1[numPort]));

          isOut := isOut or (isSepSeq1_3[numPort] and (CntOut[numPort] > 2) and (BufOut[numPort, CntOut[numPort] - 1] = SepSeq1_3_3[numPort])
                                                                            and (BufOut[numPort, CntOut[numPort] - 2] = SepSeq1_3_2[numPort])
                                                                            and (BufOut[numPort, CntOut[numPort] - 3] = SepSeq1_3_1[numPort]));

          isOut := isOut or (isSepSeq2_3[numPort] and (CntOut[numPort] > 2) and (BufOut[numPort, CntOut[numPort] - 1] = SepSeq2_3_3[numPort])
                                                                            and (BufOut[numPort, CntOut[numPort] - 2] = SepSeq2_3_2[numPort])
                                                                            and (BufOut[numPort, CntOut[numPort] - 3] = SepSeq2_3_1[numPort]));

          isOut := isOut or (isSepSeq1_2[numPort] and (CntOut[numPort] > 1) and (BufOut[numPort, CntOut[numPort] - 1] = SepSeq1_2_2[numPort])
                                                                            and (BufOut[numPort, CntOut[numPort] - 2] = SepSeq1_2_1[numPort]));

          isOut := isOut or (isSepSeq2_2[numPort] and (CntOut[numPort] > 1) and (BufOut[numPort, CntOut[numPort] - 1] = SepSeq2_2_2[numPort])
                                                                            and (BufOut[numPort, CntOut[numPort] - 2] = SepSeq2_2_1[numPort]));

          isOut := isOut or (isSepSeq1_1[numPort] and (CntOut[numPort] > 0) and (BufOut[numPort, CntOut[numPort] - 1] = SepSeq1_1_1[numPort]));

          isOut := isOut or (isSepSeq2_1[numPort] and (CntOut[numPort] > 0) and (BufOut[numPort, CntOut[numPort] - 1] = SepSeq2_1_1[numPort]));


        end;

      if isOut then
        LogOut(numPort);

      //BufOut    : array[0..1][0..BUF_SIZE_ADD_PORTS - 1] of byte;
      //CntOut    : array[0..1] of Cardinal;
      //LastTime  : array[0..1] of TDateTime;
      STBytesRec[numPort].Caption   := IntToStr(ReadDataCnt[numPort]);
      STBytesSent[numPort].Caption  := IntToStr(OutDataCnt[numPort]);


      WaitForSingleObject(RingBuf[numPort].Mutex, INFINITE);
      CntTmp := ByteLostCnt[numPort];
      ReleaseMutex(RingBuf[numPort].Mutex);
      STBytesinBuf[numPort].Caption := IntToStr(CntTmp);
      if CntTmp > 0 then STBytesinBuf[numPort].Color := clYellow
      else STBytesinBuf[numPort].Color := FormAddPorts.Color;
    end;
end;

procedure TFormAddPorts.cbb7Change(Sender: TObject);
begin
 if (Sender as TComboBox).ItemIndex = 0 then
    begin
      ReadMode[0] := ReadASCII;
    end;
 if (Sender as TComboBox).ItemIndex = 1 then
    begin
      ReadMode[0] := ReadHEX;
    end;
 if (Sender as TComboBox).ItemIndex = 2 then
    begin
      ReadMode[0] := ReadDEC;
    end;
 if (Sender as TComboBox).ItemIndex = 3 then
    begin
      ReadMode[0] := ReadCUSTOM;
    end;

  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].ReadMode := ReadMode[0];
end;

procedure TFormAddPorts.cbb14Change(Sender: TObject);
begin
 if (Sender as TComboBox).ItemIndex = 0 then
    begin
      ReadMode[1] := ReadASCII;
    end;
 if (Sender as TComboBox).ItemIndex = 1 then
    begin
      ReadMode[1] := ReadHEX;
    end;
 if (Sender as TComboBox).ItemIndex = 2 then
    begin
      ReadMode[1] := ReadDEC;
    end;
 if (Sender as TComboBox).ItemIndex = 3 then
    begin
      ReadMode[1] := ReadCUSTOM;
    end;


  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].ReadMode := ReadMode[1];
end;

procedure TFormAddPorts.Bt3Click(Sender: TObject);
begin
  if ReadPortSett[0].numList < LIST_SETT then
    Inc(ReadPortSett[0].numList);
  UpdSettings(0, ReadPortSett[0].numList);
end;

procedure TFormAddPorts.Bt4Click(Sender: TObject);
begin
  if ReadPortSett[1].numList > 1  then
    Dec(ReadPortSett[1].numList);
  UpdSettings(1, ReadPortSett[1].numList);
end;

procedure TFormAddPorts.Bt5Click(Sender: TObject);
begin
  if ReadPortSett[1].numList < LIST_SETT then
    Inc(ReadPortSett[1].numList);
  UpdSettings(1, ReadPortSett[1].numList);
end;

procedure TFormAddPorts.chk3Click(Sender: TObject);
begin
  isOutPort[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isOutPort := isOutPort[0];
end;

procedure TFormAddPorts.chk1Click(Sender: TObject);
begin
  isOutTime[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isOutTime := isOutTime[0];
end;

procedure TFormAddPorts.chk2Click(Sender: TObject);
begin
  isOutCnt[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isOutCnt := isOutCnt[0];
end;

procedure TFormAddPorts.req5Click(Sender: TObject);
begin
  dlgColor1.Color := ColorLog[0];
  if dlgColor1.Execute then
    ColorLog[0] := dlgColor1.Color;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].ColorLog := ColorLog[0];
  (Sender as TStaticText).Color := ColorLog[0];
end;

procedure TFormAddPorts.req2Click(Sender: TObject);
begin
  dlgColor1.Color := ColorLog[1];
  if dlgColor1.Execute then
    ColorLog[1] := dlgColor1.Color;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].ColorLog := ColorLog[1];
  (Sender as TStaticText).Color := ColorLog[1];
end;

procedure TFormAddPorts.CheckBox1Click(Sender: TObject);
begin
  isOutPort[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isOutPort := isOutPort[1];
end;

procedure TFormAddPorts.CheckBox2Click(Sender: TObject);
begin
  isOutTime[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isOutTime := isOutTime[1];
end;

procedure TFormAddPorts.CheckBox3Click(Sender: TObject);
begin
  isOutCnt[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isOutCnt := isOutCnt[1];
end;

procedure TFormAddPorts.Edt24Change(Sender: TObject);
begin
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].Name := (Sender as TEdit).Text;
end;

procedure TFormAddPorts.Edt25Change(Sender: TObject);
begin
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].Name := (Sender as TEdit).Text;
end;

procedure TFormAddPorts.ChFastRead1Click(Sender: TObject);
begin
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isFastRead := (Sender as TCheckBox).Checked;
  isFastReadPort[0] := SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isFastRead;
end;

procedure TFormAddPorts.ChFastRead2Click(Sender: TObject);
begin
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isFastRead := (Sender as TCheckBox).Checked;
  isFastReadPort[1] := SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isFastRead;
end;

procedure TFormAddPorts.ChDir0Click(Sender: TObject);
begin
  isOutDir[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isOutDir := isOutDir[0];
end;

procedure TFormAddPorts.ChDir1Click(Sender: TObject);
begin
  isOutDir[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isOutDir := isOutDir[1];

end;

procedure TFormAddPorts.ChSendMainLog0Click(Sender: TObject);
begin
  isSendMainLog[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSendMainLog := isSendMainLog[0];
end;

procedure TFormAddPorts.ChSendMainLog1Click(Sender: TObject);
begin
  isSendMainLog[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSendMainLog := isSendMainLog[1];

end;

procedure TFormAddPorts.ChSendParser0Click(Sender: TObject);
begin
  isSendParser[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSendParser := isSendParser[0];
end;

procedure TFormAddPorts.ChSendParser1Click(Sender: TObject);
begin
  isSendParser[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSendParser := isSendParser[1];
end;

procedure TFormAddPorts.ChSendAddPort0Click(Sender: TObject);
begin
    isSendAddPort[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSendParser := isSendAddPort[0];
end;

procedure TFormAddPorts.ChSendAddPort1Click(Sender: TObject);
begin
  isSendAddPort[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSendParser := isSendAddPort[1];
end;

procedure TFormAddPorts.ChClrBuf0Click(Sender: TObject);
begin
  isClearBufClose[0] := (Sender as TCheckBox).Checked;
   SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isClearBufClose := isClearBufClose[0];
end;

procedure TFormAddPorts.ChClrBuf1Click(Sender: TObject);
begin
  isClearBufClose[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isClearBufClose := isClearBufClose[1];
end;

procedure TFormAddPorts.Bt6Click(Sender: TObject);
begin
  ResetRing(0);
  CntOut[0] := 0;
  ReadDataCnt[0] := 0;
  OutDataCnt[0] := 0;
  ByteLostCnt[0] := 0;
  STBytesRec[0].Caption   := IntToStr(ReadDataCnt[0]);
  STBytesSent[0].Caption  := IntToStr(OutDataCnt[0]);
  STBytesinBuf[0].Caption := IntToStr(ByteLostCnt[0]);
  STBytesinBuf[0].Color := FormAddPorts.Color;
end;

procedure TFormAddPorts.Bt7Click(Sender: TObject);
begin
  ResetRing(1);
  CntOut[1] := 0;
  ReadDataCnt[1] := 0;
  OutDataCnt[1] := 0;
  ByteLostCnt[1] := 0;
  STBytesRec[1].Caption   := IntToStr(ReadDataCnt[1]);
  STBytesSent[1].Caption  := IntToStr(OutDataCnt[1]);
  STBytesinBuf[1].Caption := IntToStr(ByteLostCnt[1]);
  STBytesinBuf[1].Color := FormAddPorts.Color;
end;

procedure TFormAddPorts.Bt8Click(Sender: TObject);
begin
  UpListSett(0);
  ListSett[0].Visible := True;
  ListSett[0].SetFocus;
  ListSett[0].ItemIndex := 0;
end;

procedure TFormAddPorts.lst1Click(Sender: TObject);
begin
  ReadPortSett[0].numList := (Sender as TListBox).ItemIndex + 1;
  UpdSettings(0, ReadPortSett[0].numList);
  (Sender as TListBox).Visible := False;
end;

procedure TFormAddPorts.lst1Exit(Sender: TObject);
begin
  (Sender as TListBox).Visible := False;
end;

procedure TFormAddPorts.Bt9Click(Sender: TObject);
begin
  UpListSett(1);
  ListSett[1].Visible := True;
  ListSett[1].SetFocus;
  ListSett[1].ItemIndex := 0;
end;

procedure TFormAddPorts.lst2Click(Sender: TObject);
begin
  ReadPortSett[1].numList := (Sender as TListBox).ItemIndex + 1;
  UpdSettings(1, ReadPortSett[1].numList);
  (Sender as TListBox).Visible := False;
end;

procedure TFormAddPorts.lst2Exit(Sender: TObject);
begin
 (Sender as TListBox).Visible := False;
end;

procedure TFormAddPorts.grp4Click(Sender: TObject);
begin
  ListSett[0].Visible := False;
  ListSett[1].Visible := False;
end;

procedure TFormAddPorts.edtEdtBefSym21KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormAddPorts.edtEdtBefSym11KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := CheskHexKey(Key);
end;

procedure TFormAddPorts.Edt26Change(Sender: TObject);
begin
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].StrRef1 := (Sender as TEdit).Text;
  StrRef1[0] := (Sender as TEdit).Text;
end;

procedure TFormAddPorts.Edt28Change(Sender: TObject);
begin
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].StrRef2 := (Sender as TEdit).Text;
  StrRef2[0] := (Sender as TEdit).Text;
end;

procedure TFormAddPorts.Edt30Change(Sender: TObject);
begin
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].StrRef1 := (Sender as TEdit).Text;
  StrRef1[1] := (Sender as TEdit).Text;
end;

procedure TFormAddPorts.Edt32Change(Sender: TObject);
begin
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].StrRef2 := (Sender as TEdit).Text;
  StrRef2[1] := (Sender as TEdit).Text;
end;

procedure TFormAddPorts.Edt27KeyPress(Sender: TObject; var Key: Char);
begin
Key := CheskDecKey(Key);
end;

procedure TFormAddPorts.Edt29KeyPress(Sender: TObject; var Key: Char);
begin
Key := CheskDecKey(Key);
end;

procedure TFormAddPorts.Edt31KeyPress(Sender: TObject; var Key: Char);
begin
Key := CheskDecKey(Key);
end;

procedure TFormAddPorts.Edt33KeyPress(Sender: TObject; var Key: Char);
begin
Key := CheskDecKey(Key);
end;

procedure TFormAddPorts.Edt27Change(Sender: TObject);
begin
  if (Sender as TEdit).Text <> '' then
    begin
      BaudRate1[0] := StrToInt((Sender as TEdit).Text);
      SettingsCommon[0].SettOutData[ReadPortSett[0].numList].ChangeBR1 := BaudRate1[0];
    end;

end;

procedure TFormAddPorts.Edt29Change(Sender: TObject);
begin
  if (Sender as TEdit).Text <> '' then
    begin
      BaudRate2[0] := StrToInt((Sender as TEdit).Text);
      SettingsCommon[0].SettOutData[ReadPortSett[0].numList].ChangeBR2 := BaudRate2[0];
    end;

end;

procedure TFormAddPorts.Edt31Change(Sender: TObject);
begin
  if (Sender as TEdit).Text <> '' then
    begin
      BaudRate1[1] := StrToInt((Sender as TEdit).Text);
      SettingsCommon[1].SettOutData[ReadPortSett[1].numList].ChangeBR1 := BaudRate1[1];
    end;

end;

procedure TFormAddPorts.Edt33Change(Sender: TObject);
begin
  if (Sender as TEdit).Text <> '' then
    begin
      BaudRate2[1] := StrToInt((Sender as TEdit).Text);
      SettingsCommon[1].SettOutData[ReadPortSett[1].numList].ChangeBR2 := BaudRate2[1];
    end;
end;

procedure TFormAddPorts.Edt27Exit(Sender: TObject);
begin
  (Sender as TEdit).Text := IntToStr(BaudRate1[0]);
end;

procedure TFormAddPorts.Edt29Exit(Sender: TObject);
begin
  (Sender as TEdit).Text := IntToStr(BaudRate2[0]);
end;

procedure TFormAddPorts.Edt31Exit(Sender: TObject);
begin
(Sender as TEdit).Text := IntToStr(BaudRate1[1]);
end;

procedure TFormAddPorts.Edt33Exit(Sender: TObject);
begin
  (Sender as TEdit).Text := IntToStr(BaudRate2[1]);
end;

procedure TFormAddPorts.Bt10Click(Sender: TObject);
begin

  isEventUse := not isEventUse;

  if not isEventUse then
    begin
      grp1.Width := 571;
      grp6.Width := 571;
      req9.Width := 571;
      bt10.Width := 571;
      FormAddPorts.Width := 585;
      Bt10.Caption := 'Track events';
    end
  else
    begin
      grp1.Width := 915;
      grp6.Width := 915;
      req9.Width := 915;
      bt10.Width := 915;
      FormAddPorts.Width := 929;
      Bt10.Caption := 'Don`t track events';
    end;

  CntEv1[0] := 0;
  CntEv2[0] := 0;

  CntEv1[1] := 0;
  CntEv2[1] := 0;

  STCntEv1[0].Caption := '0';
  STCntEv2[0].Caption := '0';

  STCntEv1[1].Caption := '0';
  STCntEv2[1].Caption := '0';

  grpEv1[0].Color := FormAddPorts.Color;
  grpEv2[0].Color := FormAddPorts.Color;

  grpEv1[1].Color := FormAddPorts.Color;
  grpEv2[1].Color := FormAddPorts.Color;


end;

procedure TFormAddPorts.Button7Click(Sender: TObject);
begin
  ScanPorts(1);
end;

procedure TFormAddPorts.ChSecondWindow0Click(Sender: TObject);
begin
  isSendAddLog[0] := (Sender as TCheckBox).Checked;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSendaddLog := isSendAddLog[0];
end;

procedure TFormAddPorts.ChSecondWindow1Click(Sender: TObject);
begin
  isSendAddLog[1] := (Sender as TCheckBox).Checked;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSendaddLog := isSendAddLog[1];
end;

procedure TFormAddPorts.CheckBox4Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
    begin
      (Sender as TCheckBox).Color := clYellow;
      dlgOpenSelFile.Title := 'Select a file to record the log';
      dlgOpenSelFile.InitialDir := CfgTerminal.LogDir;
      if dlgOpenSelFile.Execute then
        begin
          try
            AssignFile(TextLogFile_0, dlgOpenSelFile.FileName);
            ActFileLog.FileName.Caption := dlgOpenSelFile.FileName;
            ActFileLog.ShowModal;
            if ActFileLog.isRewrite then
              begin
                Rewrite(TextLogFile_0);
              end;
            if ActFileLog.isAppend then
              begin
                Append(TextLogFile_0);
              end;
            if not ActFileLog.isChangeMind then
              begin
                isTextLogFile[0] := True;
               (Sender as TCheckBox).Hint := dlgOpenSelFile.FileName;
              end;

          except
            isTextLogFile[0] := False;
          end;
        end
      else
        begin
          (Sender as TCheckBox).Checked := False;
        end;
    end
  else if isTextLogFile[0] then
    begin
      isTextLogFile[0] := False;
      CloseFile(TextLogFile_0);
      dlgOpenSelFile.Title := 'Select a file to view the log';
      dlgOpenSelFile.InitialDir := CfgTerminal.LogDir;
      if dlgOpenSelFile.Execute then
        ShellExecute(Handle, 'open' , 'notepad.exe', PChar(dlgOpenSelFile.FileName), nil, SW_SHOWNORMAL);
    end;
  (Sender as TCheckBox).ShowHint := isTextLogFile[0];
  (Sender as TCheckBox).Checked := isTextLogFile[0];
  (Sender as TCheckBox).Color := FormAddPorts.Color;
end;

procedure TFormAddPorts.CheckBox6Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
    begin
      (Sender as TCheckBox).Color := clYellow;
      dlgOpenSelFile.Title := 'Select a file to record the log';
      dlgOpenSelFile.InitialDir := CfgTerminal.LogDir;
      if dlgOpenSelFile.Execute then
        begin
          try
            AssignFile(TextLogFile_1, dlgOpenSelFile.FileName);
            ActFileLog.FileName.Caption := dlgOpenSelFile.FileName;
            ActFileLog.ShowModal;
            if ActFileLog.isRewrite then
              begin
                Rewrite(TextLogFile_1);
              end;
            if ActFileLog.isAppend then
              begin
                Append(TextLogFile_1);
              end;
            if not ActFileLog.isChangeMind then
              begin
                isTextLogFile[1] := True;
               (Sender as TCheckBox).Hint := dlgOpenSelFile.FileName;
              end;
          except
            isTextLogFile[1] := False;
          end;
        end
      else
        begin
          (Sender as TCheckBox).Checked := False;
        end;
    end
  else if isTextLogFile[1] then
    begin
      isTextLogFile[1] := False;
      CloseFile(TextLogFile_1);
      dlgOpenSelFile.Title := 'Select a file to view the log';
      dlgOpenSelFile.InitialDir := CfgTerminal.LogDir;
      if dlgOpenSelFile.Execute then
        ShellExecute(Handle, 'open' , 'notepad.exe', PChar(dlgOpenSelFile.FileName), nil, SW_SHOWNORMAL);

    end;
  (Sender as TCheckBox).ShowHint := isTextLogFile[1];
  (Sender as TCheckBox).Checked := isTextLogFile[1];
  (Sender as TCheckBox).Color := FormAddPorts.Color;
end;

procedure TFormAddPorts.Button1Click(Sender: TObject);
begin
  dlgOpenSelFile.Title := 'Select a file to view the log';
  dlgOpenSelFile.InitialDir := CfgTerminal.LogDir;
  if dlgOpenSelFile.Execute then
    ShellExecute(Handle, 'open' , 'notepad.exe', PChar(dlgOpenSelFile.FileName), nil, SW_SHOWNORMAL);
end;

procedure TFormAddPorts.Button2Click(Sender: TObject);
begin
  dlgOpenSelFile.Title := 'Select a file to view the log';
  dlgOpenSelFile.InitialDir := CfgTerminal.LogDir;
  if dlgOpenSelFile.Execute then
    ShellExecute(Handle, 'open' , 'notepad.exe', PChar(dlgOpenSelFile.FileName), nil, SW_SHOWNORMAL);
end;

procedure TFormAddPorts.CheckBox5Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
    begin
      (Sender as TCheckBox).Color := clYellow;
      dlgOpenSelFile.Title := 'Select a file to record';
      dlgOpenSelFile.InitialDir := CfgTerminal.LogDir;
      if dlgOpenSelFile.Execute then
        begin
          try
            AssignFile(BinLogFile_0, dlgOpenSelFile.FileName);
            ActFileLog.FileName.Caption := dlgOpenSelFile.FileName;
            ActFileLog.ShowModal;
            if ActFileLog.isRewrite then
              begin
                Rewrite(BinLogFile_0);
              end;
            if ActFileLog.isAppend then
              begin
                Reset(BinLogFile_0);
                Seek(BinLogFile_0, FileSize(BinLogFile_0));
              end;
            if not ActFileLog.isChangeMind then
              begin
                isBinLogFile[0] := True;
               (Sender as TCheckBox).Hint := dlgOpenSelFile.FileName;
              end;

          except
            isBinLogFile[0] := False;
          end;
        end
      else
        begin
          (Sender as TCheckBox).Checked := False;
        end;
    end
  else if isBinLogFile[0] then
    begin
      isBinLogFile[0] := False;
      CloseFile(BinLogFile_0);
    end;
  (Sender as TCheckBox).ShowHint := isBinLogFile[0];
  (Sender as TCheckBox).Checked := isBinLogFile[0];
  (Sender as TCheckBox).Color := FormAddPorts.Color;
end;


procedure TFormAddPorts.CheckBox7Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
    begin
      (Sender as TCheckBox).Color := clYellow;
      dlgOpenSelFile.Title := 'Select a file to record';
      dlgOpenSelFile.InitialDir := CfgTerminal.LogDir;
      if dlgOpenSelFile.Execute then
        begin
          try
            AssignFile(BinLogFile_1, dlgOpenSelFile.FileName);
            ActFileLog.FileName.Caption := dlgOpenSelFile.FileName;
            ActFileLog.ShowModal;
            if ActFileLog.isRewrite then
              begin
                Rewrite(BinLogFile_1);
              end;
            if ActFileLog.isAppend then
              begin
                Reset(BinLogFile_1);
                Seek(BinLogFile_1, FileSize(BinLogFile_1));
              end;
            if not ActFileLog.isChangeMind then
              begin
                isBinLogFile[1] := True;
               (Sender as TCheckBox).Hint := dlgOpenSelFile.FileName;
              end;

          except
            isBinLogFile[1] := False;
          end;
        end
      else
        begin
          (Sender as TCheckBox).Checked := False;
        end;
    end
  else if isBinLogFile[1] then
    begin
      isBinLogFile[1] := False;
      CloseFile(BinLogFile_1);
    end;
  (Sender as TCheckBox).ShowHint := isBinLogFile[1];
  (Sender as TCheckBox).Checked := isBinLogFile[1];
  (Sender as TCheckBox).Color := FormAddPorts.Color;
end;

procedure TFormAddPorts.ChChangeBRClick(Sender: TObject);
begin
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSetBR1 := (Sender as TCheckBox).Checked;
  isSetBR1[0] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.CheckBox8Click(Sender: TObject);
begin
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSetBR2 := (Sender as TCheckBox).Checked;
  isSetBR2[0] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.CheckBox12Click(Sender: TObject);
begin
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSetBR1 := (Sender as TCheckBox).Checked;
  isSetBR1[1] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.CheckBox16Click(Sender: TObject);
begin
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSetBR2 := (Sender as TCheckBox).Checked;
  isSetBR2[1] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.ChClosePortClick(Sender: TObject);
begin
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isClosePort1 := (Sender as TCheckBox).Checked;
  isClosePort1[0] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.CheckBox9Click(Sender: TObject);
begin
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isClosePort2 := (Sender as TCheckBox).Checked;
  isClosePort2[0] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.CheckBox13Click(Sender: TObject);
begin
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isClosePort1 := (Sender as TCheckBox).Checked;
  isClosePort1[1] := (Sender as TCheckBox).Checked;

end;

procedure TFormAddPorts.CheckBox17Click(Sender: TObject);
begin
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isClosePort2 := (Sender as TCheckBox).Checked;
  isClosePort2[1] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.ChExpandWindowClick(Sender: TObject);
begin
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isExpandWindow1 := (Sender as TCheckBox).Checked;
  isExpandWindow1[0] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.CheckBox10Click(Sender: TObject);
begin
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isExpandWindow2 := (Sender as TCheckBox).Checked;
  isExpandWindow2[0] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.CheckBox14Click(Sender: TObject);
begin
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isExpandWindow1 := (Sender as TCheckBox).Checked;
  isExpandWindow1[1] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.CheckBox18Click(Sender: TObject);
begin
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isExpandWindow2 := (Sender as TCheckBox).Checked;
  isExpandWindow2[1] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.ChSetColorClick(Sender: TObject);
begin
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSetColor1 := (Sender as TCheckBox).Checked;
  isSetColor1[0] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.CheckBox11Click(Sender: TObject);
begin
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].isSetColor2 := (Sender as TCheckBox).Checked;
  isSetColor2[0] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.CheckBox15Click(Sender: TObject);
begin
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSetColor1 := (Sender as TCheckBox).Checked;
  isSetColor1[1] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.CheckBox19Click(Sender: TObject);
begin
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].isSetColor2 := (Sender as TCheckBox).Checked;
  isSetColor2[1] := (Sender as TCheckBox).Checked;
end;

procedure TFormAddPorts.req10Click(Sender: TObject);
begin
  dlgColor1.Color := ColorEv1[0];
  if dlgColor1.Execute then
    ColorEv1[0] := dlgColor1.Color;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].ColorEv1 := ColorEv1[0];
  (Sender as TStaticText).Color := ColorEv1[0];
end;

procedure TFormAddPorts.req11Click(Sender: TObject);
begin
  dlgColor1.Color := ColorEv2[0];
  if dlgColor1.Execute then
    ColorEv2[0] := dlgColor1.Color;
  SettingsCommon[0].SettOutData[ReadPortSett[0].numList].ColorEv2 := ColorEv2[0];
  (Sender as TStaticText).Color := ColorEv2[0];
end;

procedure TFormAddPorts.req12Click(Sender: TObject);
begin
  dlgColor1.Color := ColorEv1[1];
  if dlgColor1.Execute then
    ColorEv1[1] := dlgColor1.Color;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].ColorEv1 := ColorEv1[1];
  (Sender as TStaticText).Color := ColorEv1[1];
end;

procedure TFormAddPorts.req13Click(Sender: TObject);
begin
  dlgColor1.Color := ColorEv2[1];
  if dlgColor1.Execute then
    ColorEv2[1] := dlgColor1.Color;
  SettingsCommon[1].SettOutData[ReadPortSett[1].numList].ColorEv2 := ColorEv2[1];
  (Sender as TStaticText).Color := ColorEv2[1];
end;

procedure TFormAddPorts.Edt26Click(Sender: TObject);
begin
  (Sender as TEdit).ShowHint := False;
end;

procedure TFormAddPorts.Bt11Click(Sender: TObject);
begin
  if not isSendWinLog[0] then
    begin
      isSendWinLog[0] := True;
      FormPort1Log.Position := poDesktopCenter;
      FormPort1Log.Color := FormAddPorts.Color;
      FormPort1Log.BGColor := ReadPortSett[0].ColorBG;
      FormPort1Log.Show;
      FormPort1Log.WindowState := wsNormal;
    end
  else
    begin
      FormPort1Log.Position := poDesktopCenter;
      FormPort1Log.WindowState := wsNormal;
    end;
end;

procedure TFormAddPorts.Bt12Click(Sender: TObject);
begin
  if not isSendWinLog[1] then
    begin
      isSendWinLog[1] := True;
      FormPort2Log.Position := poDesktopCenter;
      FormPort2Log.Color := FormAddPorts.Color;
      FormPort2Log.BGColor := ReadPortSett[1].ColorBG;
      FormPort2Log.Show;
      FormPort2Log.WindowState := wsNormal;
    end
  else
    begin
      FormPort2Log.Position := poDesktopCenter;
      FormPort2Log.WindowState := wsNormal;
    end;
end;


procedure TFormAddPorts.SetSendFromMainForm(Buf : pByte; numPort : Byte; Time : TDateTime; Cnt : Cardinal; StrLog : string; ColorLog : TColor);
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


procedure TFormAddPorts.SetSendDataInParser(numPort : byte);
begin
  if numPort = 0 then
    ChSendParser0.Checked := True
  else
    ChSendParser1.Checked := True;
  isSendParser[numPort] := true;
  SettingsCommon[numPort].SettOutData[ReadPortSett[numPort].numList].isSendParser := isSendParser[numPort];
end;

function TFormAddPorts.GetNamePort(port : integer) : string;
  begin
    result := CSelPort[port].Text;
  end;


procedure TFormAddPorts.edtSepEnter(Sender: TObject);
begin
  BStrTmp := (Sender as TEdit).Text;
end;

procedure TFormAddPorts.edtSepExit(Sender: TObject);
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

end.
