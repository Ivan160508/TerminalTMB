unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  THexCmp = class(TForm)
    strngrdCmpTable: TStringGrid;
    BtFile1Open: TButton;
    BtFile2Open: TButton;
    BtCompare: TButton;
    dlgOpenFileOpen: TOpenDialog;
    BtPrew: TButton;
    BtNextDiff: TButton;
    procedure FormCreate(Sender: TObject);
    procedure strngrdCmpTableDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BtFile1OpenClick(Sender: TObject);
    procedure BtFile2OpenClick(Sender: TObject);
    procedure BtCompareClick(Sender: TObject);
    procedure BtNextDiffClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtPrewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  BUF_TMP_SIZE = 8192;
  MAX_SIZE_FILE_DATA = $800000;
  MAX_LINE_DIFF      = $80000;
var
  HexCmp    : THexCmp;
  Buf1      : array[0..MAX_SIZE_FILE_DATA-1] of byte;
  Buf2      : array[0..MAX_SIZE_FILE_DATA-1] of byte;
  LineDiff  : array[0..MAX_LINE_DIFF] of Cardinal;
  BufTmp    : array[0..BUF_TMP_SIZE - 1] of byte;
  IndexLineDiff : Cardinal;
  MaxIndexLDiff : Cardinal;
  File1     : file of Byte;
  File2     : file of Byte;
  Size1     : Cardinal;
  Size2     : Cardinal;
  isFirstFile : Boolean;
  isSecondFile : Boolean;
implementation

uses TerminalST;

{$R *.dfm}

procedure THexCmp.FormCreate(Sender: TObject);
  var
    i : word;
  begin
    Size1 := 0;
    Size2 := 0;
    MaxIndexLDiff := 0;
    isFirstFile := False;
    isSecondFile := False;
    for i := 0 to 15 do
      begin
        strngrdCmpTable.Cells[i+1, 0] := IntToHex(i, 2);
        strngrdCmpTable.Cells[i+18, 0] := IntToHex(i, 2);
      end;
    strngrdCmpTable.Color := clWindow;
    strngrdCmpTable.ColWidths[0]  := 70;
    strngrdCmpTable.ColWidths[17] := 5;

    strngrdCmpTable.RowCount := 5;

    for i := 0 to 5 do
      begin
        strngrdCmpTable.Cells[0, i + 1] := IntToHex(i * 16, 6);
      end;
    BtFile1Open.Width := strngrdCmpTable.Width;
    BtFile2Open.Width := strngrdCmpTable.Width;
    BtCompare.Width := strngrdCmpTable.Width;
  end;

procedure THexCmp.strngrdCmpTableDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
  var index : Cardinal;
begin
  //if Size1 > 0 then
  //  if (ACol > 0) and (ACol < 17) and (ARow > 0) then
  //    index := (ACol - 1) + (ARow - 1) * 16;

  //if Size2 > 0 then
  //  if (ACol > 17) and (ACol < 34) and (ARow > 0) then
  //    index := (ACol - 18) + (ARow - 1) * 16;

  if (ACol = 17) then
    begin
      strngrdCmpTable.Canvas.Brush.Color := 0;
      strngrdCmpTable.Canvas.FillRect(Rect);
    end;
  if (ACol > 0) and (ACol < 17) and (ARow > 0) then
    if strngrdCmpTable.Cells[ACol, ARow] <> strngrdCmpTable.Cells[ACol + 17, ARow] then
      begin
        strngrdCmpTable.Canvas.Brush.Color := clLime;
        strngrdCmpTable.Canvas.FillRect(Rect);
        strngrdCmpTable.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, strngrdCmpTable.Cells[ACol, ARow]);
      end;
  if (ACol > 17) and (ACol < 34) and (ARow > 0) then
    if strngrdCmpTable.Cells[ACol - 17, ARow] <> strngrdCmpTable.Cells[ACol, ARow] then
      begin
        strngrdCmpTable.Canvas.Brush.Color := clLime;
        strngrdCmpTable.Canvas.FillRect(Rect);
        strngrdCmpTable.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, strngrdCmpTable.Cells[ACol, ARow]);
      end;

  //if (Buf1[index] <> Buf2[index]) or (strngrdCmpTable.Cells[ACol, ARow] <> '') then
  //  begin
  //    strngrdCmpTable.Canvas.Brush.Color := clLime;
  //    strngrdCmpTable.Canvas.FillRect(Rect);
  //    strngrdCmpTable.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, strngrdCmpTable.Cells[ACol, ARow]);
  //  end;
end;


procedure THexCmp.BtFile1OpenClick(Sender: TObject);
  var
    Name: string;
    i, iTmp : Cardinal;
    cntRead : Cardinal;
  begin
    (Sender as TButton).Enabled := false;
    if dlgOpenFileOpen.Execute then
      begin
        Size1 := 0;
        MaxIndexLDiff := 0;
        isFirstFile := True;
        i := 0;
        Name := dlgOpenFileOpen.FileName;
        AssignFile(File1, Name);
        Reset(File1);


        cntRead := 0;
        i := 0;
        repeat
          BlockRead(File1, BufTmp, BUF_TMP_SIZE, cntRead);
          if cntRead > 0 then
            begin
              iTmp := 0;
              while (iTmp < cntRead) and (i < MAX_SIZE_FILE_DATA) do
                begin
                  Buf1[i] := BufTmp[iTmp];
                  inc(i);
                  inc(iTmp);
                  inc(Size1);
                end;
            end
        until (Eof(File1)) or (cntRead < BUF_TMP_SIZE) or (i = MAX_SIZE_FILE_DATA);
        CloseFile(File1);
        if i = MAX_SIZE_FILE_DATA then
          ShowMessage('Size file over 8MB');
        (Sender as TButton).Caption := Name + ' Size: ' + IntToStr(Size1) + ' bytes';
      end;
    BtCompare.Enabled := isFirstFile and isSecondFile;

    (Sender as TButton).Enabled := true;
  end;

procedure THexCmp.BtFile2OpenClick(Sender: TObject);
 var
    Name: string;
    i, iTmp : Cardinal;
    cntRead : Cardinal;
  begin
    (Sender as TButton).Enabled := false;
    if dlgOpenFileOpen.Execute then
      begin
        Size2 := 0;
        MaxIndexLDiff := 0;
        isSecondFile := True;
        i := 0;
        Name := dlgOpenFileOpen.FileName;
        AssignFile(File2, Name);
        Reset(File2);


        cntRead := 0;
        i := 0;
        repeat
          BlockRead(File2, BufTmp, BUF_TMP_SIZE, cntRead);
          if cntRead > 0 then
            begin
              iTmp := 0;
              while (iTmp < cntRead) and (i < MAX_SIZE_FILE_DATA) do
                begin
                  Buf2[i] := BufTmp[iTmp];
                  inc(i);
                  inc(iTmp);
                  inc(Size2);
                end;
            end
        until (Eof(File2)) or (cntRead < BUF_TMP_SIZE) or (i = MAX_SIZE_FILE_DATA);
        CloseFile(File2);
        if i = MAX_SIZE_FILE_DATA then
          ShowMessage('Size file over 8MB');
        (Sender as TButton).Caption := Name + ' Size: ' + IntToStr(Size2) + ' bytes';
      end;
    BtCompare.Enabled := isFirstFile and isSecondFile;
    (Sender as TButton).Enabled := true;
  end;


procedure THexCmp.BtCompareClick(Sender: TObject);
  var
    SizeMax  : Cardinal;
    SizeMin  : Cardinal;
    RowCount : Cardinal;
    i        : Cardinal;
    x        : Cardinal;
    y        : Cardinal;
    CntDiff  : Cardinal;
    Line     : Cardinal;
    IndexLD  : Cardinal;
  begin
    (Sender as TButton).Enabled := False;
    CntDiff  := 0;
    IndexLD  := 0;
    IndexLineDiff := 0;
    if Size1 > Size2 then
      begin
        SizeMax := Size1;
        SizeMin := Size2;
      end
    else
      begin
        SizeMax := Size2;
        SizeMin := Size1;
      end;

    RowCount := (SizeMax shr 4) + 2;
    strngrdCmpTable.RowCount := RowCount;

    for i:=0 to strngrdCmpTable.ColCount-1 do
      strngrdCmpTable.Cols[i].Clear;


    for i := 0 to RowCount do
      begin
        strngrdCmpTable.Cells[0, i + 1] := IntToHex(i * 16, 6);
      end;

    for i := 0 to 15 do
      begin
        strngrdCmpTable.Cells[i+1, 0] := IntToHex(i, 2);
        strngrdCmpTable.Cells[i+18, 0] := IntToHex(i, 2);
      end;


    i := 0;

    for y := 1 to RowCount do
      for x := 1 to 16 do
        begin
          if i < Size1 then
            strngrdCmpTable.Cells[x, y] := IntToHex(Buf1[i], 2);
          if i < Size2 then
            strngrdCmpTable.Cells[x + 17, y] := IntToHex(Buf2[i], 2);
          inc(i);
        end;

    for i := 0 to SizeMin do
      if (Buf1[i] <> Buf2[i]) then
        begin
          Line := (i shr 4) + 1;
          if (IndexLD > 0) then
            begin
              if LineDiff[IndexLD - 1] <> Line then
                begin
                  LineDiff[IndexLD] := Line;
                  Inc(IndexLD);
                end;
            end
          else
            begin
              LineDiff[IndexLD] := Line;
              Inc(IndexLD);
            end;
        end;

    strngrdCmpTable.Row := 1;
    if Size1 <> Size2 then
      begin
        LineDiff[IndexLD] := (SizeMin shr 4) + 1;
        Inc(IndexLD);
      end;
    MaxIndexLDiff := IndexLD;
    BtNextDiff.Enabled := IndexLD > 0 ;
    BtPrew.Enabled     := IndexLD > 0 ;
    (Sender as TButton).Enabled := true;
  end;

procedure THexCmp.BtNextDiffClick(Sender: TObject);
  begin
    if IndexLineDiff = 0 then
      inc(IndexLineDiff);
    if IndexLineDiff < MaxIndexLDiff then
      begin
        strngrdCmpTable.Row := LineDiff[IndexLineDiff];
        inc(IndexLineDiff);
      end
    else
      begin
        IndexLineDiff := 0;
        strngrdCmpTable.Row := LineDiff[IndexLineDiff];
      end;
  end;

procedure THexCmp.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    //TerminalST.Form1.BtHexCmp.Font.Style := [];
  end;

procedure THexCmp.BtPrewClick(Sender: TObject);
  begin
    if IndexLineDiff > 0 then
      Dec(IndexLineDiff);

    if IndexLineDiff > 0 then
      begin
        strngrdCmpTable.Row := LineDiff[IndexLineDiff];
        dec(IndexLineDiff);
      end
    else
      begin
        strngrdCmpTable.Row := LineDiff[IndexLineDiff];
        IndexLineDiff := MaxIndexLDiff;
      end;
  end;

end.
