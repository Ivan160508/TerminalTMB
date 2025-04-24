unit Unit35;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Common, TerminalST;

type TItem = record
  cust : string[10];
end;

type
  TfrmCustomTable = class(TForm)
    grp1: TGroupBox;
    ctxt1: TStaticText;
    edt1: TEdit;
    edt2: TEdit;
    ctxt2: TStaticText;
    edt3: TEdit;
    ctxt3: TStaticText;
    edt4: TEdit;
    ctxt4: TStaticText;
    ctxt5: TStaticText;
    edt5: TEdit;
    edt6: TEdit;
    ctxt6: TStaticText;
    edt7: TEdit;
    ctxt7: TStaticText;
    edt8: TEdit;
    ctxt8: TStaticText;
    ctxt9: TStaticText;
    edt9: TEdit;
    edt10: TEdit;
    ctxt10: TStaticText;
    ctxt11: TStaticText;
    edt11: TEdit;
    edt12: TEdit;
    ctxt12: TStaticText;
    ctxt13: TStaticText;
    edt13: TEdit;
    edt14: TEdit;
    ctxt14: TStaticText;
    ctxt15: TStaticText;
    edt15: TEdit;
    edt16: TEdit;
    ctxt16: TStaticText;
    ctxt17: TStaticText;
    edt17: TEdit;
    ctxt18: TStaticText;
    edt18: TEdit;
    ctxt19: TStaticText;
    edt19: TEdit;
    ctxt20: TStaticText;
    edt20: TEdit;
    ctxt21: TStaticText;
    edt21: TEdit;
    ctxt22: TStaticText;
    edt22: TEdit;
    ctxt23: TStaticText;
    edt23: TEdit;
    ctxt24: TStaticText;
    edt24: TEdit;
    ctxt25: TStaticText;
    edt25: TEdit;
    ctxt26: TStaticText;
    edt26: TEdit;
    ctxt27: TStaticText;
    edt27: TEdit;
    ctxt28: TStaticText;
    edt28: TEdit;
    ctxt29: TStaticText;
    edt29: TEdit;
    ctxt30: TStaticText;
    edt30: TEdit;
    ctxt31: TStaticText;
    edt31: TEdit;
    ctxt32: TStaticText;
    edt32: TEdit;
    ctxt33: TStaticText;
    edt33: TEdit;
    ctxt34: TStaticText;
    edt34: TEdit;
    ctxt35: TStaticText;
    edt35: TEdit;
    ctxt36: TStaticText;
    edt36: TEdit;
    ctxt37: TStaticText;
    edt37: TEdit;
    ctxt38: TStaticText;
    edt38: TEdit;
    ctxt39: TStaticText;
    edt39: TEdit;
    ctxt40: TStaticText;
    edt40: TEdit;
    ctxt41: TStaticText;
    edt41: TEdit;
    ctxt42: TStaticText;
    edt42: TEdit;
    ctxt43: TStaticText;
    edt43: TEdit;
    ctxt44: TStaticText;
    edt44: TEdit;
    ctxt45: TStaticText;
    edt45: TEdit;
    ctxt46: TStaticText;
    edt46: TEdit;
    ctxt47: TStaticText;
    edt47: TEdit;
    ctxt48: TStaticText;
    edt48: TEdit;
    ctxt49: TStaticText;
    edt49: TEdit;
    ctxt50: TStaticText;
    edt50: TEdit;
    ctxt51: TStaticText;
    edt51: TEdit;
    ctxt52: TStaticText;
    edt52: TEdit;
    ctxt53: TStaticText;
    edt53: TEdit;
    ctxt54: TStaticText;
    edt54: TEdit;
    ctxt55: TStaticText;
    edt55: TEdit;
    ctxt56: TStaticText;
    edt56: TEdit;
    ctxt57: TStaticText;
    edt57: TEdit;
    ctxt58: TStaticText;
    edt58: TEdit;
    ctxt59: TStaticText;
    edt59: TEdit;
    ctxt60: TStaticText;
    edt60: TEdit;
    ctxt61: TStaticText;
    edt61: TEdit;
    ctxt62: TStaticText;
    edt62: TEdit;
    ctxt63: TStaticText;
    edt63: TEdit;
    ctxt64: TStaticText;
    edt64: TEdit;
    ctxt65: TStaticText;
    edt65: TEdit;
    ctxt66: TStaticText;
    edt66: TEdit;
    ctxt67: TStaticText;
    edt67: TEdit;
    ctxt68: TStaticText;
    edt68: TEdit;
    ctxt69: TStaticText;
    edt69: TEdit;
    ctxt70: TStaticText;
    edt70: TEdit;
    ctxt71: TStaticText;
    edt71: TEdit;
    ctxt72: TStaticText;
    edt72: TEdit;
    ctxt73: TStaticText;
    edt73: TEdit;
    ctxt74: TStaticText;
    edt74: TEdit;
    ctxt75: TStaticText;
    edt75: TEdit;
    ctxt76: TStaticText;
    edt76: TEdit;
    ctxt77: TStaticText;
    edt77: TEdit;
    ctxt78: TStaticText;
    edt78: TEdit;
    ctxt79: TStaticText;
    edt79: TEdit;
    ctxt80: TStaticText;
    edt80: TEdit;
    ctxt81: TStaticText;
    edt81: TEdit;
    ctxt82: TStaticText;
    edt82: TEdit;
    ctxt83: TStaticText;
    edt83: TEdit;
    ctxt84: TStaticText;
    edt84: TEdit;
    ctxt85: TStaticText;
    edt85: TEdit;
    ctxt86: TStaticText;
    edt86: TEdit;
    ctxt87: TStaticText;
    edt87: TEdit;
    ctxt88: TStaticText;
    edt88: TEdit;
    ctxt89: TStaticText;
    edt89: TEdit;
    ctxt90: TStaticText;
    edt90: TEdit;
    ctxt91: TStaticText;
    edt91: TEdit;
    ctxt92: TStaticText;
    edt92: TEdit;
    ctxt93: TStaticText;
    edt93: TEdit;
    ctxt94: TStaticText;
    edt94: TEdit;
    ctxt95: TStaticText;
    edt95: TEdit;
    ctxt96: TStaticText;
    edt96: TEdit;
    ctxt97: TStaticText;
    edt97: TEdit;
    ctxt98: TStaticText;
    edt98: TEdit;
    ctxt99: TStaticText;
    edt99: TEdit;
    ctxt100: TStaticText;
    edt100: TEdit;
    ctxt101: TStaticText;
    edt101: TEdit;
    ctxt102: TStaticText;
    edt102: TEdit;
    ctxt103: TStaticText;
    edt103: TEdit;
    ctxt104: TStaticText;
    edt104: TEdit;
    ctxt105: TStaticText;
    edt105: TEdit;
    ctxt106: TStaticText;
    edt106: TEdit;
    ctxt107: TStaticText;
    edt107: TEdit;
    ctxt108: TStaticText;
    edt108: TEdit;
    ctxt109: TStaticText;
    edt109: TEdit;
    ctxt110: TStaticText;
    edt110: TEdit;
    ctxt111: TStaticText;
    edt111: TEdit;
    ctxt112: TStaticText;
    edt112: TEdit;
    ctxt113: TStaticText;
    edt113: TEdit;
    ctxt114: TStaticText;
    edt114: TEdit;
    ctxt115: TStaticText;
    edt115: TEdit;
    ctxt116: TStaticText;
    edt116: TEdit;
    ctxt117: TStaticText;
    edt117: TEdit;
    ctxt118: TStaticText;
    edt118: TEdit;
    ctxt119: TStaticText;
    edt119: TEdit;
    ctxt120: TStaticText;
    edt120: TEdit;
    ctxt121: TStaticText;
    edt121: TEdit;
    ctxt122: TStaticText;
    edt122: TEdit;
    ctxt123: TStaticText;
    edt123: TEdit;
    ctxt124: TStaticText;
    edt124: TEdit;
    ctxt125: TStaticText;
    edt125: TEdit;
    ctxt126: TStaticText;
    edt126: TEdit;
    ctxt127: TStaticText;
    edt127: TEdit;
    ctxt128: TStaticText;
    edt128: TEdit;
    ctxt129: TStaticText;
    edt129: TEdit;
    ctxt130: TStaticText;
    edt130: TEdit;
    ctxt131: TStaticText;
    edt131: TEdit;
    ctxt132: TStaticText;
    edt132: TEdit;
    ctxt133: TStaticText;
    edt133: TEdit;
    ctxt134: TStaticText;
    edt134: TEdit;
    ctxt135: TStaticText;
    edt135: TEdit;
    ctxt136: TStaticText;
    edt136: TEdit;
    ctxt137: TStaticText;
    edt137: TEdit;
    ctxt138: TStaticText;
    edt138: TEdit;
    ctxt139: TStaticText;
    edt139: TEdit;
    ctxt140: TStaticText;
    edt140: TEdit;
    ctxt141: TStaticText;
    edt141: TEdit;
    ctxt142: TStaticText;
    edt142: TEdit;
    ctxt143: TStaticText;
    edt143: TEdit;
    ctxt144: TStaticText;
    edt144: TEdit;
    ctxt145: TStaticText;
    edt145: TEdit;
    ctxt146: TStaticText;
    edt146: TEdit;
    ctxt147: TStaticText;
    edt147: TEdit;
    ctxt148: TStaticText;
    edt148: TEdit;
    ctxt149: TStaticText;
    edt149: TEdit;
    ctxt150: TStaticText;
    edt150: TEdit;
    ctxt151: TStaticText;
    edt151: TEdit;
    ctxt152: TStaticText;
    edt152: TEdit;
    ctxt153: TStaticText;
    edt153: TEdit;
    ctxt154: TStaticText;
    edt154: TEdit;
    ctxt155: TStaticText;
    edt155: TEdit;
    ctxt156: TStaticText;
    edt156: TEdit;
    ctxt157: TStaticText;
    edt157: TEdit;
    ctxt158: TStaticText;
    edt158: TEdit;
    ctxt159: TStaticText;
    edt159: TEdit;
    ctxt160: TStaticText;
    edt160: TEdit;
    ctxt161: TStaticText;
    edt161: TEdit;
    ctxt162: TStaticText;
    edt162: TEdit;
    ctxt163: TStaticText;
    edt163: TEdit;
    ctxt164: TStaticText;
    edt164: TEdit;
    ctxt165: TStaticText;
    edt165: TEdit;
    ctxt166: TStaticText;
    edt166: TEdit;
    ctxt167: TStaticText;
    edt167: TEdit;
    ctxt168: TStaticText;
    edt168: TEdit;
    ctxt169: TStaticText;
    edt169: TEdit;
    ctxt170: TStaticText;
    edt170: TEdit;
    ctxt171: TStaticText;
    edt171: TEdit;
    ctxt172: TStaticText;
    edt172: TEdit;
    ctxt173: TStaticText;
    edt173: TEdit;
    ctxt174: TStaticText;
    edt174: TEdit;
    ctxt175: TStaticText;
    edt175: TEdit;
    ctxt176: TStaticText;
    edt176: TEdit;
    ctxt177: TStaticText;
    edt177: TEdit;
    ctxt178: TStaticText;
    edt178: TEdit;
    ctxt179: TStaticText;
    edt179: TEdit;
    ctxt180: TStaticText;
    edt180: TEdit;
    ctxt181: TStaticText;
    edt181: TEdit;
    ctxt182: TStaticText;
    edt182: TEdit;
    ctxt183: TStaticText;
    edt183: TEdit;
    ctxt184: TStaticText;
    edt184: TEdit;
    ctxt185: TStaticText;
    edt185: TEdit;
    ctxt186: TStaticText;
    edt186: TEdit;
    ctxt187: TStaticText;
    edt187: TEdit;
    ctxt188: TStaticText;
    edt188: TEdit;
    ctxt189: TStaticText;
    edt189: TEdit;
    ctxt190: TStaticText;
    edt190: TEdit;
    ctxt191: TStaticText;
    edt191: TEdit;
    ctxt192: TStaticText;
    edt192: TEdit;
    ctxt193: TStaticText;
    edt193: TEdit;
    ctxt194: TStaticText;
    edt194: TEdit;
    ctxt195: TStaticText;
    edt195: TEdit;
    ctxt196: TStaticText;
    edt196: TEdit;
    ctxt197: TStaticText;
    edt197: TEdit;
    ctxt198: TStaticText;
    edt198: TEdit;
    ctxt199: TStaticText;
    edt199: TEdit;
    ctxt200: TStaticText;
    edt200: TEdit;
    ctxt201: TStaticText;
    edt201: TEdit;
    ctxt202: TStaticText;
    edt202: TEdit;
    ctxt203: TStaticText;
    edt203: TEdit;
    ctxt204: TStaticText;
    edt204: TEdit;
    ctxt205: TStaticText;
    edt205: TEdit;
    ctxt206: TStaticText;
    edt206: TEdit;
    ctxt207: TStaticText;
    edt207: TEdit;
    ctxt208: TStaticText;
    edt208: TEdit;
    ctxt209: TStaticText;
    edt209: TEdit;
    ctxt210: TStaticText;
    edt210: TEdit;
    ctxt211: TStaticText;
    edt211: TEdit;
    ctxt212: TStaticText;
    edt212: TEdit;
    ctxt213: TStaticText;
    edt213: TEdit;
    ctxt214: TStaticText;
    edt214: TEdit;
    ctxt215: TStaticText;
    edt215: TEdit;
    ctxt216: TStaticText;
    edt216: TEdit;
    ctxt217: TStaticText;
    edt217: TEdit;
    ctxt218: TStaticText;
    edt218: TEdit;
    ctxt219: TStaticText;
    edt219: TEdit;
    ctxt220: TStaticText;
    edt220: TEdit;
    ctxt221: TStaticText;
    edt221: TEdit;
    ctxt222: TStaticText;
    edt222: TEdit;
    ctxt223: TStaticText;
    edt223: TEdit;
    ctxt224: TStaticText;
    edt224: TEdit;
    ctxt225: TStaticText;
    edt225: TEdit;
    ctxt226: TStaticText;
    edt226: TEdit;
    ctxt227: TStaticText;
    edt227: TEdit;
    ctxt228: TStaticText;
    edt228: TEdit;
    ctxt229: TStaticText;
    edt229: TEdit;
    ctxt230: TStaticText;
    edt230: TEdit;
    ctxt231: TStaticText;
    edt231: TEdit;
    ctxt232: TStaticText;
    edt232: TEdit;
    ctxt233: TStaticText;
    edt233: TEdit;
    ctxt234: TStaticText;
    edt234: TEdit;
    ctxt235: TStaticText;
    edt235: TEdit;
    ctxt236: TStaticText;
    edt236: TEdit;
    ctxt237: TStaticText;
    edt237: TEdit;
    ctxt238: TStaticText;
    edt238: TEdit;
    ctxt239: TStaticText;
    edt239: TEdit;
    ctxt240: TStaticText;
    edt240: TEdit;
    ctxt241: TStaticText;
    edt241: TEdit;
    ctxt242: TStaticText;
    edt242: TEdit;
    ctxt243: TStaticText;
    edt243: TEdit;
    ctxt244: TStaticText;
    edt244: TEdit;
    ctxt245: TStaticText;
    edt245: TEdit;
    ctxt246: TStaticText;
    edt246: TEdit;
    ctxt247: TStaticText;
    edt247: TEdit;
    ctxt248: TStaticText;
    edt248: TEdit;
    ctxt249: TStaticText;
    edt249: TEdit;
    ctxt250: TStaticText;
    edt250: TEdit;
    ctxt251: TStaticText;
    edt251: TEdit;
    ctxt252: TStaticText;
    edt252: TEdit;
    ctxt253: TStaticText;
    edt253: TEdit;
    ctxt254: TStaticText;
    edt254: TEdit;
    ctxt255: TStaticText;
    edt255: TEdit;
    ctxt256: TStaticText;
    edt256: TEdit;
    grp2: TGroupBox;
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
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    grp3: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button38: TButton;
    grp4: TGroupBox;
    Button39: TButton;
    Bt1: TButton;
    Bt2: TButton;
    grp5: TGroupBox;
    ctxt258: TStaticText;
    lbl2: TLabel;
    ctxt257: TStaticText;
    lbl1: TLabel;
    grp6: TGroupBox;
    Bt3: TButton;
    Bt4: TButton;
    Edt257: TEdit;
    Bt5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure edtChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Bt4Click(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SelTableClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure Edt257Change(Sender: TObject);
    procedure Bt5Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SaveTable(isSave : Boolean);
    { Public declarations }
  end;

const
  FileCfgName = 'CfgCustom';
  FileCfgTableName = 'CfgCustomBuf';

var
  NumTable : Byte;
  frmCustomTable: TfrmCustomTable;
  stByte :array[0..255] of TStaticText;
  edOut :array[0..255] of TEdit;
  //rbTable :array[1..16] of TRadioButton;

  btTable :array[1..32] of TButton;


  TChrCustomTable : array[0..255] of TItem;
  BufArrayCust : array[0..255] of Titem;

  ArrayCustomTable : array[1..32, 0..256] of TItem;

  CustomCfgFile      : file of TItem;
  CustomCfgTableFile : file of TItem;

  isSaveFileTable : Boolean;
implementation

{$R *.dfm}

function ByteToBin(Value: byte): string;
var
  i: integer;
begin
  result := '';
  for i := 0 to 7 do
    if Value and (1 shl i) > 0 then
      result := '1' + result
    else
      result := '0' + result;
end;

procedure ClearButton;
var i : Integer;
begin
  NumTable := 0;

  for i:= 1 to 32 do
     btTable[i].Font.Style := [];

  frmCustomTable.Button1.Font.Style := [];
  frmCustomTable.Button2.Font.Style := [];
  frmCustomTable.Button3.Font.Style := [];
  frmCustomTable.Bt5.Font.Style := [];
  frmCustomTable.Bt3.Font.Style := [];
  frmCustomTable.Bt4.Font.Style := [];
  frmCustomTable.Button38.Font.Style := [];
  frmCustomTable.Edt257.Text := '';
  frmCustomTable.Edt257.Enabled := False;
  frmCustomTable.Edt257.Color := frmCustomTable.Color;
end;

procedure TfrmCustomTable.SaveTable(isSave : Boolean);
var i, t : Integer;
begin
  if not isSave then Exit;

  AssignFile(CustomCfgTableFile, FileCfgTableName);

  if FileExists(FileCfgTableName) and (Get_File_Size(FileCfgTableName, True) > 0) then
    begin
      Reset(CustomCfgTableFile);
      for t:= 1 to 32 do
        for i:= 0 to 256 do
          Write(CustomCfgTableFile, ArrayCustomTable[t, i]);
    end
  else
    begin
      ReWrite(CustomCfgTableFile);
      Reset(CustomCfgTableFile);
      For t:=1 to 32 do
        begin
          for i:= 0 to 255 do
            begin
              ArrayCustomTable[t, i].cust := '';
              Write(CustomCfgTableFile, ArrayCustomTable[t, i]);
            end;
          ArrayCustomTable[t, 256].cust := 'Custom ' + IntToStr(t);
          Write(CustomCfgTableFile, ArrayCustomTable[t, 256]);
        end;
    end;
  CloseFile(CustomCfgTableFile);
end;

procedure TfrmCustomTable.FormCreate(Sender: TObject);
var
  i, t : Integer;
begin
  stByte[ 0] := ctxt1;   stByte[ 1] := ctxt2;     stByte[ 2] := ctxt3;   stByte[ 3] := ctxt4;    stByte[ 4] := ctxt5;   stByte[ 5] := ctxt6;     stByte[ 6] := ctxt7;   stByte[ 7] := ctxt8;    stByte[ 8] := ctxt9;   stByte[ 9] := ctxt10;    stByte[10] := ctxt11;  stByte[11] := ctxt12;   stByte[12] := ctxt13;  stByte[13] := ctxt14;    stByte[14] := ctxt15;  stByte[15] := ctxt16;                         stByte[16] := ctxt17;  stByte[17] := ctxt18;    stByte[18] := ctxt19;  stByte[19] := ctxt20;   stByte[20] := ctxt21;  stByte[21] := ctxt22;    stByte[22] := ctxt23;  stByte[23] := ctxt24;   stByte[24] := ctxt25;  stByte[25] := ctxt26;    stByte[26] := ctxt27;  stByte[27] := ctxt28;   stByte[28] := ctxt29;  stByte[29] := ctxt30;    stByte[30] := ctxt31;  stByte[31] := ctxt32;
  stByte[32] := ctxt33;  stByte[33] := ctxt34;    stByte[34] := ctxt35;  stByte[35] := ctxt36;   stByte[36] := ctxt37;  stByte[37] := ctxt38;    stByte[38] := ctxt39;  stByte[39] := ctxt40;   stByte[40] := ctxt41;  stByte[41] := ctxt42;    stByte[42] := ctxt43;  stByte[43] := ctxt44;   stByte[44] := ctxt45;  stByte[45] := ctxt46;    stByte[46] := ctxt47;  stByte[47] := ctxt48;                         stByte[48] := ctxt49;  stByte[49] := ctxt50;    stByte[50] := ctxt51;  stByte[51] := ctxt52;   stByte[52] := ctxt53;  stByte[53] := ctxt54;    stByte[54] := ctxt55;  stByte[55] := ctxt56;   stByte[56] := ctxt57;  stByte[57] := ctxt58;    stByte[58] := ctxt59;  stByte[59] := ctxt60;   stByte[60] := ctxt61;  stByte[61] := ctxt62;    stByte[62] := ctxt63;  stByte[63] := ctxt64;
  stByte[64] := ctxt65;  stByte[65] := ctxt66;    stByte[66] := ctxt67;  stByte[67] := ctxt68;   stByte[68] := ctxt69;  stByte[69] := ctxt70;    stByte[70] := ctxt71;  stByte[71] := ctxt72;   stByte[72] := ctxt73;  stByte[73] := ctxt74;    stByte[74] := ctxt75;  stByte[75] := ctxt76;   stByte[76] := ctxt77;  stByte[77] := ctxt78;    stByte[78] := ctxt79;  stByte[79] := ctxt80;                         stByte[80] := ctxt81;  stByte[81] := ctxt82;    stByte[82] := ctxt83;  stByte[83] := ctxt84;   stByte[84] := ctxt85;  stByte[85] := ctxt86;    stByte[86] := ctxt87;  stByte[87] := ctxt88;   stByte[88] := ctxt89;  stByte[89] := ctxt90;    stByte[90] := ctxt91;  stByte[91] := ctxt92;   stByte[92] := ctxt93;  stByte[93] := ctxt94;    stByte[94] := ctxt95;  stByte[95] := ctxt96;
  stByte[96] := ctxt97;  stByte[97] := ctxt98;    stByte[98] := ctxt99;  stByte[99] := ctxt100;  stByte[100] := ctxt101; stByte[101] := ctxt102;   stByte[102] := ctxt103; stByte[103] := ctxt104;    stByte[104] := ctxt105; stByte[105] := ctxt106;   stByte[106] := ctxt107; stByte[107] := ctxt108;   stByte[108] := ctxt109; stByte[109] := ctxt110;   stByte[110] := ctxt111; stByte[111] := ctxt112;         stByte[112] := ctxt113; stByte[113] := ctxt114;   stByte[114] := ctxt115; stByte[115] := ctxt116;   stByte[116] := ctxt117; stByte[117] := ctxt118;   stByte[118] := ctxt119; stByte[119] := ctxt120;    stByte[120] := ctxt121; stByte[121] := ctxt122;   stByte[122] := ctxt123; stByte[123] := ctxt124;   stByte[124] := ctxt125; stByte[125] := ctxt126;   stByte[126] := ctxt127; stByte[127] := ctxt128;
  stByte[128] := ctxt129; stByte[129] := ctxt130;   stByte[130] := ctxt131; stByte[131] := ctxt132;   stByte[132] := ctxt133; stByte[133] := ctxt134;   stByte[134] := ctxt135; stByte[135] := ctxt136;    stByte[136] := ctxt137; stByte[137] := ctxt138;   stByte[138] := ctxt139; stByte[139] := ctxt140;   stByte[140] := ctxt141; stByte[141] := ctxt142;   stByte[142] := ctxt143; stByte[143] := ctxt144;    stByte[144] := ctxt145; stByte[145] := ctxt146;   stByte[146] := ctxt147; stByte[147] := ctxt148;   stByte[148] := ctxt149; stByte[149] := ctxt150;   stByte[150] := ctxt151; stByte[151] := ctxt152;    stByte[152] := ctxt153; stByte[153] := ctxt154;   stByte[154] := ctxt155; stByte[155] := ctxt156;   stByte[156] := ctxt157; stByte[157] := ctxt158;   stByte[158] := ctxt159; stByte[159] := ctxt160;
  stByte[160] := ctxt161; stByte[161] := ctxt162;   stByte[162] := ctxt163; stByte[163] := ctxt164;   stByte[164] := ctxt165; stByte[165] := ctxt166;   stByte[166] := ctxt167; stByte[167] := ctxt168;    stByte[168] := ctxt169; stByte[169] := ctxt170;   stByte[170] := ctxt171; stByte[171] := ctxt172;   stByte[172] := ctxt173; stByte[173] := ctxt174;   stByte[174] := ctxt175; stByte[175] := ctxt176;    stByte[176] := ctxt177; stByte[177] := ctxt178;   stByte[178] := ctxt179; stByte[179] := ctxt180;   stByte[180] := ctxt181; stByte[181] := ctxt182;   stByte[182] := ctxt183; stByte[183] := ctxt184;    stByte[184] := ctxt185; stByte[185] := ctxt186;   stByte[186] := ctxt187; stByte[187] := ctxt188;   stByte[188] := ctxt189; stByte[189] := ctxt190;   stByte[190] := ctxt191; stByte[191] := ctxt192;
  stByte[192] := ctxt193; stByte[193] := ctxt194;   stByte[194] := ctxt195; stByte[195] := ctxt196;   stByte[196] := ctxt197; stByte[197] := ctxt198;   stByte[198] := ctxt199; stByte[199] := ctxt200;    stByte[200] := ctxt201; stByte[201] := ctxt202;   stByte[202] := ctxt203; stByte[203] := ctxt204;   stByte[204] := ctxt205; stByte[205] := ctxt206;   stByte[206] := ctxt207; stByte[207] := ctxt208;    stByte[208] := ctxt209; stByte[209] := ctxt210;   stByte[210] := ctxt211; stByte[211] := ctxt212;   stByte[212] := ctxt213; stByte[213] := ctxt214;   stByte[214] := ctxt215; stByte[215] := ctxt216;    stByte[216] := ctxt217; stByte[217] := ctxt218;   stByte[218] := ctxt219; stByte[219] := ctxt220;   stByte[220] := ctxt221; stByte[221] := ctxt222;   stByte[222] := ctxt223; stByte[223] := ctxt224;
  stByte[224] := ctxt225; stByte[225] := ctxt226;   stByte[226] := ctxt227; stByte[227] := ctxt228;   stByte[228] := ctxt229; stByte[229] := ctxt230;   stByte[230] := ctxt231; stByte[231] := ctxt232;    stByte[232] := ctxt233; stByte[233] := ctxt234;   stByte[234] := ctxt235; stByte[235] := ctxt236;   stByte[236] := ctxt237; stByte[237] := ctxt238;   stByte[238] := ctxt239; stByte[239] := ctxt240;    stByte[240] := ctxt241; stByte[241] := ctxt242;   stByte[242] := ctxt243; stByte[243] := ctxt244;   stByte[244] := ctxt245; stByte[245] := ctxt246;   stByte[246] := ctxt247; stByte[247] := ctxt248;    stByte[248] := ctxt249; stByte[249] := ctxt250;   stByte[250] := ctxt251; stByte[251] := ctxt252;   stByte[252] := ctxt253; stByte[253] := ctxt254;   stByte[254] := ctxt255; stByte[255] := ctxt256;

  edOut[ 0] := edt1;   edOut[ 1] := edt2;   edOut[ 2] := edt3;   edOut[ 3] := edt4;   edOut[ 4] := edt5;   edOut[ 5] := edt6;   edOut[ 6] := edt7;   edOut[ 7] := edt8;    edOut[ 8] := edt9;   edOut[ 9] := edt10;  edOut[10] := edt11;  edOut[11] := edt12;  edOut[12] := edt13;  edOut[13] := edt14;  edOut[14] := edt15;  edOut[15] := edt16;  edOut[16] := edt17;  edOut[17] := edt18;  edOut[18] := edt19;  edOut[19] := edt20;  edOut[20] := edt21;  edOut[21] := edt22;  edOut[22] := edt23;  edOut[23] := edt24;   edOut[24] := edt25;  edOut[25] := edt26;  edOut[26] := edt27;  edOut[27] := edt28;  edOut[28] := edt29;  edOut[29] := edt30;  edOut[30] := edt31;  edOut[31] := edt32;
  edOut[32] := edt33;  edOut[33] := edt34;  edOut[34] := edt35;  edOut[35] := edt36;  edOut[36] := edt37;  edOut[37] := edt38;  edOut[38] := edt39;  edOut[39] := edt40;   edOut[40] := edt41;  edOut[41] := edt42;  edOut[42] := edt43;  edOut[43] := edt44;  edOut[44] := edt45;  edOut[45] := edt46;  edOut[46] := edt47;  edOut[47] := edt48;  edOut[48] := edt49;  edOut[49] := edt50;  edOut[50] := edt51;  edOut[51] := edt52;  edOut[52] := edt53;  edOut[53] := edt54;  edOut[54] := edt55;  edOut[55] := edt56;   edOut[56] := edt57;  edOut[57] := edt58;  edOut[58] := edt59;  edOut[59] := edt60;  edOut[60] := edt61;  edOut[61] := edt62;  edOut[62] := edt63;  edOut[63] := edt64;
  edOut[64] := edt65;  edOut[65] := edt66;  edOut[66] := edt67;  edOut[67] := edt68;  edOut[68] := edt69;  edOut[69] := edt70;  edOut[70] := edt71;  edOut[71] := edt72;   edOut[72] := edt73;  edOut[73] := edt74;  edOut[74] := edt75;  edOut[75] := edt76;  edOut[76] := edt77;  edOut[77] := edt78;  edOut[78] := edt79;  edOut[79] := edt80;  edOut[80] := edt81;  edOut[81] := edt82;  edOut[82] := edt83;  edOut[83] := edt84;  edOut[84] := edt85;  edOut[85] := edt86;  edOut[86] := edt87;  edOut[87] := edt88;   edOut[88] := edt89;  edOut[89] := edt90;  edOut[90] := edt91;  edOut[91] := edt92;  edOut[92] := edt93;  edOut[93] := edt94;  edOut[94] := edt95;  edOut[95] := edt96;
  edOut[96] := edt97;  edOut[97] := edt98;  edOut[98] := edt99;  edOut[99] := edt100;  edOut[100] := edt101;  edOut[101] := edt102;  edOut[102] := edt103;  edOut[103] := edt104;   edOut[104] := edt105;  edOut[105] := edt106;  edOut[106] := edt107;  edOut[107] := edt108;  edOut[108] := edt109;  edOut[109] := edt110;  edOut[110] := edt111;  edOut[111] := edt112;   edOut[112] := edt113;  edOut[113] := edt114;  edOut[114] := edt115;  edOut[115] := edt116;  edOut[116] := edt117;  edOut[117] := edt118;  edOut[118] := edt119;  edOut[119] := edt120;   edOut[120] := edt121;  edOut[121] := edt122;  edOut[122] := edt123;  edOut[123] := edt124;  edOut[124] := edt125;  edOut[125] := edt126;  edOut[126] := edt127;  edOut[127] := edt128;
  edOut[128] := edt129;  edOut[129] := edt130;  edOut[130] := edt131;  edOut[131] := edt132;  edOut[132] := edt133;  edOut[133] := edt134;  edOut[134] := edt135;  edOut[135] := edt136;   edOut[136] := edt137;  edOut[137] := edt138;  edOut[138] := edt139;  edOut[139] := edt140;  edOut[140] := edt141;  edOut[141] := edt142;  edOut[142] := edt143;  edOut[143] := edt144;  edOut[144] := edt145;  edOut[145] := edt146;  edOut[146] := edt147;  edOut[147] := edt148;  edOut[148] := edt149;  edOut[149] := edt150;  edOut[150] := edt151;  edOut[151] := edt152;   edOut[152] := edt153;  edOut[153] := edt154;  edOut[154] := edt155;  edOut[155] := edt156;  edOut[156] := edt157;  edOut[157] := edt158;  edOut[158] := edt159;  edOut[159] := edt160;
  edOut[160] := edt161;  edOut[161] := edt162;  edOut[162] := edt163;  edOut[163] := edt164;  edOut[164] := edt165;  edOut[165] := edt166;  edOut[166] := edt167;  edOut[167] := edt168;   edOut[168] := edt169;  edOut[169] := edt170;  edOut[170] := edt171;  edOut[171] := edt172;  edOut[172] := edt173;  edOut[173] := edt174;  edOut[174] := edt175;  edOut[175] := edt176;  edOut[176] := edt177;  edOut[177] := edt178;  edOut[178] := edt179;  edOut[179] := edt180;  edOut[180] := edt181;  edOut[181] := edt182;  edOut[182] := edt183;  edOut[183] := edt184;   edOut[184] := edt185;  edOut[185] := edt186;  edOut[186] := edt187;  edOut[187] := edt188;  edOut[188] := edt189;  edOut[189] := edt190;  edOut[190] := edt191;  edOut[191] := edt192;
  edOut[192] := edt193;  edOut[193] := edt194;  edOut[194] := edt195;  edOut[195] := edt196;  edOut[196] := edt197;  edOut[197] := edt198;  edOut[198] := edt199;  edOut[199] := edt200;   edOut[200] := edt201;   edOut[201] := edt202;  edOut[202] := edt203;   edOut[203] := edt204;  edOut[204] := edt205;   edOut[205] := edt206;  edOut[206] := edt207;   edOut[207] := edt208;  edOut[208] := edt209;   edOut[209] := edt210;  edOut[210] := edt211;   edOut[211] := edt212;  edOut[212] := edt213;   edOut[213] := edt214;  edOut[214] := edt215;   edOut[215] := edt216;   edOut[216] := edt217;   edOut[217] := edt218;  edOut[218] := edt219;   edOut[219] := edt220;  edOut[220] := edt221;   edOut[221] := edt222;  edOut[222] := edt223;   edOut[223] := edt224;
  edOut[224] := edt225;   edOut[225] := edt226;  edOut[226] := edt227;   edOut[227] := edt228;  edOut[228] := edt229;   edOut[229] := edt230;  edOut[230] := edt231;   edOut[231] := edt232;   edOut[232] := edt233;   edOut[233] := edt234;  edOut[234] := edt235;   edOut[235] := edt236;  edOut[236] := edt237;   edOut[237] := edt238;  edOut[238] := edt239;   edOut[239] := edt240;  edOut[240] := edt241;   edOut[241] := edt242;  edOut[242] := edt243;   edOut[243] := edt244;  edOut[244] := edt245;   edOut[245] := edt246;  edOut[246] := edt247;   edOut[247] := edt248;   edOut[248] := edt249;   edOut[249] := edt250;  edOut[250] := edt251;   edOut[251] := edt252;  edOut[252] := edt253;   edOut[253] := edt254;  edOut[254] := edt255;   edOut[255] := edt256;

  btTable[1] := Button6;
  btTable[2] := Button7;
  btTable[3] := Button8;
  btTable[4] := Button9;
  btTable[5] := Button10;
  btTable[6] := Button11;
  btTable[7] := Button12;
  btTable[8] := Button13;
  btTable[9] := Button14;
  btTable[10] := Button15;
  btTable[11] := Button16;
  btTable[12] := Button17;
  btTable[13] := Button18;
  btTable[14] := Button19;
  btTable[15] := Button20;
  btTable[16] := Button21;

  btTable[17] := Button22;
  btTable[18] := Button23;
  btTable[19] := Button24;
  btTable[20] := Button25;
  btTable[21] := Button26;
  btTable[22] := Button27;
  btTable[23] := Button28;
  btTable[24] := Button29;
  btTable[25] := Button30;
  btTable[26] := Button31;
  btTable[27] := Button32;
  btTable[28] := Button33;
  btTable[29] := Button34;
  btTable[30] := Button35;
  btTable[31] := Button36;
  btTable[32] := Button37;

  NumTable := 0;
  for i:= 1 to 32 do
    btTable[i].Font.Style := [];

  AssignFile(CustomCfgFile, FileCfgName);

  if FileExists(FileCfgName) and (Get_File_Size(FileCfgName, True) > 0) then
    begin
      Reset(CustomCfgFile);
      for i:= 0 to 255 do
        Read(CustomCfgFile, TChrCustomTable[i]);
    end
  else
    begin
      ReWrite(CustomCfgFile);
      Reset(CustomCfgFile);
      for i:= 0 to 255 do
        begin
          TChrCustomTable[i].cust := ChrZ(i);
          Write(CustomCfgFile, TChrCustomTable[i]);
        end;
    end;
  CloseFile(CustomCfgFile);

  AssignFile(CustomCfgTableFile, FileCfgTableName);

  if FileExists(FileCfgTableName) and (Get_File_Size(FileCfgTableName, True) > 0)  then
    begin
      Reset(CustomCfgTableFile);
      for t:= 1 to 32 do
        begin
          for i:= 0 to 256 do
            Read(CustomCfgTableFile, ArrayCustomTable[t, i]);
          btTable[t].Hint := ArrayCustomTable[t, 256].cust;
        end;
    end
  else
    begin
      ReWrite(CustomCfgTableFile);
      Reset(CustomCfgTableFile);
      For t:=1 to 32 do
        begin
          for i:= 0 to 255 do
            begin
              ArrayCustomTable[t, i].cust := '';
              Write(CustomCfgTableFile, ArrayCustomTable[t, i]);
            end;
          ArrayCustomTable[t, 256].cust := 'Custom ' + IntToStr(t);
          btTable[t].Hint := ArrayCustomTable[t, 256].cust;
          Write(CustomCfgTableFile, ArrayCustomTable[t, 256]);
        end;
    end;
  CloseFile(CustomCfgTableFile);




  for i:= 1 to 32 do
    begin
      btTable[i].Tag := i;
      btTable[i].OnClick := SelTableClick;
    end;

  for i := 0 to 255 do
    begin
      SetCustomTable(i, TChrCustomTable[i].cust);
      edOut[i].Text := TChrCustomTable[i].cust;
      stByte[i].Caption := IntToHex(i,2);
      stByte[i].Hint := IntToStr(i);
      stByte[i].Color := frmCustomTable.Color;
      edOut[i].Tag  := i;
      edOut[i].OnChange := edtChange;
    end;

end;

procedure TfrmCustomTable.edtChange(Sender: TObject);
begin
  if ChrCustom((Sender as TEdit).Tag) <> (Sender as TEdit).Text then
    (Sender as TEdit).Color := clYellow
  else
    (Sender as TEdit).Color := clWindow;

  TChrCustomTable[(Sender as TEdit).Tag].cust := (Sender as TEdit).Text;
  if NumTable > 0 then
    begin
      ArrayCustomTable[NumTable, (Sender as TEdit).Tag].cust := (Sender as TEdit).Text;
      isSaveFileTable := true;
    end;
end;

procedure TfrmCustomTable.Button1Click(Sender: TObject);
var i : Integer;
begin
  ClearButton;
  (Sender as TButton).Font.Style := [fsbold, fsUnderline];

  for i := 0 to 255 do
    edOut[i].Text := ChrZ(i);
end;

procedure TfrmCustomTable.Button2Click(Sender: TObject);
var i : Integer;
begin
  ClearButton;
  (Sender as TButton).Font.Style := [fsbold, fsUnderline];


  for i := 0 to 255 do
    edOut[i].Text := IntToHex(i, 2) + ' ';
end;
procedure TfrmCustomTable.Button3Click(Sender: TObject);
var i : Integer;
begin
  ClearButton;
  (Sender as TButton).Font.Style := [fsbold, fsUnderline];


  for i := 0 to 255 do
    edOut[i].Text := IntTOstr(i);
end;
procedure TfrmCustomTable.Bt4Click(Sender: TObject);
  var i, t: Integer;
begin
  ClearButton;

  for i := 0 to 255 do
    begin
      SetCustomTable(i, TChrCustomTable[i].cust);
      edOut[i].Color := clWindow;
    end;

  AssignFile(CustomCfgFile, FileCfgName);

  if FileExists(FileCfgName) and (Get_File_Size(FileCfgName, True) > 0) then
    begin
      Reset(CustomCfgFile);
      for i:= 0 to 255 do
        Write(CustomCfgFile, TChrCustomTable[i]);
    end
  else
    begin
      ReWrite(CustomCfgFile);
      Reset(CustomCfgFile);
      for i:= 0 to 255 do
        begin
          TChrCustomTable[i].cust := ChrZ(i);
          Write(CustomCfgFile, TChrCustomTable[i]);
        end;
    end;
  CloseFile(CustomCfgFile);

  SaveTable(true);
end;

procedure TfrmCustomTable.Bt3Click(Sender: TObject);
var i : Integer;
  begin
  ClearButton;
  (Sender as TButton).Font.Style := [fsbold, fsUnderline];
  for i := 0 to 255 do
    edOut[i].Text := ChrCustom(i);
  end;

procedure TfrmCustomTable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SaveTable(isSaveFileTable);
  Form1.BtTableCustom.Font.Style := [];
  TerminalST.Form1.isUseCustomTable := False;
end;

procedure TfrmCustomTable.SelTableClick(Sender: TObject);
var i : Integer;
begin
  ClearButton;
  (Sender as TButton).Font.Style := [fsbold, fsUnderline];
  NumTable := (Sender as TButton).Tag;
  begin
    for i := 0 to 255 do
      edOut[i].Text := ArrayCustomTable[NumTable, i].cust;
  end;
  Edt257.Enabled := True;
  Edt257.Color   := clWindow;
  Edt257.Text    := ArrayCustomTable[NumTable, 256].cust;
end;

procedure TfrmCustomTable.FormActivate(Sender: TObject);
var i: Integer;
begin
  ClearButton;
end;

procedure TfrmCustomTable.Button38Click(Sender: TObject);
var i : Integer;
begin
  ClearButton;
  (Sender as TButton).Font.Style := [fsbold, fsUnderline];

  for i := 0 to 255 do
    edOut[i].Text := ByteToBin(i) + ' ';
end;

procedure TfrmCustomTable.Button39Click(Sender: TObject);
var i: Integer;
begin
  for i := 0 to 255 do
    edOut[i].Text := '';
end;

procedure TfrmCustomTable.Bt1Click(Sender: TObject);
var i : Byte;
begin
  For i:= 0 to 255 do
    BufArrayCust[i].cust := edOut[i].Text;
  Bt2.Enabled := True;
end;

procedure TfrmCustomTable.Bt2Click(Sender: TObject);
var i : Byte;
begin
  For i:= 0 to 255 do
    edOut[i].Text := BufArrayCust[i].cust;
end;
procedure TfrmCustomTable.Edt257Change(Sender: TObject);
begin
  if NumTable > 0 then
    begin
      ArrayCustomTable[NumTable, 256].cust := (Sender as TEdit).Text;
      btTable[NumTable].Hint := (Sender as TEdit).Text;
    end;
end;

procedure TfrmCustomTable.Bt5Click(Sender: TObject);
var i : Integer;
begin
  ClearButton;
  (Sender as TButton).Font.Style := [fsbold, fsUnderline];

  for i := 0 to 255 do
    edOut[i].Text := Chr(i);
end;

end.
