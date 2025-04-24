unit Unit33;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Common, SyncObjs, DateUtils;



const CNT_PARAM = 16;
const CNT_POINTS = 1600;     //ширина графического окна в пикселях
//const MAX_CNT_POINT = $4;

//type TItemParam = record
//  ListParam : TCombobox;
//  EditMax   : TEdit;
//  EditMin   : TEdit;
//  BtZoomP   : TButton;
//  BtZoomM   : TButton;
//  HPos      : TUpDown;
//  VPos      : TUpDown;
// SColor    : TStaticText;
//  BtV0      : TButton;
//  BtH0      : TButton;
//  NumParam  : array[0..15] of Byte;
//  indexParam: Byte;
//  Min       : Int64;
//  Max       : Int64;
//  DeltaY    : Real;
//  LastPoint : TPoint;
//  Points    : array[1..CNT_POINTS] of TDataGraph;
//  CurParam  : integer;
//  Color     : TColor;
//  PosY      : Integer;
//  PosX      : Integer;
//  LData     : TLabel;
//  Bold      : Byte;
//  ChBoxBold : TCheckBox;
//  NumPoint  : Cardinal;
//  ReqData   : TStaticText;
//  newLine   : TLabel;
//  LastPozX  : Cardinal;
//  LastPozY  : Cardinal;
//end;

type TLineTime = (LineNo = 0, LineSec = 1, LineMin = 2, LineHour = 3);

type TArPoints = record
  Points : array[0..CNT_POINTS * 2] of TPoint;
end;

type TItemParam = record
  ChIsOutGraph: TCheckBox;
  NameParam : TStaticText;
  EditMin   : TEdit;
  EditMax   : TEdit;
  ChBoxBold : TCheckBox;
  BtZoomP   : TButton;
  BtZoomM   : TButton;
  VPos      : TUpDown;
  SColor    : TStaticText;
  BtV0      : TButton;
  StData    : TStaticText;
  StVal     : TStaticText;


  Color     : TColor;
  NumParam  : array[0..15] of Byte;
  indexParam: Byte;
  Min       : Int64;
  Max       : Int64;
  DeltaY    : Real;
  LastPoint : TPoint;
  Points    : array[1..CNT_POINTS] of TDataGraph;
  //CurParam  : integer;
  PosY      : Integer;
  PosX      : Integer;
  //LData     : TLabel;
  Bold      : Byte;
  NumPoint  : Cardinal;
  //ReqData   : TStaticText;
  LastPozX  : Cardinal;
  LastPozY  : Cardinal;
  isOutGraph : Boolean;
  Panel     : TPanel;
end;

type
  TFormMultiGraph = class(TForm)
    pnl1: TPanel;
    imgGraph: TImage;
    Button2: TButton;
    trckbr1: TTrackBar;
    Button5: TButton;
    ColorDialog: TColorDialog;
    ctxtFonColor: TStaticText;
    chkGrid: TCheckBox;
    tmrLoadDataNext: TTimer;
    tmrLoadDataPrev: TTimer;
    ctxt1: TStaticText;
    btnPrev: TButton;
    btn_Start: TButton;
    btnNext: TButton;
    tmrLoadStart: TTimer;
    tmrClear: TTimer;
    tmrEnShift: TTimer;
    pnl5: TPanel;
    chk3: TCheckBox;
    ctxt5: TStaticText;
    edt11: TEdit;
    edt12: TEdit;
    chk4: TCheckBox;
    ctxt6: TStaticText;
    ud12: TUpDown;
    btn2: TButton;
    pnl6: TPanel;
    chk1: TCheckBox;
    ctxt2: TStaticText;
    edt9: TEdit;
    edt10: TEdit;
    chk2: TCheckBox;
    ctxt3: TStaticText;
    ud10: TUpDown;
    btn1: TButton;
    pnl7: TPanel;
    chk5: TCheckBox;
    ctxt7: TStaticText;
    edt13: TEdit;
    edt14: TEdit;
    chk6: TCheckBox;
    ctxt8: TStaticText;
    ud14: TUpDown;
    btn3: TButton;
    pnl8: TPanel;
    chk7: TCheckBox;
    ctxt9: TStaticText;
    edt15: TEdit;
    edt16: TEdit;
    chk8: TCheckBox;
    ctxt10: TStaticText;
    ud16: TUpDown;
    btn4: TButton;
    pnl9: TPanel;
    chk9: TCheckBox;
    ctxt11: TStaticText;
    edt17: TEdit;
    edt18: TEdit;
    chk10: TCheckBox;
    ctxt12: TStaticText;
    ud18: TUpDown;
    btn5: TButton;
    pnl10: TPanel;
    chk11: TCheckBox;
    ctxt13: TStaticText;
    edt19: TEdit;
    edt20: TEdit;
    chk12: TCheckBox;
    ctxt14: TStaticText;
    ud20: TUpDown;
    btn6: TButton;
    pnl11: TPanel;
    chk13: TCheckBox;
    ctxt15: TStaticText;
    edt21: TEdit;
    edt22: TEdit;
    chk14: TCheckBox;
    ctxt16: TStaticText;
    ud22: TUpDown;
    btn7: TButton;
    pnl12: TPanel;
    chk15: TCheckBox;
    ctxt17: TStaticText;
    edt23: TEdit;
    edt24: TEdit;
    chk16: TCheckBox;
    ctxt18: TStaticText;
    ud24: TUpDown;
    btn8: TButton;
    pnl13: TPanel;
    chk17: TCheckBox;
    ctxt19: TStaticText;
    edt25: TEdit;
    edt26: TEdit;
    chk18: TCheckBox;
    ctxt20: TStaticText;
    ud26: TUpDown;
    btn9: TButton;
    pnl14: TPanel;
    chk19: TCheckBox;
    ctxt21: TStaticText;
    edt27: TEdit;
    edt28: TEdit;
    chk20: TCheckBox;
    ctxt22: TStaticText;
    ud28: TUpDown;
    btn10: TButton;
    pnl15: TPanel;
    chk21: TCheckBox;
    ctxt23: TStaticText;
    edt29: TEdit;
    edt30: TEdit;
    chk22: TCheckBox;
    ctxt24: TStaticText;
    ud30: TUpDown;
    btn11: TButton;
    pnl16: TPanel;
    chk23: TCheckBox;
    ctxt25: TStaticText;
    edt31: TEdit;
    edt32: TEdit;
    chk24: TCheckBox;
    ctxt26: TStaticText;
    ud32: TUpDown;
    btn12: TButton;
    pnl17: TPanel;
    chk25: TCheckBox;
    ctxt27: TStaticText;
    edt33: TEdit;
    edt34: TEdit;
    chk26: TCheckBox;
    ctxt28: TStaticText;
    ud34: TUpDown;
    btn13: TButton;
    pnl18: TPanel;
    chk27: TCheckBox;
    ctxt29: TStaticText;
    edt35: TEdit;
    edt36: TEdit;
    chk28: TCheckBox;
    ctxt30: TStaticText;
    ud36: TUpDown;
    btn14: TButton;
    pnl19: TPanel;
    chk29: TCheckBox;
    ctxt31: TStaticText;
    edt37: TEdit;
    edt38: TEdit;
    chk30: TCheckBox;
    ctxt32: TStaticText;
    ud38: TUpDown;
    btn15: TButton;
    pnl20: TPanel;
    chk31: TCheckBox;
    ctxt33: TStaticText;
    edt39: TEdit;
    edt40: TEdit;
    chk32: TCheckBox;
    ctxt34: TStaticText;
    ud40: TUpDown;
    btn16: TButton;
    btn17: TButton;
    btn18: TButton;
    btn19: TButton;
    btn20: TButton;
    btn21: TButton;
    btn22: TButton;
    btn23: TButton;
    btn24: TButton;
    btn25: TButton;
    btn26: TButton;
    btn27: TButton;
    btn28: TButton;
    btn29: TButton;
    btn30: TButton;
    btn31: TButton;
    btn32: TButton;
    btn33: TButton;
    btn34: TButton;
    btn35: TButton;
    btn36: TButton;
    btn37: TButton;
    btn38: TButton;
    btn39: TButton;
    btn40: TButton;
    btn41: TButton;
    btn42: TButton;
    btn43: TButton;
    btn44: TButton;
    btn45: TButton;
    btn46: TButton;
    btn47: TButton;
    btn48: TButton;
    Bt1: TButton;
    Edt1: TEdit;
    Edt2: TEdit;
    Bt2: TButton;
    Bt3: TButton;
    tmrSetWidth: TTimer;
    ctxt4: TStaticText;
    ctxt35: TStaticText;
    ctxt36: TStaticText;
    ctxt37: TStaticText;
    ctxt38: TStaticText;
    ctxt39: TStaticText;
    ctxt40: TStaticText;
    ctxt41: TStaticText;
    ctxt42: TStaticText;
    ctxt43: TStaticText;
    ctxt44: TStaticText;
    ctxt45: TStaticText;
    ctxt46: TStaticText;
    ctxt47: TStaticText;
    ctxt48: TStaticText;
    ctxt49: TStaticText;
    ctxt50: TStaticText;
    ctxt51: TStaticText;
    ctxt52: TStaticText;
    ctxt53: TStaticText;
    ctxt54: TStaticText;
    ctxt55: TStaticText;
    ctxt56: TStaticText;
    ctxt57: TStaticText;
    ctxt58: TStaticText;
    ctxt59: TStaticText;
    ctxt60: TStaticText;
    ctxt61: TStaticText;
    ctxt62: TStaticText;
    ctxt63: TStaticText;
    ctxt64: TStaticText;
    ctxt65: TStaticText;
    btn49: TButton;
    RadioButton1: TRadioButton;
    lbl1: TLabel;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    ChDecimation: TCheckBox;
    CheckBox1: TCheckBox;
    tmrUpd: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ItemListChange(Sender: TObject);
    procedure udVChanging(Sender: TObject; var AllowChange: Boolean);
    procedure BtV0Click(Sender: TObject);
    procedure udHChanging(Sender: TObject; var AllowChange: Boolean);
    procedure BtH0Click(Sender: TObject);
    procedure EdtMaxChange(Sender: TObject);
    procedure EdtMinChange(Sender: TObject);
    procedure tmrClearTimer(Sender: TObject);
    procedure trckbr1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBoxBoldClick(Sender: TObject);
    procedure ColorClick(Sender: TObject);
    procedure ctxtFonColorClick(Sender: TObject);
    procedure chkGridClick(Sender: TObject);
    procedure ButtonPClick(Sender: TObject);
    procedure ButtonMClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgGraphMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnNextClick(Sender: TObject);
    procedure tmrLoadDataNextTimer(Sender: TObject);
    procedure tmrLoadDataPrevTimer(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure btn_StartClick(Sender: TObject);
    procedure tmrLoadStartTimer(Sender: TObject);
    procedure tmrEnShiftTimer(Sender: TObject);
    procedure IsOutGraphClick(Sender: TObject);
    procedure PanelClick(Sender: TObject);
    procedure edtKeyPress(Sender: TObject; var Key: Char);
    procedure edtMinExit(Sender: TObject);
    procedure edtMaxExit(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure Edt1KeyPress(Sender: TObject; var Key: Char);
    procedure Edt2KeyPress(Sender: TObject; var Key: Char);
    procedure Bt2Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure tmrSetWidthTimer(Sender: TObject);
    procedure btn49Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure imgGraphClick(Sender: TObject);
    procedure ChDecimationClick(Sender: TObject);
    procedure tmrUpdTimer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);

  private
    { Private declarations }
  public
    ParserHEX : pTParserHEX;
    pDG :array[0..15] of pDataGraph;
    DGiAct :array[0..15] of ^Cardinal;
    numPars : Byte;
    FonColor : TColor;
    function AddPoint(numParam : Byte; val : Int64; dt : TDateTime) : boolean;
    procedure ClearMultiGraph;
    { Public declarations }
  end;

var
  FormMultiGraph: TFormMultiGraph;

  ItemParam : array[0..CNT_PARAM-1] of TItemParam;
  CriticalSection: TCriticalSection;
  //GWidth, GHeight : Cardinal;
  isEnOutGraph : Boolean;
  DataGraph : array[0..15, 0..(CNT_PARAM - 1)] of TDataGraph;
  CurFormColor : TColor;
  iDataGraph : Cardinal;
  zoom : Integer;
  mult : Integer;
  isClearReq : Boolean;
  isPauseOutGraph : Boolean;
  isGrid : Boolean;
  YMinAll, YMaxAll : Int64;
  i_ActStart : array[0..15] of Cardinal;
  p_DGStart :array[0..15] of pDataGraph;

  pDG_Cur :array[0..15] of pDataGraph;
  i_Act_Cur : array[0..15] of Cardinal;

  pDG_ForUpd :array[0..15] of pDataGraph;
  i_Act_ForUpd : array[0..15] of Cardinal;


  OldDt : array[0..15] of TDateTime;
  LastDt : array[0..15] of TDateTime;


  isInit : boolean;
  isSavePosX : Boolean;
  isEnShift : Boolean;
  widthPanelStart : Integer;
  widthGraphStart : Integer;

  widthFormStart : Integer;
  widthOld : integer;
  isEnUpdGraph : Boolean;
  LineTime : TLineTime;
  //WidthGR, HeightGR : Integer;
  ArPoints : array[0..CNT_PARAM] of TArPoints;
  isFixForUpd    : Boolean;
  isDecimation   : Boolean;
  isAutoUpd      : Boolean;
implementation

uses Unit24;

{$R *.dfm}

procedure ClearPozX;
var i : Integer;
begin
  for i := 0 to CNT_PARAM-1 do
    begin
      ItemParam[i].LastPozX := 0;
      //ItemParam[i].LastPozY := 0;
      ItemParam[i].LastPoint.X := 0;
    end;
end;

procedure ClearGraph;
var
  Rect : TRect;
  i, point: integer;
  GridColor : TColor;
  HCenter, VCenter, HPos, VPos : Integer;
begin


  Rect.Left:=0;
  Rect.Top:=0;
  Rect.Right :=FormMultiGraph.imgGraph.Width;
  Rect.Bottom:=FormMultiGraph.imgGraph.Height;

  FormMultiGraph.imgGraph.Canvas.Pen.Width := 1;
  FormMultiGraph.imgGraph.Canvas.Brush.Color:= FormMultiGraph.FonColor;
  FormMultiGraph.imgGraph.Canvas.Pen.Color := FormMultiGraph.FonColor;

  FormMultiGraph.imgGraph.Canvas.Rectangle(Rect);

  if isGrid then
    begin
      GridColor := FormMultiGraph.FonColor xor $FFFFFF;
      VCenter := Trunc(FormMultiGraph.imgGraph.Height / 2);
      HCenter := Trunc(FormMultiGraph.imgGraph.Width / 2);


      HPos := HCenter;
      VPos := VCenter;
      while VPos < FormMultiGraph.imgGraph.Height do
        begin
          HPos := HCenter;
          while HPos < FormMultiGraph.imgGraph.Width do
            begin
              FormMultiGraph.imgGraph.Canvas.Pixels[HPos, VPos] := GridColor;
              inc(HPos, 10);
            end;
          inc(VPos, 10);
        end;

      HPos := HCenter;
      VPos := VCenter;
      while VPos >= 0 do
        begin
          HPos := HCenter;
          while HPos < FormMultiGraph.imgGraph.Width do
            begin
              FormMultiGraph.imgGraph.Canvas.Pixels[HPos, VPos] := GridColor;
              inc(HPos, 10);
            end;
          dec(VPos, 10);
        end;

      HPos := HCenter;
      VPos := VCenter;
      while VPos < FormMultiGraph.imgGraph.Height do
        begin
          HPos := HCenter;
          while HPos >= 0 do
            begin
              FormMultiGraph.imgGraph.Canvas.Pixels[HPos, VPos] := GridColor;
              dec(HPos, 10);
            end;
          inc(VPos, 10);
        end;

      HPos := HCenter;
      VPos := VCenter;
      while VPos >= 0 do
        begin
          HPos := HCenter;
          while HPos >= 0 do
            begin
              FormMultiGraph.imgGraph.Canvas.Pixels[HPos, VPos] := GridColor;
              dec(HPos, 10);
            end;
          dec(VPos, 10);
        end;




    end;

  For i := 0 to CNT_PARAM-1 do
    begin
      //ItemParam[i].LastPoint.X := 0;

      for point := 1 to CNT_POINTS do
        begin
          ItemParam[i].Points[point].dt := 0;
          ItemParam[i].Points[point].val := 0;
        end;
      ItemParam[i].LastPoint.Y := FormMultiGraph.imgGraph.Height;
      if ItemParam[i].Max <> ItemParam[i].Min then
        ItemParam[i].deltaY := FormMultiGraph.imgGraph.Height/(ItemParam[i].Max - ItemParam[i].Min)
      else
        ItemParam[i].deltaY := 0;
      ItemParam[i].NumPoint := 0;
    end;
end;


function AddPointOne(numParam : Byte; val : Int64; dt : TDateTime; isVisUpd : boolean; isDec: boolean) : boolean;
var
  z : Byte;
  res : boolean;
  pozTmp : Integer;
  pozLvl : Integer;
  XMult  : Integer;
  isAddLineX, isAddLineY : Boolean;
  LastY, LastX  : Integer;
  yBuf, xBuf : Cardinal;
  PenBuf: TPen;
  dTimeV : Cardinal;
  ColorV : TColor;
  StrValCur, StrDateCur : string;
  isGreenParam : boolean;
  PozX : Cardinal;

begin
  if dt = 0 then
    begin
      val := 0;
    end;

  //if (val > MAX_INTEGER) or (val < MIN_INTEGER) then
  //  val := 0;


  if isVisUpd and not isFixForUpd then
    begin
      try
        StrDateCur := FormatDateTime('hh:mm:ss:zzz', dt);
        StrValCur  := IntToStr(val);
      except
        StrDateCur := 'ERROR';
        StrValCur  := 'ERROR';
      end;


      ItemParam[numParam].StData.Caption := StrDateCur;
      ItemParam[numParam].StVal.Caption := StrValCur;
      ItemParam[numParam].StData.Color := FormMultiGraph.Color;
      ItemParam[numParam].StVal.Color := FormMultiGraph.Color;

    end;

  if isPauseOutGraph and not isEnOutGraph then
    begin
      Result := False;
      exit;
    end;
  res := false;

  case LineTime of
    LineNo  : begin
                dTimeV := 0;
                ColorV := 0;
              end;
    LineSec : begin
                dTimeV := 1000 - 1;
                ColorV := FormMultiGraph.rb1.Color;
              end;
    LineMin : begin
                dTimeV := 60000 - 1;
                ColorV := FormMultiGraph.rb2.Color;
              end;
    LineHour: begin
                dTimeV := 3600000 - 1;
                ColorV := FormMultiGraph.rb3.Color;
              end;

  end;




  if ItemParam[numParam].isOutGraph then
    begin
        begin
          z:= 1;
          if zoom > 0 then
            begin
              while z <= zoom do
                begin
                  PozX := ItemParam[numParam].LastPoint.X + ItemParam[numParam].PosX;
                  if not isDec then
                    FormMultiGraph.imgGraph.Canvas.MoveTo(PozX, ItemParam[numParam].LastPoint.Y)
                  else if PozX > 0 then
                    begin
                      ArPoints[numParam].Points[Trunc(PozX/2)].X := PozX;

                      if (Trunc(PozX/2) mod 2 = 0) and (ItemParam[numParam].LastPoint.Y >= ArPoints[numParam].Points[Trunc(PozX/2)].Y) then
                        ArPoints[numParam].Points[Trunc(PozX/2)].Y := ItemParam[numParam].LastPoint.Y;

                      if (Trunc(PozX/2) mod 2 = 1) and (ItemParam[numParam].LastPoint.Y <= ArPoints[numParam].Points[Trunc(PozX/2)].Y) then
                        ArPoints[numParam].Points[Trunc(PozX/2)].Y := ItemParam[numParam].LastPoint.Y;
                    end;


                  Inc(ItemParam[numParam].LastPoint.X);

                  ItemParam[numParam].LastPoint.Y := FormMultiGraph.imgGraph.Height - Trunc((val - ItemParam[numParam].Min) * ItemParam[numParam].deltaY) - ItemParam[numParam].PosY;

                  FormMultiGraph.imgGraph.Canvas.Pen.Color := ItemParam[numParam].Color;
                  FormMultiGraph.imgGraph.Canvas.Pen.Width := ItemParam[numParam].Bold;
                  if (ItemParam[numParam].LastPoint.X > 1) and (dt <> 0) then
                    ItemParam[numParam].LastPozX := ItemParam[numParam].LastPoint.X + ItemParam[numParam].PosX;

                  if (ItemParam[numParam].LastPoint.X > 1) and (dt <> 0) and (OldDt[numParam] <> 0) then
                    begin
                      PozX := ItemParam[numParam].LastPoint.X + ItemParam[numParam].PosX;
                      if not isDec then
                        FormMultiGraph.imgGraph.Canvas.LineTo(PozX, ItemParam[numParam].LastPoint.Y)
                      else if PozX > 0 then
                        begin
                          ArPoints[numParam].Points[Trunc(PozX/2)].X := PozX;
                          if (Trunc(PozX/2) mod 2 = 0) and (ItemParam[numParam].LastPoint.Y >= ArPoints[numParam].Points[Trunc(PozX/2)].Y) then
                            ArPoints[numParam].Points[Trunc(PozX/2)].Y := ItemParam[numParam].LastPoint.Y;

                          if (Trunc(PozX/2) mod 2 = 1) and (ItemParam[numParam].LastPoint.Y <= ArPoints[numParam].Points[Trunc(PozX/2)].Y) then
                            ArPoints[numParam].Points[Trunc(PozX/2)].Y := ItemParam[numParam].LastPoint.Y;
                        end;
                    end
                  else
                    begin
                      PozX := ItemParam[numParam].LastPoint.X + ItemParam[numParam].PosX;
                      if not isDec then
                        FormMultiGraph.imgGraph.Canvas.MoveTo(PozX, ItemParam[numParam].LastPoint.Y)
                      else
                        begin if PozX > 0 then
                          ArPoints[numParam].Points[PozX].X := PozX;

                          if (Trunc(PozX/2) mod 2 = 0) and (ItemParam[numParam].LastPoint.Y >= ArPoints[numParam].Points[Trunc(PozX/2)].Y) then
                            ArPoints[numParam].Points[Trunc(PozX/2)].Y := ItemParam[numParam].LastPoint.Y;

                          if (Trunc(PozX/2) mod 2 = 1) and (ItemParam[numParam].LastPoint.Y <= ArPoints[numParam].Points[Trunc(PozX/2)].Y) then
                            ArPoints[numParam].Points[Trunc(PozX/2)].Y := ItemParam[numParam].LastPoint.Y;
                        end;
                    end;

                  OldDt[numParam] := dt;

                  if LineTime > LineNo then
                    if MilliSecondsBetween(dt, LastDt[numParam]) > dTimeV then
                      begin
                        xBuf := ItemParam[numParam].LastPoint.X + ItemParam[numParam].PosX;
                        yBuf := ItemParam[numParam].LastPoint.Y;
                        PenBuf := FormMultiGraph.imgGraph.Canvas.Pen;

                        FormMultiGraph.imgGraph.Canvas.Pen.Color := ColorV;
                        FormMultiGraph.imgGraph.Canvas.Pen.Width := 1;
                        FormMultiGraph.imgGraph.Canvas.MoveTo(xBuf, 1);
                        FormMultiGraph.imgGraph.Canvas.LineTo(xBuf, FormMultiGraph.imgGraph.Height - 1);

                        FormMultiGraph.imgGraph.Canvas.MoveTo(xBuf, yBuf);

                        FormMultiGraph.imgGraph.Canvas.Pen := PenBuf;
                        LastDt[numParam] := dt;
                      end;


                  pozTmp := ItemParam[numParam].LastPoint.X + ItemParam[numParam].PosX;
                  if (pozTmp > 0) and (pozTmp < CNT_POINTS) then
                    begin
                      ItemParam[numParam].Points[pozTmp].dt := dt;
                      ItemParam[numParam].Points[pozTmp].val := val;
                    end;

                  if ItemParam[numParam].LastPoint.X > FormMultiGraph.imgGraph.Width then
                    begin
                      res := true;
                      z:= zoom;
                    end;
                  inc(z);
                end;
            end
          else if mult > 0 then
            begin
              PozX := ItemParam[numParam].LastPoint.X;
              if not isDec then
                FormMultiGraph.imgGraph.Canvas.MoveTo(PozX, ItemParam[numParam].LastPoint.Y)
              else
                begin
                  ArPoints[numParam].Points[Trunc(PozX/2)].X := PozX;
                  if (Trunc(PozX/2) mod 2 = 0) and (ItemParam[numParam].LastPoint.Y >= ArPoints[numParam].Points[Trunc(PozX/2)].Y) then
                    ArPoints[numParam].Points[Trunc(PozX/2)].Y := ItemParam[numParam].LastPoint.Y;

                  if (Trunc(PozX/2) mod 2 = 1) and (ItemParam[numParam].LastPoint.Y <= ArPoints[numParam].Points[Trunc(PozX/2)].Y) then
                    ArPoints[numParam].Points[Trunc(PozX/2)].Y := ItemParam[numParam].LastPoint.Y;
                end;

              CriticalSection.Enter;

              LastX := Trunc(ItemParam[numParam].NumPoint / mult);

              CriticalSection.Leave;
              isAddLineX := LastX <> ItemParam[numParam].LastPoint.X;

              ItemParam[numParam].LastPoint.X := LastX;


              inc(ItemParam[numParam].NumPoint);

              LastY := FormMultiGraph.imgGraph.Height - Trunc((val - ItemParam[numParam].Min) * ItemParam[numParam].deltaY) - ItemParam[numParam].PosY;

              isAddLineY := LastY <> ItemParam[numParam].LastPoint.Y;

              ItemParam[numParam].LastPoint.Y := LastY;



              FormMultiGraph.imgGraph.Canvas.Pen.Color := ItemParam[numParam].Color;
              FormMultiGraph.imgGraph.Canvas.Pen.Width := ItemParam[numParam].Bold;
              if (ItemParam[numParam].LastPoint.X > 1) and (dt <> 0) then
                ItemParam[numParam].LastPozX := ItemParam[numParam].LastPoint.X + ItemParam[numParam].PosX;

              if (ItemParam[numParam].LastPoint.X > 1) and (dt <> 0) and (OldDt[numParam] <> 0) then
                begin
                  PozX := ItemParam[numParam].LastPoint.X;
                  if not isDec then
                    FormMultiGraph.imgGraph.Canvas.LineTo(PozX, ItemParam[numParam].LastPoint.Y)
                  else
                    begin
                      ArPoints[numParam].Points[Trunc(PozX/2)].X := PozX;
                      if (Trunc(PozX/2) mod 2 = 0) and (ItemParam[numParam].LastPoint.Y >= ArPoints[numParam].Points[Trunc(PozX/2)].Y) then
                        ArPoints[numParam].Points[Trunc(PozX/2)].Y := ItemParam[numParam].LastPoint.Y;

                      if (Trunc(PozX/2) mod 2 = 1) and (ItemParam[numParam].LastPoint.Y <= ArPoints[numParam].Points[Trunc(PozX/2)].Y) then
                        ArPoints[numParam].Points[Trunc(PozX/2)].Y := ItemParam[numParam].LastPoint.Y;
                    end;

                end
              else if isAddLineY or isAddLineX then
                begin
                  PozX := ItemParam[numParam].LastPoint.X;
                  if not isDec then
                    FormMultiGraph.imgGraph.Canvas.MoveTo(PozX, ItemParam[numParam].LastPoint.Y)
                  else
                    begin
                      ArPoints[numParam].Points[Trunc(PozX/2)].X := PozX;
                      if (Trunc(PozX/2) mod 2 = 0) and (ItemParam[numParam].LastPoint.Y >= ArPoints[numParam].Points[Trunc(PozX/2)].Y) then
                        ArPoints[numParam].Points[Trunc(PozX/2)].Y := ItemParam[numParam].LastPoint.Y;

                      if (Trunc(PozX/2) mod 2 = 1) and (ItemParam[numParam].LastPoint.Y <= ArPoints[numParam].Points[Trunc(PozX/2)].Y) then
                        ArPoints[numParam].Points[Trunc(PozX/2)].Y := ItemParam[numParam].LastPoint.Y;
                    end;
                end;

              OldDt[numParam] := dt;

              if LineTime > LineNo then
                if MilliSecondsBetween(dt, LastDt[numParam]) > dTimeV then
                  begin
                    xBuf := ItemParam[numParam].LastPoint.X + ItemParam[numParam].PosX;
                    yBuf := ItemParam[numParam].LastPoint.Y;
                    PenBuf := FormMultiGraph.imgGraph.Canvas.Pen;

                    FormMultiGraph.imgGraph.Canvas.Pen.Color := ColorV;
                    FormMultiGraph.imgGraph.Canvas.Pen.Width := 1;
                    FormMultiGraph.imgGraph.Canvas.MoveTo(xBuf, 1);
                    FormMultiGraph.imgGraph.Canvas.LineTo(xBuf, FormMultiGraph.imgGraph.Height - 1);

                    FormMultiGraph.imgGraph.Canvas.MoveTo(xBuf, yBuf);

                    FormMultiGraph.imgGraph.Canvas.Pen := PenBuf;
                    LastDt[numParam] := dt;
                  end;




              pozTmp := ItemParam[numParam].LastPoint.X;
              if (pozTmp > 0) and (pozTmp < CNT_POINTS) then
                begin
                  ItemParam[numParam].Points[pozTmp].dt := dt;
                  ItemParam[numParam].Points[pozTmp].val := val;
                end;

              if ItemParam[numParam].LastPoint.X > FormMultiGraph.imgGraph.Width then
                begin
                  res := true;
                  ItemParam[numParam].NumPoint := 0;
                end;
            end;
        end;
    end;
  result := res;
end;


function ShiftGraphLeft : Boolean;
var i, p : Integer;
    cnt : Integer;
    shiftL, widthL, LastY : Integer;
    isBtnNext : Boolean;
    Width : Integer;
begin
  ClearGraph;
  ClearPozX;
  isEnOutGraph := True;
  Width := FormMultiGraph.imgGraph.Width;

  isBtnNext := True;

  if zoom > 0 then
    begin
      shiftL := Trunc((Width / 5) / zoom);
      widthL := Trunc(Width / zoom - shiftL);
    end;

  if mult > 0 then
    begin
      shiftL := Trunc((mult * Width / 5 - 5));
      widthL := Trunc(Width * mult - shiftL);
    end;

  for cnt := 0 to widthL do
    for i := 0 to CNT_PARAM - 1 do
      if i_Act_Cur[i] > 0 then
        begin
          dec(pDG_Cur[i]);
          dec(i_Act_Cur[i]);
        end;

  for i := 0 to CNT_PARAM - 1 do
    begin
      pDG_ForUpd[i] := pDG_Cur[i];
      i_Act_ForUpd[i] := i_Act_Cur[i];
    end;

  if isDecimation then
  for i := 0 to CNT_PARAM - 1 do
    for p := 0 to CNT_POINTS * 2 do
      begin
        ArPoints[i].Points[p].X := FormMultiGraph.imgGraph.Width;
        if p mod 2 = 1 then ArPoints[i].Points[p].Y := FormMultiGraph.imgGraph.Height;
        if p mod 2 = 0 then ArPoints[i].Points[p].Y := 0;
      end;


  for cnt := 0 to WidthL + shiftL do
    begin
      for i := 0 to CNT_PARAM - 1 do
        begin
          if i_Act_Cur[i] < (MAX_CNT_DG - 1) then
            begin
              AddPointOne(i,pDG_Cur[i].val,pDG_Cur[i].dt, false, isDecimation);
              inc(pDG_Cur[i]);
              inc(i_Act_Cur[i]);
            end
          else
            isBtnNext := False;
        end;

    end;

  if isDecimation then
    begin
      for i := 0 to CNT_PARAM - 1 do
        begin
          if ItemParam[i].isOutGraph then
            begin
              LastY := 0;
              for p := 0 to CNT_POINTS - 1 do
                if (ArPoints[i].Points[p * 2].Y = 0) and (ArPoints[i].Points[p * 2 + 1].Y = FormMultiGraph.imgGraph.Height) then
                  begin
                    ArPoints[i].Points[p * 2].Y := LastY;
                    ArPoints[i].Points[p * 2 + 1].Y := LastY;
                  end
                else
                  LastY := Trunc((ArPoints[i].Points[p * 2].Y + ArPoints[i].Points[p * 2 + 1].Y)/2);
            end;
        end;
    end;



  if isDecimation then
    begin
      for i := 0 to CNT_PARAM - 1 do
        begin
          if ItemParam[i].isOutGraph then
            begin
              FormMultiGraph.imgGraph.Canvas.Pen.Color := ItemParam[i].Color;
              FormMultiGraph.imgGraph.Canvas.Pen.Width := ItemParam[i].Bold;
              FormMultiGraph.imgGraph.Canvas.MoveTo(1,0);
              FormMultiGraph.imgGraph.Canvas.Polyline(ArPoints[i].Points);
            end;
        end;
    end;
  isEnOutGraph := False;
  Result := isBtnNext;
end;


function ShiftGraphRight : Boolean;
var i, p : Integer;
    cnt : Integer;
    shiftL, widthL, LastY : Integer;
    isBtnPrev : Boolean;
    Width : Integer;
begin
  ClearGraph;
  ClearPozX;
  isEnOutGraph := True;
  Width := FormMultiGraph.imgGraph.Width;

  isBtnPrev := True;

  if zoom > 0 then
    begin
      shiftL := Trunc((Width / 5) / zoom);
      widthL := Trunc(Width / zoom - shiftL);
    end;

  if mult > 0 then
    begin
      shiftL := Trunc((mult * Width / 5 - 5));
      widthL := Trunc(Width * mult - shiftL);
    end;

  for cnt := 0 to widthL + 2 * shiftL do
    for i := 0 to CNT_PARAM - 1 do
      if i_Act_Cur[i] > 0 then
        begin
          dec(pDG_Cur[i]);
          dec(i_Act_Cur[i]);
        end
      else
        isBtnPrev := False;


  for i := 0 to CNT_PARAM - 1 do
    begin
      pDG_ForUpd[i] := pDG_Cur[i];
      i_Act_ForUpd[i] := i_Act_Cur[i];
    end;

  if isDecimation then
  for i := 0 to CNT_PARAM - 1 do
    for p := 0 to CNT_POINTS do
      begin
        ArPoints[i].Points[p].X := FormMultiGraph.imgGraph.Width;
        if p mod 2 = 1 then ArPoints[i].Points[p].Y := FormMultiGraph.imgGraph.Height;
        if p mod 2 = 0 then ArPoints[i].Points[p].Y := 0;
      end;


  for cnt := 0 to WidthL + shiftL do
    begin
      for i := 0 to CNT_PARAM - 1 do
        begin
          if i_Act_Cur[i] < (MAX_CNT_DG - 1) then
            begin
              AddPointOne(i,pDG_Cur[i].val,pDG_Cur[i].dt, false, isDecimation);
              inc(pDG_Cur[i]);
              inc(i_Act_Cur[i]);
            end;
        end;

    end;


  if isDecimation then
    begin
      for i := 0 to CNT_PARAM - 1 do
        begin
          if ItemParam[i].isOutGraph then
            begin
              LastY := 0;
              for p := 0 to CNT_POINTS - 1 do
                if (ArPoints[i].Points[p * 2].Y = 0) and (ArPoints[i].Points[p * 2 + 1].Y = FormMultiGraph.imgGraph.Height) then
                  begin
                    ArPoints[i].Points[p * 2].Y := LastY;
                    ArPoints[i].Points[p * 2 + 1].Y := LastY;
                  end
                else
                  LastY := Trunc((ArPoints[i].Points[p * 2].Y + ArPoints[i].Points[p * 2 + 1].Y)/2);
            end;
        end;
    end;



  if isDecimation then
    begin
      for i := 0 to CNT_PARAM - 1 do
        begin
          if ItemParam[i].isOutGraph then
            begin
              FormMultiGraph.imgGraph.Canvas.Pen.Color := ItemParam[i].Color;
              FormMultiGraph.imgGraph.Canvas.Pen.Width := ItemParam[i].Bold;
              FormMultiGraph.imgGraph.Canvas.MoveTo(1,0);
              FormMultiGraph.imgGraph.Canvas.Polyline(ArPoints[i].Points);
            end;
        end;
    end;



  isEnOutGraph := False;
  Result := isBtnPrev;
end;


procedure UpdGraph;
  var i : Integer;
begin
  if isEnUpdGraph then
    begin
      FormMultiGraph.Color := clOlive;

      for i := 0 to CNT_PARAM - 1 do
        begin
          pDG_Cur[i] := pDG_ForUpd[i];
          i_Act_Cur[i] := i_Act_ForUpd[i];
        end;
      FormMultiGraph.tmrLoadStart.Enabled := True;
    end;
end;


procedure SetItemGrVis(index : Integer; isOutGraph : boolean; isAuto : boolean);
begin
  ItemParam[index].isOutGraph        := isOutGraph;
  ItemParam[index].NameParam.Visible := isOutGraph;
  ItemParam[index].EditMin.Visible   := isOutGraph;
  ItemParam[index].EditMax.Visible   := isOutGraph;
  ItemParam[index].ChBoxBold.Visible := isOutGraph;
  ItemParam[index].BtZoomP.Visible   := isOutGraph;
  ItemParam[index].BtZoomM.Visible   := isOutGraph;
  ItemParam[index].VPos.Visible      := isOutGraph;
  ItemParam[index].SColor.Visible    := isOutGraph;
  ItemParam[index].BtV0.Visible      := isOutGraph;
  ItemParam[index].StData.Visible    := isOutGraph;
  ItemParam[index].StVal.Visible     := isOutGraph;

  if isAuto then
    ItemParam[index].ChIsOutGraph.Checked := isOutGraph;

  if isOutGraph then
    begin
      FormMultiGraph.ParserHEX.SettParser[index].res1[9] := FormMultiGraph.ParserHEX.SettParser[index].res1[9] or $100;
      ItemParam[index].Panel.Caption := '';
      ItemParam[index].Panel.Color   := FormMultiGraph.Color;
    end
  else
    begin
      FormMultiGraph.ParserHEX.SettParser[index].res1[9] := FormMultiGraph.ParserHEX.SettParser[index].res1[9] and $FFFFFEFF;
      ItemParam[index].Panel.Caption := FormMultiGraph.ParserHEX.SettParser[index].NameParam;
      ItemParam[index].Panel.Color   := FormMultiGraph.ParserHEX.SettParser[index].Color;
    end;

  ItemParam[index].Panel.Enabled := FormMultiGraph.ParserHEX.SettParser[index].isUseParser;
  if not FormMultiGraph.ParserHEX.SettParser[index].isUseParser then
    ItemParam[index].Panel.Color := FormMultiGraph.Color;
end;

procedure TFormMultiGraph.ClearMultiGraph;
var
  i: Integer;
begin
  //ShiftGraphLeft;
  //for i:= 1 to CNT_PARAM do
  //  ItemParam[i].LastPoint.X := ItemParam[i].LastPozX;

  ClearGraph;
  ClearPozX;
  //Доработать логику сдвига влево вместо очистки поля
  //if isEnShift then
  //  begin
  //    ShiftGraphLeft;
  //    for i:= 1 to CNT_PARAM do
  //      ItemParam[i].LastPoint.X := ItemParam[i].LastPozX;
  //    isEnShift := False;
  //    tmrEnShift.Enabled := True;
  //  end;
  //ClearPozX;
end;


function TFormMultiGraph.AddPoint(numParam : Byte; val : Int64; dt : TDateTime) : boolean;
begin
  Result := AddPointOne(numParam, val, dt, true, false);
end;

procedure SetActiveItems(item:Byte; act : boolean);
begin
  if act then
    begin
      ItemParam[item].NameParam.Color := clWindow;
      ItemParam[item].EditMax.Color   := clWindow;
      ItemParam[item].EditMin.Color   := clWindow;

    end
  else
    begin
      ItemParam[item].NameParam.Color := FormMultiGraph.Color;
      ItemParam[item].EditMax.Color   := FormMultiGraph.Color;
      ItemParam[item].EditMin.Color   := FormMultiGraph.Color;
    end;

  ItemParam[item].SColor.Color    := FormMultiGraph.Color;
  ItemParam[item].SColor.Color    := FormMultiGraph.Color;
  ItemParam[item].SColor.Color    := FormMultiGraph.Color;
  ItemParam[item].EditMax.Text    := '';
  ItemParam[item].EditMin.Text    := '';
  ItemParam[item].PosY            := 0;
  ItemParam[item].PosX            := 0;
  ItemParam[item].VPos.Position   := 0;
  ItemParam[item].BtV0.Hint       := '0';
  //ItemParam[item].LData.Caption   := '--:--:--:---';
  //ItemParam[item].ReqData.Caption := '---';


  ItemParam[item].EditMax.Enabled   := act;
  ItemParam[item].EditMin.Enabled   := act;
  ItemParam[item].ChBoxBold.Enabled := act;
  ItemParam[item].BtZoomP.Enabled   := act;
  ItemParam[item].BtZoomM.Enabled   := act;
  ItemParam[item].BtV0.Enabled      := act;
  ItemParam[item].VPos.Enabled      := act;
  ItemParam[item].ChIsOutGraph.Enabled   := act;
  ItemParam[item].SColor.Enabled    := act;

  if ItemParam[item].ChBoxBold.Checked then
    ItemParam[item].Bold := 3
  else
    ItemParam[item].Bold := 1;

end;


procedure TFormMultiGraph.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  isPauseOutGraph := False;
  isEnOutGraph    := False;
  isSavePosX      := False;
  isEnUpdGraph    := False;
  zoom := 1;
  mult := 0;
  isClearReq := False;
  FonColor := clWhite;
  isGrid := False;
  ItemParam[0].ChIsOutGraph   := chk3;
  ItemParam[0].NameParam := ctxt5;
  ItemParam[0].EditMax   := edt12;
  ItemParam[0].EditMin   := edt11;
  ItemParam[0].VPos      := ud12;
  ItemParam[0].SColor    := ctxt6;
  ItemParam[0].BtV0      := btn2;
  ItemParam[0].ChBoxBold := chk4;
  ItemParam[0].BtZoomP   := btn17;
  ItemParam[0].BtZoomM   := btn18;
  ItemParam[0].Panel     := pnl5;
  ItemParam[0].StData    := ctxt4;
  ItemParam[0].StVal     := ctxt35;




  ItemParam[1].ChIsOutGraph   := chk1;
  ItemParam[1].NameParam := ctxt2;
  ItemParam[1].EditMax   := edt10;
  ItemParam[1].EditMin   := edt9;
  ItemParam[1].VPos      := ud10;
  ItemParam[1].SColor    := ctxt3;
  ItemParam[1].BtV0      := btn1;
  ItemParam[1].ChBoxBold := chk2;
  ItemParam[1].BtZoomP   := btn19;
  ItemParam[1].BtZoomM   := btn20;
  ItemParam[1].Panel     := pnl6;
  ItemParam[1].StData    := ctxt36;
  ItemParam[1].StVal     := ctxt37;


  ItemParam[2].ChIsOutGraph   := chk5;
  ItemParam[2].NameParam := ctxt7;
  ItemParam[2].EditMax   := edt14;
  ItemParam[2].EditMin   := edt13;
  ItemParam[2].VPos      := ud14;
  ItemParam[2].SColor    := ctxt8;
  ItemParam[2].BtV0      := btn3;
  ItemParam[2].ChBoxBold := chk6;
  ItemParam[2].BtZoomP   := btn21;
  ItemParam[2].BtZoomM   := btn22;
  ItemParam[2].Panel     := pnl7;
  ItemParam[2].StData    := ctxt38;
  ItemParam[2].StVal     := ctxt39;




  ItemParam[3].ChIsOutGraph   := chk7;
  ItemParam[3].NameParam := ctxt9;
  ItemParam[3].EditMax   := edt16;
  ItemParam[3].EditMin   := edt15;
  ItemParam[3].VPos      := ud16;
  ItemParam[3].SColor    := ctxt10;
  ItemParam[3].BtV0      := btn4;
  ItemParam[3].ChBoxBold := chk8;
  ItemParam[3].BtZoomP   := btn23;
  ItemParam[3].BtZoomM   := btn24;
  ItemParam[3].Panel     := pnl8;
  ItemParam[3].StData    := ctxt40;
  ItemParam[3].StVal     := ctxt41;




  ItemParam[4].ChIsOutGraph   := chk9;
  ItemParam[4].NameParam := ctxt11;
  ItemParam[4].EditMax   := edt18;
  ItemParam[4].EditMin   := edt17;
  ItemParam[4].VPos      := ud18;
  ItemParam[4].SColor    := ctxt12;
  ItemParam[4].BtV0      := btn5;
  ItemParam[4].ChBoxBold := chk10;
  ItemParam[4].BtZoomP   := btn25;
  ItemParam[4].BtZoomM   := btn26;
  ItemParam[4].Panel     := pnl9;
  ItemParam[4].StData    := ctxt42;
  ItemParam[4].StVal     := ctxt43;



             ///
  ItemParam[5].ChIsOutGraph := chk11;
  ItemParam[5].NameParam := ctxt13;
  ItemParam[5].EditMax   := edt20;
  ItemParam[5].EditMin   := edt19;
  ItemParam[5].VPos      := ud20;
  ItemParam[5].SColor    := ctxt14;
  ItemParam[5].BtV0      := btn6;
  ItemParam[5].ChBoxBold := chk12;
  ItemParam[5].BtZoomP   := btn27;
  ItemParam[5].BtZoomM   := btn28;
  ItemParam[5].Panel     := pnl10;
  ItemParam[5].StData    := ctxt44;
  ItemParam[5].StVal     := ctxt45;



  ItemParam[6].ChIsOutGraph   := chk13;
  ItemParam[6].NameParam := ctxt15;
  ItemParam[6].EditMax   := edt22;
  ItemParam[6].EditMin   := edt21;
  ItemParam[6].VPos      := ud22;
  ItemParam[6].SColor    := ctxt16;
  ItemParam[6].BtV0      := btn7;
  ItemParam[6].ChBoxBold := chk14;
  ItemParam[6].BtZoomP   := btn29;
  ItemParam[6].BtZoomM   := btn30;
  ItemParam[6].Panel     := pnl11;
  ItemParam[6].StData    := ctxt46;
  ItemParam[6].StVal     := ctxt47;




  ItemParam[7].ChIsOutGraph   := chk15;
  ItemParam[7].NameParam := ctxt17;
  ItemParam[7].EditMax   := edt24;
  ItemParam[7].EditMin   := edt23;
  ItemParam[7].VPos      := ud24;
  ItemParam[7].SColor    := ctxt18;
  ItemParam[7].BtV0      := btn8;
  ItemParam[7].ChBoxBold := chk16;
  ItemParam[7].BtZoomP   := btn31;
  ItemParam[7].BtZoomM   := btn32;
  ItemParam[7].Panel     := pnl12;
  ItemParam[7].StData    := ctxt48;
  ItemParam[7].StVal     := ctxt49;



  ItemParam[8].ChIsOutGraph   := chk17;
  ItemParam[8].NameParam := ctxt19;
  ItemParam[8].EditMax   := edt26;
  ItemParam[8].EditMin   := edt25;
  ItemParam[8].VPos      := ud26;
  ItemParam[8].SColor    := ctxt20;
  ItemParam[8].BtV0      := btn9;
  ItemParam[8].ChBoxBold := chk18;
  ItemParam[8].BtZoomP   := btn33;
  ItemParam[8].BtZoomM   := btn34;
  ItemParam[8].Panel     := pnl13;
  ItemParam[8].StData    := ctxt50;
  ItemParam[8].StVal     := ctxt51;



  ItemParam[9].ChIsOutGraph   := chk19;
  ItemParam[9].NameParam := ctxt21;
  ItemParam[9].EditMax   := edt28;
  ItemParam[9].EditMin   := edt27;
  ItemParam[9].VPos      := ud28;
  ItemParam[9].SColor    := ctxt22;
  ItemParam[9].BtV0      := btn10;
  ItemParam[9].ChBoxBold := chk20;
  ItemParam[9].BtZoomP   := btn35;
  ItemParam[9].BtZoomM   := btn36;
  ItemParam[9].Panel     := pnl14;
  ItemParam[9].StData    := ctxt52;
  ItemParam[9].StVal     := ctxt53;



  ItemParam[10].ChIsOutGraph   := chk21;
  ItemParam[10].NameParam := ctxt23;
  ItemParam[10].EditMax   := edt30;
  ItemParam[10].EditMin   := edt29;
  ItemParam[10].VPos      := ud30;
  ItemParam[10].SColor    := ctxt24;
  ItemParam[10].BtV0      := btn11;
  ItemParam[10].ChBoxBold := chk22;
  ItemParam[10].BtZoomP   := btn37;
  ItemParam[10].BtZoomM   := btn38;
  ItemParam[10].Panel     := pnl15;
  ItemParam[10].StData    := ctxt54;
  ItemParam[10].StVal     := ctxt55;




  ItemParam[11].ChIsOutGraph   := chk23;
  ItemParam[11].NameParam := ctxt25;
  ItemParam[11].EditMax   := edt32;
  ItemParam[11].EditMin   := edt31;
  ItemParam[11].VPos      := ud32;
  ItemParam[11].SColor    := ctxt26;
  ItemParam[11].BtV0      := btn12;
  ItemParam[11].ChBoxBold := chk24;
  ItemParam[11].BtZoomP   := btn39;
  ItemParam[11].BtZoomM   := btn40;
  ItemParam[11].Panel     := pnl16;
  ItemParam[11].StData    := ctxt56;
  ItemParam[11].StVal     := ctxt57;


  ItemParam[12].ChIsOutGraph   := chk25;
  ItemParam[12].NameParam := ctxt27;
  ItemParam[12].EditMax   := edt34;
  ItemParam[12].EditMin   := edt33;
  ItemParam[12].VPos      := ud34;
  ItemParam[12].SColor    := ctxt28;
  ItemParam[12].BtV0      := btn13;
  ItemParam[12].ChBoxBold := chk26;
  ItemParam[12].BtZoomP   := btn41;
  ItemParam[12].BtZoomM   := btn42;
  ItemParam[12].Panel     := pnl17;
  ItemParam[12].StData    := ctxt58;
  ItemParam[12].StVal     := ctxt59;


  ItemParam[13].ChIsOutGraph   := chk27;
  ItemParam[13].NameParam := ctxt29;
  ItemParam[13].EditMax   := edt36;
  ItemParam[13].EditMin   := edt35;
  ItemParam[13].VPos      := ud36;
  ItemParam[13].SColor    := ctxt30;
  ItemParam[13].BtV0      := btn14;
  ItemParam[13].ChBoxBold := chk28;
  ItemParam[13].BtZoomP   := btn43;
  ItemParam[13].BtZoomM   := btn44;
  ItemParam[13].Panel     := pnl18;
  ItemParam[13].StData    := ctxt60;
  ItemParam[13].StVal     := ctxt61;



  ItemParam[14].ChIsOutGraph   := chk29;
  ItemParam[14].NameParam := ctxt31;
  ItemParam[14].EditMax   := edt38;
  ItemParam[14].EditMin   := edt37;
  ItemParam[14].VPos      := ud38;
  ItemParam[14].SColor    := ctxt32;
  ItemParam[14].BtV0      := btn15;
  ItemParam[14].ChBoxBold := chk30;
  ItemParam[14].BtZoomP   := btn45;
  ItemParam[14].BtZoomM   := btn46;
  ItemParam[14].Panel     := pnl19;
  ItemParam[14].StData    := ctxt62;
  ItemParam[14].StVal     := ctxt63;


  ItemParam[15].ChIsOutGraph   := chk31;
  ItemParam[15].NameParam := ctxt33;
  ItemParam[15].EditMax   := edt40;
  ItemParam[15].EditMin   := edt39;
  ItemParam[15].VPos      := ud40;
  ItemParam[15].SColor    := ctxt34;
  ItemParam[15].BtV0      := btn16;
  ItemParam[15].ChBoxBold := chk32;
  ItemParam[15].BtZoomP   := btn47;
  ItemParam[15].BtZoomM   := btn48;
  ItemParam[15].Panel     := pnl20;
  ItemParam[15].StData    := ctxt64;
  ItemParam[15].StVal     := ctxt65;


  For i := 0 to CNT_PARAM-1 do
    begin
      ItemParam[i].EditMax.Text := '2000000000';
      ItemParam[i].EditMin.Text := '-2000000000';
      ItemParam[i].SColor.Color := FormMultiGraph.Color;
      //ItemParam[i].CurParam := -1;
      ItemParam[i].Color    := clBlack;
      ItemParam[i].EditMax.Tag   := i;
      ItemParam[i].EditMin.Tag   := i;
      ItemParam[i].VPos.Tag      := i;
      ItemParam[i].SColor.Tag    := i;
      ItemParam[i].BtV0.Tag      := i;
      ItemParam[i].PosY          := 0;
      ItemParam[i].PosX          := 0;

      ItemParam[i].VPos.Max := 1000;
      ItemParam[i].VPos.Min := -1000;
      ItemParam[i].VPos.Position := 0;

      ItemParam[i].VPos.OnChanging := udVChanging;
      ItemParam[i].BtV0.OnClick := BtV0Click;
      ItemParam[i].EditMax.OnChange := EdtMaxChange;
      ItemParam[i].EditMin.OnChange := EdtMinChange;
      ItemParam[i].EditMax.OnKeyPress := edtKeyPress;
      ItemParam[i].EditMin.OnKeyPress := edtKeyPress;

      ItemParam[i].EditMax.OnExit := edtMaxExit;
      ItemParam[i].EditMin.OnExit := edtMinExit;

      ItemParam[i].Bold := 1;
      ItemParam[i].ChBoxBold.Tag := i;
      ItemParam[i].ChBoxBold.OnClick := CheckBoxBoldClick;
      ItemParam[i].ChBoxBold.Checked := False;
      ItemParam[i].SColor.OnClick := ColorClick;
      ItemParam[i].BtZoomP.Tag := i;
      ItemParam[i].BtZoomM.Tag := i;
      ItemParam[i].BtZoomP.OnClick := ButtonPClick;
      ItemParam[i].BtZoomM.OnClick := ButtonMClick;
      ItemParam[i].NumPoint := 0;
      //ItemParam[i].ReqData.Caption   := '';
      ItemParam[i].LastPozX := 0;
      ItemParam[i].isOutGraph := False;
      ItemParam[i].ChIsOutGraph.Checked := False;
      ItemParam[i].ChIsOutGraph.OnClick := IsOutGraphClick;
      ItemParam[i].ChIsOutGraph.Tag     := i;
      ItemParam[i].Panel.Tag := i;
      ItemParam[i].Panel.OnClick := PanelClick;
      ItemParam[i].StData.Caption := '-';
      ItemParam[i].StVal.Caption := '-';
      SetActiveItems(i , false);


    end;


  widthFormStart  := FormMultiGraph.Width;
  widthGraphStart := imgGraph.Width;
  widthPanelStart := pnl1.Width;
  RadioButton1.Checked := True;
  LineTime := LineNo;
  isDecimation := True;
  imgGraph.Canvas.Brush.Color:= FonColor;
end;

procedure TFormMultiGraph.FormActivate(Sender: TObject);
var
  i, j, numItem, indexTmp, Height, Width : Integer;
  isIncItem : Boolean;
begin
  Height := FormMultiGraph.imgGraph.Height;
  Width  := FormMultiGraph.imgGraph.Width;
  RadioButton1.Checked := True;
  LineTime := LineNo;

  isInit := true;
  CurFormColor := FormMultiGraph.Color;
  CriticalSection:= TCriticalSection.Create;
  For i := 0 to CNT_PARAM-1 do
    begin
      ItemParam[i].indexParam := 0;
      //ItemParam[i].CurParam   := -1;
      //ItemParam[i].LData.Caption := '--:--:--:---';
      //ItemParam[i].ReqData.Caption := '---';

      ItemParam[i].LastPoint.X := 0;
      ItemParam[i].LastPoint.Y := Height - 1;
      //ItemParam[i].CurParam := -1;

      ItemParam[i].NameParam.Caption := ParserHEX.SettParser[i].NameParam;

      //ItemParam[i].Panel.Caption := ParserHEX.SettParser[i].NameParam;
    end;

  //for i:= 0 to 15 do
  //  begin
  //    if ParserHEX.SettParser[i].isUseParser then
  //      if ParserHEX.SettParser[i].NameParam <> '' then
  //        begin
  //          For j := 1 to CNT_PARAM do
  //            begin
  //              ItemParam[j].NumParam[ItemParam[j].indexParam] := i;
  //              SetActiveItems(j , false);
  //              inc(ItemParam[j].indexParam);
  //            end;
  //        end;
  //  end;

  for numItem := 0 to CNT_PARAM-1 do
    begin
      SetActiveItems(numItem, ParserHEX.SettParser[numItem].isUseParser);

      if not ParserHEX.SettParser[numItem].isUseParser then
        begin
          FormMultiGraph.ParserHEX.SettParser[numItem].res1[9] := Integer(Cardinal(FormMultiGraph.ParserHEX.SettParser[numItem].res1[9]) and $FFFFFEFF);
        end;

      SetItemGrVis(numItem, (FormMultiGraph.ParserHEX.SettParser[numItem].res1[9] and $100) = $100, true);

      if ParserHEX.SettParser[numItem].isUseParser then
        begin
          ItemParam[numItem].Min := ParserHEX.SettParser[numItem].res1[10];
          ItemParam[numItem].Max := ParserHEX.SettParser[numItem].res1[11];
          if ItemParam[numItem].Min = ItemParam[numItem].Max then
            begin
              ItemParam[numItem].Min := MIN_INTEGER;
              ItemParam[numItem].Max := MAX_INTEGER;
            end;
          ItemParam[numItem].EditMax.Text := IntToStr(ItemParam[numItem].Max);
          ItemParam[numItem].EditMin.Text := IntToStr(ItemParam[numItem].Min);
          if ParserHEX.SettParser[numItem].res1[12] = 0 then
            ItemParam[numItem].Color := ParserHEX.SettParser[numItem].Color
          else
            ItemParam[numItem].Color := TColor(ParserHEX.SettParser[numItem].res1[12]);
          ItemParam[numItem].SColor.Color    := ItemParam[numItem].Color;
          //ItemParam[numItem].ChBoxBold.Color := ItemParam[numItem].Color;
          ItemParam[numItem].PosX := 0;
          ItemParam[numItem].PosY := ParserHEX.SettParser[numItem].res1[14];
          ItemParam[numItem].VPos.Position := ItemParam[numItem].PosY;
          ItemParam[numItem].BtV0.ShowHint := True;
          ItemParam[numItem].BtV0.Hint := IntToStr(ItemParam[numItem].PosY);
          if (ParserHEX.SettParser[numItem].res1[9] and $00000200) = $00000200 then
            begin
              ItemParam[numItem].ChBoxBold.Checked := True;
              ItemParam[numItem].Bold := 3;
            end;

          ItemParam[numItem].NameParam.Color := ParserHEX.SettParser[numItem].Color;

          ctxtFonColor.Color := FormMultiGraph.FonColor;
          ctxtFonColor.Font.Color := TColor(FonColor xor $FFFFFF);


        end;
      i_ActStart[numItem] := DGiAct[numItem]^;
      p_DGStart[numItem]  := pDG[numItem];

      pDG_Cur[numItem] := pDG[numItem];
      i_Act_Cur[numItem] := DGiAct[numItem]^;
    end;
  isInit := false;
  isFixForUpd := True;
  CheckBox1.Checked := False;
  isAutoUpd := False;
  tmrUpd.Enabled := isAutoUpd;
  tmrClear.Enabled := True;
end;

procedure TFormMultiGraph.Button5Click(Sender: TObject);
begin
  ClearGraph;
  ClearPozX;
end;

procedure TFormMultiGraph.ItemListChange(Sender: TObject);
var
  numItem, index, i : Integer;
begin

end;

procedure TFormMultiGraph.udVChanging(Sender: TObject;
  var AllowChange: Boolean);
var
   numItem : byte;
   Pos : integer;
begin
   if isInit then exit;
   numItem := (Sender as TUpDown).Tag;
   Pos := (Sender as TUpDown).Position;
   (Sender as TUpDown).ShowHint := False;
   ItemParam[numItem].PosY := Pos;
   ItemParam[numItem].BtV0.Hint := IntToStr(Pos);
end;

procedure TFormMultiGraph.udHChanging(Sender: TObject;
  var AllowChange: Boolean);
var
   numItem : byte;
   Pos : integer;
begin
   if isInit then exit;
   numItem := (Sender as TUpDown).Tag;
   Pos := (Sender as TUpDown).Position;
   (Sender as TUpDown).ShowHint := False;
   ItemParam[numItem].PosX := Pos;
end;

procedure TFormMultiGraph.BtV0Click(Sender: TObject);
var
  index : Byte;
begin
  index := (Sender as TButton).Tag;
  ItemParam[index].VPos.Position := 0;
  ItemParam[index].PosY := 0;
  ItemParam[index].BtV0.Hint := '0';
end;

procedure TFormMultiGraph.BtH0Click(Sender: TObject);
var
  index : Byte;
begin
  index := (Sender as TButton).Tag;
  ItemParam[index].PosX := 0;
end;

procedure TFormMultiGraph.EdtMaxChange(Sender: TObject);
var
  str : string;
  yTmp, ScaleY : Int64;
  index : Byte;
begin
  index := (Sender as TEdit).Tag;
  Str := (Sender as TEdit).Text;
  if (str <> '') and (str <> '-') then
    begin
      try
        yTmp := StrToInt((Sender as TEdit).Text);
      except
        yTmp := ItemParam[index].Min;
      end;

      if yTmp > ItemParam[index].Min then
        begin
          ItemParam[index].Max := yTmp;
          ScaleY := ItemParam[index].Max - ItemParam[index].Min;
          ItemParam[index].DeltaY := ScaleY/Height;
          (Sender as TEdit).Color := clWindow;
          tmrClear.Enabled := True;
        end
      else
        begin
          (Sender as TEdit).Color := clYellow;
        end;
    end
  else
    begin
      (Sender as TEdit).Color := clYellow;
    end;
end;



procedure TFormMultiGraph.EdtMinChange(Sender: TObject);
var
  str : string;
  yTmp, ScaleY : Int64;
  index : Byte;
begin
  index := (Sender as TEdit).Tag;
  Str := (Sender as TEdit).Text;
  if (str <> '') and (str <> '-') then
    begin
      try
        yTmp := StrToInt((Sender as TEdit).Text);
      except
        yTmp := ItemParam[index].Max;
      end;

      if yTmp < ItemParam[index].Max then
        begin
          ItemParam[index].Min := yTmp;
          ScaleY := ItemParam[index].Max - ItemParam[index].Min;
          ItemParam[index].DeltaY := ScaleY/Height;
          (Sender as TEdit).Color := clWindow;
          tmrClear.Enabled := True;
        end
      else
        begin
          (Sender as TEdit).Color := clYellow;
        end;
    end
  else
    begin
      (Sender as TEdit).Color := clYellow;
    end;
end;


procedure TFormMultiGraph.tmrClearTimer(Sender: TObject);
begin
    ClearGraph;
    ClearPozX;
    (Sender as TTimer).Enabled := False;
end;

procedure TFormMultiGraph.trckbr1Change(Sender: TObject);
begin
  CriticalSection.Enter;
  case (Sender as TTrackBar).Position of
    -9: begin zoom := 0;  mult := 512; end;
    -8: begin zoom := 0;  mult := 256; end;
    -7: begin zoom := 0;  mult := 128; end;
    -6: begin zoom := 0;  mult := 64; end;
    -5: begin zoom := 0;  mult := 32; end;
    -4: begin zoom := 0;  mult := 16; end;
    -3: begin zoom := 0;  mult := 8; end;
    -2: begin zoom := 0;  mult := 4; end;
    -1: begin zoom := 0;  mult := 2; end;

    0: begin zoom := 1;  mult := 0; end;
    1: begin zoom := 2;  mult := 0; end;
    2: begin zoom := 4;  mult := 0; end;
    3: begin zoom := 8;  mult := 0; end;
    4: begin zoom := 16; mult := 0; end;
    5: begin zoom := 32; mult := 0; end;
    6: begin zoom := 64; mult := 0; end;
    7: begin zoom := 128;mult := 0; end;
    8: begin zoom := 256;mult := 0; end;
  end;
  CriticalSection.Leave;
  if zoom > 0 then ctxt1.Caption := IntToStr(zoom) + ' : 1';
  if mult > 0 then ctxt1.Caption := '1 : ' + IntToStr(mult);
  ClearGraph;
  ClearPozX;

end;

procedure TFormMultiGraph.Button2Click(Sender: TObject);
begin
  isPauseOutGraph := not isPauseOutGraph;

  if isPauseOutGraph then
    (Sender as TButton).Caption := '>'
  else
    (Sender as TButton).Caption := '||';

  ClearGraph;
  ClearPozX;

  btnPrev.Enabled   := isPauseOutGraph;
  btnNext.Enabled   := isPauseOutGraph;
  btn_Start.Enabled := isPauseOutGraph;
  btn49.Enabled     := isPauseOutGraph;
  ChDecimation.Enabled := isPauseOutGraph;
  CheckBox1.Enabled    := isPauseOutGraph;
  CheckBox1.Checked    := False;
end;


procedure TFormMultiGraph.CheckBoxBoldClick(Sender: TObject);
var
  index : Integer;
begin
  index := (Sender as TCheckBox).Tag;
  if (Sender as TCheckBox).Checked then
    ItemParam[index].Bold := 3
  else
    ItemParam[index].Bold := 1;
end;

procedure TFormMultiGraph.ColorClick(Sender: TObject);
var
  index : Byte;
begin
  index := (Sender as TStaticText).Tag;
  ColorDialog.Color := ParserHEX.SettParser[index].Color;
  if ColorDialog.Execute then
    begin
      (Sender as TStaticText).Color := ColorDialog.Color;
      ItemParam[index].Color := ColorDialog.Color;
      //ItemParam[index].ChBoxBold.Color := ColorDialog.Color;
    end;
end;

procedure TFormMultiGraph.ctxtFonColorClick(Sender: TObject);
var
  i : Integer;
begin
  ColorDialog.Color := FonColor;
  if ColorDialog.Execute then
    begin
      FonColor := ColorDialog.Color;
      (Sender as TStaticText).Color := FonColor;
      (Sender as TStaticText).Font.Color := TColor(FonColor xor $FFFFFF);
      //for i:= 0 to 15 do
      //  ParserHEX.SettParser[i].res[15] := Integer(FonColor);

      ClearGraph;
      ClearPozX;
    end;
end;

procedure TFormMultiGraph.chkGridClick(Sender: TObject);
begin
  isGrid := (Sender as TCheckBox).Checked;
  ClearGraph;
  ClearPozX;
end;

procedure TFormMultiGraph.ButtonMClick(Sender: TObject);
var
  index, deltaY, dY : Int64;
begin
  index := (Sender as TButton).Tag;
  (Sender as TButton).ShowHint := False;
  //if ItemParam[index].CurParam <> -1 then
    begin
      if ItemParam[index].Max > ItemParam[index].Min then
        begin
          deltaY := ItemParam[index].Max - ItemParam[index].Min;
          dY := Trunc(deltaY / 50) + 1;
          if ItemParam[index].Max < MAX_INTEGER then
            inc(ItemParam[index].Max, dY);
          if ItemParam[index].Max > MIN_INTEGER then
            dec(ItemParam[index].Min, dY);

          if ItemParam[index].Max > MAX_INTEGER then
            ItemParam[index].Max := MAX_INTEGER;
          if ItemParam[index].Min > MAX_INTEGER then
            ItemParam[index].Min := MAX_INTEGER;
          if ItemParam[index].Max < MIN_INTEGER then
            ItemParam[index].Max := MIN_INTEGER;
          if ItemParam[index].Min < MIN_INTEGER then
            ItemParam[index].Min := MIN_INTEGER;

        end
      else if ItemParam[index].Max < ItemParam[index].Min then
        begin
          ItemParam[index].Max := ItemParam[index].Min;
        end
      else
        begin
          ItemParam[index].Max := ItemParam[index].Min + 1;
          ItemParam[index].Min := ItemParam[index].Max - 2;
        end;


      try
        ItemParam[index].EditMax.Text := IntToStr(ItemParam[index].Max);
      except
        ItemParam[index].Max := MAX_INTEGER;
      end;


      try
        ItemParam[index].EditMin.Text := IntToStr(ItemParam[index].Min);
      except
        ItemParam[index].Min := MIN_INTEGER;
      end;


      ItemParam[index].EditMax.Text := IntToStr(ItemParam[index].Max);
      ItemParam[index].EditMin.Text := IntToStr(ItemParam[index].Min);
    end;
end;


procedure TFormMultiGraph.ButtonPClick(Sender: TObject);
var
  index, deltaY, dY : Int64;
  bMax, bMin : Int64;
begin

  index := (Sender as TButton).Tag;
   (Sender as TButton).ShowHint := False;
  bMax := ItemParam[index].Max;
  bMin := ItemParam[index].Min;

  //if ItemParam[index].CurParam <> -1 then
    begin
      if ItemParam[index].Max > ItemParam[index].Min then
        begin
          deltaY := ItemParam[index].Max - ItemParam[index].Min;
          dY := Trunc(deltaY / 50) + 1;

          if ItemParam[index].Max > MIN_INTEGER then
            dec(ItemParam[index].Max, dY);
          if ItemParam[index].Min < MAX_INTEGER then
            inc(ItemParam[index].Min, dY);

          if ItemParam[index].Max > MAX_INTEGER then
            ItemParam[index].Max := MAX_INTEGER;
          if ItemParam[index].Min > MAX_INTEGER then
            ItemParam[index].Min := MAX_INTEGER;
          if ItemParam[index].Max < MIN_INTEGER then
            ItemParam[index].Max := MIN_INTEGER;
          if ItemParam[index].Min < MIN_INTEGER then
            ItemParam[index].Min := MIN_INTEGER;
        end
      else if ItemParam[index].Max < ItemParam[index].Min then
        begin
          ItemParam[index].Max := ItemParam[index].Min;
        end
      else
        begin
          ItemParam[index].Max := ItemParam[index].Min + 1;
          ItemParam[index].Min := ItemParam[index].Max - 2;
        end;

      try
        ItemParam[index].EditMax.Text := IntToStr(ItemParam[index].Max);
      except
        ItemParam[index].Max := MAX_INTEGER;
      end;


      try
        ItemParam[index].EditMin.Text := IntToStr(ItemParam[index].Min);
      except
        ItemParam[index].Min := MIN_INTEGER;
      end;

      if ItemParam[index].Max = ItemParam[index].Min then
        begin
          ItemParam[index].Min := bMin;
          ItemParam[index].Max := bMax;
        end;


      ItemParam[index].EditMax.Text := IntToStr(ItemParam[index].Max);
      ItemParam[index].EditMin.Text := IntToStr(ItemParam[index].Min);


    end;
end;

procedure TFormMultiGraph.FormClose(Sender: TObject;
  var Action: TCloseAction);

var numItem, i : Integer;
  begin
    CriticalSection.Free;
    for i:= 0 to 15 do
      begin
        ParserHEX.SettParser[i].res1[9] := ParserHEX.SettParser[i].res1[9] and $FFFF03FF;
        ParserHEX.SettParser[i].res1[10] := 0;
        ParserHEX.SettParser[i].res1[11] := 0;
        ParserHEX.SettParser[i].res1[12] := 0;
        ParserHEX.SettParser[i].res1[13] := 0;
        ParserHEX.SettParser[i].res1[14] := 0;
      end;

    for numItem := 0 to CNT_PARAM-1 do
      begin
        if ItemParam[numItem].ChBoxBold.Checked then
          ParserHEX.SettParser[numItem].res1[9] := ParserHEX.SettParser[numItem].res1[9] or $00000200;

        if ItemParam[numItem].ChIsOutGraph.Checked then
          ParserHEX.SettParser[numItem].res1[9]  := ParserHEX.SettParser[numItem].res1[9] or $00000100;

        ParserHEX.SettParser[numItem].res1[10] := Integer(ItemParam[numItem].Min);
        ParserHEX.SettParser[numItem].res1[11] := Integer(ItemParam[numItem].Max);
        ParserHEX.SettParser[numItem].res1[12] := Integer(ItemParam[numItem].Color);
        ParserHEX.SettParser[numItem].res1[13] := ItemParam[numItem].PosX;
        ParserHEX.SettParser[numItem].res1[14] := ItemParam[numItem].PosY;
      end;
    isEnUpdGraph := False;
    CheckBox1.Checked := False;
    isAutoUpd := False;
    tmrUpd.Enabled := isAutoUpd;

  end;

procedure TFormMultiGraph.imgGraphMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  numItem : Integer;
  isMatchTime : Boolean;
  sTime : TDateTime;
begin
  if not isFixForUpd then Exit;
  isMatchTime := True;
  sTime := 0;
  if X > 0 then
    begin
      for numItem := 0 to CNT_PARAM-1 do
        begin
          if ItemParam[numItem].isOutGraph then
            begin
              if sTime <> 0 then
                isMatchTime := isMatchTime and (sTime = ItemParam[numItem].Points[X].dt);
              sTime := ItemParam[numItem].Points[X].dt;

              if ItemParam[numItem].Points[X].dt > 0 then
                begin
                //ItemParam[numItem].LData.Color := clLime;
                  ItemParam[numItem].StData.Caption := FormatDateTime('yy/mm/dd  hh:nn:ss:zzz', ItemParam[numItem].Points[X].dt);
                  ItemParam[numItem].StVal.Caption := IntToStr(ItemParam[numItem].Points[X].val);
                end
              else
                begin
                  isMatchTime := False;
                 //ItemParam[numItem].LData.Color := clLime;
                  ItemParam[numItem].StData.Caption := '--/--/-- --:--:--:---';
                  ItemParam[numItem].StVal.Caption := '---------';
                end
            end;
        end;
        if isMatchTime then
          begin
            for numItem := 0 to CNT_PARAM-1 do
              begin
               if ItemParam[numItem].isOutGraph then
                 begin
                   ItemParam[numItem].StData.Color := clLime;
                 end;
              end;
          end
        else
          begin
            for numItem := 0 to CNT_PARAM-1 do
              begin
               if ItemParam[numItem].isOutGraph then
                 begin
                   ItemParam[numItem].StData.Color := FormMultiGraph.Color;
                 end;
              end;
          end;
    end;
end;

procedure TFormMultiGraph.btnNextClick(Sender: TObject);
begin
  FormMultiGraph.Color := clOlive;
  tmrLoadDataNext.Enabled := True;
  (Sender as TButton).Enabled := False;
end;

procedure TFormMultiGraph.tmrLoadDataNextTimer(Sender: TObject);
begin
  btnNext.Enabled := ShiftGraphLeft;
  FormMultiGraph.Color := CurFormColor;
  if btnNext.Enabled then
    btnNext.SetFocus;
  btnPrev.Enabled := True;
  isEnUpdGraph := True;
  (Sender as TTimer).Enabled := False;
end;

procedure TFormMultiGraph.tmrLoadDataPrevTimer(Sender: TObject);
begin
  btnPrev.Enabled := ShiftGraphRight;
  FormMultiGraph.Color := CurFormColor;

  if btnPrev.Enabled then
    btnPrev.SetFocus;
  btnNext.Enabled := True;
  isEnUpdGraph := True;
  (Sender as TTimer).Enabled := False;
end;

procedure TFormMultiGraph.btnPrevClick(Sender: TObject);
begin

  FormMultiGraph.Color := clOlive;

  tmrLoadDataPrev.Enabled := True;
  (Sender as TButton).Enabled := False;
end;

procedure TFormMultiGraph.btn_StartClick(Sender: TObject);
var i : Integer;
begin

  FormMultiGraph.Color := clOlive;

  for i := 0 to CNT_PARAM - 1 do
    begin
      pDG_Cur[i] := p_DGStart[i];
      i_Act_Cur[i] := i_ActStart[i];
    end;

  for i := 0 to CNT_PARAM - 1 do
    begin
      pDG_ForUpd[i] := pDG_Cur[i];
      i_Act_ForUpd[i] := i_Act_Cur[i];
    end;

  tmrLoadStart.Enabled := True;
  btnNext.Enabled := False;
  btnPrev.Enabled := false;
  (Sender as TButton).Enabled := False;
end;

procedure TFormMultiGraph.tmrLoadStartTimer(Sender: TObject);
var i, p : Integer;
    cnt : Integer;
    cntStart : Integer;
    isBtnPrev : Boolean;
    isBtnNext : Boolean;
    startTime : TDateTime;
    LastY     : Integer;
begin
  ClearGraph;
  ClearPozX;
  isEnOutGraph := True;

  isBtnNext := True;
  isBtnPrev := True;

  cntStart := 0;

  if zoom > 0 then
    cntStart := Trunc(FormMultiGraph.imgGraph.Width / zoom);
  if mult > 0 then
    cntStart := Trunc((mult * FormMultiGraph.imgGraph.Width  - 5));

  if isDecimation then
  for i := 0 to CNT_PARAM - 1 do
    for p := 0 to CNT_POINTS * 2 do
      begin
        ArPoints[i].Points[p].X := FormMultiGraph.imgGraph.Width;
        if p mod 2 = 1 then ArPoints[i].Points[p].Y := FormMultiGraph.imgGraph.Height;
        if p mod 2 = 0 then ArPoints[i].Points[p].Y := 0;
      end;


  for cnt := 0 to cntStart do
    begin
      for i := 0 to CNT_PARAM - 1 do
        begin
          AddPointOne(i,pDG_Cur[i].val,pDG_Cur[i].dt, False, isDecimation);
          if i_Act_Cur[i] < (MAX_CNT_DG - 1) then
            begin
              inc(pDG_Cur[i]);
              inc(i_Act_Cur[i]);
            end
          else
            isBtnNext := False;
        end;

    end;


  if isDecimation then
    begin
      for i := 0 to CNT_PARAM - 1 do
        begin
          if ItemParam[i].isOutGraph then
            begin
              LastY := 0;
              for p := 0 to CNT_POINTS - 1 do
                if (ArPoints[i].Points[p * 2].Y = 0) and (ArPoints[i].Points[p * 2 + 1].Y = FormMultiGraph.imgGraph.Height) then
                  begin
                    ArPoints[i].Points[p * 2].Y := LastY;
                    ArPoints[i].Points[p * 2 + 1].Y := LastY;
                  end
                else
                  LastY := Trunc((ArPoints[i].Points[p * 2].Y + ArPoints[i].Points[p * 2 + 1].Y)/2);
            end;
        end;
    end;


  if isDecimation then
    begin
      for i := 0 to CNT_PARAM - 1 do
        begin
          if ItemParam[i].isOutGraph then
            begin
              FormMultiGraph.imgGraph.Canvas.Pen.Color := ItemParam[i].Color;
              FormMultiGraph.imgGraph.Canvas.Pen.Width := ItemParam[i].Bold;
              FormMultiGraph.imgGraph.Canvas.MoveTo(1,0);
              FormMultiGraph.imgGraph.Canvas.Polyline(ArPoints[i].Points);
            end;
        end;
    end;


  isEnOutGraph := False;
  FormMultiGraph.Color := CurFormColor;

  if isPauseOutGraph then
    begin
      btnNext.Enabled := isBtnNext;
      btnPrev.Enabled := isBtnPrev;
      btn_Start.Enabled := True;
    end;

  //btn_Start.SetFocus;
  isEnUpdGraph := True;
  (Sender as TTimer).Enabled := False;
end;



procedure TFormMultiGraph.tmrEnShiftTimer(Sender: TObject);
begin
  isEnShift := True;
  (Sender as TTimer).Enabled := False;
end;

procedure TFormMultiGraph.IsOutGraphClick(Sender: TObject);
var index : Integer;
    isOutGraph : Boolean;
begin
  index := (Sender as TCheckBox).Tag;
  isOutGraph := (Sender as TCheckBox).Checked;
  SetItemGrVis(index, isOutGraph, false);
  UpdGraph;
  //ItemParam[index].NameParam.Enabled := isOutGraph;
  //ItemParam[index].EditMin.Enabled   := isOutGraph;
  //ItemParam[index].EditMax.Enabled   := isOutGraph;
  //ItemParam[index].ChBoxBold.Enabled   := isOutGraph;
  //ItemParam[index].BtZoomP.Enabled   := isOutGraph;
  //ItemParam[index].BtZoomM.Enabled   := isOutGraph;
  //ItemParam[index].VPos.Enabled   := isOutGraph;
  //ItemParam[index].SColor.Enabled := isOutGraph;
  //ItemParam[index].BtV0.Enabled   := isOutGraph;

end;

procedure TFormMultiGraph.PanelClick(Sender: TObject);
begin
  ItemParam[(Sender as TPanel).Tag].ChIsOutGraph.Checked := not ItemParam[(Sender as TPanel).Tag].ChIsOutGraph.Checked;
end;

procedure TFormMultiGraph.edtKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9', #8, '-']) then
   Key := #0;
end;

procedure TFormMultiGraph.edtMinExit(Sender: TObject);
var index : Integer;
    buf   : Int64;
begin
  index := (Sender as TEdit).Tag;

  if ItemParam[index].Min < ItemParam[index].Max then
    begin
      ItemParam[index].EditMax.Text  := IntToStr(ItemParam[index].Max);
    end
  else if ItemParam[index].Min > ItemParam[index].Max then
    begin
      buf := ItemParam[index].Min;
      ItemParam[index].Min := ItemParam[index].Max;
      ItemParam[index].Max := buf;
    end;

  ItemParam[index].EditMax.Color := clWindow;
  ItemParam[index].EditMin.Color := clWindow;
  ItemParam[index].EditMax.Text  := IntToStr(ItemParam[index].Max);
  ItemParam[index].EditMin.Text  := IntToStr(ItemParam[index].Min);
end;

procedure TFormMultiGraph.edtMaxExit(Sender: TObject);
var index : Integer;
    buf   : Int64;
begin
  index := (Sender as TEdit).Tag;

  if ItemParam[index].Min < ItemParam[index].Max then
    begin
      ItemParam[index].EditMax.Text  := IntToStr(ItemParam[index].Max);
    end
  else if ItemParam[index].Min > ItemParam[index].Max then
    begin
      buf := ItemParam[index].Min;
      ItemParam[index].Min := ItemParam[index].Max;
      ItemParam[index].Max := buf;
    end;

  ItemParam[index].EditMax.Color := clWindow;
  ItemParam[index].EditMin.Color := clWindow;
  ItemParam[index].EditMax.Text  := IntToStr(ItemParam[index].Max);
  ItemParam[index].EditMin.Text  := IntToStr(ItemParam[index].Min);
end;


procedure TFormMultiGraph.Bt1Click(Sender: TObject);
var cnt, i, dY, nPozY : Integer;

begin
  (Sender as TButton).ShowHint := False;
  cnt := 0;
  for i := 0 to CNT_PARAM - 1 do
    if ItemParam[i].isOutGraph then
      inc(cnt);

  if cnt > 0 then
    begin
      dY := Trunc(imgGraph.Height / (cnt + 1));
      nPozY := 0;
      for i := 0 to CNT_PARAM - 1 do
        if ItemParam[i].isOutGraph then
          begin
            nPozY := nPozY + dY;
            ItemParam[i].VPos.Position := 0;
            ItemParam[i].PosY := imgGraph.Height - nPozY;
            ItemParam[i].BtV0.Hint := IntToStr(nPozY);
          end;

    end;
end;

procedure TFormMultiGraph.Bt3Click(Sender: TObject);
var i : Integer;
begin
  (Sender as TButton).ShowHint := False;
  for i := 0 to CNT_PARAM - 1 do
    if ItemParam[i].isOutGraph then
      begin
        ItemParam[i].VPos.Position := 0;
        ItemParam[i].PosY := 0;
        ItemParam[i].BtV0.Hint := IntToStr(ItemParam[i].PosY);
      end;
end;

procedure TFormMultiGraph.Edt1KeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9', #8, '-']) then
   Key := #0;
end;

procedure TFormMultiGraph.Edt2KeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9', #8, '-']) then
   Key := #0;
end;

procedure TFormMultiGraph.Bt2Click(Sender: TObject);
var isOKMin, isOKMax : Boolean;
    i : Integer;
begin
  (Sender as TButton).ShowHint := False;
  isOKMin := True;
  try
    YMinAll := StrToInt(Edt1.Text);
  except
    isOKMin := False;
  end;

  if isOKMin then
    Edt1.Color := clWindow
  else
    Edt1.Color := clYellow;

  isOKMax := True;
  try
    YMaxAll := StrToInt(Edt2.Text);
  except
    isOKMax := False;
  end;

  if isOKMax then
    Edt2.Color := clWindow
  else
    Edt2.Color := clYellow;

  if isOKMax and isOKMin then
    if YMaxAll <= YMinAll then
      begin
        isOKMax := False;
        isOKMin := False;
        Edt2.Color := clYellow;
        Edt1.Color := clYellow;
      end;

  if isOKMax and isOKMin then
    for i:= 0 to CNT_PARAM - 1 do
      if ItemParam[i].isOutGraph then
        begin
          ItemParam[i].Min := YMinAll;
          ItemParam[i].Max := YMaxAll;
          ItemParam[i].EditMin.Text := IntToStr(YMinAll);
          ItemParam[i].EditMax.Text := IntToStr(YMaxAll);
          ItemParam[i].EditMin.Color := clWindow;
          ItemParam[i].EditMax.Color := clWindow;
        end;
end;

procedure TFormMultiGraph.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
  var dW : Integer;
begin

  dW := FormMultiGraph.Width - widthFormStart;

  imgGraph.Width := widthGraphStart + dW;
  pnl1.Width := widthPanelStart + dW;

//  if (dW > 10) or dW < -10)
  dW := widthOld - FormMultiGraph.Width;

  if (dW > 5) or (dW < -5) then
    begin
      ClearGraph;
      widthOld := FormMultiGraph.Width;
    end;


  lbl1.Visible := FormMultiGraph.Width > 1250;
  RadioButton1.Visible := lbl1.Visible;
  rb1.Visible := lbl1.Visible;
  rb2.Visible := lbl1.Visible;
  rb3.Visible := lbl1.Visible;

end;

procedure TFormMultiGraph.tmrSetWidthTimer(Sender: TObject);
begin
  FormMultiGraph.Width := 975;
  FormMultiGraph.Position := poScreenCenter;
  (Sender as TTimer).Enabled := False;
end;

procedure TFormMultiGraph.btn49Click(Sender: TObject);
begin
  UpdGraph;
end;

procedure TFormMultiGraph.rb1Click(Sender: TObject);
begin
  LineTime := LineSec;
end;

procedure TFormMultiGraph.rb2Click(Sender: TObject);
begin
  LineTime := LineMin;
end;

procedure TFormMultiGraph.rb3Click(Sender: TObject);
begin
  LineTime := LineHour;
end;

procedure TFormMultiGraph.RadioButton1Click(Sender: TObject);
begin
    LineTime := LineNo;
end;


procedure TFormMultiGraph.imgGraphClick(Sender: TObject);
var
  i : Integer;
begin
  isFixForUpd := not isFixForUpd;

  for i := 0 to CNT_PARAM - 1 do
   if isFixForUpd then
     begin
       ItemParam[i].StData.Font.Style := [fsBold];
       ItemParam[i].StVal.Font.Style := [fsBold];
     end
   else
     begin
       ItemParam[i].StData.Font.Style := [];
       ItemParam[i].StVal.Font.Style := [];
     end;

end;

procedure TFormMultiGraph.ChDecimationClick(Sender: TObject);
begin
  isDecimation := (Sender as TCheckBox).Checked;
  (Sender as TCheckBox).ShowHint := False;
end;

procedure TFormMultiGraph.tmrUpdTimer(Sender: TObject);
begin
  UpdGraph;
end;

procedure TFormMultiGraph.CheckBox1Click(Sender: TObject);
begin
  isAutoUpd := (Sender as TCheckBox).Checked;
  tmrUpd.Enabled := isAutoUpd;
  (Sender as TCheckBox).ShowHint := False;
end;

end.
