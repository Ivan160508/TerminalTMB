unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TerminalST, StdCtrls, ComCtrls, Common, ExtCtrls, Unit43;

type
  TSett = record
    SubStrMainPort : array[0..15] of string[255];
    SubStrAPorts   : array[0..15] of string[255];
    SubStrBPorts   : array[0..15] of string[255];

    isSendLogMain  : array[0..15] of Boolean;
    isSendLogA     : array[0..15] of Boolean;
    isSendLogB     : array[0..15] of Boolean;

    isRes1         : array[0..15] of Boolean;
    isRes2         : array[0..15] of Boolean;
    isRes3         : array[0..15] of Boolean;


    Res1           : array[0..15] of string[255];
    Res2           : array[0..15] of string[255];
    Res3           : array[0..15] of string[255];
    Name           : string[255];
    Res4           : string[255];
    CRes1          : Cardinal;
    CRes2          : Cardinal;
    CRes3          : Cardinal;
    CRes4          : Cardinal;
    CRes5          : Cardinal;
    CRes6          : Cardinal;
    isShowFilterInLog          : boolean;
    BRes2          : boolean;
    BRes3          : boolean;
    BRes4          : boolean;
    isUseTx        : boolean;
    isUseRx        : boolean;
    CntMain        : array[0..15] of Cardinal;
    CntA           : array[0..1,  0..15] of Cardinal;
    CntB           : array[0..15, 0..15] of Cardinal;
  end;

type
  TFormPacketsCNT = class(TForm)
    tbc1: TTabControl;     grp1: TGroupBox;      ctxt49: TStaticText;   ctxt50: TStaticText; ctxt51: TStaticText;   ctxt52: TStaticText;  ctxt53: TStaticText;   ctxt54: TStaticText;
    ctxt55: TStaticText;   ctxt56: TStaticText;  ctxt57: TStaticText;   ctxt58: TStaticText;     ctxt59: TStaticText;   ctxt60: TStaticText;  ctxt61: TStaticText;   ctxt62: TStaticText;
    ctxt63: TStaticText;   ctxt64: TStaticText;  ctxt65: TStaticText;   ctxt66: TStaticText;     ctxt67: TStaticText;   ctxt68: TStaticText;  ctxt69: TStaticText;   ctxt70: TStaticText;
    ctxt71: TStaticText;   ctxt72: TStaticText;  ctxt73: TStaticText;   ctxt74: TStaticText;     ctxt75: TStaticText;   ctxt76: TStaticText;  ctxt77: TStaticText;   ctxt78: TStaticText;
    ctxt79: TStaticText;   ctxt80: TStaticText;  ctxt81: TStaticText;   ctxt82: TStaticText;     ctxt83: TStaticText;   ctxt84: TStaticText;  ctxt85: TStaticText;   ctxt86: TStaticText;
    ctxt87: TStaticText;   ctxt88: TStaticText;  ctxt89: TStaticText;   ctxt90: TStaticText;     ctxt91: TStaticText;   ctxt92: TStaticText;  ctxt93: TStaticText;   ctxt94: TStaticText;
    ctxt95: TStaticText;   ctxt96: TStaticText;  ctxt97: TStaticText;   ctxt98: TStaticText;     ctxt99: TStaticText;   ctxt100: TStaticText; ctxt101: TStaticText;  ctxt102: TStaticText;
    ctxt103: TStaticText;  ctxt104: TStaticText; ctxt105: TStaticText;  ctxt106: TStaticText;    ctxt107: TStaticText;  ctxt108: TStaticText; ctxt109: TStaticText;  ctxt110: TStaticText;
    ctxt111: TStaticText;  ctxt112: TStaticText; ctxt113: TStaticText;  ctxt114: TStaticText;    ctxt115: TStaticText;  ctxt116: TStaticText; ctxt117: TStaticText;  ctxt118: TStaticText;
    ctxt119: TStaticText;  ctxt120: TStaticText; ctxt121: TStaticText;  ctxt122: TStaticText;    ctxt123: TStaticText;  ctxt124: TStaticText; ctxt125: TStaticText;  ctxt126: TStaticText;
    ctxt127: TStaticText;  ctxt128: TStaticText; ctxt129: TStaticText;  ctxt130: TStaticText;    ctxt131: TStaticText;  ctxt132: TStaticText; ctxt133: TStaticText;  ctxt134: TStaticText;
    ctxt135: TStaticText;  ctxt136: TStaticText; ctxt137: TStaticText;  ctxt138: TStaticText;    ctxt139: TStaticText;  ctxt140: TStaticText; ctxt141: TStaticText;  ctxt142: TStaticText;
    ctxt143: TStaticText;  ctxt144: TStaticText; ctxt145: TStaticText;  ctxt146: TStaticText;    ctxt147: TStaticText;  ctxt148: TStaticText; ctxt149: TStaticText;  ctxt150: TStaticText;
    ctxt151: TStaticText;  ctxt152: TStaticText; ctxt153: TStaticText;  ctxt154: TStaticText;    ctxt155: TStaticText;  ctxt156: TStaticText; ctxt157: TStaticText;  ctxt158: TStaticText;
    ctxt159: TStaticText;  ctxt160: TStaticText; ctxt161: TStaticText;  ctxt162: TStaticText;    ctxt163: TStaticText;  ctxt164: TStaticText; ctxt165: TStaticText;  ctxt166: TStaticText;
    ctxt167: TStaticText;  ctxt168: TStaticText; ctxt169: TStaticText;  ctxt170: TStaticText;    ctxt171: TStaticText;  ctxt172: TStaticText; ctxt173: TStaticText;  ctxt174: TStaticText;
    ctxt175: TStaticText;  ctxt176: TStaticText; ctxt177: TStaticText;  ctxt178: TStaticText;    ctxt179: TStaticText;  ctxt180: TStaticText; ctxt181: TStaticText;  ctxt182: TStaticText;
    ctxt183: TStaticText;  ctxt184: TStaticText; ctxt185: TStaticText;  ctxt186: TStaticText;    ctxt187: TStaticText;  ctxt188: TStaticText; ctxt189: TStaticText;  ctxt190: TStaticText;
    ctxt191: TStaticText;  ctxt192: TStaticText; ctxt193: TStaticText;  ctxt194: TStaticText;    ctxt195: TStaticText;  ctxt196: TStaticText; ctxt197: TStaticText;  ctxt198: TStaticText;
    ctxt199: TStaticText;  ctxt200: TStaticText; ctxt201: TStaticText;  ctxt202: TStaticText;    ctxt203: TStaticText;  ctxt204: TStaticText; ctxt205: TStaticText;  ctxt206: TStaticText;
    ctxt207: TStaticText;  ctxt208: TStaticText; ctxt209: TStaticText;  ctxt210: TStaticText;    ctxt211: TStaticText;  ctxt212: TStaticText; ctxt213: TStaticText;  ctxt214: TStaticText;
    ctxt215: TStaticText;  ctxt216: TStaticText; ctxt217: TStaticText;  ctxt218: TStaticText;    ctxt219: TStaticText;  ctxt220: TStaticText; ctxt221: TStaticText;  ctxt222: TStaticText;
    ctxt223: TStaticText;  ctxt224: TStaticText; ctxt225: TStaticText;  ctxt226: TStaticText;    ctxt227: TStaticText;  ctxt228: TStaticText; ctxt229: TStaticText;  ctxt230: TStaticText;
    ctxt231: TStaticText;  ctxt232: TStaticText; ctxt233: TStaticText;  ctxt234: TStaticText;    ctxt235: TStaticText;  ctxt236: TStaticText; ctxt237: TStaticText;  ctxt238: TStaticText;
    ctxt239: TStaticText;  ctxt240: TStaticText; ctxt241: TStaticText;  ctxt242: TStaticText;    ctxt243: TStaticText;  ctxt244: TStaticText; ctxt245: TStaticText;  ctxt246: TStaticText;
    ctxt247: TStaticText;  ctxt248: TStaticText; ctxt249: TStaticText;  ctxt250: TStaticText;    ctxt251: TStaticText;  ctxt252: TStaticText; ctxt253: TStaticText;  ctxt254: TStaticText;
    ctxt255: TStaticText;  ctxt256: TStaticText; ctxt257: TStaticText;  ctxt258: TStaticText;    ctxt259: TStaticText;  ctxt260: TStaticText; ctxt261: TStaticText;  ctxt262: TStaticText;
    ctxt263: TStaticText;  ctxt264: TStaticText; ctxt265: TStaticText;  ctxt266: TStaticText;    ctxt267: TStaticText;  ctxt268: TStaticText; ctxt269: TStaticText;  ctxt270: TStaticText;
    ctxt271: TStaticText;  ctxt272: TStaticText; ctxt273: TStaticText;  ctxt274: TStaticText;    ctxt275: TStaticText;  ctxt276: TStaticText; ctxt277: TStaticText;  ctxt278: TStaticText;
    ctxt279: TStaticText;  ctxt280: TStaticText; ctxt281: TStaticText;  ctxt282: TStaticText;    ctxt283: TStaticText;  ctxt284: TStaticText; ctxt285: TStaticText;  ctxt286: TStaticText;
    ctxt287: TStaticText;  ctxt288: TStaticText; ctxt289: TStaticText;  ctxt290: TStaticText;    ctxt291: TStaticText;  ctxt292: TStaticText; ctxt293: TStaticText;  ctxt294: TStaticText;
    ctxt295: TStaticText;  ctxt296: TStaticText; ctxt297: TStaticText;  ctxt298: TStaticText;    ctxt299: TStaticText;  ctxt300: TStaticText; ctxt301: TStaticText;  ctxt302: TStaticText;
    ctxt303: TStaticText;  ctxt304: TStaticText; edt16: TEdit;          edt15: TEdit;            edt14: TEdit;          edt13: TEdit;         edt12: TEdit;          edt11: TEdit;
    edt10: TEdit;          edt9: TEdit;          edt8: TEdit;           edt7: TEdit;             edt6: TEdit;           edt5: TEdit;          edt4: TEdit;           edt3: TEdit;
    edt2: TEdit;           edt1: TEdit;          ctxt1: TStaticText;    ctxt2: TStaticText;      ctxt3: TStaticText;    ctxt4: TStaticText;   ctxt5: TStaticText;    ctxt6: TStaticText;
    ctxt7: TStaticText;    ctxt8: TStaticText;   ctxt9: TStaticText;    ctxt10: TStaticText;     ctxt11: TStaticText;   ctxt12: TStaticText;  ctxt13: TStaticText;   ctxt14: TStaticText;
    ctxt15: TStaticText;   ctxt16: TStaticText;  btn1: TButton;         btn2: TButton;           btn3: TButton;         btn4: TButton;        btn5: TButton;         btn6: TButton;
    btn7: TButton;         btn8: TButton;        btn9: TButton;         btn10: TButton;          btn11: TButton;        btn12: TButton;       btn13: TButton;        btn14: TButton;
    btn15: TButton;        btn16: TButton;       btn17: TButton;          ctxtIncomingSubstr: TStaticText;
    tmrColorClr: TTimer;
    dlgOpenLog: TOpenDialog;
    CheckBox1: TCheckBox;  CheckBox2: TCheckBox;   CheckBox3: TCheckBox;  CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;  CheckBox6: TCheckBox;   CheckBox7: TCheckBox;  CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;  CheckBox10: TCheckBox;  CheckBox11: TCheckBox; CheckBox12: TCheckBox;
    CheckBox13: TCheckBox; CheckBox14: TCheckBox;  CheckBox15: TCheckBox; CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    pnl1: TPanel;
    Bt1: TButton;
    Bt2: TButton;
    Bt3: TButton;
    Bt4: TButton;
    chk1: TCheckBox;
    btn18: TButton;
    chk2: TCheckBox;
    chk3: TCheckBox;
    lbl1: TLabel;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tbc1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SubStrChange(Sender: TObject);
    procedure tmrColorClrTimer(Sender: TObject);
    procedure btn18Click(Sender: TObject);
    procedure btn17Click(Sender: TObject);
    procedure BtResetCnt(Sender: TObject);
    procedure SubStrKeyPress(Sender: TObject; var Key: Char);
    procedure Bt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure CBIsOutClick(Sender: TObject);
    procedure Bt4Click(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure CheckBox17Click(Sender: TObject);
    procedure CountDblClick(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
  private
    { Private declarations }
  public
    isOutLog : Boolean;
    Procedure CheckSubString(Src : TTypeSrcData; bstr : string; str : string; Dir : TTypeDir);
    { Public declarations }
  end;

const
  CNT_SETT = 20;
  CFG_FILE_NAME = 'FiltrSubstrConfig';

var
  SettFile : file of TSett;
  isShowFilterInLog : Boolean;
  isUseRx : Boolean;
  isUseTx : Boolean;

  LogFile : TextFile;
  isLogFile : Boolean;
  text   : string;
  FormLog : TFormLogPort;
  FormPacketsCNT: TFormPacketsCNT;
  Sett : array[1..CNT_SETT] of TSett;

  GUI_Count : array[0..255] of TStaticText;
  GUI_Str   : array[0..15]  of TEdit;
  BtReset   : array[0..15]  of TButton;
  GUI_Name  : array[0..15]  of TStaticText;
  GUI_Color : array[0..255] of boolean;
  GUI_IsSendLog : array[0..15]  of TCheckBox;


  SubStrMainPort : array[0..15] of string[255];
  SubStrAPorts   : array[0..15] of string[255];
  SubStrBPorts   : array[0..15] of string[255];

  isSendLogMain  : array[0..15] of Boolean;
  isSendLogA     : array[0..15] of Boolean;
  isSendLogB     : array[0..15] of Boolean;


  SubStrBuf : array[0..15] of string[255];


  CntMain : array[0..15] of Cardinal;
  CntA    : array[0..1,  0..15] of Cardinal;
  CntB    : array[0..15, 0..15] of Cardinal;
  GUIMode : Integer;
  implementation

{$R *.dfm}

procedure SaveCfg;
var
  i, j, k : Integer;
  isSave : Boolean;
begin
  isSave := False;

  for i := 0 to 15 do
    begin
      isSave := isSave or (SubStrMainPort[i] <> Sett[1].SubStrMainPort[i]);
      isSave := isSave or (SubStrAPorts[i]   <> Sett[1].SubStrAPorts[i]);
      isSave := isSave or (SubStrBPorts[i]   <> Sett[1].SubStrBPorts[i]);
      isSave := isSave or (isSendLogMain[i]  <> Sett[1].isSendLogMain[i]);
      isSave := isSave or (isSendLogA[i]     <> Sett[1].isSendLogA[i]);
      isSave := isSave or (isSendLogB[i]     <> Sett[1].isSendLogB[i]);
    end;

  isSave := isSave or (isUseRx <> Sett[1].isUseRx);
  isSave := isSave or (isUseTx <> Sett[1].isUseTx);


  if not isSave then Exit;

  AssignFile(SettFile, ExtractFilePath(Application.ExeName) + CFG_FILE_NAME);

  {$IOChecks off}
  if FileExists(ExtractFilePath(Application.ExeName) + CFG_FILE_NAME) and (Get_File_Size(ExtractFilePath(Application.ExeName) + CFG_FILE_NAME, True) > 0) then
    begin
      Reset(SettFile);
      for i := 0 to 15 do
        begin
          Sett[1].SubStrMainPort[i] := SubStrMainPort[i];
          Sett[1].SubStrAPorts[i]   := SubStrAPorts[i];
          Sett[1].SubStrBPorts[i]   := SubStrBPorts[i];
          Sett[1].isSendLogMain[i]  := isSendLogMain[i];
          Sett[1].isSendLogA[i]     := isSendLogA[i];
          Sett[1].isSendLogB[i]     := isSendLogB[i];
        end;
      Sett[1].isShowFilterInLog := isShowFilterInLog;
      Sett[1].isUseTx := isUseTx;
      Sett[1].isUseRx := isUseRx;

      for j := 1 to CNT_SETT do
        Write(SettFile, Sett[j]);
      CloseFile(SettFile);
    end
  else
    begin
      Rewrite(SettFile);
      for j := 1 to CNT_SETT do
        begin
          for i := 0 to 15 do
            begin
              Sett[j].isSendLogMain[i] := True;
              Sett[j].isSendLogA[i]    := True;
              Sett[j].isSendLogB[i]    := True;

              Sett[j].isRes1[i] := False;
              Sett[j].isRes2[i] := False;
              Sett[j].isRes3[i] := False;

              Sett[j].SubStrMainPort[i] := '';
              Sett[j].SubStrAPorts[i] := '';
              Sett[j].SubStrBPorts[i] := '';
              Sett[j].Res1[i] := '';
              Sett[j].Res2[i] := '';
              Sett[j].Res3[i] := '';
              CntMain[j] := 0;

              for k := 0 to 1 do
                Sett[j].CntA[k, i] := 0;
              for k := 0 to 15 do
                Sett[j].CntB[k, i] := 0;
            end;
          Sett[j].Name := 'Name ' + IntToStr(j);
          Sett[j].Res4 := '';
          Sett[j].CRes1 := 0;//          : Cardinal;
          Sett[j].CRes2 := 0;//         : Cardinal;
          Sett[j].CRes3 := 0;//         : Cardinal;
          Sett[j].CRes4 := 0;//         : Cardinal;
          Sett[j].CRes5 := 0;//         : Cardinal;
          Sett[j].CRes6 := 0;//         : Cardinal;
          Sett[j].isShowFilterInLog := false;//         : boolean;
          Sett[j].BRes2 := false;//         : boolean;
          Sett[j].BRes3 := false;//         : boolean;
          Sett[j].BRes4 := false;//         : boolean;
          Sett[j].isUseTX := false;//         : boolean;
          Sett[j].isUseRX := true;//         : boolean;
          Write(SettFile, Sett[j]);
        end;
        CloseFile(SettFile);
    end;
  if isLogFile then
    CloseFile(LogFile);
  {$IOChecks on}
end;



procedure TFormPacketsCNT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TerminalST.Form1.btnPacketStats.Font.Style := [];
  GUIMode := -1;
  tmrColorClr.Enabled := False;
  SaveCfg;
  FormPacketsCNT.isOutLog := False;
  FormLog.Close;
end;


procedure OutCntMain;
var
  i : Integer;
begin
  for i := 0 to 15 do
    begin
      GUI_Count[i].Caption := IntToStr(CntMain[i]);
    end;
end;

procedure OutCntA;
var
  i : Integer;
begin
  for i := 0 to 15 do
    GUI_Count[i].Caption := IntToStr(CntA[0, i]);

  for i := 16 to 31 do
    GUI_Count[i].Caption := IntToStr(CntA[1, i - 16]);

end;

procedure OutCntB;
var
  i : Integer;
begin
  for i := 0 to 15 do
    GUI_Count[i].Caption := IntToStr(CntB[0 , i]);

  for i := 16 to 31 do
    GUI_Count[i].Caption := IntToStr(CntB[1 , i - 16]);

  for i := 32 to 47 do
    GUI_Count[i].Caption := IntToStr(CntB[2 , i - 32]);

  for i := 48 to 63 do
    GUI_Count[i].Caption := IntToStr(CntB[3 , i - 48]);

  for i := 64 to 79 do
    GUI_Count[i].Caption := IntToStr(CntB[4 , i - 64]);

  for i := 80 to 95 do
    GUI_Count[i].Caption := IntToStr(CntB[5 , i - 80]);

  for i := 96 to 111 do
    GUI_Count[i].Caption := IntToStr(CntB[6 , i - 96]);

  for i := 112 to 127 do
    GUI_Count[i].Caption := IntToStr(CntB[7 , i - 112]);

  for i := 128 to 143 do
    GUI_Count[i].Caption := IntToStr(CntB[8 , i - 128]);

  for i := 144 to 159 do
    GUI_Count[i].Caption := IntToStr(CntB[9 , i - 144]);

  for i := 160 to 175 do
    GUI_Count[i].Caption := IntToStr(CntB[10 , i - 160]);

  for i := 176 to 191 do
    GUI_Count[i].Caption := IntToStr(CntB[11 , i - 176]);

  for i := 192 to 207 do
    GUI_Count[i].Caption := IntToStr(CntB[12 , i - 192]);

  for i := 208 to 223 do
    GUI_Count[i].Caption := IntToStr(CntB[13 , i - 208]);

  for i := 224 to 239 do
    GUI_Count[i].Caption := IntToStr(CntB[14 , i - 224]);

  for i := 240 to 255 do
    GUI_Count[i].Caption := IntToStr(CntB[15 , i - 240]);
end;





procedure CheckStrMain(bstr : string; str:string);
var
  i : Integer;
  numFilter : string;
begin
  i := 0;
  for i := 0 to 15 do
    begin
      if SubStrMainPort[i] <> '' then
        begin
          if Pos(SubStrMainPort[i], str) > 0 then
            begin
              Inc(CntMain[i]);
              case GUIMode of
                0: begin
                     GUI_Count[i].Caption := IntToStr(CntMain[i]);
                     GUI_Count[i].Color := clYellow;
                     GUI_Color[i] := True;
                   end;

                1: begin
                   end;

                2: begin
                   end;
              end;

              if isSendLogMain[i] then
                begin
                  if isShowFilterInLog  then
                    numFilter := '[F' + Format('%02d', [i + 1])+ ' MAIN]:'
                  else
                    numFilter := '';

                  if FormPacketsCNT.isOutLog then
                    FormLog.SendLineLog(numFilter + bstr + str);
                  {$IOChecks off}
                  if isLogFile then
                    Writeln(LogFile, numFilter + bstr + str);
                  {$IOChecks on}
                end;

            end;
        end;
    end;
end;

procedure CheckStrA(bstr : string; str:string; Src : TTypeSrcData);
var
  i : Integer;
  s : Integer;
  numFilter : string;
begin
  i := 0;
  s := Integer(Src) - 1;
  for i := 0 to 15 do
    begin
      if SubStrAPorts[i] <> '' then
        begin
          if Pos(SubStrAPorts[i], str) > 0 then
            begin
              Inc(CntA[s, i]);
              case GUIMode of
                0: begin
                   end;

                1: begin
                     GUI_Count[s * 16 + i].Caption := IntToStr(CntA[s, i]);
                     GUI_Count[s * 16 + i].Color := clYellow;
                     GUI_Color[s * 16 + i] := True;
                   end;

                2: begin
                   end;
              end;

              if isSendLogA[i] then
                begin
                  if isShowFilterInLog  then
                    numFilter := '[F' + Format('%02d', [i + 1])+ ' PA ' + IntToStr(s+1)+']:'
                  else
                    numFilter := '';

                  if FormPacketsCNT.isOutLog then
                    FormLog.SendLineLog(numFilter + bstr + str);
                  {$IOChecks off}
                  if isLogFile then
                    Writeln(LogFile, numFilter + bstr + str);
                  {$IOChecks on}
                end;

            end;
        end;
    end;
end;

procedure CheckStrB(bstr : string; str:string; Src : TTypeSrcData);
var
  i : Integer;
  s : Integer;
  numFilter : string;
begin
  i := 0;
  s := Integer(Src) - 3;
  for i := 0 to 15 do
    begin
      if SubStrBPorts[i] <> '' then
        begin
          if Pos(SubStrBPorts[i], str) > 0 then
            begin
              Inc(CntB[s, i]);
              case GUIMode of
                0: begin
                   end;

                1: begin
                   end;

                2: begin
                     GUI_Count[s * 16 + i].Caption := IntToStr(CntB[s, i]);
                     GUI_Count[s * 16 + i].Color := clYellow;
                     GUI_Color[s * 16 + i] := True;

                   end;
              end;

              if isSendLogB[i] then
                begin
                  if isShowFilterInLog  then
                    numFilter := '[F' + Format('%02d', [i + 1])+ ' PB' + Format('%02d', [s + 1])+']:'
                  else
                    numFilter := '';

                  if FormPacketsCNT.isOutLog then
                    FormLog.SendLineLog(numFilter + bstr + str);
                  {$IOChecks off}
                  if isLogFile then
                    Writeln(LogFile, numFilter + bstr + str);
                  {$IOChecks on}
                end;

            end;
        end;
    end;
end;




Procedure TFormPacketsCNT.CheckSubString(Src : TTypeSrcData; bstr : string; str : string; Dir : TTypeDir);
var
  i : Integer;
begin
  if (isUseRx and (Dir = DirRx)) or (isUseTx and (Dir = DirTx)) then
    begin
      case Src of
        SrcPortMain :
          begin
            CheckStrMain(bstr, str);
          end;
        SrcPort1..SrcPort2 :
          begin
            CheckStrA(bstr, str, Src);
          end;
        Src2Port1..Src2Port16 :
          begin
            CheckStrB(bstr, str, Src);
          end;
      end;
    end;
end;


procedure SetPortMain;
var
  i : Integer;
begin
  GUIMode := 0;
  for i:= 0 to 255 do
    begin
      //GUI_Count[i].Caption := IntToStr(i);
      if i < 16 then
        begin
          GUI_Count[i].Enabled := True;
          GUI_Count[i].Visible := True;
          GUI_Count[i].Left := 805;
          GUI_Count[i].Width := 124;
          //GUI_Count[i].Caption := IntToStr(CntMain[i]);
        end
      else
        begin
          GUI_Count[i].Enabled := False;
          GUI_Count[i].Visible := False;
        end;
    end;
  for i := 0 to 15 do
    GUI_Str[i].Width := 800;

  for i := 0 to 15 do
    begin
      BtReset[i].Visible := False;
      BtReset[i].Enabled := False;
      GUI_Name[i].Visible := False;
      GUI_Name[i].Enabled := False;
    end;


  BtReset[0].Visible := True;
  BtReset[0].Enabled := True;
  BtReset[0].Left := 805;
  BtReset[0].Width := 124;

  GUI_Name[0].Visible := True;
  GUI_Name[0].Enabled := True;
  GUI_Name[0].Left := 805;
  GUI_Name[0].Width := 124;
  GUI_Name[0].Caption := 'Port MAIN';
  FormPacketsCNT.btn17.Width := 800;
  FormPacketsCNT.ctxtIncomingSubstr.Width := 800;

  for i:= 0 to 15 do
    begin
      GUI_Str[i].Text := SubStrMainPort[i];
      GUI_IsSendLog[i].Checked := isSendLogMain[i];
      if isSendLogMain[i] then
        GUI_Str[i].Color := clWindow
      else
        GUI_Str[i].Color := FormPacketsCNT.Color;
      GUI_IsSendLog[i].Hint := '';
      if SubStrMainPort[i] <> '' then
        GUI_IsSendLog[i].Hint := '[F' + Format('%02d', [i + 1])+ ']:' + SubStrMainPort[i];
      GUI_Str[i].Hint := GUI_IsSendLog[i].Hint;
    end;

end;


procedure SetPortA1A2;
var
  i : Integer;
begin
  GUIMode := 1;
  for i:= 0 to 255 do
    begin
      //GUI_Count[i].Caption := IntToStr(i);
      begin
        GUI_Count[i].Enabled := False;
        GUI_Count[i].Visible := False;
      end;
    end;


  for i := 0 to 15 do
    begin
      GUI_Count[i].Enabled := True;
      GUI_Count[i].Visible := True;
      GUI_Count[i].Left    := 680;
      GUI_Count[i].Width   := 124;
      //GUI_Count[i].Caption := IntToStr(CntA[0, i]);
    end;

  for i := 16 to 31 do
    begin
      GUI_Count[i].Enabled := True;
      GUI_Count[i].Visible := True;
      GUI_Count[i].Left    := 805;
      GUI_Count[i].Width   := 124;
      //GUI_Count[i].Caption := IntToStr(CntA[1, i - 16]);
    end;

  for i := 0 to 15 do
    GUI_Str[i].Width := 675;

  for i := 0 to 15 do
    begin
      BtReset[i].Visible := False;
      BtReset[i].Enabled := False;
      GUI_Name[i].Visible := False;
      GUI_Name[i].Enabled := False;
    end;

  BtReset[0].Visible := True;
  BtReset[0].Enabled := True;
  BtReset[0].Left := 680;
  BtReset[0].Width := 125;

  BtReset[1].Visible := True;
  BtReset[1].Enabled := True;
  BtReset[1].Left := 805;
  BtReset[1].Width := 125;

  GUI_Name[0].Visible := True;
  GUI_Name[0].Enabled := True;
  GUI_Name[0].Left := 680;
  GUI_Name[0].Width := 124;
  GUI_Name[0].Caption := 'PortA 1';

  GUI_Name[1].Visible := True;
  GUI_Name[1].Enabled := True;
  GUI_Name[1].Left := 805;
  GUI_Name[1].Width := 124;
  GUI_Name[1].Caption := 'PortA 2';

  FormPacketsCNT.btn17.Width := 675;
  FormPacketsCNT.ctxtIncomingSubstr.Width := 675;

  for i:= 0 to 15 do
    begin
      GUI_Str[i].Text := SubStrAPorts[i];
      GUI_IsSendLog[i].Checked := isSendLogA[i];
      if isSendLogA[i] then
        GUI_Str[i].Color := clWindow
      else
        GUI_Str[i].Color := FormPacketsCNT.Color;
      GUI_IsSendLog[i].Hint := '';
      if SubStrAPorts[i] <> '' then
        GUI_IsSendLog[i].Hint := '[F' + Format('%02d', [i + 1])+ ']:' + SubStrAPorts[i];
      GUI_Str[i].Hint := GUI_IsSendLog[i].Hint;
    end;

end;

procedure SetPortB1B16;
var
  i : Integer;
begin
  GUIMode := 2;
  for i:= 0 to 255 do
    begin
      //GUI_Count[i].Caption := IntToStr(i);
      begin
        GUI_Count[i].Enabled := true;
        GUI_Count[i].Visible := true;
        GUI_Count[i].Width   := 47;
      end;
    end;


  for i := 0 to 15 do
    begin
      GUI_Count[i].Left    := 160;
      //GUI_Count[i].Caption := IntToStr(CntB[0, i]);
    end;

  BtReset[0].Left := 160;
  GUI_Name[0].Left := 160;


  for i := 16 to 31 do
    begin
      GUI_Count[i].Left    := 208;
      //GUI_Count[i].Caption := IntToStr(CntB[1, i-16]);
    end;
  BtReset[1].Left := 208;
  GUI_Name[1].Left := 208;



  for i := 32 to 47 do
    begin
      GUI_Count[i].Left    := 256;
      //GUI_Count[i].Caption := IntToStr(CntB[2, i-32]);
    end;
  BtReset[2].Left := 256;
  GUI_Name[2].Left := 256;


  for i := 48 to 63 do
    begin
      GUI_Count[i].Left    := 304;
      //GUI_Count[i].Caption := IntToStr(CntB[3, i-48]);
    end;
  BtReset[3].Left := 304;
  GUI_Name[3].Left := 304;


  for i := 64 to 79 do
    begin
      GUI_Count[i].Left    := 352;
      //GUI_Count[i].Caption := IntToStr(CntB[4, i-64]);
    end;
  BtReset[4].Left := 352;
  GUI_Name[4].Left := 352;


  for i := 80 to 95 do
    begin
      GUI_Count[i].Left    := 400;
      //GUI_Count[i].Caption := IntToStr(CntB[5, i-80]);
    end;
  BtReset[5].Left := 400;
  GUI_Name[5].Left := 400;


  for i := 96 to 111 do
    begin
      GUI_Count[i].Left    := 448;
      //GUI_Count[i].Caption := IntToStr(CntB[6, i-96]);
    end;
  BtReset[6].Left := 448;
  GUI_Name[6].Left := 448;


  for i := 112 to 127 do
    begin
      GUI_Count[i].Left    := 496;
      //GUI_Count[i].Caption := IntToStr(CntB[7, i-112]);
    end;

  BtReset[7].Left := 496;
  GUI_Name[7].Left := 496;


  for i := 128 to 143 do
    begin
      GUI_Count[i].Left    := 544;
      //GUI_Count[i].Caption := IntToStr(CntB[8, i-128]);
    end;
  BtReset[8].Left := 544;
  GUI_Name[8].Left := 544;


  for i := 144 to 159 do
    begin
      GUI_Count[i].Left    := 592;
      //GUI_Count[i].Caption := IntToStr(CntB[9, i-144]);
    end;
  BtReset[9].Left := 592;
  GUI_Name[9].Left := 592;


  for i := 160 to 175 do
    begin
      GUI_Count[i].Left    := 640;
      //GUI_Count[i].Caption := IntToStr(CntB[10, i-160]);
    end;
  BtReset[10].Left := 640;
  GUI_Name[10].Left := 640;


  for i := 176 to 191 do
    begin
      GUI_Count[i].Left    := 688;
      //GUI_Count[i].Caption := IntToStr(CntB[11, i-176]);
    end;
  BtReset[11].Left := 688;
  GUI_Name[11].Left := 688;



  for i := 192 to 207 do
    begin
      GUI_Count[i].Left    := 736;
      //GUI_Count[i].Caption := IntToStr(CntB[12, i-192]);
    end;
  BtReset[12].Left := 736;
  GUI_Name[12].Left := 736;


  for i := 208 to 223 do
    begin
      GUI_Count[i].Left    := 784;
      //GUI_Count[i].Caption := IntToStr(CntB[13, i-208]);
    end;
  BtReset[13].Left := 784;
  GUI_Name[13].Left := 784;


  for i := 224 to 239 do
    begin
      GUI_Count[i].Left    := 832;
      //GUI_Count[i].Caption := IntToStr(CntB[14, i-224]);
    end;
  BtReset[14].Left := 832;
  GUI_Name[14].Left := 832;


  for i := 240 to 255 do
    begin
      GUI_Count[i].Left    := 880;
      //GUI_Count[i].Caption := IntToStr(CntB[15, i-240]);
    end;
  BtReset[15].Left := 880;
  GUI_Name[15].Left := 880;


  for i := 0 to 15 do
    begin
      BtReset[i].Visible := True;
      BtReset[i].Enabled := True;
      GUI_Name[i].Visible := True;
      GUI_Name[i].Enabled := True;
      BtReset[i].Width := 48;
      GUI_Name[i].Width := 47;
      GUI_Name[i].Caption := 'PB ' + IntToStr(i+1);
    end;

  for i := 0 to 15 do
    GUI_Str[i].Width := 155;

  FormPacketsCNT.btn17.Width := 155;
  FormPacketsCNT.ctxtIncomingSubstr.Width := 155;

  for i:= 0 to 15 do
    begin
      GUI_Str[i].Text := SubStrBPorts[i];
      GUI_IsSendLog[i].Checked := isSendLogB[i];
      if isSendLogB[i] then
        GUI_Str[i].Color := clWindow
      else
        GUI_Str[i].Color := FormPacketsCNT.Color;

      GUI_IsSendLog[i].Hint := '';
      if SubStrBPorts[i] <> '' then
        GUI_IsSendLog[i].Hint := '[F' + Format('%02d', [i + 1])+ ']:' + SubStrBPorts[i];
      GUI_Str[i].Hint := GUI_IsSendLog[i].Hint;

    end;
end;



procedure UpdateCntGUI;
begin
  GUIMode := FormPacketsCNT.tbc1.TabIndex;
  case GUIMode of
    0:
    begin
      OutCntMain;
    end;
    1:
    begin
      OutCntA;
    end;
    2:
    begin
      OutCntB;
    end;
  end;
end;


procedure TFormPacketsCNT.FormCreate(Sender: TObject);
var
  i, j, k : integer;
begin
  GUIMode := -1;
  isLogFile := False;
  isOutLog := False;
  GUI_Count[  0] := ctxt49;   GUI_Count[  1] := ctxt50;    GUI_Count[  2] := ctxt51;   GUI_Count[  3] := ctxt52;     GUI_Count[  4] := ctxt53;   GUI_Count[  5] := ctxt54;    GUI_Count[  6] := ctxt55;   GUI_Count[  7] := ctxt56;     GUI_Count[  8] := ctxt57;   GUI_Count[  9] := ctxt58;    GUI_Count[ 10] := ctxt59;   GUI_Count[ 11] := ctxt60;     GUI_Count[ 12] := ctxt61;   GUI_Count[ 13] := ctxt62;    GUI_Count[ 14] := ctxt63;   GUI_Count[ 15] := ctxt64;    GUI_Count[ 16] := ctxt65;   GUI_Count[ 17] := ctxt66;    GUI_Count[ 18] := ctxt67;   GUI_Count[ 19] := ctxt68;     GUI_Count[ 20] := ctxt69;   GUI_Count[ 21] := ctxt70;    GUI_Count[ 22] := ctxt71;   GUI_Count[ 23] := ctxt72;     GUI_Count[ 24] := ctxt73;   GUI_Count[ 25] := ctxt74;    GUI_Count[ 26] := ctxt75;   GUI_Count[ 27] := ctxt76;     GUI_Count[ 28] := ctxt77;   GUI_Count[ 29] := ctxt78;    GUI_Count[ 30] := ctxt79;   GUI_Count[ 31] := ctxt80;
  GUI_Count[ 32] := ctxt81;   GUI_Count[ 33] := ctxt82;    GUI_Count[ 34] := ctxt83;   GUI_Count[ 35] := ctxt84;     GUI_Count[ 36] := ctxt85;   GUI_Count[ 37] := ctxt86;    GUI_Count[ 38] := ctxt87;   GUI_Count[ 39] := ctxt88;     GUI_Count[ 40] := ctxt89;   GUI_Count[ 41] := ctxt90;    GUI_Count[ 42] := ctxt91;   GUI_Count[ 43] := ctxt92;     GUI_Count[ 44] := ctxt93;   GUI_Count[ 45] := ctxt94;    GUI_Count[ 46] := ctxt95;   GUI_Count[ 47] := ctxt96;    GUI_Count[ 48] := ctxt97;   GUI_Count[ 49] := ctxt98;    GUI_Count[ 50] := ctxt99;   GUI_Count[ 51] := ctxt100;    GUI_Count[ 52] := ctxt101;  GUI_Count[ 53] := ctxt102;   GUI_Count[ 54] := ctxt103;  GUI_Count[ 55] := ctxt104;    GUI_Count[ 56] := ctxt105;  GUI_Count[ 57] := ctxt106;   GUI_Count[ 58] := ctxt107;  GUI_Count[ 59] := ctxt108;    GUI_Count[ 60] := ctxt109;  GUI_Count[ 61] := ctxt110;   GUI_Count[ 62] := ctxt111;  GUI_Count[ 63] := ctxt112;
  GUI_Count[ 64] := ctxt113;  GUI_Count[ 65] := ctxt114;   GUI_Count[ 66] := ctxt115;  GUI_Count[ 67] := ctxt116;    GUI_Count[ 68] := ctxt117;  GUI_Count[ 69] := ctxt118;   GUI_Count[ 70] := ctxt119;  GUI_Count[ 71] := ctxt120;    GUI_Count[ 72] := ctxt121;  GUI_Count[ 73] := ctxt122;   GUI_Count[ 74] := ctxt123;  GUI_Count[ 75] := ctxt124;    GUI_Count[ 76] := ctxt125;  GUI_Count[ 77] := ctxt126;   GUI_Count[ 78] := ctxt127;  GUI_Count[ 79] := ctxt128;   GUI_Count[ 80] := ctxt129;  GUI_Count[ 81] := ctxt130;   GUI_Count[ 82] := ctxt131;  GUI_Count[ 83] := ctxt132;    GUI_Count[ 84] := ctxt133;  GUI_Count[ 85] := ctxt134;   GUI_Count[ 86] := ctxt135;  GUI_Count[ 87] := ctxt136;    GUI_Count[ 88] := ctxt137;  GUI_Count[ 89] := ctxt138;   GUI_Count[ 90] := ctxt139;  GUI_Count[ 91] := ctxt140;    GUI_Count[ 92] := ctxt141;  GUI_Count[ 93] := ctxt142;   GUI_Count[ 94] := ctxt143;  GUI_Count[ 95] := ctxt144;
  GUI_Count[ 96] := ctxt145;  GUI_Count[ 97] := ctxt146;   GUI_Count[ 98] := ctxt147;  GUI_Count[ 99] := ctxt148;    GUI_Count[100] := ctxt149;  GUI_Count[101] := ctxt150;   GUI_Count[102] := ctxt151;  GUI_Count[103] := ctxt152;    GUI_Count[104] := ctxt153;  GUI_Count[105] := ctxt154;   GUI_Count[106] := ctxt155;  GUI_Count[107] := ctxt156;    GUI_Count[108] := ctxt157;  GUI_Count[109] := ctxt158;   GUI_Count[110] := ctxt159;  GUI_Count[111] := ctxt160;   GUI_Count[112] := ctxt161;  GUI_Count[113] := ctxt162;   GUI_Count[114] := ctxt163;  GUI_Count[115] := ctxt164;    GUI_Count[116] := ctxt165;  GUI_Count[117] := ctxt166;   GUI_Count[118] := ctxt167;  GUI_Count[119] := ctxt168;    GUI_Count[120] := ctxt169;  GUI_Count[121] := ctxt170;   GUI_Count[122] := ctxt171;  GUI_Count[123] := ctxt172;    GUI_Count[124] := ctxt173;  GUI_Count[125] := ctxt174;   GUI_Count[126] := ctxt175;  GUI_Count[127] := ctxt176;
  GUI_Count[128] := ctxt177;  GUI_Count[129] := ctxt178;   GUI_Count[130] := ctxt179;  GUI_Count[131] := ctxt180;    GUI_Count[132] := ctxt181;  GUI_Count[133] := ctxt182;   GUI_Count[134] := ctxt183;  GUI_Count[135] := ctxt184;    GUI_Count[136] := ctxt185;  GUI_Count[137] := ctxt186;   GUI_Count[138] := ctxt187;  GUI_Count[139] := ctxt188;    GUI_Count[140] := ctxt189;  GUI_Count[141] := ctxt190;   GUI_Count[142] := ctxt191;  GUI_Count[143] := ctxt192;   GUI_Count[144] := ctxt193;  GUI_Count[145] := ctxt194;   GUI_Count[146] := ctxt195;  GUI_Count[147] := ctxt196;    GUI_Count[148] := ctxt197;  GUI_Count[149] := ctxt198;   GUI_Count[150] := ctxt199;  GUI_Count[151] := ctxt200;    GUI_Count[152] := ctxt201;  GUI_Count[153] := ctxt202;   GUI_Count[154] := ctxt203;  GUI_Count[155] := ctxt204;    GUI_Count[156] := ctxt205;  GUI_Count[157] := ctxt206;   GUI_Count[158] := ctxt207;  GUI_Count[159] := ctxt208;
  GUI_Count[160] := ctxt209;  GUI_Count[161] := ctxt210;   GUI_Count[162] := ctxt211;  GUI_Count[163] := ctxt212;    GUI_Count[164] := ctxt213;  GUI_Count[165] := ctxt214;   GUI_Count[166] := ctxt215;  GUI_Count[167] := ctxt216;    GUI_Count[168] := ctxt217;  GUI_Count[169] := ctxt218;   GUI_Count[170] := ctxt219;  GUI_Count[171] := ctxt220;    GUI_Count[172] := ctxt221;  GUI_Count[173] := ctxt222;   GUI_Count[174] := ctxt223;  GUI_Count[175] := ctxt224;   GUI_Count[176] := ctxt225;  GUI_Count[177] := ctxt226;   GUI_Count[178] := ctxt227;  GUI_Count[179] := ctxt228;    GUI_Count[180] := ctxt229;  GUI_Count[181] := ctxt230;   GUI_Count[182] := ctxt231;  GUI_Count[183] := ctxt232;    GUI_Count[184] := ctxt233;  GUI_Count[185] := ctxt234;   GUI_Count[186] := ctxt235;  GUI_Count[187] := ctxt236;    GUI_Count[188] := ctxt237;  GUI_Count[189] := ctxt238;   GUI_Count[190] := ctxt239;  GUI_Count[191] := ctxt240;
  GUI_Count[192] := ctxt241;  GUI_Count[193] := ctxt242;   GUI_Count[194] := ctxt243;  GUI_Count[195] := ctxt244;    GUI_Count[196] := ctxt245;  GUI_Count[197] := ctxt246;   GUI_Count[198] := ctxt247;  GUI_Count[199] := ctxt248;    GUI_Count[200] := ctxt249;  GUI_Count[201] := ctxt250;   GUI_Count[202] := ctxt251;  GUI_Count[203] := ctxt252;    GUI_Count[204] := ctxt253;  GUI_Count[205] := ctxt254;   GUI_Count[206] := ctxt255;  GUI_Count[207] := ctxt256;   GUI_Count[208] := ctxt257;  GUI_Count[209] := ctxt258;   GUI_Count[210] := ctxt259;  GUI_Count[211] := ctxt260;    GUI_Count[212] := ctxt261;  GUI_Count[213] := ctxt262;   GUI_Count[214] := ctxt263;  GUI_Count[215] := ctxt264;    GUI_Count[216] := ctxt265;  GUI_Count[217] := ctxt266;   GUI_Count[218] := ctxt267;  GUI_Count[219] := ctxt268;    GUI_Count[220] := ctxt269;  GUI_Count[221] := ctxt270;   GUI_Count[222] := ctxt271;  GUI_Count[223] := ctxt272;
  GUI_Count[224] := ctxt273;  GUI_Count[225] := ctxt274;   GUI_Count[226] := ctxt275;  GUI_Count[227] := ctxt276;    GUI_Count[228] := ctxt277;  GUI_Count[229] := ctxt278;   GUI_Count[230] := ctxt279;  GUI_Count[231] := ctxt280;    GUI_Count[232] := ctxt281;  GUI_Count[233] := ctxt282;   GUI_Count[234] := ctxt283;  GUI_Count[235] := ctxt284;    GUI_Count[236] := ctxt285;  GUI_Count[237] := ctxt286;   GUI_Count[238] := ctxt287;  GUI_Count[239] := ctxt288;   GUI_Count[240] := ctxt289;  GUI_Count[241] := ctxt290;   GUI_Count[242] := ctxt291;  GUI_Count[243] := ctxt292;    GUI_Count[244] := ctxt293;  GUI_Count[245] := ctxt294;   GUI_Count[246] := ctxt295;  GUI_Count[247] := ctxt296;    GUI_Count[248] := ctxt297;  GUI_Count[249] := ctxt298;   GUI_Count[250] := ctxt299;  GUI_Count[251] := ctxt300;    GUI_Count[252] := ctxt301;  GUI_Count[253] := ctxt302;   GUI_Count[254] := ctxt303;  GUI_Count[255] := ctxt304;

  GUI_Str[0]  := edt1;   GUI_Str[1]  := edt2;  GUI_Str[2]  := edt3; GUI_Str[3]  := edt4; GUI_Str[4]  := edt5;  GUI_Str[5]  := edt6;
  GUI_Str[6]  := edt7;   GUI_Str[7]  := edt8;
  GUI_Str[8]  := edt9;   GUI_Str[9]  := edt10;
  GUI_Str[10] := edt11;  GUI_Str[11] := edt12;
  GUI_Str[12] := edt13;  GUI_Str[13] := edt14;
  GUI_Str[14] := edt15;  GUI_Str[15] := edt16;

  BtReset[0]  := btn1;   BtReset[1]  := btn2;   BtReset[2]  := btn3;   BtReset[3]  := btn4;
  BtReset[4]  := btn5;   BtReset[5]  := btn6;   BtReset[6]  := btn7;   BtReset[7]  := btn8;
  BtReset[8]  := btn9;   BtReset[9]  := btn10;  BtReset[10] := btn11;  BtReset[11] := btn12;
  BtReset[12] := btn13;  BtReset[13] := btn14;  BtReset[14] := btn15;  BtReset[15] := btn16;

  GUI_Name[0]  := ctxt1;  GUI_Name[1]  := ctxt2;  GUI_Name[2]  := ctxt3;  GUI_Name[3]  := ctxt4;
  GUI_Name[4]  := ctxt5;  GUI_Name[5]  := ctxt6;  GUI_Name[6]  := ctxt7;  GUI_Name[7]  := ctxt8;
  GUI_Name[8]  := ctxt9;  GUI_Name[9]  := ctxt10; GUI_Name[10] := ctxt11; GUI_Name[11] := ctxt12;
  GUI_Name[12] := ctxt13; GUI_Name[13] := ctxt14; GUI_Name[14] := ctxt15; GUI_Name[15] := ctxt16;

  GUI_IsSendLog[0]  := CheckBox1;
  GUI_IsSendLog[1]  := CheckBox2;
  GUI_IsSendLog[2]  := CheckBox3;
  GUI_IsSendLog[3]  := CheckBox4;
  GUI_IsSendLog[4]  := CheckBox5;
  GUI_IsSendLog[5]  := CheckBox6;
  GUI_IsSendLog[6]  := CheckBox7;
  GUI_IsSendLog[7]  := CheckBox8;
  GUI_IsSendLog[8]  := CheckBox9;
  GUI_IsSendLog[9]  := CheckBox10;
  GUI_IsSendLog[10] := CheckBox11;
  GUI_IsSendLog[11] := CheckBox12;
  GUI_IsSendLog[12] := CheckBox13;
  GUI_IsSendLog[13] := CheckBox14;
  GUI_IsSendLog[14] := CheckBox15;
  GUI_IsSendLog[15] := CheckBox16;

  for i:=0 to 15 do
    begin
      SubStrMainPort[i] := '';
      SubStrAPorts[i]   := '';
      SubStrBPorts[i]   := '';
      GUI_Str[i].OnChange := SubStrChange;
      GUI_Str[i].OnKeyPress := SubStrKeyPress;
      GUI_Str[i].Tag := i;
      BtReset[i].Tag := i;
      BtReset[i].OnClick := BtResetCnt;
      GUI_IsSendLog[i].Tag := i;
      GUI_IsSendLog[i].OnClick := CBIsOutClick;
    end;

  for j := 0 to 255 do
    begin
      GUI_Count[j].Tag := j;
      GUI_Count[j].OnDblClick := CountDblClick;
    end;

  AssignFile(SettFile, ExtractFilePath(Application.ExeName) + CFG_FILE_NAME);

  if FileExists(ExtractFilePath(Application.ExeName) + CFG_FILE_NAME) and (Get_File_Size(ExtractFilePath(Application.ExeName) + CFG_FILE_NAME, True) > 0) then
    begin
      Reset(SettFile);
      for j := 1 to CNT_SETT do
        Read(SettFile, Sett[j]);
      CloseFile(SettFile);
    end
  else
    begin
      Rewrite(SettFile);
      for j := 1 to CNT_SETT do
        begin
          for i := 0 to 15 do
            begin
              Sett[j].SubStrMainPort[i] := '';
              Sett[j].SubStrAPorts[i] := '';
              Sett[j].SubStrBPorts[i] := '';

              Sett[j].isSendLogMain[i] := True;
              Sett[j].isSendLogA[i]    := True;
              Sett[j].isSendLogB[i]    := True;

              Sett[j].isRes1[i] := False;
              Sett[j].isRes2[i] := False;
              Sett[j].isRes3[i] := False;



              Sett[j].Res1[i] := '';
              Sett[j].Res2[i] := '';
              Sett[j].Res3[i] := '';
              CntMain[j] := 0;

              for k := 0 to 1 do
                Sett[j].CntA[k, i] := 0;
              for k := 0 to 15 do
                Sett[j].CntB[k, i] := 0;
            end;
          Sett[j].Name := 'Name ' + IntToStr(j);
          Sett[j].Res4 := '';
          Sett[j].CRes1 := 0;//          : Cardinal;
          Sett[j].CRes2 := 0;//         : Cardinal;
          Sett[j].CRes3 := 0;//         : Cardinal;
          Sett[j].CRes4 := 0;//         : Cardinal;
          Sett[j].CRes5 := 0;//         : Cardinal;
          Sett[j].CRes6 := 0;//         : Cardinal;
          Sett[j].isShowFilterInLog := false;//         : boolean;
          Sett[j].BRes2 := false;//         : boolean;
          Sett[j].BRes3 := false;//         : boolean;
          Sett[j].BRes4 := false;//         : boolean;
          Sett[j].isUseTX := false;//         : boolean;
          Sett[j].isUseRX := true;//         : boolean;
          Write(SettFile, Sett[j]);
        end;
        CloseFile(SettFile);
    end;

  for i := 0 to 15 do
    begin
      SubStrMainPort[i] := Sett[1].SubStrMainPort[i];
      SubStrAPorts[i]   := Sett[1].SubStrAPorts[i];
      SubStrBPorts[i]   := Sett[1].SubStrBPorts[i];

      isSendLogMain[i]  := Sett[1].isSendLogMain[i];
      isSendLogA[i]     := Sett[1].isSendLogA[i];
      isSendLogB[i]     := Sett[1].isSendLogB[i];
    end;

  isUseRx := Sett[1].isUseRx;
  isUseTx := Sett[1].isUseTx;


  FormLog := TFormLogPort.Create(nil);
  chk1.Checked := isShowFilterInLog;
  chk2.Checked := isUseRx;
  chk3.Checked := isUseTx;
  SetPortMain;
  UpdateCntGUI;

end;



procedure TFormPacketsCNT.tbc1Change(Sender: TObject);
var
  Tab : Integer;
begin
  Tab := (Sender as TTabControl).TabIndex;
  if Tab = 0 then
    SetPortMain
  else if Tab = 1 then
    SetPortA1A2
  else if Tab = 2 then
    SetPortB1B16;
  UpdateCntGUI;
end;



procedure TFormPacketsCNT.FormActivate(Sender: TObject);
begin
  tmrColorClr.Enabled := True;
  TerminalST.Form1.isSaveFileIncSubstr := True;
  UpdateCntGUI;
end;

procedure TFormPacketsCNT.SubStrChange(Sender: TObject);
var
  i, numPort, numStr : Integer;
begin
  numStr := (Sender as TEdit).Tag;
  case GUIMode of
    0: SubStrMainPort[numStr] := (Sender as TEdit).Text;
    1: SubStrAPorts[numStr]   := (Sender as TEdit).Text;
    2: SubStrBPorts[numStr]   := (Sender as TEdit).Text;
  end;

  if (Sender as TEdit).Text = '' then
    case GUIMode of
      0: if CntMain[numStr] > 0 then
           begin
             CntMain[numStr] := 0;
             GUI_Count[numStr].Caption := IntToStr(CntMain[numStr]);
             GUI_Count[numStr].Color := clYellow;
             GUI_Color[numStr] := True;
           end;

      1:  For numPort := 0 to 1 do
            if CntA[numPort, numStr] > 0 then
              begin
                CntA[numPort, numStr] := 0;
                GUI_Count[numPort * 16 + numStr].Caption := IntToStr(CntA[numPort, numStr]);
                GUI_Count[numPort * 16 + numStr].Color := clYellow;
                GUI_Color[numPort * 16 + numStr] := True;
              end;

      2:  For numPort := 0 to 15 do
            if CntB[numPort, numStr] > 0 then
               begin
                 CntB[numPort, numStr] := 0;
                 GUI_Count[numPort * 16 + numStr].Caption := IntToStr(CntB[numPort, numStr]);
                 GUI_Count[numPort * 16 + numStr].Color := clYellow;
                 GUI_Color[numPort * 16 + numStr] := True;
               end;
    end;
  if (Sender as TEdit).Text <> '' then
    GUI_IsSendLog[i].Hint := '[F' + Format('%02d', [numStr + 1])+ ']:' + (Sender as TEdit).Text
  else
    GUI_IsSendLog[i].Hint := '';
end;

procedure TFormPacketsCNT.tmrColorClrTimer(Sender: TObject);
var
  i : Integer;
begin
  for i := 0 to 255 do
    if GUI_Color[i] then
      begin
        GUI_Count[i].Color := FormPacketsCNT.Color;
        GUI_Color[i] := False;
      end;
end;

procedure TFormPacketsCNT.btn18Click(Sender: TObject);
var
  i, j : Integer;
begin
  for i := 0 to 15 do
    CntMain[i] := 0;

  for i := 0 to 15 do
    for j := 0 to 1 do
      CntA[j, i] := 0;

  for i := 0 to 15 do
    for j := 0 to 15 do
      CntA[j, i] := 0;

  UpdateCntGUI;    
end;

procedure TFormPacketsCNT.btn17Click(Sender: TObject);
var
  i, j : Integer;
begin
  for i := 0 to 15 do
    begin
      //case GUIMode of
      //  0: SubStrMainPort[i] := '';
      //  1: SubStrAPorts[i]   := '';
      //  2: SubStrBPorts[i]   := '';
      //end;
      GUI_Str[i].Text := '';
    end;

  case GUIMode of

  0: for i := 0 to 15 do
       CntMain[i] := 0;

  1: for i := 0 to 15 do
       for j := 0 to 1 do
         CntA[j, i] := 0;

  2: for i := 0 to 15 do
       for j := 0 to 15 do
         CntA[j, i] := 0;
  end;

  UpdateCntGUI;
end;


procedure TFormPacketsCNT.BtResetCnt(Sender: TObject);
var i, j : integer;

begin
  j := (Sender as TButton).Tag;

  case GUIMode of

  0: for i := 0 to 15 do
       CntMain[i] := 0;

  1: for i := 0 to 15 do
       CntA[j, i] := 0;

  2: for i := 0 to 15 do
       CntB[j, i] := 0;
  end;

  UpdateCntGUI;
end;

procedure TFormPacketsCNT.SubStrKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    begin
      (Sender as TEdit).Text := '';
      Key := #0;
    end;
end;

procedure TFormPacketsCNT.Bt1Click(Sender: TObject);
var
  i : Integer;
begin
  Bt2.Enabled := True;
  for i := 0 to 15 do
    SubStrBuf[i] := GUI_Str[i].Text;
end;

procedure TFormPacketsCNT.Bt2Click(Sender: TObject);
var
  i : Integer;
begin
  for i := 0 to 15 do
    GUI_Str[i].Text := SubStrBuf[i];
end;

procedure TFormPacketsCNT.CBIsOutClick(Sender: TObject);
var
  i : Integer;
begin
  i := (Sender as TCheckBox).Tag;
  case GUIMode of
    0: isSendLogMain[i] := (Sender as TCheckBox).Checked;
    1: isSendLogA[i]    := (Sender as TCheckBox).Checked;
    2: isSendLogB[i]    := (Sender as TCheckBox).Checked;
  end;

  if (Sender as TCheckBox).Checked then
    GUI_Str[i].Color := clWindow
  else
    GUI_Str[i].Color := FormPacketsCNT.Color;
end;

procedure TFormPacketsCNT.Bt4Click(Sender: TObject);
begin
  FormLog.Caption := 'Filtered packets';
  FormLog.BGColor := clWindow;
  FormLog.FontColor := clBlack;
  FormLog.FontSize := TerminalST.Form1.FontSize;
  FormLog.isUseMultiPort := False;
  FormLog.Position := poMainFormCenter;
  FormLog.Show;
  FormLog.Top := FormPacketsCNT.Top;
  FormLog.Left := FormPacketsCNT.Left;
  FormLog.Width := FormPacketsCNT.Width;
  FormLog.Height := FormPacketsCNT.Height;
  isOutLog := True;
end;

procedure TFormPacketsCNT.Bt3Click(Sender: TObject);
begin
  if not isLogFile then
    begin
      dlgOpenLog.InitialDir := CfgTerminal.LogDir;
      dlgOpenLog.Title := 'File for packet filter';
      try
        if dlgOpenLog.Execute then
          begin
            AssignFile(LogFile, dlgOpenLog.FileName);
            Rewrite(LogFile);
            isLogFile := True;
            Bt3.Hint := dlgOpenLog.FileName;
          end;
      except
         isLogFile := False;
         ShowMessage('Error');
      end;
    end
  else
    begin
      CloseFile(LogFile);
      isLogFile := False;
    end;

  if isLogFile then
    Bt3.Caption := 'Stop log'
  else
    Bt3.Caption := 'Start log';

  Bt3.ShowHint := isLogFile;
end;

procedure TFormPacketsCNT.CheckBox17Click(Sender: TObject);
var
  isCheck : Boolean;
  i : Integer;
begin
  isCheck := (Sender as TCheckBox).Checked;
  for i := 0 to 15 do
    GUI_IsSendLog[i].Checked := isCheck;
end;

procedure TFormPacketsCNT.CountDblClick(Sender: TObject);
var
  nPort, nStr, Tag : Integer;
begin
  Tag := (Sender as TStaticText).Tag;
  nPort := Tag shr 4;
  nStr  := Tag - nPort * 16;
  case GUIMode of
  0: if CntMain[nStr] > 0 then
       begin
         CntMain[nStr] := 0;
         GUI_Count[nStr].Caption := IntToStr(CntMain[nStr]);
         GUI_Count[nStr].Color := clYellow;
         GUI_Color[nStr] := True;
       end;

  1: if CntA[nPort, nStr] > 0 then
       begin
         CntA[nPort, nStr] := 0;
         GUI_Count[nPort * 16 + nStr].Caption := IntToStr(CntA[nPort, nStr]);
         GUI_Count[nPort * 16 + nStr].Color := clYellow;
         GUI_Color[nPort * 16 + nStr] := True;
       end;

  2: if CntB[nPort, nStr] > 0 then
       begin
         CntB[nPort, nStr] := 0;
         GUI_Count[nPort * 16 + nStr].Caption := IntToStr(CntB[nPort, nStr]);
         GUI_Count[nPort * 16 + nStr].Color := clYellow;
         GUI_Color[nPort * 16 + nStr] := True;
       end;
  end;

end;

procedure TFormPacketsCNT.chk1Click(Sender: TObject);
begin
  isShowFilterInLog := (Sender as TCheckBox).Checked;
end;

procedure TFormPacketsCNT.chk2Click(Sender: TObject);
begin
  isUseRx := (Sender as TCheckBox).Checked; 
end;

procedure TFormPacketsCNT.chk3Click(Sender: TObject);
begin
  isUseTx := (Sender as TCheckBox).Checked;
end;

end.
