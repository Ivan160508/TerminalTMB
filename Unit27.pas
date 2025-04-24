unit Unit27;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Common;


type
  TMacros = record
    Name : string[255];
    Cmd  : string[255];
    HKey : word;
    Joyst: word;
    Res1 : Boolean;
    Res2 : Boolean;
    Res3 : Cardinal;
    Res4 : Cardinal;
  end;

type
  TListMacros = record
    Macros : array[1..216] of TMacros;
    Name   : string[255];
  end;

type
  TCfgAddMacros = record
   ListMacros : array[1..200] of TListMacros;
   isSynsOfMain : Boolean;
   isVisName : Boolean;
   isRes : Boolean;
   LastList  : Integer;
   Res1 : boolean;
   Res2 : boolean;
   Res3 : boolean;
   Res4 : Cardinal;
   Res5 : Cardinal;
  end;



type
  TFormAddMacros = class(TForm)
    grp1: TGroupBox;
    tbc1: TTabControl;
    cbb1: TComboBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    CheckBox1: TCheckBox;
    Bt217: TButton;
    Bt218: TButton;
    Bt219: TButton;
    Bt220: TButton;
    Bt221: TButton;
    pnl2: TPanel;
    Bt1: TButton;
    pnl1: TPanel;
    Edt97: TEdit;
    Edt9: TEdit;
    Edt89: TEdit;
    Edt81: TEdit;
    Edt73: TEdit;
    Edt65: TEdit;
    Edt57: TEdit;
    Edt49: TEdit;
    Edt41: TEdit;
    Edt33: TEdit;
    Edt25: TEdit;
    Edt209: TEdit;
    Edt201: TEdit;
    Edt193: TEdit;
    Edt185: TEdit;
    Edt177: TEdit;
    Edt17: TEdit;
    Edt169: TEdit;
    Edt161: TEdit;
    Edt153: TEdit;
    Edt145: TEdit;
    Edt137: TEdit;
    Edt129: TEdit;
    Edt121: TEdit;
    Edt113: TEdit;
    Edt105: TEdit;
    Edt1: TEdit;
    Bt2: TButton;
    Bt3: TButton;
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
    Bt70: TButton;
    Bt71: TButton;
    Bt72: TButton;
    Bt73: TButton;
    Bt74: TButton;
    Bt75: TButton;
    Bt76: TButton;
    Bt77: TButton;
    Bt78: TButton;
    Bt79: TButton;
    Bt80: TButton;
    Bt81: TButton;
    Bt82: TButton;
    Bt83: TButton;
    Bt84: TButton;
    Bt85: TButton;
    Bt86: TButton;
    Bt87: TButton;
    Bt88: TButton;
    Bt89: TButton;
    Bt90: TButton;
    Bt91: TButton;
    Bt92: TButton;
    Bt93: TButton;
    Bt94: TButton;
    Bt95: TButton;
    Bt96: TButton;
    Bt97: TButton;
    Bt98: TButton;
    Bt99: TButton;
    Bt100: TButton;
    Bt101: TButton;
    Bt102: TButton;
    Bt103: TButton;
    Bt104: TButton;
    Bt105: TButton;
    Bt106: TButton;
    Bt107: TButton;
    Bt108: TButton;
    Bt109: TButton;
    Bt110: TButton;
    Bt111: TButton;
    Bt112: TButton;
    Bt113: TButton;
    Bt114: TButton;
    Bt115: TButton;
    Bt116: TButton;
    Bt117: TButton;
    Bt118: TButton;
    Bt119: TButton;
    Bt120: TButton;
    Bt121: TButton;
    Bt122: TButton;
    Bt123: TButton;
    Bt124: TButton;
    Bt125: TButton;
    Bt126: TButton;
    Bt127: TButton;
    Bt128: TButton;
    Bt129: TButton;
    Bt130: TButton;
    Bt131: TButton;
    Bt132: TButton;
    Bt133: TButton;
    Bt134: TButton;
    Bt135: TButton;
    Bt136: TButton;
    Bt137: TButton;
    Bt138: TButton;
    Bt139: TButton;
    Bt140: TButton;
    Bt141: TButton;
    Bt142: TButton;
    Bt143: TButton;
    Bt144: TButton;
    Bt145: TButton;
    Bt146: TButton;
    Bt147: TButton;
    Bt148: TButton;
    Bt149: TButton;
    Bt150: TButton;
    Bt151: TButton;
    Bt152: TButton;
    Bt153: TButton;
    Bt154: TButton;
    Bt155: TButton;
    Bt156: TButton;
    Bt157: TButton;
    Bt158: TButton;
    Bt159: TButton;
    Bt160: TButton;
    Bt161: TButton;
    Bt162: TButton;
    Bt163: TButton;
    Bt164: TButton;
    Bt165: TButton;
    Bt166: TButton;
    Bt167: TButton;
    Bt168: TButton;
    Bt169: TButton;
    Bt170: TButton;
    Bt171: TButton;
    Bt172: TButton;
    Bt173: TButton;
    Bt174: TButton;
    Bt175: TButton;
    Bt176: TButton;
    Bt177: TButton;
    Bt178: TButton;
    Bt179: TButton;
    Bt180: TButton;
    Bt181: TButton;
    Bt182: TButton;
    Bt183: TButton;
    Bt184: TButton;
    Bt185: TButton;
    Bt186: TButton;
    Bt187: TButton;
    Bt188: TButton;
    Bt189: TButton;
    Bt190: TButton;
    Bt191: TButton;
    Bt192: TButton;
    Bt193: TButton;
    Bt194: TButton;
    Bt195: TButton;
    Bt196: TButton;
    Bt197: TButton;
    Bt198: TButton;
    Bt199: TButton;
    Bt200: TButton;
    Bt201: TButton;
    Bt202: TButton;
    Bt203: TButton;
    Bt204: TButton;
    Bt205: TButton;
    Bt206: TButton;
    Bt207: TButton;
    Bt208: TButton;
    Bt209: TButton;
    Bt210: TButton;
    Bt211: TButton;
    Bt212: TButton;
    Bt213: TButton;
    Bt214: TButton;
    Bt215: TButton;
    Bt216: TButton;
    Edt10: TEdit;
    Edt2: TEdit;
    Edt3: TEdit;
    Edt4: TEdit;
    Edt5: TEdit;
    Edt6: TEdit;
    Edt7: TEdit;
    Edt8: TEdit;
    Edt11: TEdit;
    Edt12: TEdit;
    Edt13: TEdit;
    Edt14: TEdit;
    Edt15: TEdit;
    Edt16: TEdit;
    Edt18: TEdit;
    Edt19: TEdit;
    Edt20: TEdit;
    Edt21: TEdit;
    Edt22: TEdit;
    Edt23: TEdit;
    Edt24: TEdit;
    Edt26: TEdit;
    Edt34: TEdit;
    Edt42: TEdit;
    Edt50: TEdit;
    Edt58: TEdit;
    Edt66: TEdit;
    Edt74: TEdit;
    Edt82: TEdit;
    Edt90: TEdit;
    Edt98: TEdit;
    Edt106: TEdit;
    Edt114: TEdit;
    Edt122: TEdit;
    Edt130: TEdit;
    Edt138: TEdit;
    Edt146: TEdit;
    Edt154: TEdit;
    Edt162: TEdit;
    Edt170: TEdit;
    Edt178: TEdit;
    Edt186: TEdit;
    Edt194: TEdit;
    Edt202: TEdit;
    Edt210: TEdit;
    Edt27: TEdit;
    Edt35: TEdit;
    Edt43: TEdit;
    Edt51: TEdit;
    Edt59: TEdit;
    Edt67: TEdit;
    Edt75: TEdit;
    Edt83: TEdit;
    Edt91: TEdit;
    Edt99: TEdit;
    Edt107: TEdit;
    Edt115: TEdit;
    Edt123: TEdit;
    Edt131: TEdit;
    Edt139: TEdit;
    Edt147: TEdit;
    Edt155: TEdit;
    Edt163: TEdit;
    Edt171: TEdit;
    Edt179: TEdit;
    Edt187: TEdit;
    Edt195: TEdit;
    Edt203: TEdit;
    Edt211: TEdit;
    Edt28: TEdit;
    Edt36: TEdit;
    Edt44: TEdit;
    Edt52: TEdit;
    Edt60: TEdit;
    Edt68: TEdit;
    Edt76: TEdit;
    Edt84: TEdit;
    Edt92: TEdit;
    Edt100: TEdit;
    Edt108: TEdit;
    Edt116: TEdit;
    Edt124: TEdit;
    Edt132: TEdit;
    Edt140: TEdit;
    Edt148: TEdit;
    Edt156: TEdit;
    Edt164: TEdit;
    Edt172: TEdit;
    Edt180: TEdit;
    Edt188: TEdit;
    Edt196: TEdit;
    Edt204: TEdit;
    Edt212: TEdit;
    Edt29: TEdit;
    Edt37: TEdit;
    Edt45: TEdit;
    Edt53: TEdit;
    Edt61: TEdit;
    Edt69: TEdit;
    Edt77: TEdit;
    Edt85: TEdit;
    Edt93: TEdit;
    Edt101: TEdit;
    Edt109: TEdit;
    Edt117: TEdit;
    Edt125: TEdit;
    Edt133: TEdit;
    Edt141: TEdit;
    Edt149: TEdit;
    Edt157: TEdit;
    Edt165: TEdit;
    Edt173: TEdit;
    Edt181: TEdit;
    Edt189: TEdit;
    Edt197: TEdit;
    Edt205: TEdit;
    Edt213: TEdit;
    Edt30: TEdit;
    Edt38: TEdit;
    Edt46: TEdit;
    Edt54: TEdit;
    Edt62: TEdit;
    Edt70: TEdit;
    Edt78: TEdit;
    Edt86: TEdit;
    Edt94: TEdit;
    Edt102: TEdit;
    Edt110: TEdit;
    Edt118: TEdit;
    Edt126: TEdit;
    Edt134: TEdit;
    Edt142: TEdit;
    Edt150: TEdit;
    Edt158: TEdit;
    Edt166: TEdit;
    Edt174: TEdit;
    Edt182: TEdit;
    Edt190: TEdit;
    Edt198: TEdit;
    Edt206: TEdit;
    Edt214: TEdit;
    Edt31: TEdit;
    Edt39: TEdit;
    Edt47: TEdit;
    Edt55: TEdit;
    Edt63: TEdit;
    Edt71: TEdit;
    Edt79: TEdit;
    Edt87: TEdit;
    Edt95: TEdit;
    Edt103: TEdit;
    Edt111: TEdit;
    Edt119: TEdit;
    Edt127: TEdit;
    Edt135: TEdit;
    Edt143: TEdit;
    Edt151: TEdit;
    Edt159: TEdit;
    Edt167: TEdit;
    Edt175: TEdit;
    Edt183: TEdit;
    Edt191: TEdit;
    Edt199: TEdit;
    Edt207: TEdit;
    Edt215: TEdit;
    Edt32: TEdit;
    Edt40: TEdit;
    Edt48: TEdit;
    Edt56: TEdit;
    Edt64: TEdit;
    Edt72: TEdit;
    Edt80: TEdit;
    Edt88: TEdit;
    Edt96: TEdit;
    Edt104: TEdit;
    Edt112: TEdit;
    Edt120: TEdit;
    Edt128: TEdit;
    Edt136: TEdit;
    Edt144: TEdit;
    Edt152: TEdit;
    Edt160: TEdit;
    Edt168: TEdit;
    Edt176: TEdit;
    Edt184: TEdit;
    Edt192: TEdit;
    Edt200: TEdit;
    Edt208: TEdit;
    Edt216: TEdit;
    Edt217: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure tbc1Change(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure EdtChange(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure Bt217Click(Sender: TObject);
    procedure Bt218Click(Sender: TObject);
    procedure BtCmdClick(Sender: TObject);
    procedure cbb1Click(Sender: TObject);
    procedure Edt217Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Bt219Click(Sender: TObject);
    procedure Bt220Click(Sender: TObject);
    procedure Bt221Click(Sender: TObject);
    procedure UpdateList(List : Integer);
    procedure SaveCfgInFile;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  NameFileCfg = 'AddMacros_Cfg';

var
  FormAddMacros: TFormAddMacros;
  BtCmd  : array[1..216] of TButton;
  LeftBt : array[1..216] of Integer;
  EtCmd  : array[1..216] of TEdit;
  LeftEdt : array[1..216] of Integer;
  NumList : Integer;
  CfgAddMacros : TCfgAddMacros;
  ListMacrosCopy : TListMacros;

  StartWPanel : Integer;
  StartWForm  : Integer;
  StartWTbs  : Integer;

  StartWcbb1 : Integer;
  StartPosCmd: Integer;
  StartPosName : Integer;
  StartPosCopy : Integer;
  StartPosPaste: Integer;
  StartPosClear : Integer;
  StartPosPrew : Integer;
  StartPosNext : Integer;
  StartWTopPanel : Integer;

  FileCfg : file of TCfgAddMacros;
  isSaveCfg : Boolean;
  isInit : Boolean;
implementation

uses TerminalST, Unit28;

{$R *.dfm}

procedure ReadList(List : Integer);
  var i : Integer;
begin
  FormAddMacros.cbb1.ItemIndex := List - 1;
  FormAddMacros.Edt217.Text := CfgAddMacros.ListMacros[List].Name;
  for i := 1 to 216 do
    begin
      BtCmd[i].Enabled := CfgAddMacros.ListMacros[List].Macros[i].Cmd <> '';


      if CfgAddMacros.isVisName then
        begin
          BtCmd[i].Font.Style := [fsBold];
          EtCmd[i].Font.Style := [fsBold];
          BtCmd[i].Caption := CfgAddMacros.ListMacros[List].Macros[i].Name;
          EtCmd[i].Text := CfgAddMacros.ListMacros[List].Macros[i].Name;
          EtCmd[i].Hint := CfgAddMacros.ListMacros[List].Macros[i].Cmd;
          BtCmd[i].Hint := CfgAddMacros.ListMacros[List].Macros[i].Cmd;
        end
      else
        begin
          BtCmd[i].Font.Style := [];
          EtCmd[i].Font.Style := [];
          BtCmd[i].Caption := CfgAddMacros.ListMacros[List].Macros[i].Cmd;
          EtCmd[i].Text := CfgAddMacros.ListMacros[List].Macros[i].Cmd;
          BtCmd[i].Hint := CfgAddMacros.ListMacros[List].Macros[i].Name;
          EtCmd[i].Hint := CfgAddMacros.ListMacros[List].Macros[i].Name;
        end;
    end;
end;

procedure TFormAddMacros.UpdateList(List : integer);
begin
  if CfgAddMacros.isSynsOfMain then
    begin
      NumList := List;
      ReadList(NumList);
      Bt217.Enabled := NumList > 1;
      Bt218.Enabled := NumList < 200;
    end;
end;

procedure TFormAddMacros.FormCreate(Sender: TObject);
var i, iL, iM: Integer;
begin
  isInit    := True;
  isSaveCfg := False;
  BtCmd[1] := Bt1;
  BtCmd[2] := Bt2;
  BtCmd[3] := Bt3;
  BtCmd[4] := Bt4;
  BtCmd[5] := Bt5;
  BtCmd[6] := Bt6;
  BtCmd[7] := Bt7;
  BtCmd[8] := Bt8;
  BtCmd[9] := Bt9;
  BtCmd[10] := Bt10;
  BtCmd[11] := Bt11;
  BtCmd[12] := Bt12;
  BtCmd[13] := Bt13;
  BtCmd[14] := Bt14;
  BtCmd[15] := Bt15;
  BtCmd[16] := Bt16;
  BtCmd[17] := Bt17;
  BtCmd[18] := Bt18;
  BtCmd[19] := Bt19;
  BtCmd[20] := Bt20;
  BtCmd[21] := Bt21;
  BtCmd[22] := Bt22;
  BtCmd[23] := Bt23;
  BtCmd[24] := Bt24;
  BtCmd[25] := Bt25;
  BtCmd[26] := Bt26;
  BtCmd[27] := Bt27;
  BtCmd[28] := Bt28;
  BtCmd[29] := Bt29;
  BtCmd[30] := Bt30;
  BtCmd[31] := Bt31;
  BtCmd[32] := Bt32;
  BtCmd[33] := Bt33;
  BtCmd[34] := Bt34;
  BtCmd[35] := Bt35;
  BtCmd[36] := Bt36;
  BtCmd[37] := Bt37;
  BtCmd[38] := Bt38;
  BtCmd[39] := Bt39;
  BtCmd[40] := Bt40;
  BtCmd[41] := Bt41;
  BtCmd[42] := Bt42;
  BtCmd[43] := Bt43;
  BtCmd[44] := Bt44;
  BtCmd[45] := Bt45;
  BtCmd[46] := Bt46;
  BtCmd[47] := Bt47;
  BtCmd[48] := Bt48;
  BtCmd[49] := Bt49;
  BtCmd[50] := Bt50;
  BtCmd[51] := Bt51;
  BtCmd[52] := Bt52;
  BtCmd[53] := Bt53;
  BtCmd[54] := Bt54;
  BtCmd[55] := Bt55;
  BtCmd[56] := Bt56;
  BtCmd[57] := Bt57;
  BtCmd[58] := Bt58;
  BtCmd[59] := Bt59;
  BtCmd[60] := Bt60;
  BtCmd[61] := Bt61;
  BtCmd[62] := Bt62;
  BtCmd[63] := Bt63;
  BtCmd[64] := Bt64;
  BtCmd[65] := Bt65;
  BtCmd[66] := Bt66;
  BtCmd[67] := Bt67;
  BtCmd[68] := Bt68;
  BtCmd[69] := Bt69;
  BtCmd[70] := Bt70;
  BtCmd[71] := Bt71;
  BtCmd[72] := Bt72;
  BtCmd[73] := Bt73;
  BtCmd[74] := Bt74;
  BtCmd[75] := Bt75;
  BtCmd[76] := Bt76;
  BtCmd[77] := Bt77;
  BtCmd[78] := Bt78;
  BtCmd[79] := Bt79;
  BtCmd[80] := Bt80;
  BtCmd[81] := Bt81;
  BtCmd[82] := Bt82;
  BtCmd[83] := Bt83;
  BtCmd[84] := Bt84;
  BtCmd[85] := Bt85;
  BtCmd[86] := Bt86;
  BtCmd[87] := Bt87;
  BtCmd[88] := Bt88;
  BtCmd[89] := Bt89;
  BtCmd[90] := Bt90;
  BtCmd[91] := Bt91;
  BtCmd[92] := Bt92;
  BtCmd[93] := Bt93;
  BtCmd[94] := Bt94;
  BtCmd[95] := Bt95;
  BtCmd[96] := Bt96;
  BtCmd[97] := Bt97;
  BtCmd[98] := Bt98;
  BtCmd[99] := Bt99;
  BtCmd[100] := Bt100;

  BtCmd[101] := Bt101;
  BtCmd[102] := Bt102;
  BtCmd[103] := Bt103;
  BtCmd[104] := Bt104;
  BtCmd[105] := Bt105;
  BtCmd[106] := Bt106;
  BtCmd[107] := Bt107;
  BtCmd[108] := Bt108;
  BtCmd[109] := Bt109;
  BtCmd[110] := Bt110;
  BtCmd[111] := Bt111;
  BtCmd[112] := Bt112;
  BtCmd[113] := Bt113;
  BtCmd[114] := Bt114;
  BtCmd[115] := Bt115;
  BtCmd[116] := Bt116;
  BtCmd[117] := Bt117;
  BtCmd[118] := Bt118;
  BtCmd[119] := Bt119;
  BtCmd[120] := Bt120;
  BtCmd[121] := Bt121;
  BtCmd[122] := Bt122;
  BtCmd[123] := Bt123;
  BtCmd[124] := Bt124;
  BtCmd[125] := Bt125;
  BtCmd[126] := Bt126;
  BtCmd[127] := Bt127;
  BtCmd[128] := Bt128;
  BtCmd[129] := Bt129;
  BtCmd[130] := Bt130;
  BtCmd[131] := Bt131;
  BtCmd[132] := Bt132;
  BtCmd[133] := Bt133;
  BtCmd[134] := Bt134;
  BtCmd[135] := Bt135;
  BtCmd[136] := Bt136;
  BtCmd[137] := Bt137;
  BtCmd[138] := Bt138;
  BtCmd[139] := Bt139;
  BtCmd[140] := Bt140;
  BtCmd[141] := Bt141;
  BtCmd[142] := Bt142;
  BtCmd[143] := Bt143;
  BtCmd[144] := Bt144;
  BtCmd[145] := Bt145;
  BtCmd[146] := Bt146;
  BtCmd[147] := Bt147;
  BtCmd[148] := Bt148;
  BtCmd[149] := Bt149;
  BtCmd[150] := Bt150;
  BtCmd[151] := Bt151;
  BtCmd[152] := Bt152;
  BtCmd[153] := Bt153;
  BtCmd[154] := Bt154;
  BtCmd[155] := Bt155;
  BtCmd[156] := Bt156;
  BtCmd[157] := Bt157;
  BtCmd[158] := Bt158;
  BtCmd[159] := Bt159;
  BtCmd[160] := Bt160;
  BtCmd[161] := Bt161;
  BtCmd[162] := Bt162;
  BtCmd[163] := Bt163;
  BtCmd[164] := Bt164;
  BtCmd[165] := Bt165;
  BtCmd[166] := Bt166;
  BtCmd[167] := Bt167;
  BtCmd[168] := Bt168;
  BtCmd[169] := Bt169;
  BtCmd[170] := Bt170;
  BtCmd[171] := Bt171;
  BtCmd[172] := Bt172;
  BtCmd[173] := Bt173;
  BtCmd[174] := Bt174;
  BtCmd[175] := Bt175;
  BtCmd[176] := Bt176;
  BtCmd[177] := Bt177;
  BtCmd[178] := Bt178;
  BtCmd[179] := Bt179;
  BtCmd[180] := Bt180;
  BtCmd[181] := Bt181;
  BtCmd[182] := Bt182;
  BtCmd[183] := Bt183;
  BtCmd[184] := Bt184;
  BtCmd[185] := Bt185;
  BtCmd[186] := Bt186;
  BtCmd[187] := Bt187;
  BtCmd[188] := Bt188;
  BtCmd[189] := Bt189;
  BtCmd[190] := Bt190;
  BtCmd[191] := Bt191;
  BtCmd[192] := Bt192;
  BtCmd[193] := Bt193;
  BtCmd[194] := Bt194;
  BtCmd[195] := Bt195;
  BtCmd[196] := Bt196;
  BtCmd[197] := Bt197;
  BtCmd[198] := Bt198;
  BtCmd[199] := Bt199;
  BtCmd[200] := Bt200;

  BtCmd[201] := Bt201;
  BtCmd[202] := Bt202;
  BtCmd[203] := Bt203;
  BtCmd[204] := Bt204;
  BtCmd[205] := Bt205;
  BtCmd[206] := Bt206;
  BtCmd[207] := Bt207;
  BtCmd[208] := Bt208;
  BtCmd[209] := Bt209;
  BtCmd[210] := Bt210;
  BtCmd[211] := Bt211;
  BtCmd[212] := Bt212;
  BtCmd[213] := Bt213;
  BtCmd[214] := Bt214;
  BtCmd[215] := Bt215;
  BtCmd[216] := Bt216;



  EtCmd[1] := Edt1;
  EtCmd[2] := Edt2;
  EtCmd[3] := Edt3;
  EtCmd[4] := Edt4;
  EtCmd[5] := Edt5;
  EtCmd[6] := Edt6;
  EtCmd[7] := Edt7;
  EtCmd[8] := Edt8;
  EtCmd[9] := Edt9;
  EtCmd[10] := Edt10;
  EtCmd[11] := Edt11;
  EtCmd[12] := Edt12;
  EtCmd[13] := Edt13;
  EtCmd[14] := Edt14;
  EtCmd[15] := Edt15;
  EtCmd[16] := Edt16;
  EtCmd[17] := Edt17;
  EtCmd[18] := Edt18;
  EtCmd[19] := Edt19;
  EtCmd[20] := Edt20;
  EtCmd[21] := Edt21;
  EtCmd[22] := Edt22;
  EtCmd[23] := Edt23;
  EtCmd[24] := Edt24;
  EtCmd[25] := Edt25;
  EtCmd[26] := Edt26;
  EtCmd[27] := Edt27;
  EtCmd[28] := Edt28;
  EtCmd[29] := Edt29;
  EtCmd[30] := Edt30;
  EtCmd[31] := Edt31;
  EtCmd[32] := Edt32;
  EtCmd[33] := Edt33;
  EtCmd[34] := Edt34;
  EtCmd[35] := Edt35;
  EtCmd[36] := Edt36;
  EtCmd[37] := Edt37;
  EtCmd[38] := Edt38;
  EtCmd[39] := Edt39;
  EtCmd[40] := Edt40;
  EtCmd[41] := Edt41;
  EtCmd[42] := Edt42;
  EtCmd[43] := Edt43;
  EtCmd[44] := Edt44;
  EtCmd[45] := Edt45;
  EtCmd[46] := Edt46;
  EtCmd[47] := Edt47;
  EtCmd[48] := Edt48;
  EtCmd[49] := Edt49;
  EtCmd[50] := Edt50;
  EtCmd[51] := Edt51;
  EtCmd[52] := Edt52;
  EtCmd[53] := Edt53;
  EtCmd[54] := Edt54;
  EtCmd[55] := Edt55;
  EtCmd[56] := Edt56;
  EtCmd[57] := Edt57;
  EtCmd[58] := Edt58;
  EtCmd[59] := Edt59;
  EtCmd[60] := Edt60;
  EtCmd[61] := Edt61;
  EtCmd[62] := Edt62;
  EtCmd[63] := Edt63;
  EtCmd[64] := Edt64;
  EtCmd[65] := Edt65;
  EtCmd[66] := Edt66;
  EtCmd[67] := Edt67;
  EtCmd[68] := Edt68;
  EtCmd[69] := Edt69;
  EtCmd[70] := Edt70;
  EtCmd[71] := Edt71;
  EtCmd[72] := Edt72;
  EtCmd[73] := Edt73;
  EtCmd[74] := Edt74;
  EtCmd[75] := Edt75;
  EtCmd[76] := Edt76;
  EtCmd[77] := Edt77;
  EtCmd[78] := Edt78;
  EtCmd[79] := Edt79;
  EtCmd[80] := Edt80;
  EtCmd[81] := Edt81;
  EtCmd[82] := Edt82;
  EtCmd[83] := Edt83;
  EtCmd[84] := Edt84;
  EtCmd[85] := Edt85;
  EtCmd[86] := Edt86;
  EtCmd[87] := Edt87;
  EtCmd[88] := Edt88;
  EtCmd[89] := Edt89;
  EtCmd[90] := Edt90;
  EtCmd[91] := Edt91;
  EtCmd[92] := Edt92;
  EtCmd[93] := Edt93;
  EtCmd[94] := Edt94;
  EtCmd[95] := Edt95;
  EtCmd[96] := Edt96;
  EtCmd[97] := Edt97;
  EtCmd[98] := Edt98;
  EtCmd[99] := Edt99;
  EtCmd[100] := Edt100;

  EtCmd[101] := Edt101;
  EtCmd[102] := Edt102;
  EtCmd[103] := Edt103;
  EtCmd[104] := Edt104;
  EtCmd[105] := Edt105;
  EtCmd[106] := Edt106;
  EtCmd[107] := Edt107;
  EtCmd[108] := Edt108;
  EtCmd[109] := Edt109;
  EtCmd[110] := Edt110;
  EtCmd[111] := Edt111;
  EtCmd[112] := Edt112;
  EtCmd[113] := Edt113;
  EtCmd[114] := Edt114;
  EtCmd[115] := Edt115;
  EtCmd[116] := Edt116;
  EtCmd[117] := Edt117;
  EtCmd[118] := Edt118;
  EtCmd[119] := Edt119;
  EtCmd[120] := Edt120;
  EtCmd[121] := Edt121;
  EtCmd[122] := Edt122;
  EtCmd[123] := Edt123;
  EtCmd[124] := Edt124;
  EtCmd[125] := Edt125;
  EtCmd[126] := Edt126;
  EtCmd[127] := Edt127;
  EtCmd[128] := Edt128;
  EtCmd[129] := Edt129;
  EtCmd[130] := Edt130;
  EtCmd[131] := Edt131;
  EtCmd[132] := Edt132;
  EtCmd[133] := Edt133;
  EtCmd[134] := Edt134;
  EtCmd[135] := Edt135;
  EtCmd[136] := Edt136;
  EtCmd[137] := Edt137;
  EtCmd[138] := Edt138;
  EtCmd[139] := Edt139;
  EtCmd[140] := Edt140;
  EtCmd[141] := Edt141;
  EtCmd[142] := Edt142;
  EtCmd[143] := Edt143;
  EtCmd[144] := Edt144;
  EtCmd[145] := Edt145;
  EtCmd[146] := Edt146;
  EtCmd[147] := Edt147;
  EtCmd[148] := Edt148;
  EtCmd[149] := Edt149;
  EtCmd[150] := Edt150;
  EtCmd[151] := Edt151;
  EtCmd[152] := Edt152;
  EtCmd[153] := Edt153;
  EtCmd[154] := Edt154;
  EtCmd[155] := Edt155;
  EtCmd[156] := Edt156;
  EtCmd[157] := Edt157;
  EtCmd[158] := Edt158;
  EtCmd[159] := Edt159;
  EtCmd[160] := Edt160;
  EtCmd[161] := Edt161;
  EtCmd[162] := Edt162;
  EtCmd[163] := Edt163;
  EtCmd[164] := Edt164;
  EtCmd[165] := Edt165;
  EtCmd[166] := Edt166;
  EtCmd[167] := Edt167;
  EtCmd[168] := Edt168;
  EtCmd[169] := Edt169;
  EtCmd[170] := Edt170;
  EtCmd[171] := Edt171;
  EtCmd[172] := Edt172;
  EtCmd[173] := Edt173;
  EtCmd[174] := Edt174;
  EtCmd[175] := Edt175;
  EtCmd[176] := Edt176;
  EtCmd[177] := Edt177;
  EtCmd[178] := Edt178;
  EtCmd[179] := Edt179;
  EtCmd[180] := Edt180;
  EtCmd[181] := Edt181;
  EtCmd[182] := Edt182;
  EtCmd[183] := Edt183;
  EtCmd[184] := Edt184;
  EtCmd[185] := Edt185;
  EtCmd[186] := Edt186;
  EtCmd[187] := Edt187;
  EtCmd[188] := Edt188;
  EtCmd[189] := Edt189;
  EtCmd[190] := Edt190;
  EtCmd[191] := Edt191;
  EtCmd[192] := Edt192;
  EtCmd[193] := Edt193;
  EtCmd[194] := Edt194;
  EtCmd[195] := Edt195;
  EtCmd[196] := Edt196;
  EtCmd[197] := Edt197;
  EtCmd[198] := Edt198;
  EtCmd[199] := Edt199;
  EtCmd[200] := Edt200;

  EtCmd[201] := Edt201;
  EtCmd[202] := Edt202;
  EtCmd[203] := Edt203;
  EtCmd[204] := Edt204;
  EtCmd[205] := Edt205;
  EtCmd[206] := Edt206;
  EtCmd[207] := Edt207;
  EtCmd[208] := Edt208;
  EtCmd[209] := Edt209;
  EtCmd[210] := Edt210;
  EtCmd[211] := Edt211;
  EtCmd[212] := Edt212;
  EtCmd[213] := Edt213;
  EtCmd[214] := Edt214;
  EtCmd[215] := Edt215;
  EtCmd[216] := Edt216;

  for i:= 1 to 216 do
    begin
      LeftEdt[i] := EtCmd[i].Left;
      LeftBt[i] := BtCmd[i].Left;
      EtCmd[i].Tag := i;
      EtCmd[i].MaxLength := 254;
      EtCmd[i].OnChange := EdtChange;
      BtCmd[i].Tag := i;
      BtCmd[i].OnClick := BtCmdClick;
      BtCmd[i].TabOrder := i;

      EtCmd[i].ShowHint := True;
      BtCmd[i].ShowHint := True;
      EtCmd[i].OnDblClick := EdtDblClick;
      EtCmd[i].TabOrder := i;
     //EtCmd[i].Visible := False;
    end;
  StartWPanel := pnl1.Width;

  StartWForm  := FormAddMacros.Width;
  StartWTbs   := tbc1.Width;

  StartWcbb1 := cbb1.Width;
  StartPosCmd   := rb1.Left;
  StartPosName := rb2.Left;
  StartPosCopy := Bt219.Left;
  StartPosPaste:= Bt220.Left;
  StartPosClear := Bt221.Left;
  StartPosPrew := Bt217.Left;
  StartPosNext := Bt218.Left;
  StartWTopPanel := grp1.Width;

  AssignFile(FileCfg, ExtractFilePath(Application.ExeName) +  NameFileCfg);
  if FileExists(ExtractFilePath(Application.ExeName) + NameFileCfg) and (Get_File_Size(ExtractFilePath(Application.ExeName) + NameFileCfg, True) > 0) then
    begin
      Reset(FileCfg);
      Read(FileCfg, CfgAddMacros);
      CloseFile(FileCfg);
    end
  else
    begin
      for iL := 1 to 200 do
        begin
          CfgAddMacros.ListMacros[iL].Name := 'List' + IntToStr(iL);
          cbb1.Items.Add(CfgAddMacros.ListMacros[iL].Name);
          for iM := 1 to 216 do
            begin
              CfgAddMacros.ListMacros[iL].Macros[iM].Name := '';
              CfgAddMacros.ListMacros[iL].Macros[iM].Cmd := '';
            end;
        end;
      CfgAddMacros.LastList := 1;
      Rewrite(FileCfg);
      ReSet(FileCfg);
      Write(FileCfg, CfgAddMacros);
      CloseFile(FileCfg);
    end;

  cbb1.Items.Clear;
  for i := 1 to 200 do
    cbb1.Items.Add(CfgAddMacros.ListMacros[i].Name);



  NumList := CfgAddMacros.LastList;

  Bt217.Enabled := NumList > 1;
  Bt218.Enabled := NumList < 100;


  CfgAddMacros.isVisName := true;
  ReadList(NumList);

  pnl1.Visible := False;
  pnl2.Visible := True;
  cbb1.Color := FormAddMacros.Color;
  CheckBox1.Checked := CfgAddMacros.isSynsOfMain;
  isInit := False;
end;


procedure TFormAddMacros.tbc1Change(Sender: TObject);
var
  i: Integer;
begin
  ReadList(NumList);
  if tbc1.TabIndex = 0 then
    begin
      pnl2.Visible := True;
      pnl1.Visible := False;
      Bt219.Visible := False;
      Bt220.Visible := False;
      Bt221.Visible := False;
      Edt217.Visible := False;

      cbb1.Clear;
      for i:=1 to 200 do
        cbb1.Items.Add(CfgAddMacros.ListMacros[i].Name);

      cbb1.ItemIndex := NumList - 1;
      cbb1.Visible := True;
      //for i:= 1 to 216 do
      //  begin
      //    BtCmd[i].Visible := True;
      //    EtCmd[i].Visible := False;
      //  end;
    end;
  if tbc1.TabIndex = 1 then
    begin
      pnl2.Visible := False;
      pnl1.Visible := True;
      Bt219.Visible := True;
      Bt220.Visible := True;
      Bt221.Visible := True;
      Edt217.Visible := True;
      cbb1.Visible := False;
      //for i:= 1 to 216 do
      //  begin
      //    BtCmd[i].Caption := 'False';
      //    EtCmd[i].Text := 'True';
      //  end;
    end;

end;

procedure TFormAddMacros.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
  var
    dX, dY, i, div8: Integer;

begin
  dX := NewWidth - StartWForm;
  pnl1.Width := StartWPanel + dX;
  pnl2.Width := StartWPanel + dX;
  tbc1.Width := StartWTbs + dX;

  cbb1.Width := StartWcbb1 + dX;
  rb1.Left   := StartPosCmd+ dX;
  rb2.Left   := StartPosName+ dX;
  Bt219.Left := StartPosCopy+ dX;
  Bt220.Left := StartPosPaste+ dX;
  Bt221.Left := StartPosClear+ dX;
  Bt217.Left := StartPosPrew+ dX;
  Bt218.Left := StartPosNext+ dX;
  grp1.Width := StartWTopPanel+ dX;
  Edt217.Width := cbb1.Width;
  div8 := dX div 8;
  for i := 1 to 216 do
    begin
      EtCmd[i].Width := 115 + div8;
      BtCmd[i].Width := 115 + div8;

      if i mod 8 = 1 then
        begin
          EtCmd[i].Left := LeftEdt[i] + div8 * 0;
          BtCmd[i].Left := LeftBt[i]  + div8 * 0;;
        end

      else if i mod 8 = 2 then
        begin
          EtCmd[i].Left := LeftEdt[i] + div8 * 1;
          BtCmd[i].Left := LeftBt[i]  + div8 * 1;
        end

      else if i mod 8 = 3 then
        begin
          EtCmd[i].Left := LeftEdt[i] + div8 * 2;
          BtCmd[i].Left := LeftBt[i]  + div8 * 2;
        end

      else if i mod 8 = 4 then
        begin
          EtCmd[i].Left := LeftEdt[i] + div8 * 3;
          BtCmd[i].Left := LeftBt[i]  + div8 * 3;
        end

      else if i mod 8 = 5 then
        begin
          EtCmd[i].Left := LeftEdt[i] + div8 * 4;
          BtCmd[i].Left := LeftBt[i]  + div8 * 4;
        end

      else if i mod 8 = 6 then
        begin
          EtCmd[i].Left := LeftEdt[i] + div8 * 5;
          BtCmd[i].Left := LeftBt[i]  + div8 * 5;
        end

      else if i mod 8 = 7 then
        begin
          EtCmd[i].Left := LeftEdt[i] + div8 * 6;
          BtCmd[i].Left := LeftBt[i]  + div8 * 6;
        end

      else if i mod 8 = 0 then
        begin
          EtCmd[i].Left := LeftEdt[i] + div8 * 7;
          BtCmd[i].Left := LeftBt[i]  + div8 * 7;
        end;
     end;

end;



procedure TFormAddMacros.EdtChange(Sender: TObject);
begin
  isSaveCfg := True;

  if CfgAddMacros.isVisName then
    CfgAddMacros.ListMacros[NumList].Macros[(Sender as TEdit).Tag].Name := (Sender as TEdit).Text
  else
    CfgAddMacros.ListMacros[NumList].Macros[(Sender as TEdit).Tag].Cmd := (Sender as TEdit).Text;
end;

procedure TFormAddMacros.rb1Click(Sender: TObject);
begin
  CfgAddMacros.isVisName := False;
  ReadList(NumList);
end;

procedure TFormAddMacros.rb2Click(Sender: TObject);
begin
  CfgAddMacros.isVisName := True;
  ReadList(NumList);
end;

procedure TFormAddMacros.Bt217Click(Sender: TObject);
begin
  if NumList > 1 then
    Dec(NumList);
  Bt217.Enabled := NumList > 1;
  Bt218.Enabled := NumList < 200;


  ReadList(NumList);
end;

procedure TFormAddMacros.Bt218Click(Sender: TObject);
begin
  if NumList < 200 then
    Inc(NumList);
  Bt217.Enabled := NumList > 1;
  Bt218.Enabled := NumList < 200;

  ReadList(NumList);
end;

procedure TFormAddMacros.BtCmdClick(Sender: TObject);
begin
  Form1.ButtonCmdAddMacrosClick(CfgAddMacros.ListMacros[NumList].Macros[(Sender as TButton).Tag].Cmd);
end;

procedure TFormAddMacros.cbb1Click(Sender: TObject);
begin
  NumList := cbb1.ItemIndex + 1;
  ReadList(NumList);
  Bt217.Enabled := NumList > 1;
  Bt218.Enabled := NumList < 200;
end;

procedure TFormAddMacros.Edt217Change(Sender: TObject);
begin
  isSaveCfg := True;
  CfgAddMacros.ListMacros[NumList].Name := (Sender as TEdit).Text;
end;

procedure TFormAddMacros.CheckBox1Click(Sender: TObject);
begin
  isSaveCfg := True;
  CfgAddMacros.isSynsOfMain := (Sender as TCheckBox).Checked;
end;

procedure TFormAddMacros.Bt219Click(Sender: TObject);
begin
  ListMacrosCopy := CfgAddMacros.ListMacros[NumList];
  Bt220.Enabled := True;
  Bt220.Hint := 'Insert list ' + ListMacrosCopy.Name;
end;

procedure TFormAddMacros.Bt220Click(Sender: TObject);
begin
  CfgAddMacros.ListMacros[NumList] := ListMacrosCopy;
  ReadList(NumList);
end;

procedure TFormAddMacros.Bt221Click(Sender: TObject);
  var
    i : Integer;
begin
  for i := 1 to 216 do
    begin
      CfgAddMacros.ListMacros[NumList].Macros[i].Name := '';
      CfgAddMacros.ListMacros[NumList].Macros[i].Cmd  := '';
    end;
  CfgAddMacros.ListMacros[NumList].Name := '[Cleared]';
  ReadList(NumList);
end;

procedure TFormAddMacros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TerminalST.Form1.BtAddMacros.Font.Style := [];
end;

procedure TFormAddMacros.SaveCfgInFile;
begin
  if isSaveCfg then
    begin
      CfgAddMacros.LastList := NumList;
      AssignFile(FileCfg, ExtractFilePath(Application.ExeName) +  NameFileCfg);
      Rewrite(FileCfg);
      ReSet(FileCfg);
      Write(FileCfg, CfgAddMacros);
      CloseFile(FileCfg);
    end;
end;

procedure TFormAddMacros.EdtDblClick(Sender: TObject);
begin
  (Sender as TEdit).Color := clLime;
  FormMacroEditing.Name := CfgAddMacros.ListMacros[NumList].Macros[(Sender as TEdit).Tag].Name;
  FormMacroEditing.Cmd := CfgAddMacros.ListMacros[NumList].Macros[(Sender as TEdit).Tag].Cmd;

  FormMacroEditing.ShowModal;

  (Sender as TEdit).Color := clWindow;
  if FormMacroEditing.isSave then
    begin
      CfgAddMacros.ListMacros[NumList].Macros[(Sender as TEdit).Tag].Name := FormMacroEditing.Name;
      CfgAddMacros.ListMacros[NumList].Macros[(Sender as TEdit).Tag].Cmd := FormMacroEditing.Cmd;
      ReadList(NumList);
    end;
end;

end.
