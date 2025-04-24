unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Common, StdCtrls, TerminalST, ExtCtrls;

type TGUIParsAscii = record
  BtSett : TButton;
  BtCopy : TButton;
  BtPaste : TButton;
  BtDel : TButton;

  BtGraph : TButton;
  BtChart : TButton;
  BtClBuf : TButton;

  RBEnClrBuf : TRadioButton;

  StName : TStaticText;
  StTime : TStaticText;
  StVal  : TStaticText;
  StCount: TStaticText;
end;

type TListPars = record
  isActiv : Boolean;
  isSyncMacros : Boolean;
  isSendMainLog : Boolean;
  isSendSecondLog : Boolean;
  isSendParserLog : Boolean;
  ColorBG_LOG     : TColor;
  ColorInLog : TColor;
  Name : string[64];
  SettParserAscii : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of TSettParserAscii;
  Res1 : array[0..MAX_PARAM_IN_LIST_PARS_ASCII] of Cardinal;     //Res1[0] множитель
  Res2 : array[0..MAX_PARAM_IN_LIST_PARS_ASCII] of Integer;
  Res3 : array[0..MAX_PARAM_IN_LIST_PARS_ASCII] of Boolean;      //Res3[0] - isUseList
  Res4 : array[0..MAX_PARAM_IN_LIST_PARS_ASCII] of Boolean;
  Res5 : array[0..MAX_PARAM_IN_LIST_PARS_ASCII] of string[32];

end;

type TResStrParser = record
  ResStrParser : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of string;
end;

type TParsDataLast = record
  dt : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of TDateTime;
  val : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of string;
end;

type TDataGraphBuf = record
  DataGraph : array[0..(MAX_CNT_DG - 1)] of TDataGraph;
end;

type TParsMaxMin = record
  dtMax : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of TDateTime;
  dtMin : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of TDateTime;
  valMax_Int : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of Integer;
  valMin_Int : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of Integer;
  valMax_float : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of double;
  valMin_float : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of double;
end;

type
  TFormParserASCII = class(TForm)
    lbl5: TLabel;                     lbl6: TLabel;                  lbl7: TLabel;                     ctxt3: TStaticText;
    ctxt4: TStaticText;               ctxt5: TStaticText;            mmoInput: TMemo;                  grp1: TGroupBox;
    ctxtreq1: TStaticText;            btnBt1: TButton;               ctxtreq2: TStaticText;            ctxtreq3: TStaticText;
    btnBt2: TButton;                  ctxtreq4: TStaticText;         ctxtreq5: TStaticText;            ctxtreq6: TStaticText;
    btnBt3: TButton;                  ctxtreq7: TStaticText;         ctxtreq8: TStaticText;            ctxtreq9: TStaticText;
    btnBt4: TButton;                  ctxtreq10: TStaticText;        ctxtreq11: TStaticText;           ctxtreq12: TStaticText;
    btnBt5: TButton;                  ctxtreq13: TStaticText;        ctxtreq14: TStaticText;           ctxtreq15: TStaticText;
    btnBt6: TButton;                  ctxtreq16: TStaticText;        ctxtreq17: TStaticText;           ctxtreq18: TStaticText;
    btnBt7: TButton;                  ctxtreq19: TStaticText;        ctxtreq20: TStaticText;           ctxtreq21: TStaticText;
    btnBt8: TButton;                  ctxtreq22: TStaticText;        ctxtreq23: TStaticText;           ctxtreq24: TStaticText;
    btnBt9: TButton;                  ctxtreq25: TStaticText;        ctxtreq26: TStaticText;           ctxtreq27: TStaticText;
    btnBt10: TButton;                 ctxtreq28: TStaticText;        ctxtreq29: TStaticText;           ctxtreq30: TStaticText;
    btnBt11: TButton;                 ctxtreq31: TStaticText;        ctxtreq32: TStaticText;           ctxtreq33: TStaticText;
    btnBt12: TButton;                 ctxtreq34: TStaticText;        ctxtreq35: TStaticText;           ctxtreq36: TStaticText;
    btnBt13: TButton;                 ctxtreq37: TStaticText;        ctxtreq38: TStaticText;           ctxtreq39: TStaticText;
    btnBt14: TButton;                 ctxtreq40: TStaticText;        ctxtreq41: TStaticText;           ctxtreq42: TStaticText;
    btnBt15: TButton;                 ctxtreq43: TStaticText;        ctxtreq44: TStaticText;           ctxtreq45: TStaticText;
    btnBt16: TButton;                 ctxtreq46: TStaticText;        ctxtreq47: TStaticText;           ctxtreq48: TStaticText;
    btn3: TButton;                    btn4: TButton;                 btn5: TButton;                    btn6: TButton;
    btn7: TButton;                    btn8: TButton;                 btn9: TButton;                    btn10: TButton;
    btn11: TButton;                   btn12: TButton;                btn13: TButton;                   btn14: TButton;
    btn15: TButton;                   btn16: TButton;                btn17: TButton;                    btn18: TButton;
    btn19: TButton;                    btn20: TButton;               btn21: TButton;                    btn22: TButton;
    btn23: TButton;                  btn24: TButton;                 btn25: TButton;                  btn26: TButton;
    btn27: TButton;                  btn28: TButton;                 btn29: TButton;                  btn30: TButton;
    btn31: TButton;                  btn32: TButton;                 btn33: TButton;                  btn34: TButton;
    btnBt22: TButton;                btnBt23: TButton;               btnBt24: TButton;                btnBt25: TButton;
    btnBt26: TButton;                btnBt27: TButton;               btnBt28: TButton;                btnBt29: TButton;
    btnBt30: TButton;                btnBt31: TButton;               btnBt32: TButton;                btnBt33: TButton;
    btnBt34: TButton;                btnBt35: TButton;               btnBt36: TButton;                btnBt37: TButton;
    rb1: TRadioButton;               rb2: TRadioButton;              rb3: TRadioButton;               rb4: TRadioButton;
    rb5: TRadioButton;               rb6: TRadioButton;              rb7: TRadioButton;               rb8: TRadioButton;
    rb9: TRadioButton;               rb10: TRadioButton;             rb11: TRadioButton;              rb12: TRadioButton;
    rb13: TRadioButton;              rb14: TRadioButton;             rb15: TRadioButton;              rb16: TRadioButton;
    btnBt38: TButton;                btnBt39: TButton;               btnBt40: TButton;                btnBt41: TButton;
    btnBt42: TButton;                btnBt43: TButton;               btnBt44: TButton;                btnBt45: TButton;
    btnBt46: TButton;                btnBt47: TButton;               btnBt48: TButton;                btnBt49: TButton;
    btnBt50: TButton;                btnBt51: TButton;               btnBt52: TButton;                btnBt53: TButton;
    btnBt54: TButton;                btnBt55: TButton;               btnBt56: TButton;                btnBt57: TButton;
    btnBt58: TButton;                btnBt59: TButton;               btnBt60: TButton;                btnBt61: TButton;
    btnBt62: TButton;                btnBt63: TButton;               btnBt64: TButton;                btnBt65: TButton;
    btnBt66: TButton;                btnBt67: TButton;               btnBt68: TButton;                btnBt69: TButton;
    pnl1: TPanel;                    rb17: TRadioButton;             btnBt71: TButton;                btnBt70: TButton;
    btnBt21: TButton;                btn37: TButton;                 btn38: TButton;                  btn39: TButton;
    btn40: TButton;                  btn41: TButton;                 btn42: TButton;                  btn43: TButton;
    btn44: TButton;                  btn45: TButton;                 btn46: TButton;                  btn47: TButton;
    btn48: TButton;                  btn49: TButton;                 btn50: TButton;                  btn51: TButton;
    btn52: TButton;                  btn53: TButton;                 edtEdt2: TEdit;                  edtEdt1: TEdit;
    btnBt19: TButton;                grp5: TGroupBox;                btnBt17: TButton;                chk7: TCheckBox;
    btnBt18: TButton;                grp6: TGroupBox;                btnLoad: TButton;                btnSave: TButton;
    chk1: TCheckBox;                 rb18: TRadioButton;             btn2: TButton;                   grp4: TGroupBox;
    chk3: TCheckBox;                 btnBtLOG: TButton;              btnBt20: TButton;                grp3: TGroupBox;
    lbl8: TLabel;                    ctxt6: TStaticText;             chk5: TCheckBox;                 chk4: TCheckBox;
    btn54: TButton;                  btnBt72: TButton;               btnBt73: TButton;                chk6: TCheckBox;
    dlgColor1: TColorDialog;
    dlgOpenLogOpen: TOpenDialog;
    ctxt1: TStaticText;
    btn35: TButton;
    btn1: TButton;
    ctxt2: TStaticText;
    ctxt7: TStaticText;
    lst1: TListBox;
    ctxt24: TStaticText;
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
    btn36: TButton;
    req1: TStaticText;
    req2: TStaticText;
    chk2: TCheckBox;
    btn55: TButton;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnBtSett1Click(Sender: TObject);
    procedure btnBt17Click(Sender: TObject);
    procedure btnBt18Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCopySettPars(Sender: TObject);
    procedure btnPasteSettPars(Sender: TObject);
    procedure btnDelSettPars(Sender: TObject);
    procedure btnBt70Click(Sender: TObject);
    procedure btnBt71Click(Sender: TObject);
    procedure rb17Click(Sender: TObject);
    procedure btnBt21Click(Sender: TObject);
    procedure chk4Click(Sender: TObject);
    procedure chk5Click(Sender: TObject);
    procedure chk6Click(Sender: TObject);
    procedure ctxt6Click(Sender: TObject);
    procedure btn54Click(Sender: TObject);
    procedure btnBt72Click(Sender: TObject);
    procedure btnBt73Click(Sender: TObject);
    procedure btnBtLOGClick(Sender: TObject);
    procedure rb18Click(Sender: TObject);
    procedure btn35Click(Sender: TObject);
    procedure SetMinMaxClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure chk7Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure BtGraphOutClick(Sender: TObject);
    procedure btnClearBufClick(Sender: TObject);
    procedure BtGraphClrClick(Sender: TObject);
    procedure rbEnClr1Click(Sender: TObject);
    procedure BtChartOutClick(Sender: TObject);
    procedure btnBt19Click(Sender: TObject);
    procedure lst1DblClick(Sender: TObject);
    procedure lst1Exit(Sender: TObject);
    procedure lst1KeyPress(Sender: TObject; var Key: Char);
    procedure edtEdt1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDeactivate(Sender: TObject);
    procedure btn36Click(Sender: TObject);
    procedure btnBt20Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure btn55Click(Sender: TObject);
    procedure edtEdt1Change(Sender: TObject);
    procedure NameDblClick(Sender: TObject);


  private
    { Private declarations }
  public
    isSendWinLog : Boolean;
    procedure SetNewStr1(SrcData : TTypeSrcData; newstr : string; isHEX : Boolean; DateTime: TDateTime; Cnt : Integer);
    procedure SaveCfg;
    procedure SetLogBGColor(BGColor : TColor);
    procedure SetNumParser(NumListCmd : Cardinal);
    { Public declarations }
  end;

const
  FileCfgName = 'CfgParsASCII';

var
  FormParserASCII: TFormParserASCII;
  CfgFilePars : file of TListPars;
  isUseAllList : Boolean;
  SelectParamForGraph : Integer;
  isMaxWin : boolean;
  MinValG : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of Int64;
  MaxValG : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of Int64;
  isPauseGraph : Boolean;
  isGraph : Boolean;

  Counts : array[1..MAX_PARAM_IN_LIST_PARS_ASCII, 1..MAX_LIST_PARS_ASCII] of Cardinal;
  isChart : Boolean;

  GUIParsAscii : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of TGUIParsAscii;
  ListPars : array[1..MAX_LIST_PARS_ASCII] of TListPars;
  ColorsLine : array[0..3] of TColor;
  TrackingMinMaxList, TrackingMinMaxParam : Cardinal;

  BufParsDG : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of TDataGraphBuf;
  DGiAct : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of Integer;



  GRIndex : array[1..MAX_PARAM_IN_LIST_PARS_ASCII] of Cardinal;

  ListResStrParser : array[1..MAX_LIST_PARS_ASCII] of TResStrParser;

  ListDataLast : array[1..MAX_LIST_PARS_ASCII] of TParsDataLast;
  isLogFileEventOnly : Boolean;
  ParsMaxMin : array[1..MAX_LIST_PARS_ASCII] of TParsMaxMin;

  CurNumList : Cardinal;
  isSaveReq  : Boolean;
  SettParserAsciiBuf : TSettParserAscii;
  ListParsBuf : TListPars;
  isOutLogRes : Boolean;
  NumListOutGR : Cardinal;
  Log : TextFile;
  isWriteLog : boolean;
  LogName    : string;
  isPauseLog   : Boolean;

  isSyncMacros : Boolean;
  CntLineInFile : Cardinal;
implementation

uses Unit24, Unit10, Unit50, Unit26, Unit36, Unit37;

{$R *.dfm}



procedure DataGraphBufAdd(val : Int64; DateTime: TDateTime; numBuf : Cardinal);
begin
  if (numBuf <= MAX_PARAM_IN_LIST_PARS_ASCII) and (numBuf > 0) then
    begin
      BufParsDG[numBuf].DataGraph[DGiAct[numBuf]].val := val;
      BufParsDG[numBuf].DataGraph[DGiAct[numBuf]].dt  := DateTime;
      inc(DGiAct[numBuf]);
      DGiAct[numBuf] := DGiAct[numBuf] and (MAX_CNT_DG - 1);
    end;
end;


procedure UpdateList(nList : Cardinal; nParam : Cardinal);
var
  nTmp, i : Cardinal;
  tmpstr : string[32];
begin
  if nParam = 0 then
    begin

      FormParserASCII.rb18.Checked := NumListOutGR = CurNumList;

      if FormParserASCII.rb18.Checked then
        FormParserASCII.rb18.Color := FormParserASCII.Color
      else
        FormParserASCII.rb18.Color := clYellow;

      for nTmp := 1 to MAX_LIST_PARS_ASCII do
        ListPars[nTmp].isActiv := nTmp = nList;

      FormParserASCII.edtEdt1.Text := ListPars[nList].Name;
      FormParserASCII.edtEdt2.Text := IntToStr(nList);
      FormParserASCII.chk4.Checked := ListPars[nList].isSendMainLog;
      FormParserASCII.chk5.Checked := ListPars[nList].isSendSecondLog;
      FormParserASCII.chk6.Checked := ListPars[nList].isSendParserLog;
      FormParserASCII.ctxt6.Color  := ListPars[nList].ColorInLog;
      FormParserASCII.ctxt6.Font.Color := ListPars[nList].ColorInLog xor $00FFFFFF;


      for nTmp := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
        begin
          GUIParsAscii[nTmp].StName.Caption := ListPars[nList].SettParserAscii[nTmp].ParamName;
          GUIParsAscii[nTmp].StCount.Caption := IntToStr(Counts[nTmp, nList]);

          if ListDataLast[CurNumList].dt[nTmp] > 0 then
            begin
              GUIParsAscii[nTmp].StTime.Caption := FormatDateTime('yyyy/mm/dd hh:mm:ss:zzz', ListDataLast[CurNumList].dt[nTmp]);
              GUIParsAscii[nTmp].StVal.Caption := ListDataLast[CurNumList].val[nTmp];
            end
          else
            begin
              GUIParsAscii[nTmp].StTime.Caption := '---';
              GUIParsAscii[nTmp].StVal.Caption := '';
            end;

          GUIParsAscii[nTmp].StName.Enabled := ListPars[nList].SettParserAscii[nTmp].isUse;
          GUIParsAscii[nTmp].StTime.Enabled := ListPars[nList].SettParserAscii[nTmp].isUse;
          GUIParsAscii[nTmp].StVal.Enabled := ListPars[nList].SettParserAscii[nTmp].isUse;

          GUIParsAscii[nTmp].StName.Color := ListPars[nList].SettParserAscii[nTmp].Color;
          GUIParsAscii[nTmp].StTime.Color := ListPars[nList].SettParserAscii[nTmp].Color;
          GUIParsAscii[nTmp].StVal.Color := ListPars[nList].SettParserAscii[nTmp].Color;
          GUIParsAscii[nTmp].BtSett.ShowHint := ListPars[nList].SettParserAscii[nTmp].isUse;
          tmpstr := GetPortName(ListPars[nList].SettParserAscii[nTmp].TypeSrcData);
          GUIParsAscii[nTmp].BtSett.Hint := tmpstr;
        end;

      FormParserASCII.btnBt17.Enabled := CurNumList > 1;
      FormParserASCII.btnBt18.Enabled := CurNumList < MAX_LIST_PARS_ASCII;
      FormParserASCII.chk2.Checked := ListPars[nList].Res3[0]; //isUseList

      if ListPars[nList].Res3[0] then
        begin
          FormParserASCII.chk2.Color := FormParserASCII.Color;
          for i:= 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
            begin
              GUIParsAscii[i].StName.Color := ListPars[CurNumList].SettParserAscii[i].Color;
              GUIParsAscii[i].StTime.Color := ListPars[CurNumList].SettParserAscii[i].Color;
              GUIParsAscii[i].StVal.Color := ListPars[CurNumList].SettParserAscii[i].Color;
            end;
        end
      else
        begin
          FormParserASCII.chk2.Color := clRed;
          for i:= 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
            begin
              GUIParsAscii[i].StName.Color := FormParserASCII.Color;
              GUIParsAscii[i].StTime.Color := FormParserASCII.Color;
              GUIParsAscii[i].StVal.Color := FormParserASCII.Color;
            end;
        end;
    end
  else if (nParam <= MAX_PARAM_IN_LIST_PARS_ASCII) and (nParam > 0) then
    begin
      GUIParsAscii[nParam].StName.Caption := ListPars[nList].SettParserAscii[nParam].ParamName;

      ListDataLast[CurNumList].dt[nParam] := 0;
      ListDataLast[CurNumList].val[nParam] := '';

      GUIParsAscii[nParam].StTime.Caption := '---';
      GUIParsAscii[nParam].StVal.Caption := '';

      GUIParsAscii[nParam].StName.Enabled := ListPars[nList].SettParserAscii[nParam].isUse;
      GUIParsAscii[nParam].StTime.Enabled := ListPars[nList].SettParserAscii[nParam].isUse;
      GUIParsAscii[nParam].StVal.Enabled := ListPars[nList].SettParserAscii[nParam].isUse;

      GUIParsAscii[nParam].StName.Color := ListPars[nList].SettParserAscii[nParam].Color;
      GUIParsAscii[nParam].StTime.Color := ListPars[nList].SettParserAscii[nParam].Color;
      GUIParsAscii[nParam].StVal.Color := ListPars[nList].SettParserAscii[nParam].Color;

      GUIParsAscii[nParam].BtSett.ShowHint := ListPars[nList].SettParserAscii[nParam].isUse;
      tmpstr := GetPortName(ListPars[nList].SettParserAscii[nParam].TypeSrcData);
      GUIParsAscii[nParam].BtSett.Hint := tmpstr;


    end;
end;

procedure TFormParserASCII.btnClearBufClick(Sender: TObject);
 var
    i, Param, pars : Cardinal;
  begin
    for Param := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
      begin
        for i := 0 to (MAX_CNT_DG - 1) do
          begin
            BufParsDG[Param].DataGraph[i].val := 0;
            BufParsDG[Param].DataGraph[i].dt := 0;
          end;
        DGiAct[Param] := 0;
        MaxValG[Param]:= -2147483647;
        MinValG[Param]:= 2147483647;
        GUIParsAscii[Param].BtClBuf.Caption := '';
      end;
    SelectParamForGraph := 0;
  end;

procedure TFormParserASCII.BtGraphOutClick(Sender: TObject);
var
  i : Integer;
begin
  SelectParamForGraph := (Sender as TButton).Tag;
  if ListPars[CurNumList].SettParserAscii[SelectParamForGraph].isUse then
    if ListPars[CurNumList].SettParserAscii[SelectParamForGraph].TypeParsASCII <> ParsString then
    begin
      //FormGraph.YMin := ParsersHEX[NumParser].SettParser[SelectParamForGraph].YMin;
      //FormGraph.YMax := ParsersHEX[NumParser].SettParser[SelectParamForGraph].YMax;

      FormGraph.YMin := MinValG[SelectParamForGraph];
      FormGraph.YMax := MaxValG[SelectParamForGraph];

      FormGraph.WindowState := wsNormal;

      if isPauseGraph then
        begin
          FormGraph.WriteNewName(ListPars[CurNumList].SettParserAscii[SelectParamForGraph].ParamName + ' ( Plotter data logging paused )');
          FormGraph.Color := TColor($0088FF);
        end
      else
        begin
          FormGraph.WriteNewName(ListPars[CurNumList].SettParserAscii[SelectParamForGraph].ParamName);
          FormGraph.Color := FormParser.Color;
        end;
      for i:= 0 to 3 do
        begin
          FormGraph.isMin[i] := ListPars[CurNumList].SettParserAscii[SelectParamForGraph].isThrLCol[i];
          FormGraph.isMax[i] := ListPars[CurNumList].SettParserAscii[SelectParamForGraph].isThrHCol[i];
          FormGraph.CMax[i]  := ListPars[CurNumList].SettParserAscii[SelectParamForGraph].ThrHCol[i];
          FormGraph.CMin[i]  := ListPars[CurNumList].SettParserAscii[SelectParamForGraph].ThrLCol[i];
        end;

      FormGraph.GndColor := ListPars[CurNumList].SettParserAscii[SelectParamForGraph].Color;

      FormGraph.pDG := @BufParsDG[SelectParamForGraph].DataGraph;
      FormGraph.DGiAct := @DGiAct[SelectParamForGraph];
      FormGraph.MaxVal := @MaxValG[SelectParamForGraph];
      FormGraph.MinVal := @MinValG[SelectParamForGraph];


      isGraph := True;
      FormGraph.isBuf := NumListOutGR = CurNumList;
      FormGraph.ShowModal();
      isGraph := False;
      //ParsersHEX[NumParser].SettParser[SelectParamForGraph].YMin := FormGraph.YMin;
      //ParsersHEX[NumParser].SettParser[SelectParamForGraph].YMax := FormGraph.YMax;
    end
    else ShowMessage('The result must be a number of type INT or FLOAT. Change the parser settings.')
  else
    ShowMessage('Parser of this parameter is disabled!');
  end;



procedure TFormParserASCII.SetNumParser(NumListCmd : Cardinal);
begin
  if isSyncMacros then
    begin
      if (CurNumList >= 1) and (CurNumList <= MAX_LIST_PARS_ASCII) then
        CurNumList := NumListCmd;
      UpdateList(CurNumList, 0);
    end;
end;

procedure ResetMaxMin(NumList : Cardinal; NumParam : Cardinal);
begin
  ParsMaxMin[NumList].dtMax[NumParam] := 0;
  ParsMaxMin[NumList].dtMin[NumParam] := 0;
  ParsMaxMin[NumList].valMax_Int[NumParam] := Low(Integer);
  ParsMaxMin[NumList].valMin_Int[NumParam] := High(Integer);
  ParsMaxMin[NumList].valMax_float[NumParam] := -1.79E308;
  ParsMaxMin[NumList].valMin_float[NumParam] := 1.79E308;
end;

procedure TFormParserASCII.SetLogBGColor(BGColor : TColor);
var
  i: integer;
begin
  for i:=1 to MAX_LIST_PARS_ASCII do
    ListPars[i].ColorBG_LOG := BGColor;
end;

procedure ClearListSettParserASCII(numList : integer);
var i : Integer;
begin
  if numList > 0 then
    begin
      ListPars[numList].Name := 'CLR';
      for i := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
        begin
          ClearSettParserASCII(@ListPars[numList].SettParserAscii[i]);
          ListDataLast[numList].dt[i] := 0;
          ListDataLast[numList].val[i] := '';
        end;
    end
  else
    begin
      ListParsBuf.Name := 'EMPTY';
      for i := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
        begin
          ClearSettParserASCII(@ListParsBuf.SettParserAscii[i]);
        end;
    end;
end;

procedure ClearListDataParserASCII(numList : integer);
var i, j : Integer;
begin
  if numList > 0 then
    begin
      for i := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
        begin
          ListDataLast[numList].dt[i] := 0;
          ListDataLast[numList].val[i] := '';
        end;
    end
  else
    begin
      for j := 1 to MAX_LIST_PARS_ASCII do
        for i := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
          begin
            ListDataLast[j].dt[i] := 0;
            ListDataLast[j].val[i] := '';
          end;

    end;
end;


procedure TFormParserASCII.SaveCfg;
var
  nList : Cardinal;
begin
  if isWriteLog then
    btnBtLOG.Click;

  if not isSaveReq then Exit;
  AssignFile(CfgFilePars, ExtractFilePath(Application.ExeName) + FileCfgName);
  try
    Rewrite(CfgFilePars);
    for nList := 1 to MAX_LIST_PARS_ASCII do
      Write(CfgFilePars, ListPars[nList]);
    CloseFile(CfgFilePars);
    isSaveReq := false;
  except
    ShowMessage('Error saving to file ' + FileCfgName);
    isSaveReq := true;
  end;

end;

function StrCheckFloat(str: string) : string;
begin
  if DecimalSeparator = ',' then
    Result := StringReplace(str, '.', ',', []);
  if DecimalSeparator = '.' then
    Result := StringReplace(str, ',', '.', []);
end;


function SetColorLine(val : integer; NumList : Cardinal; numPars : Byte; SPAscii : TSettParserAscii) : boolean;
var
  Color : TColor;
  nColor : Byte;
  isEvent :array[0..3] of Boolean;
begin
  Color := SPAscii.Color;
  nColor := 0;

  while nColor < 4 do
    begin
      isEvent[nColor] := False;
      if (SPAscii.isThrHCol[nColor] or SPAscii.isThrLCol[nColor]) then
        begin
          if (SPAscii.ThrHCol[nColor] >= SPAscii.ThrLCol[nColor])  then
            begin
              if SPAscii.isThrHCol[nColor] and SPAscii.isThrLCol[nColor] then
                begin
                  if (val <= SPAscii.ThrHCol[nColor]) and (val >= SPAscii.ThrLCol[nColor]) then
                    begin
                      Color := ColorsLine[nColor];
                      isEvent[nColor] := True;
                    end;
                end;

              if SPAscii.isThrHCol[nColor] and not SPAscii.isThrLCol[nColor] then
                begin
                  if val <= SPAscii.ThrHCol[nColor] then
                    begin
                      Color := ColorsLine[nColor];
                      isEvent[nColor] := True;
                    end;
                end;

              if SPAscii.isThrLCol[nColor] and not SPAscii.isThrHCol[nColor] then
                begin
                  if val >= SPAscii.ThrLCol[nColor] then
                    begin
                      Color := ColorsLine[nColor];
                      isEvent[nColor] := True;
                    end;
                end;
            end;

          if SPAscii.ThrHCol[nColor] <= SPAscii.ThrLCol[nColor] then
            begin
              if SPAscii.isThrHCol[nColor] and SPAscii.isThrLCol[nColor] then
                begin
                  if (val <= SPAscii.ThrHCol[nColor]) or (val >= SPAscii.ThrLCol[nColor]) then
                    begin
                      Color := ColorsLine[nColor];
                      isEvent[nColor] := True;
                    end;
                end;


              if SPAscii.isThrHCol[nColor] and not SPAscii.isThrLCol[nColor] then
                begin
                  if val <= SPAscii.ThrHCol[nColor] then
                    begin
                      Color := ColorsLine[nColor];
                      isEvent[nColor] := True;
                    end;
                end;

              if SPAscii.isThrLCol[nColor] and not SPAscii.isThrHCol[nColor] then
                begin
                  if val >= SPAscii.ThrLCol[nColor] then
                    begin
                      Color := ColorsLine[nColor];
                      isEvent[nColor] := True;
                    end;
                end;
            end;
        end;

        if isEvent[nColor] and SPAscii.isExpWindowCol[nColor] and not isMaxWin then
          begin
            Application.Restore;
            FormParserASCII.Show();
            FormParserASCII.WindowState := wsNormal;
            isMaxWin := true;
            CurNumList := NumList;
            UpdateList(NumList, 0);
          end;
      inc(nColor);
    end;

  if NumList = CurNumList then
    begin
      GUIParsAscii[numPars].StName.Color := Color;
      GUIParsAscii[numPars].StTime.Color := Color;
      GUIParsAscii[numPars].StVal.Color := Color;
    end;

  Result := isEvent[0] or isEvent[1] or isEvent[2] or isEvent[3];
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
        res := res + ChrZ(HexToInt(str[i]) * 16 + HexToInt(str[i + 1]));
        inc(iBytes);
        i := i + 3;
      end;
    result := res;
  end;

procedure TFormParserASCII.SetNewStr1(SrcData : TTypeSrcData; newstr : string; isHEX : Boolean; DateTime: TDateTime; Cnt : Integer);
var
  tmpstr, tmpdt, tmpt, tmpconvert, strlog, strLogFile : string;

  ColorPort : TColor;
  numParser : Cardinal;
  numList   : Cardinal;
  tmpValInt : Integer;
  tmpValFloat : double;
  isPars : Boolean;
  i : Cardinal;
  isEvent : Boolean;
  val : Int64;
  strproc : string[16];
  isUseList : Boolean;
  mult : Cardinal;
begin
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
  tmpdt := FormatDateTime('yyyy/mm/dd hh:mm:ss:zzz', DateTime);
  tmpt  := SetTimeStamp(true, TerminalST.Form1.isAddDate, DateTime);
  ctxt3.Caption := tmpstr;
  ctxt4.Caption := FormatDateTime('hh:mm:ss:zzz', DateTime);;
  ctxt4.Hint := tmpdt;

  ctxt3.Color := ColorPort;
  ctxt4.Color := ColorPort;
  ctxt5.Color := ColorPort;
  ctxt5.Caption := IntToStr(Cnt);

  if isHEX then
    begin
      tmpconvert := HexToStr(newstr);
      newstr := tmpconvert;
      //mmoInput.Text := 'Parser works only for ASCII mode!';
      //mmoInput.Color := clYellow;
      //ctxt5.Caption := '---';
      //Exit;
    end;

  mmoInput.Text := newstr;

  //else if mmoInput.Color <> FormParserASCII.Color then
  //  mmoInput.Color := FormParserASCII.Color;

  //for numParser := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
  //  GUIParsAscii[numParser].StTime.Font.Style := [];

  For numList := 1 to MAX_LIST_PARS_ASCII do
    begin
      isUseList := ListPars[numList].Res3[0];

      if isUseList then
        begin
          strLogFile := '';
          strlog := '';
          isEvent := False;

          for numParser := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
            begin
              mult := ListPars[numList].SettParserAscii[numParser].Res1[0];
              tmpstr := ParsASCII(SrcData, newstr, @ListPars[numList].SettParserAscii[numParser]);
              if tmpstr <> '' then
                begin
                  isPars := False;

                  if ListPars[numList].SettParserAscii[numParser].TypeParsASCII = ParsInt then
                    begin
                      isPars := TryStrToInt(tmpstr, tmpValInt);
                      if isPars then
                        begin
                          val := tmpValInt;
                          if ParsMaxMin[numList].valMax_Int[numParser] <= tmpValInt then
                            begin
                              ParsMaxMin[numList].valMax_Int[numParser] := tmpValInt;
                              ParsMaxMin[numList].dtMax[numParser] := DateTime;
                              if (numList = TrackingMinMaxList) and (NumParser = TrackingMinMaxParam) then
                                ctxt1.Caption :=' ' + tmpdt + ' Max: ' + IntToStr(tmpValInt);
                            end;

                          if ParsMaxMin[numList].valMin_Int[numParser] >= tmpValInt then
                            begin
                              ParsMaxMin[numList].valMin_Int[numParser] := tmpValInt;
                              ParsMaxMin[numList].dtMin[numParser] := DateTime;
                              if (numList = TrackingMinMaxList) and (NumParser = TrackingMinMaxParam) then
                                ctxt2.Caption :=' ' + tmpdt + ' Min: ' + IntToStr(tmpValInt);
                            end;

                          if SetColorLine(Integer(tmpValInt), numList, numParser, ListPars[numList].SettParserAscii[numParser]) then
                            isEvent := True;
                        end;
                    end
                  else if ListPars[numList].SettParserAscii[numParser].TypeParsASCII = ParsFloat then
                    begin
                      isPars := TryStrToFloat(StrCheckFloat(tmpstr), tmpValFloat);

                      if isPars then
                        begin
                          tmpValFloat := tmpValFloat * mult;
                          tmpstr := FloatToStr(tmpValFloat);
                          val := Trunc(tmpValFloat);
                          if ParsMaxMin[numList].valMax_Float[numParser] <= tmpValFloat then
                            begin
                              ParsMaxMin[numList].valMax_Float[numParser] := tmpValFloat;
                              ParsMaxMin[numList].dtMax[numParser] := DateTime;
                              if (numList = TrackingMinMaxList) and (NumParser = TrackingMinMaxParam) then
                                ctxt1.Caption :=' ' + tmpdt + ' Max: ' + FloatToStr(tmpValFloat);
                            end;

                          if ParsMaxMin[numList].valMin_Float[numParser] >= tmpValFloat then
                            begin
                              ParsMaxMin[numList].valMin_Float[numParser] := tmpValFloat;
                              ParsMaxMin[numList].dtMin[numParser] := DateTime;
                              if (numList = TrackingMinMaxList) and (NumParser = TrackingMinMaxParam) then
                                ctxt2.Caption :=' ' + tmpdt + ' Min: ' + FloatToStr(tmpValFloat);
                            end;

                          if SetColorLine(Trunc(tmpValFloat), numList, numParser, ListPars[numList].SettParserAscii[numParser]) then
                            isEvent := true;
                        end;
                    end
                  else if ListPars[numList].SettParserAscii[numParser].TypeParsASCII = ParsString then
                    tmpstr := '"' + tmpstr + '"';

                  if (numList = CurNumList) then
                    begin
                      if isPars then
                        GUIParsAscii[numParser].StVal.Font.Style := [fsBold]
                      else if ListPars[numList].SettParserAscii[numParser].TypeParsASCII <> ParsString then
                        GUIParsAscii[numParser].StVal.Font.Style := [fsBold, fsUnderline];
                    end;
              //ParsMaxMin

                  if isPars then
                    begin
                      inc(Counts[numParser, NumList]);

                      if numList = CurNumList then
                        GUIParsAscii[numParser].StCount.Caption := IntToStr(Counts[numParser, NumList]);

                      if (NumListOutGR = numList) then
                        begin
                          if not isPauseGraph then
                            begin
                              DataGraphBufAdd(val, DateTime, numParser);
                              Str((100 * DGiAct[numParser] / MAX_CNT_DG):3:2,  strProc);
                              GUIParsAscii[numParser].BtClBuf.Caption := strProc + '%';
                            end;
                        end;

                      if (isGraph) and (numParser = SelectParamForGraph) and (not isPauseGraph) and (NumList = CurNumList) then
                        FormGraph.WriteNewPoint(val, DateTime);

                      if (isChart) and (numParser = SelectParamForGraph) and (not isPauseGraph) and (NumList = CurNumList) then
                        frmBarChart.AddNewData(val);

                      if (NumList = CurNumList) then
                        begin
                          if val > MaxValG[numParser] then
                            begin
                              MaxValG[numParser] := val;
                            end;

                          if val < MinValG[numParser] then
                            begin
                              MinValG[numParser] := val;
                            end;
                        end;
                    end;

                  if isWriteLog and not isPauseLog and ((isEvent and isLogFileEventOnly) or not isLogFileEventOnly) then
                    ListResStrParser[numList].ResStrParser[numParser] := tmpdt +':'+ ListPars[numList].SettParserAscii[numParser].ParamName + '=' + tmpstr + ' ';

                  ListDataLast[numList].dt[numParser] := DateTime;
                  ListDataLast[numList].val[numParser] := tmpstr;
                  if ListPars[numList].isSendMainLog or ListPars[numList].isSendSecondLog or ListPars[numList].isSendParserLog then
                    strlog := strlog + ListPars[numList].SettParserAscii[numParser].ParamName + '=' + tmpstr + ' ';
                end;

              if numList = CurNumList then
                begin
                  if tmpstr <> '' then
                    begin
                      GUIParsAscii[numParser].StTime.Caption := tmpdt;
                      GUIParsAscii[numParser].StVal.Caption := tmpstr;
                      GUIParsAscii[numParser].StTime.Font.Style := [fsBold];
                    end
                  else
                    GUIParsAscii[numParser].StTime.Font.Style := [];
                end;
            end;

          if (strlog <> '') and isOutLogRes then
            begin
              if ListPars[numList].isSendMainLog then
                TerminalST.Form1.MemoUpd(DateTime, '[ParsA' + Format('%03d', [numList])+ ']' + tmpt , strLog, '', '', '', '', TRUE, ListPars[numList].ColorInLog);
              if ListPars[numList].isSendSecondLog then
                TerminalST.Form1.MemoUpd(DateTime, '', '', '', '[ParsA' + Format('%03d', [numList])+ ']' + tmpt + strLog, '', '', TRUE, ListPars[numList].ColorInLog);
              if ListPars[numList].isSendParserLog then
                 FormParserASCIILog.OutLog('[ParsA' + Format('%03d', [numList])+ ']' + tmpt + strLog, ListPars[numList].ColorInLog);
            end;

          if (strlog <> '') and isWriteLog then
            begin
              if strLogFile = '' then
                strLogFile := '[ParsA' + Format('%03d', [numList])+ ']: '
            end;


          if (strLogFile <> '') and isWriteLog then
            begin
              if not isPauseLog then
                begin
                  if (isEvent and isLogFileEventOnly) or not isLogFileEventOnly then
                    begin
                      for i := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
                        begin
                          strLogFile := strLogFile + ListResStrParser[numList].ResStrParser[i];
                          ListResStrParser[numList].ResStrParser[i] := '';
                        end;
                      Inc(CntLineInFile);
                      req2.Caption := IntToStr(CntLineInFile);
                      Writeln(Log, strLogFile);
                    end;
                end;
            end;
        end;
    end;
end;



procedure TFormParserASCII.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var nList, nPars : Integer;
begin
   TerminalST.Form1.btnParserASCII.Font.Style := [];
   TerminalST.Form1.isUseParserASCII := False;
   FormParserASCII.SaveCfg;
   if isSendWinLog then
     FormParserASCIILog.Close;
   isSendWinLog := False;


   for nList := 1 to MAX_LIST_PARS_ASCII do
     for nPars := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
       begin
         ResetMaxMin(nList, nPars);
         Counts[nPars, nList]:= 0;// : array[1..MAX_PARAM_IN_LIST_PARS_ASCII, 1..MAX_LIST_PARS_ASCII] of Cardinal;
         ListResStrParser[nList].ResStrParser[nPars] := '';
         ListDataLast[nList].val[nPars] := '';
         ListDataLast[nList].dt[nPars] := 0;
       end;

end;


procedure TFormParserASCII.FormCreate(Sender: TObject);
var
  i, j, nPars, nList, ires : Integer;
  isResCfg : Boolean;
begin
  isOutLogRes := False;
  isWriteLog  := False;
  isLogFileEventOnly := false;
  TrackingMinMaxList := 0;
  TrackingMinMaxParam := 0;
  CntLineInFile := 0;

  SelectParamForGraph := 0;
  isPauseGraph := False;
  isGraph := False;
  isChart := False;

  isMaxWin := False;
  isUseAllList := False;
  GUIParsAscii[1].BtSett := btnBt1;
  GUIParsAscii[2].BtSett := btnBt2;
  GUIParsAscii[3].BtSett := btnBt3;
  GUIParsAscii[4].BtSett := btnBt4;
  GUIParsAscii[5].BtSett := btnBt5;
  GUIParsAscii[6].BtSett := btnBt6;
  GUIParsAscii[7].BtSett := btnBt7;
  GUIParsAscii[8].BtSett := btnBt8;
  GUIParsAscii[9].BtSett := btnBt9;
  GUIParsAscii[10].BtSett := btnBt10;
  GUIParsAscii[11].BtSett := btnBt11;
  GUIParsAscii[12].BtSett := btnBt12;
  GUIParsAscii[13].BtSett := btnBt13;
  GUIParsAscii[14].BtSett := btnBt14;
  GUIParsAscii[15].BtSett := btnBt15;
  GUIParsAscii[16].BtSett := btnBt16;

  GUIParsAscii[1].StName := ctxtreq1;
  GUIParsAscii[2].StName := ctxtreq4;
  GUIParsAscii[3].StName := ctxtreq7;
  GUIParsAscii[4].StName := ctxtreq10;
  GUIParsAscii[5].StName := ctxtreq13;
  GUIParsAscii[6].StName := ctxtreq16;
  GUIParsAscii[7].StName := ctxtreq19;
  GUIParsAscii[8].StName := ctxtreq22;
  GUIParsAscii[9].StName := ctxtreq25;
  GUIParsAscii[10].StName := ctxtreq28;
  GUIParsAscii[11].StName := ctxtreq31;
  GUIParsAscii[12].StName := ctxtreq34;
  GUIParsAscii[13].StName := ctxtreq37;
  GUIParsAscii[14].StName := ctxtreq40;
  GUIParsAscii[15].StName := ctxtreq43;
  GUIParsAscii[16].StName := ctxtreq46;

  GUIParsAscii[1].StTime := ctxtreq2;
  GUIParsAscii[2].StTime := ctxtreq5;
  GUIParsAscii[3].StTime := ctxtreq8;
  GUIParsAscii[4].StTime := ctxtreq11;
  GUIParsAscii[5].StTime := ctxtreq14;
  GUIParsAscii[6].StTime := ctxtreq17;
  GUIParsAscii[7].StTime := ctxtreq20;
  GUIParsAscii[8].StTime := ctxtreq23;
  GUIParsAscii[9].StTime := ctxtreq26;
  GUIParsAscii[10].StTime := ctxtreq29;
  GUIParsAscii[11].StTime := ctxtreq32;
  GUIParsAscii[12].StTime := ctxtreq35;
  GUIParsAscii[13].StTime := ctxtreq38;
  GUIParsAscii[14].StTime := ctxtreq41;
  GUIParsAscii[15].StTime := ctxtreq44;
  GUIParsAscii[16].StTime := ctxtreq47;

  GUIParsAscii[1].StVal := ctxtreq3;
  GUIParsAscii[2].StVal := ctxtreq6;
  GUIParsAscii[3].StVal := ctxtreq9;
  GUIParsAscii[4].StVal := ctxtreq12;
  GUIParsAscii[5].StVal := ctxtreq15;
  GUIParsAscii[6].StVal := ctxtreq18;
  GUIParsAscii[7].StVal := ctxtreq21;
  GUIParsAscii[8].StVal := ctxtreq24;
  GUIParsAscii[9].StVal := ctxtreq27;
  GUIParsAscii[10].StVal := ctxtreq30;
  GUIParsAscii[11].StVal := ctxtreq33;
  GUIParsAscii[12].StVal := ctxtreq36;
  GUIParsAscii[13].StVal := ctxtreq39;
  GUIParsAscii[14].StVal := ctxtreq42;
  GUIParsAscii[15].StVal := ctxtreq45;
  GUIParsAscii[16].StVal := ctxtreq48;

  GUIParsAscii[1].BtCopy := btn3;
  GUIParsAscii[2].BtCopy := btn4;
  GUIParsAscii[3].BtCopy := btn5;
  GUIParsAscii[4].BtCopy := btn6;
  GUIParsAscii[5].BtCopy := btn7;
  GUIParsAscii[6].BtCopy := btn8;
  GUIParsAscii[7].BtCopy := btn9;
  GUIParsAscii[8].BtCopy := btn10;
  GUIParsAscii[9].BtCopy := btn11;
  GUIParsAscii[10].BtCopy := btn12;
  GUIParsAscii[11].BtCopy := btn13;
  GUIParsAscii[12].BtCopy := btn14;
  GUIParsAscii[13].BtCopy := btn15;
  GUIParsAscii[14].BtCopy := btn16;
  GUIParsAscii[15].BtCopy := btn17;
  GUIParsAscii[16].BtCopy := btn18;

  GUIParsAscii[1].BtPaste := btn19;
  GUIParsAscii[2].BtPaste := btn20;
  GUIParsAscii[3].BtPaste := btn21;
  GUIParsAscii[4].BtPaste := btn22;
  GUIParsAscii[5].BtPaste := btn23;
  GUIParsAscii[6].BtPaste := btn24;
  GUIParsAscii[7].BtPaste := btn25;
  GUIParsAscii[8].BtPaste := btn26;
  GUIParsAscii[9].BtPaste := btn27;
  GUIParsAscii[10].BtPaste := btn28;
  GUIParsAscii[11].BtPaste := btn29;
  GUIParsAscii[12].BtPaste := btn30;
  GUIParsAscii[13].BtPaste := btn31;
  GUIParsAscii[14].BtPaste := btn32;
  GUIParsAscii[15].BtPaste := btn33;
  GUIParsAscii[16].BtPaste := btn34;

  GUIParsAscii[1].BtDel := btnBt22;
  GUIParsAscii[2].BtDel := btnBt23;
  GUIParsAscii[3].BtDel := btnBt24;
  GUIParsAscii[4].BtDel := btnBt25;
  GUIParsAscii[5].BtDel := btnBt26;
  GUIParsAscii[6].BtDel := btnBt27;
  GUIParsAscii[7].BtDel := btnBt28;
  GUIParsAscii[8].BtDel := btnBt29;
  GUIParsAscii[9].BtDel := btnBt30;
  GUIParsAscii[10].BtDel := btnBt31;
  GUIParsAscii[11].BtDel := btnBt32;
  GUIParsAscii[12].BtDel := btnBt33;
  GUIParsAscii[13].BtDel := btnBt34;
  GUIParsAscii[14].BtDel := btnBt35;
  GUIParsAscii[15].BtDel := btnBt36;
  GUIParsAscii[16].BtDel := btnBt37;

  GUIParsAscii[1].BtGraph := btnBt38;
  GUIParsAscii[2].BtGraph := btnBt39;
  GUIParsAscii[3].BtGraph := btnBt40;
  GUIParsAscii[4].BtGraph := btnBt41;
  GUIParsAscii[5].BtGraph := btnBt42;
  GUIParsAscii[6].BtGraph := btnBt43;
  GUIParsAscii[7].BtGraph := btnBt44;
  GUIParsAscii[8].BtGraph := btnBt45;
  GUIParsAscii[9].BtGraph := btnBt46;
  GUIParsAscii[10].BtGraph := btnBt47;
  GUIParsAscii[11].BtGraph := btnBt48;
  GUIParsAscii[12].BtGraph := btnBt49;
  GUIParsAscii[13].BtGraph := btnBt50;
  GUIParsAscii[14].BtGraph := btnBt51;
  GUIParsAscii[15].BtGraph := btnBt52;
  GUIParsAscii[16].BtGraph := btnBt53;

  GUIParsAscii[1].BtChart := btn37;
  GUIParsAscii[2].BtChart := btn38;
  GUIParsAscii[3].BtChart := btn39;
  GUIParsAscii[4].BtChart := btn40;
  GUIParsAscii[5].BtChart := btn41;
  GUIParsAscii[6].BtChart := btn42;
  GUIParsAscii[7].BtChart := btn43;
  GUIParsAscii[8].BtChart := btn44;
  GUIParsAscii[9].BtChart := btn45;
  GUIParsAscii[10].BtChart := btn46;
  GUIParsAscii[11].BtChart := btn47;
  GUIParsAscii[12].BtChart := btn48;
  GUIParsAscii[13].BtChart := btn49;
  GUIParsAscii[14].BtChart := btn50;
  GUIParsAscii[15].BtChart := btn51;
  GUIParsAscii[16].BtChart := btn52;

  GUIParsAscii[1].BtClBuf := btnBt54;
  GUIParsAscii[2].BtClBuf := btnBt55;
  GUIParsAscii[3].BtClBuf := btnBt56;
  GUIParsAscii[4].BtClBuf := btnBt57;
  GUIParsAscii[5].BtClBuf := btnBt58;
  GUIParsAscii[6].BtClBuf := btnBt59;
  GUIParsAscii[7].BtClBuf := btnBt60;
  GUIParsAscii[8].BtClBuf := btnBt61;
  GUIParsAscii[9].BtClBuf := btnBt62;
  GUIParsAscii[10].BtClBuf := btnBt63;
  GUIParsAscii[11].BtClBuf := btnBt64;
  GUIParsAscii[12].BtClBuf := btnBt65;
  GUIParsAscii[13].BtClBuf := btnBt66;
  GUIParsAscii[14].BtClBuf := btnBt67;
  GUIParsAscii[15].BtClBuf := btnBt68;
  GUIParsAscii[16].BtClBuf := btnBt69;

  GUIParsAscii[1].RBEnClrBuf := rb1;
  GUIParsAscii[2].RBEnClrBuf := rb2;
  GUIParsAscii[3].RBEnClrBuf := rb3;
  GUIParsAscii[4].RBEnClrBuf := rb4;
  GUIParsAscii[5].RBEnClrBuf := rb5;
  GUIParsAscii[6].RBEnClrBuf := rb6;
  GUIParsAscii[7].RBEnClrBuf := rb7;
  GUIParsAscii[8].RBEnClrBuf := rb8;
  GUIParsAscii[9].RBEnClrBuf := rb9;
  GUIParsAscii[10].RBEnClrBuf := rb10;
  GUIParsAscii[11].RBEnClrBuf := rb11;
  GUIParsAscii[12].RBEnClrBuf := rb12;
  GUIParsAscii[13].RBEnClrBuf := rb13;
  GUIParsAscii[14].RBEnClrBuf := rb14;
  GUIParsAscii[15].RBEnClrBuf := rb15;
  GUIParsAscii[16].RBEnClrBuf := rb16;

  GUIParsAscii[1].StCount := ctxt8;
  GUIParsAscii[2].StCount := ctxt9;
  GUIParsAscii[3].StCount := ctxt10;
  GUIParsAscii[4].StCount := ctxt11;
  GUIParsAscii[5].StCount := ctxt12;
  GUIParsAscii[6].StCount := ctxt13;
  GUIParsAscii[7].StCount := ctxt14;
  GUIParsAscii[8].StCount := ctxt15;
  GUIParsAscii[9].StCount := ctxt16;
  GUIParsAscii[10].StCount := ctxt17;
  GUIParsAscii[11].StCount := ctxt18;
  GUIParsAscii[12].StCount := ctxt19;
  GUIParsAscii[13].StCount := ctxt20;
  GUIParsAscii[14].StCount := ctxt21;
  GUIParsAscii[15].StCount := ctxt22;
  GUIParsAscii[16].StCount := ctxt23;


  btnBt19.Font.Name:='Symbol';
  btnBt19.Caption:=chr($AF);

  ColorsLine[0] := clRed;
  ColorsLine[1] := clYellow;
  ColorsLine[2] := clLime;
  ColorsLine[3] := clAqua;



  for nList := 1 to MAX_LIST_PARS_ASCII do
    for nPars := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
      begin
        ResetMaxMin(nList, nPars);
        Counts[nPars, nList]:= 0;// : array[1..MAX_PARAM_IN_LIST_PARS_ASCII, 1..MAX_LIST_PARS_ASCII] of Cardinal;
        ListResStrParser[nList].ResStrParser[nPars] := '';
        ListDataLast[nList].val[nPars] := '';
        ListDataLast[nList].dt[nPars] := 0;
      end;

  for i := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
    begin
      GUIParsAscii[i].BtSett.Tag := i;
      GUIParsAscii[i].BtCopy.Tag := i;
      GUIParsAscii[i].BtPaste.Tag := i;
      GUIParsAscii[i].BtDel.Tag := i;
      GUIParsAscii[i].StName.Tag := i;
      GUIParsAscii[i].StTime.Tag := i;
      GUIParsAscii[i].StVal.Tag := i;
      GUIParsAscii[i].BtGraph.Tag := i;
      GUIParsAscii[i].BtChart.Tag := i;
      GUIParsAscii[i].BtClBuf.Tag := i;
      GUIParsAscii[i].RBEnClrBuf.Tag := i;
      GUIParsAscii[i].StCount.Tag := i;

      GUIParsAscii[i].BtSett.OnClick := btnBtSett1Click;
      GUIParsAscii[i].BtSett.Caption := IntToStr(i);
      GUIParsAscii[i].BtCopy.OnClick := btnCopySettPars;
      GUIParsAscii[i].BtPaste.OnClick := btnPasteSettPars;
      GUIParsAscii[i].BtDel.OnClick := btnDelSettPars;
      GUIParsAscii[i].StVal.OnClick := SetMinMaxClick;
      GUIParsAscii[i].BtGraph.OnClick := BtGraphOutClick;
      GUIParsAscii[i].BtClBuf.OnClick := BtGraphClrClick;
      GUIParsAscii[i].RBEnClrBuf.OnClick := rbEnClr1Click;
      GUIParsAscii[i].BtChart.OnClick := BtChartOutClick;
      GUIParsAscii[i].StName.OnDblClick := NameDblClick;
      MinValG[i] := 2147483647;
      MaxValG[i] := -2147483647;

      GUIParsAscii[i].StCount.Caption := '';
    end;


  isResCfg := False;
  AssignFile(CfgFilePars, ExtractFilePath(Application.ExeName) + FileCfgName);
  if FileExists(ExtractFilePath(Application.ExeName) + FileCfgName) then
    begin
      try
        Reset(CfgFilePars);
        for nList := 1 to MAX_LIST_PARS_ASCII do
          begin
            Read(CfgFilePars, ListPars[nList]);
            for nPars := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
              if ListPars[nList].SettParserAscii[nPars].Res1[0] = 0 then
                ListPars[nList].SettParserAscii[nPars].Res1[0] := 1;
          end;
      except
        isResCfg := True;
      end;
    end
  else
    begin
      isResCfg := True;
    end;

  if isResCfg then
    begin
      for nList := 1 to MAX_LIST_PARS_ASCII do
        begin
          ListPars[nList].Name := 'List ' + IntToStr(nList);
          ListPars[nList].isSendMainLog := False;
          ListPars[nList].isSendSecondLog := False;
          ListPars[nList].isSendParserLog := True;
          ListPars[nList].ColorInLog := clBlack;
          ListPars[nList].isSyncMacros := False;

          for ires := 0 to MAX_PARAM_IN_LIST_PARS_ASCII do
            begin
              ListPars[nList].Res1[ires] := 0;
              ListPars[nList].Res2[ires] := 0;
              ListPars[nList].Res3[ires] := true;
              ListPars[nList].Res4[ires] := false;
              ListPars[nList].Res5[ires] := '';
            end;

          for nPars := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
            begin
              ListPars[nList].SettParserAscii[nPars].ParamName := '---';
              ListPars[nList].SettParserAscii[nPars].isUse := False;
              ListPars[nList].SettParserAscii[nPars].Color := clWhite;
              ListPars[nList].SettParserAscii[nPars].TypeParsASCII := ParsString;
              ListPars[nList].SettParserAscii[nPars].TypeSrcData := SrcPortMain;
              ListPars[nList].SettParserAscii[nPars].StartSubstring := '';
              ListPars[nList].SettParserAscii[nPars].BeginLine := '';
              ListPars[nList].SettParserAscii[nPars].Sep[0] := Ord(',');
              ListPars[nList].SettParserAscii[nPars].Sep[1] := 0;
              ListPars[nList].SettParserAscii[nPars].Sep[2] := 0;
              ListPars[nList].SettParserAscii[nPars].Sep[3] := 0;
              ListPars[nList].SettParserAscii[nPars].Sep[4] := 0;
              ListPars[nList].SettParserAscii[nPars].Sep[5] := 0;
              ListPars[nList].SettParserAscii[nPars].ParamNum := 1;
              ListPars[nList].SettParserAscii[nPars].CentralVal := 0;
              ListPars[nList].SettParserAscii[nPars].ShiftVal := 128;


              for j:= 0 to 3 do
                begin
                  ListPars[nList].SettParserAscii[nPars].isThrHCol[j]      := false;
                  ListPars[nList].SettParserAscii[nPars].isThrLCol[j]      := false;
                  ListPars[nList].SettParserAscii[nPars].isExpWindowCol[j] := false;
                  ListPars[nList].SettParserAscii[nPars].ThrHCol[j]        := 0;
                  ListPars[nList].SettParserAscii[nPars].ThrLCol[j]        := 0;
                end;

               for ires := 0 to MAX_PARAM_IN_LIST_PARS_ASCII do
                 begin
                   ListPars[nList].SettParserAscii[nPars].Res1[ires] := 0;
                   ListPars[nList].SettParserAscii[nPars].Res2[ires] := 0;
                   ListPars[nList].SettParserAscii[nPars].Res3[ires] := true;
                   ListPars[nList].SettParserAscii[nPars].Res4[ires] := false;
                   ListPars[nList].SettParserAscii[nPars].Res5[ires] := '';
                 end;
              ListPars[nList].ColorBG_LOG := clWindow;
              ListPars[nList].SettParserAscii[nPars].Res1[0] := 1;
            end;
        end;

      try
        Rewrite(CfgFilePars);
        for nList := 1 to MAX_LIST_PARS_ASCII do
          Write(CfgFilePars, ListPars[nList]);
        CloseFile(CfgFilePars);
      except
        ShowMessage('Error saving to file ' + FileCfgName);
      end;
    end;


  CurNumList := 1;
  for nList := 1 to MAX_LIST_PARS_ASCII do
    begin
      if ListPars[nList].isActiv then
        CurNumList := nList;
    end;

  rb18.Checked := True;
  rb18.Color := FormParserASCII.Color;
  NumListOutGR := CurNumList;
  isSyncMacros := ListPars[CurNumList].isSyncMacros;
  chk7.Checked := isSyncMacros;

  UpdateList(CurNumList, 0);
  ClearSettParserASCII(@SettParserAsciiBuf);
  ClearListSettParserASCII(0);
  ClearListDataParserASCII(0);


end;

procedure TFormParserASCII.btnBtSett1Click(Sender: TObject);
begin
  (Sender as TButton).Enabled := False;
  FormSetParsAscii.SettParserAscii := ListPars[CurNumList].SettParserAscii[(Sender as TButton).Tag];
  FormSetParsAscii.SettParserAsciiBuf := SettParserAsciiBuf;
  if mmoInput.Text <> '' then
    FormSetParsAscii.mmo1.Text := mmoInput.Text;
  FormSetParsAscii.ShowModal;
  if FormSetParsAscii.isUpdate then
    begin
      ListPars[CurNumList].SettParserAscii[(Sender as TButton).Tag] := FormSetParsAscii.SettParserAscii;


      ResetMaxMin(CurNumList, (Sender as TButton).Tag);

      if (TrackingMinMaxList = CurNumList) and (TrackingMinMaxParam = (Sender as TButton).Tag) then
        ctxt7.Caption := ListPars[CurNumList].SettParserAscii[(Sender as TButton).Tag].ParamName;

      Counts[(Sender as TButton).Tag, CurNumList] := 0;

      UpdateList(CurNumList, (Sender as TButton).Tag);
    end;
  SettParserAsciiBuf := FormSetParsAscii.SettParserAsciiBuf;
  (Sender as TButton).Enabled := True;
end;

procedure TFormParserASCII.btnBt17Click(Sender: TObject);
begin
  if CurNumList > 1 then
    Dec(CurNumList);
  UpdateList(CurNumList, 0);
end;

procedure TFormParserASCII.btnBt18Click(Sender: TObject);
begin
  if CurNumList < MAX_LIST_PARS_ASCII then
    Inc(CurNumList);
  UpdateList(CurNumList, 0);
end;

procedure TFormParserASCII.FormActivate(Sender: TObject);
begin
  isSaveReq := True;
  mmoInput.Color := FormSetParsASCII.Color;
end;

procedure TFormParserASCII.btnCopySettPars(Sender: TObject);
begin
  SettParserAsciiBuf := ListPars[CurNumList].SettParserAscii[(Sender as TButton).Tag];
  //UpdateList(CurNumList, (Sender as TButton).Tag);
end;

procedure TFormParserASCII.btnPasteSettPars(Sender: TObject);
begin
  ListPars[CurNumList].SettParserAscii[(Sender as TButton).Tag] := SettParserAsciiBuf;
  UpdateList(CurNumList, (Sender as TButton).Tag);


  ResetMaxMin(CurNumList, (Sender as TButton).Tag);
  if (TrackingMinMaxList = CurNumList) and (TrackingMinMaxParam = (Sender as TButton).Tag) then
    ctxt7.Caption := ListPars[CurNumList].SettParserAscii[(Sender as TButton).Tag].ParamName;
end;

procedure TFormParserASCII.btnDelSettPars(Sender: TObject);
begin
  ClearSettParserASCII(@ListPars[CurNumList].SettParserAscii[(Sender as TButton).Tag]);
  UpdateList(CurNumList, (Sender as TButton).Tag);


  ResetMaxMin(CurNumList, (Sender as TButton).Tag);
  if (TrackingMinMaxList = CurNumList) and (TrackingMinMaxParam = (Sender as TButton).Tag) then
    begin
      ctxt7.Caption := '';
      ctxt1.Caption := '';
      ctxt2.Caption := '';
      btn1.Enabled := False;
    end;
end;

procedure TFormParserASCII.btnBt70Click(Sender: TObject);
begin
  ListParsBuf := ListPars[CurNumList];
  //UpdateList(CurNumList, 0);
end;

procedure TFormParserASCII.btnBt71Click(Sender: TObject);
begin
  ListPars[CurNumList] := ListParsBuf;
  UpdateList(CurNumList, 0);
  rb17.Checked := False;
  (Sender as TButton).Enabled := False;
end;

procedure TFormParserASCII.rb17Click(Sender: TObject);
begin
  btnBt21.Enabled := True;
  btnBt71.Enabled := True;
end;

procedure TFormParserASCII.btnBt21Click(Sender: TObject);
begin
  rb17.Checked := False;
  (Sender as TButton).Enabled := False;
  ClearListSettParserASCII(CurNumList);
  UpdateList(CurNumList, 0);
end;

procedure TFormParserASCII.chk4Click(Sender: TObject);
begin
  ListPars[CurNumList].isSendMainLog := (Sender as TCheckBox).Checked;
end;

procedure TFormParserASCII.chk5Click(Sender: TObject);
begin
  ListPars[CurNumList].isSendSecondLog := (Sender as TCheckBox).Checked;
end;

procedure TFormParserASCII.chk6Click(Sender: TObject);
begin
  ListPars[CurNumList].isSendParserLog := (Sender as TCheckBox).Checked;
end;

procedure TFormParserASCII.ctxt6Click(Sender: TObject);
begin
  dlgColor1.Color := ListPars[CurNumList].ColorInLog;
  if dlgColor1.Execute then
    begin
      ListPars[CurNumList].ColorInLog := dlgColor1.Color;
      (Sender as TStaticText).Color := ListPars[CurNumList].ColorInLog;
      (Sender as TStaticText).Font.Color := ListPars[CurNumList].ColorInLog xor $00FFFFFF;
    end;
end;

procedure TFormParserASCII.btn54Click(Sender: TObject);
begin
  if not isSendWinLog then
    begin
      isSendWinLog := True;
      FormParserASCIILog.Position := poDesktopCenter;
      FormParserASCIILog.Color := FormParserASCII.Color;
      FormParserASCIILog.BGColor := ListPars[CurNumList].ColorBG_LOG;
      FormParserASCIILog.Show;
      FormParserASCIILog.WindowState := wsNormal;
    end
  else
    begin
      FormParserASCIILog.Position := poDesktopCenter;
      FormParserASCIILog.WindowState := wsNormal;
    end;
end;

procedure TFormParserASCII.btnBt72Click(Sender: TObject);
begin
  isOutLogRes := not isOutLogRes;

  if isOutLogRes then (Sender as TButton).Caption := '||'
  else (Sender as TButton).Caption := '>';
end;

procedure TFormParserASCII.btnBt73Click(Sender: TObject);
var i : Byte;
begin
  for i := 1 to MAX_LIST_PARS_ASCII do
    begin
      ListPars[i].isSendMainLog   := False;
      ListPars[i].isSendSecondLog := False;
      ListPars[i].isSendParserLog    := False;
      ListPars[i].ColorInLog    := clGreen;
    end;
  FormParserASCII.chk4.Checked := False;
  FormParserASCII.chk5.Checked := False;
  FormParserASCII.chk6.Checked := False;
  FormParserASCII.ctxt6.Color := clGreen;
  FormParserASCII.ctxt6.Font.Color := FormParser.ctxt6.Color xor $00FFFFFF;
end;

procedure TFormParserASCII.btnBtLOGClick(Sender: TObject);
var i, j : Integer;
begin
  isPauseLog := False;
  btnBt20.Caption := '||';
  btnBt20.Hint := 'Pause logging to file';

  //CntStrInLog := 0;
  //ctxt2.Caption := 'Lines in the log: ' + IntToStr(CntStrInLog);

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
              //req50.Caption := 'LOG: ' +  LogName;
              (Sender as TButton).Caption := 'Stop LOG in file';
              btnBt20.Enabled := True;
              req1.Caption := dlgOpenLogOpen.FileName;
              CntLineInFile := 0;
              req2.Caption := IntToStr(CntLineInFile);
              req2.ShowHint := True;
            end;
        end;
    end
  else
    begin
      isWriteLog := False;
      CloseFile(Log);
      //req50.Caption := '';
      (Sender as TButton).Caption := 'Start LOG in file';
      LogName := '';
      btnBt20.Enabled := False;
      req1.Caption := '';
      req2.Caption := '';
      req2.ShowHint := False;
    end;

  if isWriteLog then
    for i := 1 to MAX_LIST_PARS_ASCII do
      for j := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
        ListResStrParser[i].ResStrParser[j] := '';
end;

procedure TFormParserASCII.rb18Click(Sender: TObject);
begin
  NumListOutGR := CurNumList;
  (Sender as TRadioButton).Color := FormParserASCII.Color;
end;



procedure TFormParserASCII.btn35Click(Sender: TObject);
var
  param : Cardinal;
begin
  for param := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
    ResetMaxMin(CurNumList, param);
end;

procedure TFormParserASCII.SetMinMaxClick(Sender: TObject);
begin
  TrackingMinMaxList := CurNumList;
  TrackingMinMaxParam := (Sender as TStaticText).Tag;
  ctxt7.Caption := ListPars[TrackingMinMaxList].SettParserAscii[TrackingMinMaxParam].ParamName;

  ctxt1.Caption := ' Max: ';
  ctxt2.Caption := ' Min: ';
  if ListPars[TrackingMinMaxList].SettParserAscii[TrackingMinMaxParam].TypeParsASCII = ParsInt then
    begin
      if ParsMaxMin[TrackingMinMaxList].dtMax[TrackingMinMaxParam] <> 0 then
        ctxt1.Caption :=' ' + FormatDateTime('yyyy/mm/dd hh:mm:ss:zzz', ParsMaxMin[TrackingMinMaxList].dtMax[TrackingMinMaxParam] ) +
                      ' Max: ' + IntToStr(ParsMaxMin[TrackingMinMaxList].valMax_Int[TrackingMinMaxParam]);

      if ParsMaxMin[TrackingMinMaxList].dtMin[TrackingMinMaxParam] <> 0 then
        ctxt2.Caption :=' ' + FormatDateTime('yyyy/mm/dd hh:mm:ss:zzz', ParsMaxMin[TrackingMinMaxList].dtMin[TrackingMinMaxParam] ) +
                      ' Min: ' + IntToStr(ParsMaxMin[TrackingMinMaxList].valMin_Int[TrackingMinMaxParam]);
    end
  else if ListPars[TrackingMinMaxList].SettParserAscii[TrackingMinMaxParam].TypeParsASCII = ParsFloat then
    begin
      if ParsMaxMin[TrackingMinMaxList].dtMax[TrackingMinMaxParam] <> 0 then
        ctxt1.Caption :=' ' + FormatDateTime('yyyy/mm/dd hh:mm:ss:zzz', ParsMaxMin[TrackingMinMaxList].dtMax[TrackingMinMaxParam] ) +
                      ' Max: ' + FloatToStr(ParsMaxMin[TrackingMinMaxList].valMax_Float[TrackingMinMaxParam]);

      if ParsMaxMin[TrackingMinMaxList].dtMin[TrackingMinMaxParam] <> 0 then
        ctxt2.Caption :=' ' + FormatDateTime('yyyy/mm/dd hh:mm:ss:zzz', ParsMaxMin[TrackingMinMaxList].dtMin[TrackingMinMaxParam] ) +
                      ' Min: ' + FloatToStr(ParsMaxMin[TrackingMinMaxList].valMin_Float[TrackingMinMaxParam]);
    end
  else
    begin
      ctxt1.Caption := 'Parameter recognition is not configured';
      ctxt2.Caption := 'Parameter recognition is not configured';
    end;
  btn1.Enabled := True;
end;

procedure TFormParserASCII.btn1Click(Sender: TObject);
begin
  ResetMaxMin(TrackingMinMaxList, TrackingMinMaxParam);
end;

procedure TFormParserASCII.chk7Click(Sender: TObject);
  var i:Cardinal;
begin
  isSyncMacros := (Sender as TCheckBox).Checked;
  for i:= 1 to MAX_LIST_PARS_ASCII do
    ListPars[i].isSyncMacros := isSyncMacros;
end;

procedure TFormParserASCII.chk3Click(Sender: TObject);
begin
  isLogFileEventOnly := (Sender as TCheckBox).Checked;
end;


procedure TFormParserASCII.BtGraphClrClick(Sender: TObject);
var
  index : Integer;
  i : Cardinal;
begin
  index := (Sender as TButton).Tag;
  SelectParamForGraph := index;
  for i := 0 to (MAX_CNT_DG - 1) do
    begin
      BufParsDG[SelectParamForGraph].DataGraph[i].val := 0;
      BufParsDG[SelectParamForGraph].DataGraph[i].dt := 0;
    end;
  DGiAct[SelectParamForGraph] := 0;
  MaxValG[SelectParamForGraph]:= -2147483647;
  MinValG[SelectParamForGraph]:= 2147483647;

  GUIParsAscii[index].RBEnClrBuf.Checked := False;
  SelectParamForGraph := 0;
  (Sender as TButton).Caption := '';
  (Sender as TButton).Enabled := False;
end;

procedure TFormParserASCII.rbEnClr1Click(Sender: TObject);
var
  index : Integer;
begin
  for index := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
    GUIParsAscii[index].BtClBuf.Enabled := False;
  GUIParsAscii[(Sender as TRadioButton).Tag].BtClBuf.Enabled := True;
end;

procedure TFormParserASCII.BtChartOutClick(Sender: TObject);
var
  i : Integer;
begin
  SelectParamForGraph := (Sender as TButton).Tag;
  if ListPars[CurNumList].SettParserAscii[SelectParamForGraph].isUse then
    if ListPars[CurNumList].SettParserAscii[SelectParamForGraph].TypeParsASCII <> ParsString then
    begin
      //FormGraph.YMin := ParsersHEX[NumParser].SettParser[SelectParamForGraph].YMin;
      //FormGraph.YMax := ParsersHEX[NumParser].SettParser[SelectParamForGraph].YMax;
      frmBarChart.WindowState := wsNormal;
      frmBarChart.Color := FormParserASCII.Color;
      frmBarChart.Caption := 'Parameter histogram [ ' + ListPars[CurNumList].SettParserAscii[SelectParamForGraph].ParamName + ' ]';
      frmBarChart.pDG := @BufParsDG[SelectParamForGraph].DataGraph;
      frmBarChart.DGiAct := @DGiAct[SelectParamForGraph];
      //FormGraph.MaxVal := @MaxValG[SelectParamForGraph];
      //FormGraph.MinVal := @MinValG[SelectParamForGraph];
      frmBarChart.CenterVal := ListPars[CurNumList].SettParserAscii[SelectParamForGraph].CentralVal;
      frmBarChart.ShiftStep := ListPars[CurNumList].SettParserAscii[SelectParamForGraph].ShiftVal;  //ChartLastShift[NumParser, SelectParamForGraph];
      isChart := True;
      frmBarChart.isBuf := NumListOutGR = CurNumList;
      frmBarChart.ShowModal();
      isChart := False;
      if (frmBarChart.CenterVal <= 2147483648) and (frmBarChart.CenterVal >= -2147483647) then
        ListPars[CurNumList].SettParserAscii[SelectParamForGraph].CentralVal := frmBarChart.CenterVal;
      ListPars[CurNumList].SettParserAscii[SelectParamForGraph].ShiftVal := frmBarChart.ShiftStep;

      //ChartLastShift[NumParser, SelectParamForGraph] := frmBarChart.ShiftStep;
    end
    else ShowMessage('The result must be a number of type INT or FLOAT. Change the parser settings.')
  else
    ShowMessage('Parser of this parameter is disabled!');
  end;



procedure TFormParserASCII.btnBt19Click(Sender: TObject);
var
  i : Cardinal;
begin
  if not lst1.Visible then
    begin
      lst1.Clear();
      for i:= 1 to MAX_LIST_PARS_ASCII do
        lst1.Items.Add('' + Format('%03d', [i]) + '.' + ListPars[i].Name);
      lst1.Visible := True;
      lst1.SetFocus();
    end
  else
    lst1.Visible := False;
end;

procedure TFormParserASCII.lst1DblClick(Sender: TObject);
begin
  CurNumList := (Sender as TListBox).ItemIndex + 1;
  UpdateList(CurNumList, 0);
  lst1.Visible := False;
end;

procedure TFormParserASCII.lst1Exit(Sender: TObject);
begin
  lst1.Visible := False;
end;

procedure TFormParserASCII.lst1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      CurNumList := (Sender as TListBox).ItemIndex + 1;
      UpdateList(CurNumList, 0);
      edtEdt1.SetFocus();
      lst1.Visible := False;
    end;
end;

procedure TFormParserASCII.edtEdt1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
    i : Cardinal;
begin
  if Key = VK_DOWN then
    begin
      lst1.Clear();
      for i:= 1 to MAX_LIST_PARS_ASCII do
        lst1.Items.Add('' + Format('%03d', [i]) + '.' + ListPars[i].Name);
      lst1.Visible := True;
      lst1.SetFocus();
    end
end;

procedure TFormParserASCII.FormDeactivate(Sender: TObject);
begin
  isMaxWin := false;
end;

procedure TFormParserASCII.btn36Click(Sender: TObject);
var
  nPars : Integer;
begin
  for nPars := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
    begin
      Counts[nPars, CurNumList] := 0;// : array[1..MAX_PARAM_IN_LIST_PARS_ASCII, 1..MAX_LIST_PARS_ASCII] of Cardinal;
      GUIParsAscii[nPars].StCount.Caption := IntToStr(Counts[nPars, CurNumList]);
    end;
end;

procedure TFormParserASCII.btnBt20Click(Sender: TObject);
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

procedure TFormParserASCII.chk2Click(Sender: TObject);
var
  i: Integer;
begin
  ListPars[CurNumList].Res3[0] := (Sender as TCheckBox).Checked;
  if ListPars[CurNumList].Res3[0] then
    begin
      (Sender as TCheckBox).Color := FormParserASCII.Color;
      for i:= 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
        begin
          GUIParsAscii[i].StName.Color := ListPars[CurNumList].SettParserAscii[i].Color;
          GUIParsAscii[i].StTime.Color := ListPars[CurNumList].SettParserAscii[i].Color;
          GUIParsAscii[i].StVal.Color := ListPars[CurNumList].SettParserAscii[i].Color;
        end;
    end
  else
    begin
      (Sender as TCheckBox).Color := clRed;
      for i:= 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
        begin
          GUIParsAscii[i].StName.Color := FormParserASCII.Color;
          GUIParsAscii[i].StTime.Color := FormParserASCII.Color;
          GUIParsAscii[i].StVal.Color := FormParserASCII.Color;
        end;
    end;
end;

procedure TFormParserASCII.btn55Click(Sender: TObject);
var nList : Integer;
begin
  for nList := 1 to MAX_LIST_PARS_ASCII do
    ListPars[nList].Res3[0] := isUseAllList;

  chk2.Checked := isUseAllList;

  isUseAllList := not isUseAllList;

  if isUseAllList then
    (Sender as TButton).Caption := 'Set ALL'
  else
    (Sender as TButton).Caption := 'Res ALL';
end;

procedure TFormParserASCII.edtEdt1Change(Sender: TObject);
begin
  ListPars[CurNumList].Name := (Sender as TEdit).Text;
end;

procedure TFormParserASCII.NameDblClick(Sender: TObject);
var
  i : Integer;
begin
  for i := 1 to MAX_PARAM_IN_LIST_PARS_ASCII do
    if (GUIParsAscii[i].StName.Alignment = taCenter) then
      GUIParsAscii[i].StName.Alignment := taLeftJustify
    else
      GUIParsAscii[i].StName.Alignment := taCenter;
end;

end.



