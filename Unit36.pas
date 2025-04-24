unit Unit36;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Common, Math;

type
  TfrmBarChart = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    ctxt1: TStaticText;
    ctxt2: TStaticText;
    lbl1: TLabel;
    CheckBox1: TCheckBox;
    req2: TStaticText;
    edt1: TEdit;
    lbl2: TLabel;
    ctxt3: TStaticText;
    Button1: TButton;
    grp1: TGroupBox;
    trckbr1: TTrackBar;
    Bt1: TButton;
    grp2: TGroupBox;
    ud1: TUpDown;
    ctxt4: TStaticText;
    trckbr2: TTrackBar;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure trckbr1Change(Sender: TObject);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure Bt3Click(Sender: TObject);
    procedure img1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bt1Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ctxt1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edt1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure trckbr2Change(Sender: TObject);
  private
    { Private declarations }
  public
       pDG : pDataGraph;
    DGiAct : ^Cardinal;
    CenterVal : Int64;
    ShiftStep : Int64;
    isBuf : Boolean;
    procedure AddNewData(val : Int64);
    { Public declarations }
  end;

var
  frmBarChart: TfrmBarChart;
  ChartBufLine : array[0..255] of Word;
  ChartBufThr : array[0..256] of Int64;
  ChartBufCnt : array[0..255] of Int64;
  CntPoint : Int64;
  CurValue : Int64;
  Scale : Cardinal;

  MinVal, MaxVal : Int64;
  step : int64;
  img : TImage;
  hImg : Cardinal;
  LVal, RVal, CVal : Int64;
  isAutoHeight : Boolean;
  MaxCnt : Cardinal;
  CntExt : Cardinal;
  CntIn  : Cardinal;
implementation

{$R *.dfm}


procedure LineCh(x : Word; y : real);
begin
  img.Canvas.MoveTo(5 + 3 * x,  hImg - 4);
  if y <= 1 then
    img.Canvas.LineTo(5 + 3 * x, (hImg - 4) - Round((hImg - 8) * y))
  else
    img.Canvas.LineTo(5 + 3 * x, (hImg - 4) - Round((hImg - 4) * 1))
end;

procedure ClearChart;
var
  Rect : TRect;
  i: Integer;
begin
  img.Canvas.Brush.Color:= clWhite;
  hImg := img.Height;
  Rect.Left:=1;
  Rect.Top:=1;
  Rect.Right := img.Width;
  Rect.Bottom:= img.Height;

  img.Canvas.Pen.Width := 2;
  img.Canvas.Pen.Color := clBlack;
  img.Canvas.Rectangle(Rect);
  img.Canvas.Pen.Color := clBlue;
end;



procedure setArrayChart(CVal: Int64; st : Cardinal);
var i : Integer;
  left : Int64;
begin
  left := CVal - 128 * st;
  for i:= 0 to 256 do
    ChartBufThr[i] := left + st * i;

  for i:= 0 to 255 do
    begin
      ChartBufLine[i] := 0;
      ChartBufCnt[i] := 0;
    end;
end;

procedure FillChart;
var i, j : Integer;
    pDGTmp : pDataGraph;
begin
  pDGTmp := frmBarChart.pDG;
  CntExt := 0;
  CntIn  := 0;
  setArrayChart(CVal, step);
  CntPoint := 0;
  for i := 0 to (MAX_CNT_DG - 1) do
    begin
      if pDGTmp^.dt > 0 then
        begin
          Inc(CntPoint);
          if (pDGTmp^.val >= ChartBufThr[0]) and (pDGTmp^.val < ChartBufThr[256]) then
            begin
              Inc(CntIn);
              for j := 0 to 255 do
                begin
                  if (pDGTmp^.val >= ChartBufThr[j]) and (pDGTmp^.val < ChartBufThr[j + 1]) then
                    begin
                      Inc(ChartBufCnt[j]);
                    end;
                end;
            end
          else
            begin
              Inc(CntExt);
            end;
        end;
      Inc(pDGTmp, 1);
    end;
  frmBarChart.Req2.Caption := IntToStr(CntPoint);
  if (CntExt + CntIn) > 0 then
    begin
      frmBarChart.ctxt4.Caption := FormatFloat('0.00000', 100 * CntIn/(CntExt + CntIn))+ '%';
      if CntExt = 0 then
        frmBarChart.ctxt4.Color := clLime
      else
        frmBarChart.ctxt4.Color := clYellow;
    end
  else
    frmBarChart.ctxt4.Color := frmBarChart.Color;

end;

procedure SetChartGraph(last : integer);
var
  i : Integer;
begin
  ClearChart;
  if isAutoHeight then
    begin
      MaxCnt := 0;
      for i := 0 to 255 do
        begin
          if ChartBufCnt[i] > MaxCnt then
            MaxCnt := ChartBufCnt[i];
        end;
      Scale := 1;
    end;

  if MaxCnt > 0 then
    begin
      for i := 0 to 255 do
        begin
          if i = last then
            img.Canvas.Pen.Color := clGreen
          else
            img.Canvas.Pen.Color := clBlue;
          LineCh(i, ChartBufCnt[i]/(MaxCnt / Scale));
        end;
    end
  else
    begin
      for i := 0 to 255 do
        begin
          LineCh(i, 0);
        end;
    end;

  if MaxCnt = 0 then
    MaxCnt := 1;
end;


procedure TfrmBarChart.FormCreate(Sender: TObject);
begin
  CntExt := 0;
  CntIn := 0;
  img := img1;
  isBuf := True;
  MaxCnt := 0;
  ClearChart;
  CVal := 0;
  step := 1;
  ctxt1.Caption := IntToStr(-128);
  ctxt2.Caption := IntToStr(128);
  //req1.Caption  := IntToStr(CVal);
  edt1.Text := IntToStr(CVal);
  isAutoHeight := True;
  CntPoint := 0;
  frmBarChart.Req2.Caption := IntToStr(CntPoint);
  CurValue := 0;
  Button1.Caption := 'Set to 0';
  frmBarChart.Width := 787;
end;

procedure TfrmBarChart.AddNewData(val : Int64);
  var
    j, last : Integer;

begin
  last := -1;
  inc(CntPoint);
  lbl2.Caption := IntToStr(val);
  if (val >= ChartBufThr[0]) and (val < ChartBufThr[256]) then
    begin
      Inc(CntIn);
      lbl2.Color := clLime;
      for j := 0 to 255 do
        begin
          if (val >= ChartBufThr[j]) and (val < ChartBufThr[j + 1]) then
            begin
              Inc(ChartBufCnt[j]);
              last := j;
            end;
          end;
      SetChartGraph(last);
    end
  else
    begin
      lbl2.Color := clYellow;
      Inc(CntExt);
    end;
if (CntExt + CntIn) > 0 then
    begin
      frmBarChart.ctxt4.Caption := FormatFloat('0.00000', 100 * CntIn/(CntExt + CntIn))+ '%';
      if CntExt = 0 then
        frmBarChart.ctxt4.Color := clLime
      else
        frmBarChart.ctxt4.Color := clYellow;
    end
  else
    frmBarChart.ctxt4.Color := frmBarChart.Color;

  CurValue := val;
  Button1.Caption := 'Set to ' + IntToStr(CurValue);  
  frmBarChart.Req2.Caption := IntToStr(CntPoint);  
end;


procedure SetStep(Pos : integer);
begin
  case Pos of
    0 : step  := 1;//$000001;
    1 : step  := 2;//$000002;
    2 : step  := 5;//$000004;
    3 : step  := 10;//$000008;
    4 : step  := 20;//$000010;
    5 : step  := 50;//$000020;
    6 : step  := 100;//$000040;
    7 : step  := 200;//$000080;
    8 : step  := 500;//$000100;
    9 : step  := 1000;//$000200;
    10 : step := 2000;//$000400;
    11 : step := 5000;//$000800;
    12 : step := 10000;//$001000;
    13 : step := 20000;//$002000;
    14 : step := 50000;//$004000;
    15 : step := 100000;//$008000;
    16 : step := 200000;//$010000;
    17 : step := 500000;//$020000;
    18 : step := 1000000;//$040000;
    19 : step := 2000000;//$080000;
    20 : step := 5000000;//$100000;
    21 : step := 10000000;//$200000;
    22 : step := 20000000;//$400000;
    23 : step := 50000000;//$800000;
    24 : step := 100000000;//$800000;
    25 : step := 200000000;//$800000;
  end;
end;

procedure TfrmBarChart.FormActivate(Sender: TObject);
var
  i : Integer;
begin
  CVal := frmBarChart.CenterVal;
  trckbr1.Position := frmBarChart.ShiftStep;
  SetStep(frmBarChart.ShiftStep);
  trckbr1.Hint := 'Step = ' + IntToStr(step);
  LVal := Int64(CVal - 128 * step);
  RVal := Int64(CVal + 128 * step);
  ctxt1.Caption := IntToStr(LVal);
  ctxt2.Caption := IntToStr(RVal);
  //req1.Caption := IntToStr(CVal);
  edt1.Text := IntToStr(CVal);
  ctxt4.Color := frmBarChart.Color;
  ud1.Position := 0;
  CntExt := 0;
  CntIn  := 0;
  For i := 0 to 255 do
    begin
      ChartBufCnt[i] := 0;
    end;
  CntPoint := 0;
  if isBuf then
    begin
      FillChart;
    end
  else
    begin
      frmBarChart.Caption := frmBarChart.Caption + ' (Data buffering disabled)';
    end;
  SetChartGraph(-1);
end;



procedure TfrmBarChart.trckbr1Change(Sender: TObject);
  var
    Pos, i : Integer;
begin
  lbl1.Caption := '';
  Pos := (Sender as TTrackBar).Position;
  ud1.Position := 0;
  SetStep(Pos);
  (Sender as TTrackBar).Hint := 'Step = ' + IntToStr(step);
  (Sender as TTrackBar).ShowHint := False;
  ctxt3.Caption := 'Step = ' + IntToStr(step);
  LVal := Int64(CVal - 128 * step);
  RVal := Int64(CVal + 128 * step);
  ctxt1.Caption := IntToStr(LVal);
  ctxt2.Caption := IntToStr(RVal);
  //req1.Caption := IntToStr(CVal);
  edt1.Text := IntToStr(CVal);
  CntIn := 0;
  CntExt := 0;
  ctxt4.Caption := '';
  ctxt4.Color := frmBarChart.Color;

  For i := 0 to 255 do
    begin
      ChartBufCnt[i] := 0;
    end;
  CntPoint := 0;
  if isBuf then
    begin
      FillChart;
    end;
  SetChartGraph(-1);
end;

procedure TfrmBarChart.ud1Click(Sender: TObject; Button: TUDBtnType);
var i : Integer;
begin
  case Button of
  btNext :
    begin
      CVal := CVal - step;
    end;
  btPrev :
    begin
      CVal := CVal + step;
    end;
  end;

  LVal := Int64(CVal - 128 * step);
  RVal := Int64(CVal + 128 * step);
  ctxt1.Caption := IntToStr(LVal);
  ctxt2.Caption := IntToStr(RVal);
  //req1.Caption := IntToStr(CVal);
  edt1.Text := IntToStr(CVal);
  For i := 0 to 255 do
    begin
      ChartBufCnt[i] := 0;
    end;
  CntPoint := 0;
  if isBuf then
    begin
      FillChart;
    end;
  SetChartGraph(-1);
end;

procedure TfrmBarChart.Bt3Click(Sender: TObject);
begin
  CVal := 0;
  LVal := Int64(CVal - 128 * step);
  RVal := Int64(CVal + 128 * step);
  ctxt1.Caption := IntToStr(LVal);
  ctxt2.Caption := IntToStr(RVal);
  //req1.Caption := IntToStr(CVal);
  edt1.Text := IntToStr(CVal);
  FillChart;
  SetChartGraph(-1);
end;

procedure TfrmBarChart.img1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  xx : Integer;
  pr : Real;
  percent : string;
begin

  xx := Round((x - 4)/3);
  if (xx >= 0) and (xx < 256) then
    begin
      pr := 0;
      if CntPoint > 0 then
        pr := 100*ChartBufCnt[xx]/CntPoint;

      Str(pr:3:2,percent);
      lbl1.Caption := '[ ' + IntToStr(ChartBufThr[xx]) + ' ; ' + IntToStr(ChartBufThr[xx + 1]) + ' ) : ' + IntToStr(ChartBufCnt[xx]) + '   ' + percent + '%';
    end;
end;

procedure TfrmBarChart.CheckBox1Click(Sender: TObject);
begin
  isAutoHeight := (Sender as TCheckBox).Checked;
  trckbr2.Position := 1;
  if not isAutoHeight then
    frmBarChart.Width := 831
  else
    frmBarChart.Width := 787;
end;

procedure TfrmBarChart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   frmBarChart.CenterVal := CVal;
   frmBarChart.ShiftStep := trckbr1.Position;
end;

procedure TfrmBarChart.Bt1Click(Sender: TObject);
var
  i : Integer;
begin
  For i := 0 to 255 do
    begin
      ChartBufCnt[i] := 0;
    end;
  CntPoint := 0;
  SetChartGraph(-1);
  frmBarChart.Req2.Caption := IntToStr(CntPoint);
end;

procedure TfrmBarChart.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lbl1.Caption := '';
end;

procedure TfrmBarChart.ctxt1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lbl1.Caption := '';
end;

procedure TfrmBarChart.edt1Change(Sender: TObject);
var
  str : string;
  isErr : Boolean;
begin
  str:=(Sender as TEdit).Text;
  if (str <> '') and (frmBarChart.pDG <> nil) then
    begin
      isErr := False;
      try
        CVal := StrToInt(str);
        (Sender as TEdit).Color := clWindow;
      except
        (Sender as TEdit).Color := clYellow;
        isErr := True;
      end;
      if not isErr then
        begin
          LVal := Int64(CVal - 128 * step);
          RVal := Int64(CVal + 128 * step);
          ctxt1.Caption := IntToStr(LVal);
          ctxt2.Caption := IntToStr(RVal);
          FillChart;
          SetChartGraph(-1);
        end;
    end;
end;

procedure TfrmBarChart.Button1Click(Sender: TObject);
begin
  edt1.Text := IntToStr(CurValue);
end;

procedure TfrmBarChart.trckbr2Change(Sender: TObject);
var i : Cardinal;
begin
  CntIn := 0;
  CntExt := 0;
  ctxt4.Caption := '';
  ctxt4.Color := frmBarChart.Color;
  Scale := trckbr2.Position;
  trckbr2.Hint := 'Vertical zoom ' + IntToStr(Scale) + ':1';
  CntPoint := 0;
  if isBuf then
    begin
      FillChart;
    end;
  SetChartGraph(-1);

  if Scale = 1 then
    begin
      ClearChart;
      MaxCnt := 0;
      for i := 0 to 255 do
        begin
          if ChartBufCnt[i] > MaxCnt then
            MaxCnt := ChartBufCnt[i];
        end;

      if MaxCnt > 0 then
        begin
          for i := 0 to 255 do
            begin
              img.Canvas.Pen.Color := clBlue;
              LineCh(i, ChartBufCnt[i]/(MaxCnt / Scale));
            end;
        end
      else
        begin
          for i := 0 to 255 do
            begin
              LineCh(i, 0);
            end;
        end;

      if MaxCnt = 0 then
        MaxCnt := 1;
    end;
end;

end.
