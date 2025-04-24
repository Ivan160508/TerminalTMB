unit Unit26;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Common, DateUtils;



type
  TFormGraph = class(TForm)
    img1: TImage;
    Edt1: TEdit;
    Edt2: TEdit;
    Bt1: TButton;
    pb1: TProgressBar;
    lbl3: TLabel;
    lbl4: TLabel;
    tmrClear: TTimer;
    rb1: TRadioButton;
    lbl1: TLabel;
    rb2: TRadioButton;
    rb3: TRadioButton;
    rb4: TRadioButton;
    txt1: TStaticText;
    trckbr1: TTrackBar;
    lbl5: TLabel;
    Bt2: TButton;
    CheckBox1: TCheckBox;
    chk1: TCheckBox;
    btn1: TButton;
    btn3: TButton;
    btn2: TButton;
    tmrOutGraph: TTimer;
    lbltxt2: TLabel;
    chk2: TCheckBox;
    thrVal: TTrackBar;
    tmrUpdAddLine: TTimer;
    btn000: TButton;
    chkShowGrid: TCheckBox;
    Button1: TButton;
    tmrL: TTimer;
    tmrR: TTimer;
    ud1: TUpDown;
    ud3: TUpDown;
    btn4: TButton;
    ctxt1: TStaticText;
    ctxt2: TStaticText;
    ctxt3: TStaticText;
    ctxt4: TStaticText;
    chk3: TCheckBox;
    ctxt5: TStaticText;
    ctxt6: TStaticText;
    Bt3: TButton;
    CheckBox2: TCheckBox;
    lbl2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edt1Change(Sender: TObject);
    procedure Edt2Change(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure Edt1KeyPress(Sender: TObject; var Key: Char);
    procedure Edt2KeyPress(Sender: TObject; var Key: Char);
    procedure tmrClearTimer(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure rb4Click(Sender: TObject);
    procedure trckbr1Change(Sender: TObject);
    procedure txt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure tmrOutGraphTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chk2Click(Sender: TObject);
    procedure thrValChange(Sender: TObject);
    procedure tmrUpdAddLineTimer(Sender: TObject);
    procedure btn000Click(Sender: TObject);
    procedure img1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClick(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure chkShowGridClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure tmrLTimer(Sender: TObject);
    procedure tmrRTimer(Sender: TObject);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);

    procedure ud3Click(Sender: TObject; Button: TUDBtnType);
    procedure ud2Click(Sender: TObject; Button: TUDBtnType);
    procedure btn4Click(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure lbltxt2DblClick(Sender: TObject);
    procedure img1DblClick(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    YMin : Int64;
    YMax : Int64;

    MaxVal : ^Int64;
    MinVal : ^Int64;

    isMax, isMin : array[0..3] of Boolean;
    CMax, CMin : array[0..3] of Integer;
    GndColor : TColor;

    pDG : pDataGraph;
    DGiAct : ^Cardinal;
    isBuf : Boolean;

    procedure WriteNewName(name : string);
    procedure WriteNewPoint(val : Int64; DateTime: TDateTime);
    procedure WriteMinMax(Min : Int64; Max : Int64);
    { Public declarations }
  end;

const
  Colors : array[0..3] of TColor = (clRed, clYellow, clLime, clAqua);


var
  FormGraph: TFormGraph;
  TimeOutVisMouse : Cardinal;
  DateTimeOld : TDateTime;
  WImg : Integer;
  HImg : Integer;
  Rect : TRect;
  BoldLine : Integer;
  AddLine : Int64;
  AddLine_1_2_5 : array[0..49] of Int64;
  isHLines : Boolean;
  ScaleY : Int64;
  dY   : Real;
  y0   : Integer;
  isShowDate : Boolean;
  CntPoint : Cardinal;
  isReqUpd : Boolean;
  MaxCntPoint : Cardinal;
  imgHstart : Integer;
  imgWstart : Integer;
  isAutoShift : boolean;

  OldValCenter : Int64;

  formHstart : Integer;
  formWstart : Integer;

  btClearLeftStartr : Integer;
  btClearTopStartr : Integer;

  isPauseOscill : Boolean;
  xPoz, yPoz : Integer;
  wFOld, hFOld : integer;
  isActivateForm : Boolean;
  yBuf : Cardinal;
  xBuf : Cardinal;
  utBuf : TDateTime;
  dtFix : TDateTime;
  dtFixBuf : TDateTime;
  TimeLine : Cardinal;
  TimeColor : TColor;
  Zoom : Integer;
  ZoomMinus : Integer;
  isOscill : Boolean;
  isUseColor : Boolean;
  isNewPoint : Boolean;
  //DataGraph : array[0..(MAX_CNT_DG - 1)] of TDataGraph;

  DGiL, DGiR : Cardinal;
  //DG_Cnt  : Cardinal;
  //DG_Head : Cardinal;
  //DG_Tail : Cardinal;

  DataGraphTmp : array[0..(MAX_CNT_DG - 1)] of TDataGraph;
  DataTimeBuf : array[0..1600] of TDateTime;
  ValueBuf : array[0..1600] of Int64;
  DGi    : Cardinal;
  isReqClear : Boolean;
  isAutoScale : Boolean;
  LastVal : Int64;
  isVisMouse : Boolean;
  isShowGrid : Boolean;
  //DGTi : Cardinal;
  //DGTiStart : Cardinal;
  //DGTCnt    : Cardinal;
  LineFix : Int64;
  zoomY1, zoomY2 : Integer;
  isShowDateAlwais : Boolean;
  GrDeltaY : Cardinal;
implementation

{$R *.dfm}





procedure GetAddLine1_2_5;
var i, delta : Integer;
begin
  if not isHLines then exit;

  for i := 0 to 49 do
    AddLine_1_2_5[i] := 0;


  if FormGraph.YMax > FormGraph.YMin then
    begin
      delta := Round((FormGraph.YMax - FormGraph.YMin) / 20);
      if delta > 200000000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 200000000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 200000000;
          GrDeltaY := 200000000;
        end
      else if delta > 100000000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 100000000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 100000000;
          GrDeltaY := 100000000;
        end
      else if delta > 50000000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 50000000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 50000000;
          GrDeltaY := 50000000;
        end
      else if delta > 20000000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 20000000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 20000000;
          GrDeltaY := 20000000;
        end
      else if delta > 10000000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 10000000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 10000000;
          GrDeltaY := 10000000;
        end
      else if delta > 5000000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 5000000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 5000000;
          GrDeltaY := 5000000;
        end
      else if delta > 2000000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 2000000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 2000000;
          GrDeltaY := 2000000;
        end
      else if delta > 1000000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 1000000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 1000000;
          GrDeltaY := 1000000;
        end
      else if delta > 500000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 500000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 500000;
          GrDeltaY := 500000;
        end
      else if delta > 200000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 200000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 200000;
          GrDeltaY := 200000;
        end
      else if delta > 100000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 100000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 100000;
          GrDeltaY := 100000;
        end
      else if delta > 50000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 50000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 50000;
          GrDeltaY := 50000;
        end
      else if delta > 20000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 20000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 20000;
          GrDeltaY := 20000;
        end
      else if delta > 10000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 10000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 10000;
          GrDeltaY := 10000;
        end
      else if delta > 5000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 5000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 5000;
          GrDeltaY := 5000;
        end
      else if delta > 2000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 2000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 2000;
          GrDeltaY := 2000;
        end
      else if delta > 1000 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 1000);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 1000;
          GrDeltaY := 1000;
        end
      else if delta > 500 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 500);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 500;
          GrDeltaY := 500;
        end
      else if delta > 200 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 200);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 200;
          GrDeltaY := 200;
        end
      else if delta > 100 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 100);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 100;
          GrDeltaY := 100;
        end
      else if delta > 50 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 50);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 50;
          GrDeltaY := 50;
        end
      else if delta > 20 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 20);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 20;
          GrDeltaY := 20;
          //20
        end
      else if delta > 10 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 10);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 10;
          GrDeltaY := 10;
          //10
        end
      else if delta > 5 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 5);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 5;
          GrDeltaY := 5;
          //5
        end
      else if delta > 2 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 2);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 2;
          GrDeltaY := 2;
          //2
        end
      else if delta > 1 then
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - (FormGraph.YMax mod 1);
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 1;
          GrDeltaY := 1;
        end
      else
        begin
          AddLine_1_2_5[0] := FormGraph.YMax - 1;
          for i := 1 to 49 do
            AddLine_1_2_5[i] := AddLine_1_2_5[i - 1] - 1;
        end;


    end;

  FormGraph.thrVal.Hint := IntToStr(AddLine);
end;


procedure GetAddLine;
var s, pos, i, delta : Integer;
begin
  s := FormGraph.thrVal.Max;
  pos := s - FormGraph.thrVal.Position;
  AddLine := Integer(FormGraph.YMin + Round(ScaleY * pos/s));
  FormGraph.thrVal.Hint := IntToStr(AddLine);
end;

procedure SetMinMax;
var
  delta : Int64;
  begin
    if FormGraph.MinVal^ = FormGraph.MaxVal^ then
      begin
        FormGraph.YMin := FormGraph.MinVal^ - 1;
        FormGraph.YMax := FormGraph.MaxVal^ + 1;
      end
    else;
      begin
        FormGraph.YMin := FormGraph.MinVal^;
        FormGraph.YMax := FormGraph.MaxVal^;
      end;
    delta := Abs(FormGraph.YMax - FormGraph.YMin + 1);
    FormGraph.YMin := FormGraph.YMin - (delta shr 3);
    FormGraph.YMax := FormGraph.YMax + (delta shr 3);
    if FormGraph.YMax < 2147483647 then
      FormGraph.Edt1.Text := IntToStr(FormGraph.YMax);
    if FormGraph.YMin > -2147483647 then
      FormGraph.Edt2.Text := IntToStr(FormGraph.YMin);
  end;


procedure ClearGraph;
var
  y, i, yOld, dYLine, ost, pozText : Integer;
  tmp : Integer;

  Height, Width : Cardinal;
  GridColor : TColor;
  HCenter, VCenter, HPos, VPos : Integer;
begin
  for i:=0 to 1600 do
    begin
      DataTimeBuf[i] := 0;
      ValueBuf[i] := 0;
    end;
  isVisMouse := False;
  Rect.Left:=0;
  Rect.Top:=0;
  Rect.Right:=FormGraph.img1.Width;
  Rect.Bottom:=FormGraph.img1.Height;

  FormGraph.img1.Canvas.Pen.Width := 1;

  GetAddLine1_2_5;

  if isUseColor then
    FormGraph.img1.Canvas.Brush.Color:= FormGraph.GndColor
  else
    FormGraph.img1.Canvas.Brush.Color:= clWhite;

  FormGraph.img1.Canvas.Pen.Color := clBlack;
  FormGraph.img1.Canvas.Rectangle(Rect);

  if (FormGraph.YMax = FormGraph.YMin) then
    begin
      FormGraph.YMax := FormGraph.YMax + 1;
      FormGraph.YMin := FormGraph.YMin - 1;
    end;

  if isShowGrid then
    begin
      Height := FormGraph.img1.Height;
      Width  := FormGraph.img1.Width;
      GridColor := FormGraph.img1.Canvas.Brush.Color xor $FFFFFF;
      VCenter := Round(Height / 2);
      HCenter := Round(Width / 2);


      HPos := HCenter;
      VPos := VCenter;
      while VPos < Height do
        begin
          HPos := HCenter;
          while HPos < Width do
            begin
              FormGraph.img1.Canvas.Pixels[HPos, VPos] := GridColor;
              inc(HPos, 10);
            end;
          inc(VPos, 10);
        end;

      HPos := HCenter;
      VPos := VCenter;
      while VPos >= 0 do
        begin
          HPos := HCenter;
          while HPos < Width do
            begin
              FormGraph.img1.Canvas.Pixels[HPos, VPos] := GridColor;
              inc(HPos, 10);
            end;
          dec(VPos, 10);
        end;

      HPos := HCenter;
      VPos := VCenter;
      while VPos < Height do
        begin
          HPos := HCenter;
          while HPos >= 0 do
            begin
              FormGraph.img1.Canvas.Pixels[HPos, VPos] := GridColor;
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
              FormGraph.img1.Canvas.Pixels[HPos, VPos] := GridColor;
              dec(HPos, 10);
            end;
          dec(VPos, 10);
        end;
    end;


  if isUseColor then
    for i := 0 to 3 do
      begin
        Rect.Left:=1;
        Rect.Right:=FormGraph.img1.Width-1;
        FormGraph.img1.Canvas.Brush.Color := Colors[i];
        FormGraph.img1.Canvas.Pen.Color := Colors[i];

        if FormGraph.isMin[i] and not FormGraph.isMax[i] then
          begin
            Rect.Top:= 1;
            Rect.Bottom:=Integer(HImg - Round((FormGraph.CMin[i] - FormGraph.YMin) / dY));
            FormGraph.img1.Canvas.Rectangle(Rect);
          end
        else if FormGraph.isMin[i] and FormGraph.isMax[i] then
          begin
            if FormGraph.CMax[i] >= FormGraph.CMin[i] then
              begin                //—редн€€ лини€
                Rect.Bottom:=Integer(HImg - Round((FormGraph.CMin[i] - FormGraph.YMin) / dY));
                Rect.Top:= Integer(Round((FormGraph.YMax - FormGraph.CMax[i]) / dY));
                FormGraph.img1.Canvas.Rectangle(Rect);
              end
            else if FormGraph.CMax[i] < FormGraph.CMin[i] then
              begin                //по кра€м
                Rect.Top:=1;
                Rect.Bottom:=Integer(HImg - Round((FormGraph.CMin[i] - FormGraph.YMin) / dY));
                FormGraph.img1.Canvas.Rectangle(Rect);
                Rect.Top:= Integer(Round((FormGraph.YMax - FormGraph.CMax[i]) / dY));
                Rect.Bottom:= HImg-1;
                FormGraph.img1.Canvas.Rectangle(Rect);
              end;
          end
        else if not FormGraph.isMin[i] and FormGraph.isMax[i] then
          begin
            Rect.Top:= Integer(Round((FormGraph.YMax - FormGraph.CMax[i]) / dY));
            Rect.Bottom:= HImg - 1;
            FormGraph.img1.Canvas.Rectangle(Rect);
          end;
      end;


  if (FormGraph.YMax > FormGraph.YMin) then
    begin
      FormGraph.img1.Canvas.Pen.Color := clInactiveCaption;
      ScaleY := FormGraph.YMax - FormGraph.YMin;
      dY := ScaleY/HImg;
      y := Integer(HImg - Round((0 - FormGraph.YMin) / dY));
      y0 := y;
      FormGraph.img1.Canvas.MoveTo(1, y);
      FormGraph.img1.Canvas.LineTo(WImg - 1, y);

      FormGraph.img1.Canvas.Pen.Color := clRed;

      if isHLines then
        begin
          yOld := 1;
          FormGraph.img1.Canvas.Pen.Color := clGray;
          FormGraph.img1.Canvas.Pen.Style := psDot;

          dYLine := Integer(Round((AddLine_1_2_5[0] - AddLine_1_2_5[1]) / dY));

          GrDeltaY := Abs(AddLine_1_2_5[0] - AddLine_1_2_5[1]);
          for i := 0 to 49 do
            begin
              if AddLine_1_2_5[i] >= FormGraph.YMin then
                begin
                  y := Integer(HImg - Round((AddLine_1_2_5[i] - FormGraph.YMin) / dY));
                  y0 := y;
                  if (dYLine > 15) or (i mod 2 = 0) then
                    begin
                      FormGraph.img1.Canvas.MoveTo(1, y);
                      FormGraph.img1.Canvas.LineTo(WImg - 1, y);
                      FormGraph.img1.Canvas.TextOut(3,y - 10, ' ' + IntToStr(AddLine_1_2_5[i]));
                    end
                   else
                     GrDeltaY := Abs(AddLine_1_2_5[2] - AddLine_1_2_5[0]);
                end;
            end;
          FormGraph.img1.Canvas.Pen.Color := clRed;
          FormGraph.img1.Canvas.Pen.Style := psSolid;


          FormGraph.img1.Canvas.Font.Color := clGreen;
          if dY > 1 then
            FormGraph.img1.Canvas.TextOut(3,1, 'VStep: ' + IntToStr(GrDeltaY) + '  VZoom: 1:' + IntToStr(Round(dY)))
          else if dY = 1 then
            FormGraph.img1.Canvas.TextOut(3,1, 'VStep: ' + IntToStr(GrDeltaY) + '  VZoom: 1:1')
          else if dY < 1 then
            FormGraph.img1.Canvas.TextOut(3,1, 'VStep: ' + IntToStr(GrDeltaY) + '  VZoom: ' + IntToStr(Round(1/dY)) + ':1');
          FormGraph.img1.Canvas.Font.Color := clBlack;
        end;

      y := Integer(HImg - Round((AddLine - FormGraph.YMin) / dY));
      y0 := y;
      FormGraph.img1.Canvas.MoveTo(1, y);
      FormGraph.img1.Canvas.LineTo(WImg - 1, y);

      if isHLines then
        pozText := 75
      else
        pozText := 1;

      FormGraph.img1.Canvas.Font.Color := clRed;
      if LineFix = 0 then
        FormGraph.img1.Canvas.TextOut(pozText,y + 2, ' ' + IntToStr(AddLine))
      else
        FormGraph.img1.Canvas.TextOut(pozText,y + 2, ' ' + IntToStr(AddLine) + ' [ ' + IntToStr(AddLine - LineFix) + ' ]');


      if LineFix <> 0 then
        begin
          y := Integer(HImg - Round((LineFix - FormGraph.YMin) / dY));
          FormGraph.img1.Canvas.MoveTo(1, y);
          FormGraph.img1.Canvas.LineTo(WImg - 1, y);
          FormGraph.img1.Canvas.TextOut(pozText,y + 2, ' ' + IntToStr(LineFix));
        end;
      FormGraph.img1.Canvas.Font.Color := clBlack;

      FormGraph.img1.Canvas.Pen.Color := clBlack;
    end;


  tmp := FormGraph.thrVal.Max;
  if FormGraph.thrVal.Position < tmp then
    begin
      FormGraph.thrVal.Position := Round(tmp - tmp * (AddLine - FormGraph.YMin)/ScaleY);
    end
  else
    begin
      AddLine := FormGraph.YMin;
    end;

  FormGraph.img1.Canvas.Pen.Color := clBlack;
  FormGraph.img1.Canvas.MoveTo(0,0);
  FormGraph.img1.Canvas.LineTo(WImg-1,0);
  FormGraph.img1.Canvas.LineTo(WImg-1,HImg-1);
  FormGraph.img1.Canvas.LineTo(0,HImg-1);
  FormGraph.img1.Canvas.LineTo(0,0);

  FormGraph.img1.Canvas.MoveTo(1,1);
  FormGraph.img1.Canvas.LineTo(WImg-2,1);
  FormGraph.img1.Canvas.LineTo(WImg-2,HImg-2);
  FormGraph.img1.Canvas.LineTo(1,HImg-2);
  FormGraph.img1.Canvas.LineTo(1,1);


  CntPoint := 0;
  FormGraph.pb1.Position := 0;
  //FormGraph.lbl2.Caption := 'Y:' + IntToStr(0);
  ZoomMinus := Zoom;
  isReqClear := False;
end;

procedure TFormGraph.WriteMinMax(Min : Int64; Max : Int64);
begin
  YMax := Max;
  YMin := Min;
end;


procedure TFormGraph.WriteNewName(name : string);
begin
  FormGraph.Caption := 'Graph [ ' + name + ' ]';
end;


procedure WriteNewData(val : Int64; DateTime: TDateTime);
  var
  y : Integer;
  ut : TDateTime;
  zum : Integer;
  time : string;
  scale : Integer;
begin
  zum := Zoom;
  if DateTime = 0 then
    val := 0;
  LastVal := val;
  if (TimeOutVisMouse > 0) then
    Dec(TimeOutVisMouse);
  //time := FormatDateTime('hh:mm:ss:zzz ', DateTime);
  if (not isVisMouse) and (TimeOutVisMouse = 0) then
    begin
      FormGraph.lbltxt2.Caption := FormatDateTime('[hh:mm:ss:zzz] : ', DateTime) + IntToStr(val);
      FormGraph.lbltxt2.Hint := FormatDateTime('dd mmmm yyyy', DateTime);

      FormGraph.lbltxt2.Color := FormGraph.Color;
    end;
  if isOscill and isAutoScale and (DateTime <> 0) then
    begin
      scale := Abs(FormGraph.YMax - FormGraph.YMin);

      if val >= FormGraph.YMax then
        begin
          FormGraph.YMax := val + (scale shr 4) + 5;
          FormGraph.Edt1.Text := IntToStr(FormGraph.YMax);
        end;
      if val <= FormGraph.YMin then
        begin
          FormGraph.YMin := val - (scale shr 4) - 5;
          FormGraph.Edt2.Text := IntToStr(FormGraph.YMin);
        end;
    end;


  FormGraph.img1.Canvas.Pen.Width := BoldLine;

  if (Zoom < 0) and (ZoomMinus > 0) then
    ZoomMinus := Zoom;

  y := Integer(HImg - Round((val - FormGraph.YMin) / dY));

  if zum >=0 then
    while zum >= 0 do
      begin
        ZoomMinus := Zoom;
        if isReqUpd then
          begin
            ClearGraph();
            isReqUpd := False;
          end;


        if CntPoint = 0 then
          begin
            FormGraph.img1.Canvas.MoveTo(0, y);
            xBuf := 0;

          end;

        if (TimeLine > 0) and (CntPoint > 0) then
          begin
            ut := DateTime;
            if Trunc((ut - utBuf)*86400000) > TimeLine then
              begin
                FormGraph.img1.Canvas.Pen.Width := 1;
                utBuf := ut;
                FormGraph.img1.Canvas.MoveTo(CntPoint, 2);
                FormGraph.img1.Canvas.Pen.Color := TimeColor;
                FormGraph.img1.Canvas.LineTo(CntPoint, FormGraph.img1.Height - 2);
                FormGraph.img1.Canvas.Pen.Color := clBlack;
                FormGraph.img1.Canvas.MoveTo(xBuf, yBuf);
                FormGraph.img1.Canvas.Pen.Width := BoldLine;
              end;
          end;

        if CntPoint > 0 then
          begin
            FormGraph.img1.Canvas.LineTo(CntPoint, y);
            yBuf := y;
            xBuf := CntPoint;
            DataTimeBuf[CntPoint] := DateTime;
            ValueBuf[CntPoint] := val;
          end;

        Inc(CntPoint);

        Dec(zum);
      end
  else
    if ZoomMinus <= 0 then
      begin
        if isReqUpd then
          begin
            ClearGraph();
            isReqUpd := False;
          end;


        if CntPoint = 0 then
          begin
            FormGraph.img1.Canvas.MoveTo(0, y);
            xBuf := 0;
          end;

        if (TimeLine > 0) and (CntPoint > 0) then
          begin
            ut := DateTime;
            if Trunc((ut - utBuf)*86400000) > TimeLine then
              begin
                FormGraph.img1.Canvas.Pen.Width := 1;
                utBuf := ut;
                FormGraph.img1.Canvas.MoveTo(CntPoint, 2);
                FormGraph.img1.Canvas.Pen.Color := TimeColor;
                FormGraph.img1.Canvas.LineTo(CntPoint, FormGraph.img1.Height - 2);
                FormGraph.img1.Canvas.Pen.Color := clBlack;
                FormGraph.img1.Canvas.MoveTo(xBuf, yBuf);
                FormGraph.img1.Canvas.Pen.Width := BoldLine;
              end;
          end;

        if CntPoint > 0 then
          begin
            if (DateTime <> 0) and (DateTimeOld <> 0) then
              FormGraph.img1.Canvas.LineTo(CntPoint, y)
            else
              FormGraph.img1.Canvas.MoveTo(CntPoint, y);
            DateTimeOld := DateTime;
            yBuf := y;
            xBuf := CntPoint;
            DataTimeBuf[CntPoint] := DateTime;
            ValueBuf[CntPoint] := val;
          end;

        inc(ZoomMInus);
        if ZoomMinus = 0 then
          Inc(CntPoint);
     end;
   isNewPoint := False;
end;


//procedure DataGraphAdd(val : Int64; DateTime: TDateTime);
//  var
//    pDGTmp : pDataGraph;
//begin
//  pDGTmp := FormGraph.pDG;

//  inc(pDGTmp, FormGraph.DGiAct);

//  pDGTmp^.val := val;
//  pDGTmp^.dt := DateTime;
//  inc(FormGraph.DGiAct);

//  FormGraph.DGiAct := FormGraph.DGiAct and (MAX_CNT_DG - 1);
//end;

function DataGraphRead(isNext : boolean) : Cardinal;
  var
    i : Cardinal;
    maxCnt : Cardinal;
    pDGTmp : pDataGraph;
begin
  pDGTmp := FormGraph.pDG;
  case FormGraph.trckbr1.Position of
    -2: begin maxCnt := Cardinal(FormGraph.img1.Width shl 8); end;// 1:128 end;
    -1: begin maxCnt := Cardinal(FormGraph.img1.Width shl 7); end;// 1:128 end;
    0:  begin maxCnt := Cardinal(FormGraph.img1.Width shl 6);  end;// 1:128 end;
    1:  begin maxCnt := Cardinal(FormGraph.img1.Width shl 5);  end;//  1:64
    2:  begin maxCnt := Cardinal(FormGraph.img1.Width shl 4);  end;//  1:32
    3:  begin maxCnt := Cardinal(FormGraph.img1.Width shl 3);   end;//  1:16
    4:  begin maxCnt := Cardinal(FormGraph.img1.Width shl 2);   end;//   1:8
    5:  begin maxCnt := Cardinal(FormGraph.img1.Width shl 1);   end;//   1:4
    6:  begin maxCnt := Cardinal(FormGraph.img1.Width);       end;//   1:1
    7:  begin maxCnt := Cardinal(FormGraph.img1.Width shr 1);   end;//    2:1
    8:  begin maxCnt := Cardinal(FormGraph.img1.Width shr 2);   end;//    2:1
    9:  begin maxCnt := Cardinal(FormGraph.img1.Width shr 3);   end;//    2:1
    10: begin maxCnt := Cardinal(FormGraph.img1.Width shr 4);  end;//    2:1
    11: begin maxCnt := Cardinal(FormGraph.img1.Width shr 5);  end;//    2:1
    12: begin maxCnt := Cardinal(FormGraph.img1.Width shr 6);  end;//    2:1
    13: begin maxCnt := Cardinal(FormGraph.img1.Width shr 7); end;//    2:1
    14: begin maxCnt := Cardinal(FormGraph.img1.Width shr 8); end;//    2:1
  end;

  MaxCntPoint := maxCnt;
  if isNext then
    begin
      DGi := DGiL;
    end
  else
    begin
      DGi := DGiR;
    end;

  DGiR := DGi;
  DGiL := DGi;

  i := 0;
  while i < maxCnt do
    begin
      Inc(pDGTmp, DGi);
      DataGraphTmp[i] := pDGTmp^;

      if DataGraphTmp[i].val = -2147483647 then
        DataGraphTmp[i].val := 0;

      inc(i);
      inc(DGi);
      DGi := DGi and (MAX_CNT_DG - 1);
      pDGTmp := FormGraph.pDG;
    end;


  if (maxCnt shr 4) > 0 then
    begin
      i:= 0;
      while i < (maxCnt shr 4) do
        begin
          inc(i);
          inc(DGiL);
          DGiL := DGiL and (MAX_CNT_DG - 1);
        end;

      i:= 0;
      while i < (maxCnt shr 4) do
        begin
          inc(i);
          dec(DGiR);
          DGiR := DGiR and (MAX_CNT_DG - 1);
        end;
    end
  else
    begin
      inc(DGiL);
      DGiL := DGiL and (MAX_CNT_DG - 1);
      dec(DGiR);
      DGiR := DGiR and (MAX_CNT_DG - 1);
    end;


  result := maxCnt;
end;


procedure DataGraphOut(maxCnt : Cardinal);
var
  i : Integer;
  scale, min, max : Int64;
begin
  i:= 0;
  while i < maxCnt do
    begin
      WriteNewData(DataGraphTmp[i].val, DataGraphTmp[i].dt);
      inc(i);
    end;
  isReqClear := True;

  if isAutoShift then
    if (FormGraph.YMax > FormGraph.YMin) And (OldValCenter <> DataGraphTmp[0].val) then
      begin
        scale := FormGraph.YMax - FormGraph.YMin;
        max := DataGraphTmp[0].val + Round(scale/2);
        min := DataGraphTmp[0].val - Round(scale/2);
        if max > 2147483647 then max := 2147483647;

        if min < -2147483647 then min := -2147483647;

        FormGraph.Edt1.Text := IntToStr(max);
        FormGraph.Edt2.Text := IntToStr(min);
        OldValCenter := DataGraphTmp[0].val;
      end;
  if isShowDate or isShowDateAlwais then
    begin
      if (DataGraphTmp[0].dt <> 0) and isOscill then
        FormGraph.img1.Canvas.TextOut(4,2, FormatDateTime('[ dd.mmmm.yyyy hh:mm:ss:zzz ] : ', DataGraphTmp[0].dt) + IntToStr(DataGraphTmp[0].val));
      isShowDate := False;
    end;
end;



procedure TFormGraph.WriteNewPoint(val : Int64; DateTime: TDateTime);
begin
  //DataGraphAdd(val,DateTime);

  isNewPoint := True;

  if isOscill then Exit;


  if CntPoint >= WImg then
    ClearGraph();

  WriteNewData(val, DateTime);

  //FormGraph.lbl2.Caption := 'Y:' + IntToStr(val);


  FormGraph.pb1.Position := CntPoint;
end;


procedure TFormGraph.FormCreate(Sender: TObject);
begin
  isPauseOscill := False;
  btn3.Caption := '||';
  TimeOutVisMouse := 0;
  xPoz := 0;
  yPoz := 0;
  isHLines := False;
  AddLine := 0;
  isUseColor := False;
  isAutoScale := False;
  isShowDate := False;
  isReqUpd := False;
  WImg := img1.Width;
  HImg := img1.Height;
  ClearGraph();
  pb1.Max := WImg;
  isOscill := False;
  imgHstart := HImg;
  imgWstart := WImg;
  MaxCntPoint := 0;
  isShowDateAlwais := False;
  formHstart := FormGraph.Height;
  formWstart := FormGraph.Width;
  isBuf := True;
  btClearLeftStartr := Bt1.Left;
  btClearTopStartr := Bt1.Top;
  isAutoShift := False;
  wFOld := FormGraph.Width;
  hFOld := FormGraph.Height;
  utBuf := Now;
  TimeLine := 0;
  Zoom := 0;
  txt1.Caption := '1:1';
  Bt2.Caption := 'Oscilloscope';

  BoldLine := 1;

  DGiR := 0;
  DGiL := 0;
  DGiAct := 0;

  GetAddLine;
end;


procedure TFormGraph.FormActivate(Sender: TObject);
var
  i : Cardinal;
  //pDGTmp : pDataGraph;
begin
  ud1.Position := 0;
  ud3.Position := 0;
  Bt3.Font.Style := [];
  LineFix := 0;

  zoomY1 := 0;
  zoomY2 := 0;

  TimeOutVisMouse := 0;
  isOscill := False;
  Bt2.Caption := 'Oscilloscope';
  ScaleY := YMax - YMin;
  dY := ScaleY/HImg;
  isVisMouse := False;
  isActivateForm := True;

  FormGraph.Width := 900;
  FormGraph.Height := 480;

  img1.Width := 870 - 47;
  img1.Height := 370;
  thrVal.Height := 387;

  pb1.Width := 870 - 47;
  pb1.Top := 405;

  lbl4.Top := 415;
  Edt2.Top := 415;
  Bt1.Top := 415;
  Bt1.Left := 700;
  lbltxt2.Left := 700;

  Bt2.Top := 415;

  Btn1.Top := 415;
  Btn2.Top := 415;
  Btn3.Top := 415;
  //lbltxt2.Top := 415;

  trckbr1.Top := 415;
  txt1.Top := 415;
  lbl5.Top := 415;

  btn000.Top := btn2.Top;
  Button1.Top  := btn2.Top;
  btn000.Visible := False;

  if YMax > 2147483647 then
    YMax := 2147483647;

  if YMax < -2147483647 then
    YMax := - 2147483647;

  if YMin > 2147483647 then
    YMin := 2147483647;

  FormGraph.Edt1.Text := IntToStr(YMax);
  FormGraph.Edt2.Text := IntToStr(YMin);

  //for i := 0 to MAX_CNT_DG do
  //  begin
  //    DataGraph[i].val := 0;
  //    DataGraph[i].dt  := Now;
  //  end;

  case FormGraph.trckbr1.Position of
    -2: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 8); end;// 1:128 end;
    -1: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 7); end;// 1:128 end;
    0:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 6);  end;// 1:128 end;
    1:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 5);  end;//  1:64
    2:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 4);  end;//  1:32
    3:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 3);   end;//  1:16
    4:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 2);   end;//   1:8
    5:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 1);   end;//   1:4
    6:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width);       end;//   1:1
    7:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 1);   end;//    2:1
    8:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 2);   end;//    2:1
    9:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 3);   end;//    2:1
    10: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 4);  end;//    2:1
    11: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 5);  end;//    2:1
    12: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 6);  end;//    2:1
    13: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 7); end;//    2:1
    14: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 8); end;//    2:1
  end;


  if isAutoScale and isOscill then
    SetMinMax;

  GetAddLine;
  ClearGraph();

  isPauseOscill := False;
  btn3.Caption := '||';
  Button1.Visible := False;
  tmrClear.Enabled := True;
end;

procedure TFormGraph.Edt1Change(Sender: TObject);
var
  str : string;
  yTmp : Int64;
begin
  Str := (Sender as TEdit).Text;
  if (str <> '') and (str <> '-') then
    begin
      try
        yTmp := StrToInt((Sender as TEdit).Text);
      except
        yTmp := YMin;
      end;

      if yTmp > YMin then
        begin
          YMax := yTmp;
          ScaleY := YMax - YMin;
          dY := ScaleY/HImg;
          isReqUpd := True;
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

  lbltxt2.Color := FormGraph.Color;
  txt1.Color := FormGraph.Color;
  chk1.Color := FormGraph.Color;
  chk2.Color := FormGraph.Color;
  CheckBox1.Color := FormGraph.Color;
  lbl5.Color := FormGraph.Color;
  lbl4.Color := FormGraph.Color;
  lbl1.Color := FormGraph.Color;
  lbl3.Color := FormGraph.Color;
  txt1.Color := FormGraph.Color;
end;

procedure TFormGraph.Edt2Change(Sender: TObject);
var
  str : string;
  yTmp : Int64;
begin
  Str := (Sender as TEdit).Text;
  if (str <> '') and (str <> '-') then
    begin
      try
        yTmp := StrToInt((Sender as TEdit).Text);
      except
        yTmp := YMax;
      end;

      if yTmp < YMax then
        begin
          YMin := yTmp;
          ScaleY := YMax - YMin;
          dY := ScaleY/HImg;
          isReqUpd := True;
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

procedure TFormGraph.Bt1Click(Sender: TObject);
begin
  ClearGraph();
end;

procedure TFormGraph.Edt1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8, '-']) then
    Key := #0;
end;

procedure TFormGraph.Edt2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8, '-']) then
    Key := #0;
end;

procedure TFormGraph.tmrClearTimer(Sender: TObject);
var
  dx, dy:Integer;
begin
  if isActivateForm then
    begin
      isReqUpd := true;
      WImg := img1.Width;
      HImg := img1.Height;
      isActivateForm := False;
    end;

  if isAutoScale and isOscill then
    SetMinMax;

  if FormGraph.pDG <> nil then
    begin
      ClearGraph();
      DataGraphOut(DataGraphRead(False));
      ClearGraph();
      DataGraphOut(DataGraphRead(True));
    end;
            
  isReqUpd := false;

  (Sender as TTimer).Enabled := False;
end;

procedure TFormGraph.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
var
  ddX, ddY, BufPoz:Integer;
begin
  zoomY1 := 0;
  zoomY2 := 0;

  TimeOutVisMouse := 0;
  if (Abs(wFOld - NewWidth) > 0) or (Abs(hFOld - NewHeight) > 0) then
    begin
      BufPoz := trckbr1.Position;

      ddX := FormGraph.Width - formWstart;
      ddY := FormGraph.Height - formHstart;

      img1.Height := imgHstart + ddY;
      img1.Width  := imgWstart + ddX;

      pb1.Width := img1.Width;


      Bt1.Left := btClearLeftStartr + ddX;
      Bt1.Top  := btClearTopStartr + ddY;
      Bt2.Top := Bt1.Top;

      Btn1.Top := Bt1.Top;
      Btn2.Top := Bt1.Top;
      Btn3.Top := Bt1.Top;
      //lbltxt2.Top := Bt1.Top;
      lbltxt2.Left := Bt1.Left;

      trckbr1.Top := btClearTopStartr + ddY;
      txt1.Top := btClearTopStartr + ddY;
      Edt2.Top := Bt1.Top;
      lbl5.Top := btClearTopStartr + ddY;
      //ChCBSecLine.Top := Bt1.Top;

      lbl4.Top := Bt1.Top;
      pb1.Top := lbl4.Top - 14;


      WImg := img1.Width;
      HImg := img1.Height;

      pb1.Max := WImg;

      wFOld := NewWidth;
      hFOld := NewHeight;

      isReqUpd := True;

      btn000.Top := btn2.Top;
      Button1.Top  := btn2.Top;



      ScaleY := YMax - YMin;
      dY := ScaleY/HImg;

      thrVal.Height := img1.Height + 16;


      if isOscill then
        begin
          if DGiAct^ > MaxCntPoint then
            begin
              DGi  := DGiAct^ - MaxCntPoint;
              DGiL := DGiAct^ - MaxCntPoint;
              DGiR := DGiAct^ - MaxCntPoint;
              utBuf := 0;
              ClearGraph();
              DataGraphOut(DataGraphRead(False));
            end
          else
            begin
              trckbr1.Position := BufPoz + 1;
            end;
        end;







      tmrClear.Enabled := True;




    end;
end;


procedure TFormGraph.rb1Click(Sender: TObject);
begin
  TimeLine := 0;
  TimeColor := clWhite;
  isVisMouse := False;
  TimeOutVisMouse := 0;
  if isOscill then
    begin
      ClearGraph();
      DataGraphOut(DataGraphRead(False));
      utBuf := 0;
      ClearGraph();
      DataGraphOut(DataGraphRead(True));
    end;
  zoomY1 := 0;
  zoomY2 := 0;
end;

procedure TFormGraph.rb2Click(Sender: TObject);
begin
TimeLine := 999;
TimeColor := clInactiveCaption;
isVisMouse := False;
TimeOutVisMouse := 0;
  if isOscill then
    begin
      ClearGraph();
      DataGraphOut(DataGraphRead(False));
      utBuf := 0;
      ClearGraph();
      DataGraphOut(DataGraphRead(True));
    end;
   zoomY1 := 0;
  zoomY2 := 0;


end;

procedure TFormGraph.rb3Click(Sender: TObject);
begin
 TimeLine := 59999;
 TimeColor := clLime;
 isVisMouse := False;
 TimeOutVisMouse := 0;
  if isOscill then
    begin
      ClearGraph();
      DataGraphOut(DataGraphRead(False));
      utBuf := 0;
      ClearGraph();
      DataGraphOut(DataGraphRead(True));
    end;
 zoomY1 := 0;
  zoomY2 := 0;



end;

procedure TFormGraph.rb4Click(Sender: TObject);
begin
  TimeLine := 3599999;
  TimeColor := clYellow;
  isVisMouse := False;
  TimeOutVisMouse := 0;
  if isOscill then
    begin
      ClearGraph();
      DataGraphOut(DataGraphRead(False));
      utBuf := 0;
      ClearGraph();
      DataGraphOut(DataGraphRead(True));
    end;
  zoomY1 := 0;
  zoomY2 := 0;

end;




procedure TFormGraph.trckbr1Change(Sender: TObject);
  var
    BufPoz : Integer;
begin
  zoomY1 := 0;
  zoomY2 := 0;
  BufPoz := trckbr1.Position;
  Zoom := trckbr1.Position;
case trckbr1.Position of
  -2: begin Zoom := -255; txt1.Caption := '1:256'; txt1.Hint := '256 dot per 1 pixel'; end;// 1:128 end;
  -1: begin Zoom := -127; txt1.Caption := '1:128'; txt1.Hint := '128 dot per 1 pixel'; end;// 1:128 end;
  0: begin Zoom := -63; txt1.Caption := '1:64'; txt1.Hint := '64 dot per 1 pixel'; end;// 1:128 end;
  1: begin Zoom := -31;  txt1.Caption := '1:32';  txt1.Hint := '32 dot per 1 pixel'; end;//  1:64
  2: begin Zoom := -15;  txt1.Caption := '1:16';  txt1.Hint := '16 dot per 1 pixel'; end;//  1:32
  3: begin Zoom := -7;  txt1.Caption := '1:8';  txt1.Hint := '8 dot per 1 pixel'; end;//  1:16
  4: begin Zoom := -3;   txt1.Caption := '1:4';   txt1.Hint := '4 dot per 1 pixel'; end;//   1:8
  5: begin Zoom := -1;   txt1.Caption := '1:2';   txt1.Hint := '2 dot per 1 pixel'; end;//   1:4
  6: begin Zoom := 0;   txt1.Caption := '1:1';   txt1.Hint := '1 dot per 1 pixel'; end;//   1:1
  7: begin Zoom := 1;    txt1.Caption := '2:1';   txt1.Hint := '2 pixel by 1 dot'; end;//    2:1
  8: begin Zoom := 3;    txt1.Caption := '4:1'; txt1.Hint := '4 pixel by 1 dot'; end;//    2:1
  9: begin Zoom := 7;   txt1.Caption := '8:1'; txt1.Hint := '8 pixel by 1 dot'; end;//    2:1
  10: begin Zoom := 15;    txt1.Caption := '16:1'; txt1.Hint := '16 pixel by 1 dot'; end;//    2:1
  11: begin Zoom := 31;    txt1.Caption := '32:1'; txt1.Hint := '32 pixel by 1 dot'; end;//    2:1
  12: begin Zoom := 63;    txt1.Caption := '64:1'; txt1.Hint := '64 pixel by 1 dot'; end;//    2:1
  13: begin Zoom := 127;    txt1.Caption := '128:1'; txt1.Hint := '128 pixel by 1 dot'; end;//    2:1
  14: begin Zoom := 255;    txt1.Caption := '256:1'; txt1.Hint := '256 pixel by 1 dot'; end;//    2:1
end;

  case trckbr1.Position of
    -2: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 8); end;// 1:128 end;
    -1: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 7); end;// 1:128 end;
    0:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 6);  end;// 1:128 end;
    1:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 5);  end;//  1:64
    2:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 4);  end;//  1:32
    3:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 3);   end;//  1:16
    4:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 2);   end;//   1:8
    5:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shl 1);   end;//   1:4
    6:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width);       end;//   1:1
    7:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 1);   end;//    2:1
    8:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 2);   end;//    2:1
    9:  begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 3);   end;//    2:1
    10: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 4);  end;//    2:1
    11: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 5);  end;//    2:1
    12: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 6);  end;//    2:1
    13: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 7); end;//    2:1
    14: begin MaxCntPoint := Cardinal(FormGraph.img1.Width shr 8); end;//    2:1
  end;

  if isOscill then
    begin
      if DGiAct^ > MaxCntPoint then
        begin
          DGi  := DGiAct^ - MaxCntPoint;
          DGiL := DGiAct^ - MaxCntPoint;
          DGiR := DGiAct^ - MaxCntPoint;
          utBuf := 0;
          ClearGraph();
          DataGraphOut(DataGraphRead(False));
        end
      else
        begin
          trckbr1.Position := BufPoz + 1;
        end;
    end;

  //if Zoom = 0 then
  //  begin
  //  txt1.Caption := '1:1';
  //    txt1.Hint := '1 dot per 1 pixel';
  //  end;

  //if Zoom > 0 then
  //  begin
  //    txt1.Caption := IntToStr(Zoom + 1) + ':1';
  //    txt1.Hint := IntToStr(Zoom + 1) + ' pixel by 1 dot';
  //  end;

  //if Zoom < 0 then
  //  begin
  //    txt1.Caption := '1:' + IntToStr(-1*(Zoom - 1));
  //    txt1.Hint := IntToStr(-1*(Zoom - 1)) + ' dot per 1 pixel';
  //  end;

end;

procedure TFormGraph.txt1Click(Sender: TObject);
begin
  trckbr1.Position := 6;
  isVisMouse := False;
  TimeOutVisMouse := 0;
  zoomY1 := 0;
  zoomY2 := 0;
end;

procedure TFormGraph.Bt2Click(Sender: TObject);
var
  i, iBuf : Integer;
begin
  if not isBuf then
    begin
      ShowMessage('For oscilloscope mode, data buffering must be enabled in the parser list settings (the option is highlighted in yellow)');
      Sleep(1);
      Exit;
    end;

  isOscill := not isOscill;
  isVisMouse := False;
  TimeOutVisMouse := 0;
  if isOscill then
    begin
      (Sender as TButton).Caption := 'Plotter';
      //FormGraph.Color := clBtnShadow;
      tmrOutGraph.Enabled := True;
      if isAutoScale then
        begin
          FormGraph.MaxVal^ := -2147483647;
          FormGraph.MinVal^ := 2147483647;
          SetMinMax;
          tmrClear.Enabled := True;
        end;
      isPauseOscill := False;
      btn3.Caption := '||';
    end
  else
    begin
      tmrOutGraph.Enabled := False;
      (Sender as TButton).Caption := 'Oscilloscope';
      if isReqClear then
        begin
        ClearGraph();
        isReqUpd := True;
      end;
    end;




  btn1.Visible := isOscill;
  btn2.Visible := isOscill;
  btn3.Visible := isOscill;
  chk2.Visible := isOscill;
  btn000.Visible := isOscill;
  pb1.Visible := not isOscill;
  Button1.Visible := isOscill;
  chk3.Visible := isOscill;
  ctxt5.Visible := isOscill;
  ctxt6.Visible := isOscill;
  chk3.Checked := False;

  DGi := DGiAct^;

  if isOscill then
    begin
      iBuf := trckbr1.Position;
      i := trckbr1.Min;
      while (MaxCntPoint > DGi) and (i < trckbr1.Max) do
        begin
          inc(i);
          trckbr1.Position := i;
        end;
      //if iBuf > trckbr1.Position then
      //  trckbr1.Position := iBuf;
    end;

  if isAutoScale and isOscill then
    SetMinMax;
end;

procedure TFormGraph.CheckBox1Click(Sender: TObject);
begin
  isUseColor := (Sender as TCheckBox).Checked;
  isVisMouse := False;
  TimeOutVisMouse := 0;
  if isOscill then
    begin
      ClearGraph();
      DataGraphOut(DataGraphRead(False));
      utBuf := 0;
      ClearGraph();
      DataGraphOut(DataGraphRead(True));
    end
  else
    ClearGraph();
  zoomY1 := 0;
  zoomY2 := 0;

end;

procedure TFormGraph.chk1Click(Sender: TObject);
begin
  isVisMouse := False;
  TimeOutVisMouse := 0;
  if (Sender as TCheckBox).Checked then
    BoldLine := 2
  else
    BoldLine := 1;

  if isOscill then
    begin
      ClearGraph();
      DataGraphOut(DataGraphRead(False));
      utBuf := 0;
      ClearGraph();
      DataGraphOut(DataGraphRead(True));
    end;
  zoomY1 := 0;
  zoomY2 := 0;

end;

procedure TFormGraph.btn1Click(Sender: TObject);
begin
  tmrL.Enabled := True;
  isShowDate := True;
  zoomY1 := 0;
  zoomY2 := 0;
end;

procedure TFormGraph.btn2Click(Sender: TObject);
begin
  tmrR.Enabled := True;
  isShowDate := True;
  zoomY1 := 0;
  zoomY2 := 0;
end;

procedure TFormGraph.btn3Click(Sender: TObject);
begin
  isPauseOscill := not isPauseOscill;
  zoomY1 := 0;
  zoomY2 := 0;

  if isPauseOscill then
    begin
      (Sender as Tbutton).Caption := '>';
      isVisMouse := False;
      TimeOutVisMouse := 0;
      tmrOutGraph.Enabled := False;
      utBuf := 0;

      ClearGraph();
      DataGraphOut(DataGraphRead(False));
      ClearGraph();
      DataGraphOut(DataGraphRead(True));
      lbltxt2.Color := TColor($80FFFF);
    end
  else
    begin
      (Sender as Tbutton).Caption := '||';
      tmrOutGraph.Enabled := True;
    end;

end;

procedure TFormGraph.tmrOutGraphTimer(Sender: TObject);
var
  thr : Cardinal;
begin
  if TimeOutVisMouse > 0 then
    Dec(TimeOutVisMouse);

  if not isNewPoint then Exit;

  thr := MaxCntPoint;

  if DGiAct^ > thr then
    begin
      DGi  := DGiAct^ - thr;
      DGiL := DGiAct^ - thr;
      DGiR := DGiAct^ - thr;
      utBuf := 0;
      ClearGraph();
      DataGraphOut(DataGraphRead(True));
    end;
  if TimeOutVisMouse = 0 then
    lbltxt2.Color := FormGraph.Color;
end;

procedure TFormGraph.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tmrOutGraph.Enabled := False;
  btn1.Visible := False;
  btn2.Visible := False;
  btn3.Visible := False;
  chk2.Visible := False;
  pb1.Visible := True;
  lbltxt2.Color := FormGraph.Color;
  Edt1.Text := '1000';
  Edt2.Text := '0';

end;

procedure TFormGraph.chk2Click(Sender: TObject);
begin
  isVisMouse := False;
  TimeOutVisMouse := 0;
  isAutoScale := (Sender as TCheckBox).Checked;

  zoomY1 := 0;
  zoomY2 := 0;


  if isAutoScale then
    begin
      if LastVal < 2147483647 then
        FormGraph.MaxVal^ := LastVal + 1;

      if LastVal > -2147483647 then
        FormGraph.MinVal^ := LastVal - 1;
      tmrClear.Enabled := True;
      SetMinMax;
      chk3.Checked := False;
      isAutoShift := False;
    end
  else
    begin
      //FormGraph.MaxVal^ := FormGraph.YMax;
      //FormGraph.MinVal^ := FormGraph.YMin;
    end;

  ud1.Enabled := not isAutoScale;
  ud3.Enabled := not isAutoScale;
  chk3.Enabled := not isAutoScale;
  btn4.Enabled := not isAutoScale;

  ud1.Position := 0;
  ud3.Position := 0;


  ClearGraph();
  DataGraphOut(DataGraphRead(False));
  utBuf := 0;
  ClearGraph();
  DataGraphOut(DataGraphRead(True));
end;

procedure TFormGraph.thrValChange(Sender: TObject);
begin
  GetAddLine;

  if isOscill then
    begin
      tmrUpdAddLine.Enabled := True;
    end
  else
    begin
      tmrClear.Enabled := True;
    end;
end;

procedure TFormGraph.tmrUpdAddLineTimer(Sender: TObject);
begin
  ClearGraph();
  DataGraphOut(DataGraphRead(False));
  ClearGraph();
  DataGraphOut(DataGraphRead(True));
  (Sender as TTimer).Enabled := False;
end;

procedure TFormGraph.btn000Click(Sender: TObject);
var
  thr : Cardinal;
begin
  zoomY1 := 0;
  zoomY2 := 0;
  tmrOutGraph.Enabled := False;
  isVisMouse := False;
  TimeOutVisMouse := 0;
  isPauseOscill := True;
  btn3.Caption := '>';
  DGi  := 0;
  DGiL := 0;
  DGiR := 0;
  utBuf := 0;
  ClearGraph();
  DataGraphOut(DataGraphRead(True));
  ClearGraph();
  DataGraphOut(DataGraphRead(False));
  (Sender as TButton).ShowHint := False;
  lbltxt2.Color := FormGraph.Color;
end;


procedure TFormGraph.img1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  val: Integer;
begin
  isVisMouse := True;
  lbltxt2.Color := clLime;
  val := Integer(FormGraph.YMin + Round(ScaleY * (FormGraph.img1.Height - Y)/FormGraph.img1.Height));
  //lbl2.Caption := 'Y:' + IntToStr(Integer(FormGraph.YMin + Round(ScaleY * (FormGraph.img1.Height - Y)/FormGraph.img1.Height)));
  lbltxt2.Caption := FormatDateTime('[hh:mm:ss:zzz] : ', DataTimeBuf[X]) + IntToStr(val);
  lbltxt2.Hint := FormatDateTime('dd mmmm yyyy', DataTimeBuf[X]);
  TimeOutVisMouse := 2000;
  dtFixBuf := DataTimeBuf[X];
  xPoz := X;
  yPoz := Y;
  zoomY1 := 0;
  zoomY2 := 0;
end;


procedure TFormGraph.FormClick(Sender: TObject);
begin
isVisMouse := False;
TimeOutVisMouse := 0;
end;

procedure TFormGraph.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
isVisMouse := False;
TimeOutVisMouse := 0;
end;

procedure TFormGraph.chkShowGridClick(Sender: TObject);
begin
  isShowGrid := (Sender as TCheckBox).Checked;
  ClearGraph;
  zoomY1 := 0;
  zoomY2 := 0;

end;

procedure TFormGraph.Button1Click(Sender: TObject);
var
  pDGTmp : pDataGraph;
  i : Cardinal;
  isShift : Boolean;
begin
  tmrOutGraph.Enabled := False;
  zoomY1 := 0;
  zoomY2 := 0;

  isVisMouse := False;
  TimeOutVisMouse := 0;
  isPauseOscill := True;
  btn3.Caption := '>';
  DGi  := 0;
  DGiL := 0;
  DGiR := 0;
  utBuf := 0;
  isShift := False;
  pDGTmp := pDG;
  i := 0;

  while (dtFix >= pDGTmp^.dt) and (i < MAX_CNT_DG) do
    begin
      DataGraphRead(true);
      pDGTmp := pDG;
      inc(pDGTmp, DGi);
      i := i+1;
      isShift := True;
    end;

  if isShift then
    begin
      if Zoom >= 31 then
        DataGraphRead(true)
    end;

  ClearGraph();
  DataGraphOut(DataGraphRead(True));
  ClearGraph();
  DataGraphOut(DataGraphRead(True));
  ClearGraph();
  DataGraphOut(DataGraphRead(True));
  ClearGraph();
  DataGraphOut(DataGraphRead(True));

  ClearGraph();
  DataGraphOut(DataGraphRead(False));

  i := 0;
  while (dtFix > DataTimeBuf[i]) and (i < FormGraph.img1.Width) do
    inc(i);
  if i < img1.Width then
    begin
      FormGraph.img1.Canvas.Pen.Style := psDash;
      FormGraph.img1.Canvas.Pen.Width := 1;
      FormGraph.img1.Canvas.Pen.Color := clDkGray;
      FormGraph.img1.Canvas.MoveTo(i, 2);
      FormGraph.img1.Canvas.LineTo(i, FormGraph.img1.Height - 2);
      FormGraph.img1.Canvas.Pen.Style := psSolid;
    end;
  //ClearGraph();
  //DataGraphOut(DataGraphRead(True));

  lbltxt2.Color := FormGraph.Color;
  (Sender as TButton).ShowHint := False;
end;

procedure TFormGraph.img1Click(Sender: TObject);
begin
  dtFix := dtFixBuf;
  FormGraph.Button1.Caption := FormatDateTime('yy.mm.dd.hh:mm:ss:zzz', dtFixBuf);
  FormGraph.Button1.Enabled := True;
  zoomY1 := 0;
  zoomY2 := 0;
end;

procedure TFormGraph.tmrLTimer(Sender: TObject);
var
  maxCnt : Cardinal;
begin
  isPauseOscill := True;
  btn3.Caption := '>';
  isVisMouse := False;
  TimeOutVisMouse := 0;
  tmrOutGraph.Enabled := False;
  utBuf := 0;
  ClearGraph();
  maxCnt := DataGraphRead(False);
  DataGraphOut(maxCnt);
  lbltxt2.Color := TColor($80FFFF);
  (Sender as TTimer).Enabled := False;
end;

procedure TFormGraph.tmrRTimer(Sender: TObject);
var
  maxCnt : Cardinal;
begin
  isPauseOscill := True;
  btn3.Caption := '>';
  isVisMouse := False;
  TimeOutVisMouse := 0;
  tmrOutGraph.Enabled := False;
  utBuf := 0;
  ClearGraph();
  maxCnt := DataGraphRead(True);
  DataGraphOut(maxCnt);
  lbltxt2.Color := TColor($80FFFF);
  (Sender as TTimer).Enabled := False;
end;


procedure TFormGraph.ud1Click(Sender: TObject; Button: TUDBtnType);
var
  scale : Int64;
  step  : Integer;
  Max : Int64;
  Min : Int64;
  dY  : Integer;
begin
  Max := YMax;
  Min := YMin;
  (Sender as TUpDown).ShowHint := False;
  if Max > Min then
    begin
      Scale := Max - Min;
      step := Round(Scale / 20) + 1;
      dY   := Round(HImg / 20);

      if Button = btPrev then
        begin
          if Max < (2147483647 - step)  then
            Max := Max + step;

          if Min > (-2147483647 + step)  then
            Min := Min - step;

          if (Max <= 2147483647) or ( Min >= -2147483647)  then
            begin
              if (zoomY1 = 0) and (zoomY2 = 0) then
                begin
                  zoomY1 := 1;
                  zoomY2 := HImg;
                end
              else if (zoomY1 < Round(HImg / 2)) and (zoomY2 > Round(HImg / 2)) then
                begin
                  inc(zoomY1, dY);
                  dec(zoomY2, dY);
                end
              else
                begin
                  zoomY1 := 0;
                  zoomY2 := 0;
                end;

              if not isHLines then
                begin
                  FormGraph.img1.Canvas.MoveTo(1, zoomY1);
                  FormGraph.img1.Canvas.LineTo(10, zoomY1);
                  FormGraph.img1.Canvas.MoveTo(1, zoomY2);
                  FormGraph.img1.Canvas.LineTo(10, zoomY2);
                end;
            end;
        end;

      if Button = btNext then
        begin
          if Max > (-2147483647 + step) then
            Max := Max - step;


          if Min < (2147483647 - step)  then
            Min := Min + step;


          if (Max <= 2147483647) or ( Min >= -2147483647)  then
            begin
              if (zoomY1 = 0) and (zoomY2 = 0) then
                begin
                  zoomY1 := Round(HImg / 2);
                  zoomY2 := Round(HImg / 2);
                end
              else if (zoomY1 > 0) and (zoomY2 < HImg) then
                begin
                  dec(zoomY1, dY);
                  inc(zoomY2, dY);
                end
              else
                begin
                  zoomY1 := 0;
                  zoomY2 := 0;
                end;

              if not isHLines then
                begin
                  FormGraph.img1.Canvas.MoveTo(1, zoomY1);
                  FormGraph.img1.Canvas.LineTo(10, zoomY1);
                  FormGraph.img1.Canvas.MoveTo(1, zoomY2);
                  FormGraph.img1.Canvas.LineTo(10, zoomY2);
                end;
            end;


        end;

      if (Min < Max)  then
        begin
          Edt2.Text := IntToStr(Min);
          Edt1.Text := IntToStr(Max);
        end;
    end;
end;


procedure TFormGraph.ud3Click(Sender: TObject; Button: TUDBtnType);
var
  scale : Integer;
  step  : Integer;
  Max : Int64;
  Min : Int64;
begin
  Max := YMax;
  Min := YMin;
  (Sender as TUpDown).ShowHint := False;
  if Max > Min then
    begin
      Scale := Max - Min;
      step := Round(Scale / 20) + 1;
      if Button = btPrev then
        begin
          if Max < (2147483647 - step)  then
            Max := Max + step;
          if Min < (Max - step) then
            Min := Min + step;
        end;

      if Button = btNext then
        begin
          if Max > (Min + step) then
            Max := Max - step;
          if Min > (-2147483647 + step) then
            Min := Min - step;
        end;



      Edt2.Text := IntToStr(Min);
      Edt1.Text := IntToStr(Max);
    end;
end;


procedure TFormGraph.ud2Click(Sender: TObject; Button: TUDBtnType);
var
  scale : Integer;
  step  : Integer;
  Max : Int64;
  Min : Int64;
begin
  Max := YMax;
  Min := YMin;
  if Max > Min then
    begin
      Scale := Max - Min;
      step := Round(Scale / 20) + 1;
      if (Button = btPrev) and (Min > (-2147483647 + step))  then
        Min := Min - step;
      if (Button = btNext) and (Min < (Max - step))  then
        Min := Min + step;
      Edt2.Text := IntToStr(Min);
    end;
end;

procedure TFormGraph.btn4Click(Sender: TObject);
var scale : Int64;
    max, min : Int64;
begin
  if YMax > YMin then
    begin
      scale := YMax - YMin;
      max := DataGraphTmp[0].val + Round(scale/2);
      min := DataGraphTmp[0].val - Round(scale/2);
      if max > 2147483647 then max := 2147483647;

      if min < -2147483647 then min := -2147483647;

      Edt1.Text := IntToStr(max);
      Edt2.Text := IntToStr(min);
    end;
  ud1.Position := 0;
  ud3.Position := 0;
  (Sender as TButton).ShowHint := False;


  //ClearGraph();
  //DataGraphOut(DataGraphRead(False));
  //utBuf := 0;
  //ClearGraph();
  //DataGraphOut(DataGraphRead(True));
end;

procedure TFormGraph.FormDblClick(Sender: TObject);

begin
  try
    ShowMessage('Max - Min = ' + IntToStr(YMax - YMin));
  except

  end;
end;

procedure TFormGraph.chk3Click(Sender: TObject);
begin
  isAutoShift := (Sender as TCheckBox).Checked;
  (Sender as TCheckBox).ShowHint := False;
end;

procedure TFormGraph.Bt3Click(Sender: TObject);
begin
  if LineFix = AddLine then
    LineFix := 0
  else
    LineFix := AddLine;
  if LineFix <> 0 then (Sender as TButton).Font.Style := [fsBold]
  else (Sender as TButton).Font.Style := [];
  (Sender as TButton).ShowHint := False;

  if isOscill then
    begin
      tmrUpdAddLine.Enabled := True;
    end
  else
    begin
      tmrClear.Enabled := True;
    end;

end;

procedure TFormGraph.lbltxt2DblClick(Sender: TObject);
begin
  isShowDateAlwais := not isShowDateAlwais;
end;

procedure TFormGraph.img1DblClick(Sender: TObject);
  var bufPen : TPen;
      maxCnt : Cardinal;
begin
  zoomY1 := 0;
  zoomY2 := 0;

  if not isOscill then Exit;

  if not isPauseOscill then Exit;

  utBuf := 0;
  ClearGraph();
  maxCnt := DataGraphRead(False);
  utBuf := 0;
  maxCnt := DataGraphRead(True);
  DataGraphOut(maxCnt);



  //FormGraph.img1.Canvas.TextOut(2,2, '                                                                                                    ');
  if DataTimeBuf[xPoz] <> 0 then
    begin
     bufPen := FormGraph.img1.Canvas.Pen;
     FormGraph.img1.Canvas.Pen.Width := 2;
     FormGraph.img1.Canvas.Pen.Color := clBlue;
     FormGraph.img1.Canvas.MoveTo(xPoz, 1);
     FormGraph.img1.Canvas.LineTo(xPoz, HImg - 1);
     FormGraph.img1.Canvas.Pen := bufPen;
     FormGraph.img1.Canvas.Font.Color := clBlue;
      try
        FormGraph.img1.Canvas.TextOut(xPoz + 4, 2, FormatDateTime('[ dd.mmmm.yyyy hh:mm:ss:zzz ] : ', DataTimeBuf[xPoz]) + IntToStr(ValueBuf[xPoz]));
      except
        FormGraph.img1.Canvas.TextOut(xPoz + 4, 2, ' ' + 'ERROR');
      end;
    end
  else
    begin
      bufPen := FormGraph.img1.Canvas.Pen;
      FormGraph.img1.Canvas.Pen.Width := 2;
      FormGraph.img1.Canvas.Pen.Color := clRed;
      FormGraph.img1.Canvas.MoveTo(xPoz, 1);
      FormGraph.img1.Canvas.LineTo(xPoz, HImg - 1);
      FormGraph.img1.Canvas.Pen := bufPen;
      FormGraph.img1.Canvas.Font.Color := clRed;

      FormGraph.img1.Canvas.Font.Color := clRed;
      FormGraph.img1.Canvas.TextOut(xPoz + 4, 2, ' There is no data in this area');
    end;
  FormGraph.img1.Canvas.Font.Color := clBlack;
end;

procedure TFormGraph.CheckBox2Click(Sender: TObject);
begin
  isHLines := (Sender as TCheckBox).Checked;
  if isOscill then
    begin
      ClearGraph();
      DataGraphOut(DataGraphRead(False));
      utBuf := 0;
      ClearGraph();
      DataGraphOut(DataGraphRead(True));
    end
  else
    ClearGraph();
end;

end.
