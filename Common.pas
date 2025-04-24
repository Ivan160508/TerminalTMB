unit Common;

interface

  uses Graphics, SysUtils;


type TDataGraph = record
  dt : TDateTime;
  val : Int64;
end;

type pDataGraph = ^TDataGraph;

type TChrZ = string[6];

type
  TTypeDir = (DirTxRx = 0, DirTx = 1, DirRx = 2);

type
  TTypeParsASCII = (ParsString = 0, ParsInt = 1, ParsFloat = 2);

type
  TTypeParam = (uint8 = 0, int8 = 1, uint16 = 2, int16 = 3, uint32 = 4, int32 = 5, float = 6, uint24);

type
  TTypeSendMode = (SendASCII = 0, SendHEX = 1, SendDEC = 2);

type
  TTypeReadMode = (ReadASCII = 0, ReadHEX = 1, ReadDEC = 2, ReadCUSTOM = 3);

type
  TTypeSrcData = (SrcPortMain = 0, SrcPort1 = 1, SrcPort2 = 2, Src2Port1 = 3,
                                                               Src2Port2 = 4,
                                                               Src2Port3 = 5,
                                                               Src2Port4 = 6,
                                                               Src2Port5 = 7,
                                                               Src2Port6 = 8,
                                                               Src2Port7 = 9,
                                                               Src2Port8 = 10,
                                                               Src2Port9 = 11,
                                                               Src2Port10 = 12,
                                                               Src2Port11 = 13,
                                                               Src2Port12 = 14,
                                                               Src2Port13 = 15,
                                                               Src2Port14 = 16,
                                                               Src2Port15 = 17,
                                                               Src2Port16 = 18);

type
  TTypeSrcEvent = (SrcEventMain = 0,
                   SrcEventParser_1 = 1,
                   SrcEventParser_2 = 2,
                   SrcEventParser_3 = 3,
                   SrcEventParser_4 = 4,
                   SrcEventParser_5 = 5,
                   SrcEventParser_6 = 6,
                   SrcEventParser_7 = 7,
                   SrcEventParser_8 = 8,
                   SrcEventParser_9 = 9,
                   SrcEventParser_10 = 10,
                   SrcEventParser_11 = 11,
                   SrcEventParser_12 = 12,
                   SrcEventParser_13 = 13,
                   SrcEventParser_14 = 14,
                   SrcEventParser_15 = 15,
                   SrcEventParser_16 = 16);


type TSettParserAscii = record
  ParamName : string[64];
  isUse : Boolean;
  Color : TColor;
  TypeParsASCII : TTypeParsASCII;
  TypeSrcData : TTypeSrcData;
  StartSubstring : string[16];
  BeginLine : string[16];
  Sep : array[0..5] of Byte;
  ParamNum : Cardinal;
  CentralVal : Integer;
  ShiftVal   : Cardinal;
  isThrHCol      : array[0..3] of Boolean;
  isThrLCol      : array[0..3] of Boolean;
  isExpWindowCol : array[0..3] of Boolean;
  ThrHCol        : array[0..3] of integer;
  ThrLCol        : array[0..3] of integer;
  Res1 : array[0..16] of Cardinal; //Res1[0] - множитель
  Res2 : array[0..16] of Integer;
  Res3 : array[0..16] of Boolean;
  Res4 : array[0..16] of Boolean;
  Res5 : array[0..16] of string[32];
end;

type pSettParserAscii = ^TSettParserAscii;



type
  TSettParser = record
    isUseByteCmp : array[0..16] of boolean;
      UseByteCmp : array[0..16] of Byte;
    isUseParser  : Boolean;
    NameParam    : string[64];
    NumUseBytes  : array[0..3] of integer;
    TypeParam    : TTypeParam;
    isCheckLen   : Boolean;
    PacketLen    : Cardinal;
    Color        : TColor;
    YMax         : Int64;
    YMin         : Int64;
    res1          : array[0..16] of integer;   //res[0]...res[8] заняты.   res[9] 0 байт занят под TTypeSrcData
                                                                        //res[9] 1 байт занят под флаги мультиграфа
                                                                        //res[10] занят под минимальное значение мультиграфа
                                                                        //res[11] занят под максимальное значение мультиграфа
                                                                        //res[12] занят под цвет мультиграфа
                                                                        //res[13],  номер шага гистограммы (третий байт) смещение по осям мультиграфа (первые 2 байта)
                                                                        //res[14] - смещение по осям мультиграфа (первые 2 байта)
                                                                        //res[15] - множитель для переменной float
                                                                        //res[16] - середина гистограммы
  end;

type
  TParserHEX = record
    ParserName : string[64];
    SettParser : array[0..15] of TSettParser;
  end;

type
  TParserHEXAdd = record
    isLogMain   : Boolean;
    isLogSecond : Boolean;
    ColorLog    : TColor;
    isLogSep    : Boolean;
    isSyncTime : Boolean;
    isRes3 : Boolean;
    isRes4 : Boolean;
    isRes5 : Boolean;
    isRes6 : Boolean;
    isRes7 : Boolean;
    isRes8 : Boolean;
    isRes9 : Boolean;
    isRes10: Boolean;
    res1 : Cardinal;
    res2 : Cardinal;
    res3 : Cardinal;
    res4 : Cardinal;
    res5 : Cardinal;
    res6 : Cardinal;
    res7 : Cardinal;
    res8 : Cardinal;
    res9 : Cardinal;
    res10 : Cardinal;
    ColorRes1    : TColor;
    ColorRes2    : TColor;
    ColorRes3    : TColor;
    ColorRes4    : TColor;
    ColorRes5    : TColor;
    ColorRes6    : TColor;
    ColorRes7    : TColor;
    ColorRes8    : TColor;
    ColorBG_LOG  : TColor;
    ColorBG_MG : TColor;
    Sett1  : array[0..15] of Cardinal;
    Sett2  : array[0..15] of Cardinal;
    Sett3  : array[0..15] of Cardinal;
    Sett4  : array[0..15] of Cardinal;
    Sett5  : array[0..15] of Cardinal;
    Sett6  : array[0..15] of Cardinal;
    Sett7  : array[0..15] of Cardinal;
    Sett8  : array[0..15] of Cardinal;
    Sett9  : array[0..15] of Cardinal;
    Sett10 : array[0..15] of Cardinal;

    isExpandOfChangeVal : array[0..15] of boolean;
    isChangeColorOfVal  : array[0..15] of boolean;
    Sett13 : array[0..15] of boolean;
    Sett14 : array[0..15] of boolean;
    Sett15 : array[0..15] of boolean;
    Sett16 : array[0..15] of boolean;
    Sett17 : array[0..15] of boolean; //Sett17[0] - isUseLIst
    Sett18 : array[0..15] of boolean;
    Sett19 : array[0..15] of boolean;
    Sett20 : array[0..15] of boolean;
    Sett21 : array[0..15] of TColor;
    Sett22 : array[0..15] of TColor;
    Sett23 : array[0..15] of TColor;
    Sett24 : array[0..15] of TColor;
    Sett25 : array[0..15] of TColor;

    ColorOfChangeVal : array[0..15] of TColor;

    Sett27 : array[0..15] of TColor;
    Sett28 : array[0..15] of TColor;
    Sett29 : array[0..15] of TColor;
    Sett30 : array[0..15] of TColor;
    Sett31  : array[0..15] of Integer;
    Sett32  : array[0..15] of Integer;
    Sett33  : array[0..15] of Integer;
    Sett34  : array[0..15] of Integer;
    Sett35  : array[0..15] of Integer;
    Sett36  : array[0..15] of Integer;
    Sett37  : array[0..15] of Integer;
    Sett38  : array[0..15] of Integer;
    Sett39  : array[0..15] of Integer;
    Sett40 : array[0..15] of Integer;

  end;


type
  TParserSettingsAdd = record
    isExpandOfChangeVal : boolean;
    isChangeColorOfVal  : boolean;
    ColorOfChangeVal    : TColor;
  end;


//type
//  TParserHEX_2 = record
//    ColorLog   : TColor;
//    ColorRes1  : TColor;
//    ColorRes2  : TColor;
//    ColorRes3  : TColor;
//    ColorRes4  : TColor;
//    ColorRes5  : TColor;
//    ColorRes6  : TColor;
//    ColorRes7  : TColor;
//    ColorRes8  : TColor;
//    ColorRes9  : TColor;
//    isMainLog  : Boolean;
//    isSecLog   : Boolean;
//    res1       : Boolean;
//    res2       : Boolean;
//   res3       : Boolean;
//   res4       : Boolean;
//    res5       : Boolean;
//    res6       : Boolean;
//    res7       : Boolean;
//    res8       : Boolean;
//    res9       : Boolean;
//    res10      : Boolean;
//    res11      : Boolean;
//    res12      : Boolean;
//    res13      : Boolean;
//    res14      : Boolean;
//    res15      : Boolean;
//    res16      : Boolean;
//    res17      : Boolean;
//    res18      : Cardinal;
//    res19      : Cardinal;
//    res20      : Cardinal;
//    res21      : Cardinal;
//    res22      : Cardinal;
//    res23      : Cardinal;
 //   res24      : Cardinal;
 //   res25      : Cardinal;
 //   ParserName : string[64];
 //   SettParser : array[0..15] of TSettParser;
//  end;
type pTParserHEX = ^TParserHEX;



  function HexToInt(Hex: Char) : byte;
  function ChrZ(Hex: byte) : string;
  function ChrCustom(Hex: byte) : string;
  procedure SetCustomTable(Hex : Byte; str : string);
  function SetTimeStamp(isTime : Boolean; isDate : Boolean; DateTime : TDateTime) : string;
  function Get_File_Size(sFileToExamine: string; bInKBytes: Boolean): Integer;
  function ParsASCII(SrcData : TTypeSrcData; str: string; spa : pSettParserAscii) : string;
  procedure SetOffNonPrintCh(isNonPrint : boolean);
  procedure ClearSettParserASCII(spa : pSettParserAscii);
  function GetPortName(src : TTypeSrcData) : string;



const
  MAX_CNT_DG = $80000; //$80000;
  MAX_INTEGER = 2147483647;
  MIN_INTEGER = -2147483647;
  BUF_SIZE_ADD_PORTS = $400000;
  BUF_SIZE_SEND_FROM_MAIN_FORM = $8000;
  CNT_PORTS = 16;
  COLOR_LINE_SEP = clLime;

  MAX_PARAM_IN_LIST_PARS_ASCII = 16;
  MAX_LIST_PARS_ASCII = 200;
  CNT_LIST_SETT_PG = 100;



var
  TChrCustomTable : array[0..255] of string[10];
  isNoOutNonPrint : Boolean;

implementation

function GetPortName(src : TTypeSrcData) : string;
var
  tmpstr : string;
begin
  tmpstr := '???';
  case src of
    SrcPortMain: begin tmpstr := 'Port MAIN'; end;
    SrcPort1   : begin tmpstr := 'PortA 1';   end;
    SrcPort2   : begin tmpstr := 'PortA 2';   end;
    Src2Port1  : begin tmpstr := 'PortB 1';   end;
    Src2Port2  : begin tmpstr := 'PortB 2';   end;
    Src2Port3  : begin tmpstr := 'PortB 3';   end;
    Src2Port4  : begin tmpstr := 'PortB 4';   end;
    Src2Port5  : begin tmpstr := 'PortB 5';   end;
    Src2Port6  : begin tmpstr := 'PortB 6';   end;
    Src2Port7  : begin tmpstr := 'PortB 7';   end;
    Src2Port8  : begin tmpstr := 'PortB 8';   end;
    Src2Port9  : begin tmpstr := 'PortB 9';   end;
    Src2Port10 : begin tmpstr := 'PortB 10';  end;
    Src2Port11 : begin tmpstr := 'PortB 11';  end;
    Src2Port12 : begin tmpstr := 'PortB 12';  end;
    Src2Port13 : begin tmpstr := 'PortB 13';  end;
    Src2Port14 : begin tmpstr := 'PortB 14';  end;
    Src2Port15 : begin tmpstr := 'PortB 15';  end;
    Src2Port16 : begin tmpstr := 'PortB 16';  end;
  end;
  Result := tmpstr;
end;


procedure ClearSettParserASCII(spa : pSettParserAscii);
begin
  spa^.ParamName := '';
  spa^.isUse := False;
  spa^.Color := clWindow;
  spa^.TypeParsASCII := ParsString;
  spa^.StartSubstring := '';
  spa^.Sep[0] := 0;
  spa^.Sep[1] := 0;
  spa^.Sep[2] := 0;
  spa^.Sep[3] := 0;
  spa^.Sep[4] := 0;
  spa^.Sep[5] := 0;
  spa^.ParamNum := 0;
  spa^.TypeSrcData := SrcPortMain;
end;

function ParsASCII(SrcData : TTypeSrcData; str: string; spa : pSettParserAscii) : string;
var
  strHead: string;
  res :string;
  numParam : Cardinal;
  i : Cardinal;
  iStart : Cardinal;
  numPos : Cardinal;
  Len    : Cardinal;
  s1, s2, s3, s4, s5, s6   : string;
  mult : Cardinal;
begin
  res := '';
  numParam := 0;
  str := Trim(str);
  if (spa^.isUse) and (SrcData = spa^.TypeSrcData)  then
    begin
      if (spa^.BeginLine = '') or (Pos(spa^.BeginLine, str) = 1) then
        if str <> '' then
          begin
            strHead := spa^.StartSubstring;
            if strHead <> '' then
              begin
                iStart := Pos(strHead, str);
                if iStart = 0 then
                  begin
                    result := '';
                    Exit;
                  end;
              end
            else
              iStart := 1;

            len := Length(str);
            i := iStart;

            res := '';
            s1 := '';
            s2 := '';
            s3 := '';
            s4 := '';
            s5 := '';
            s6 := '';

            if spa^.Sep[0] > 0 then
              s1 := Chr(spa^.Sep[0]);

            if spa^.Sep[1] > 0 then
              s2 := Chr(spa^.Sep[1]);

            if spa^.Sep[2] > 0 then
              s3 := Chr(spa^.Sep[2]);

            if spa^.Sep[3] > 0 then
              s4 := Chr(spa^.Sep[3]);

            if spa^.Sep[4] > 0 then
              s5 := Chr(spa^.Sep[4]);

            if spa^.Sep[5] > 0 then
              s6 := Chr(spa^.Sep[5]);


            while (numParam <= spa^.ParamNum) and (i <= Len) do
              begin
                if (str[i] = s1) or (str[i] = s2) or (str[i] = s3) or (str[i] = s4) or (str[i] = s5) or (str[i] = s6) then
                  inc(numParam)
                else if numParam = spa^.ParamNum then
                  res := res + str[i];
                inc(i);
              end;
          end;
    end;
  Result := res;
end;

function Get_File_Size(sFileToExamine: string; bInKBytes: Boolean): Integer;
 var
   SearchRec: TSearchRec;
   sgPath: string;
   inRetval, I1: Integer;
 begin
   sgPath := ExpandFileName(sFileToExamine);
   try
     inRetval := FindFirst(ExpandFileName(sFileToExamine), faAnyFile, SearchRec);
     if inRetval = 0 then
       I1 := SearchRec.Size
     else
       I1 := -1;
   finally
     SysUtils.FindClose(SearchRec);
   end;
   Result := I1;
 end;


const HexToIntTabl : array[0..255] of byte=(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0,
                                            0,10,11,12,13,14,15, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0,10,11,12,13,14,15, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

function HexToInt(Hex: Char) : byte;
  begin
    result := HexToIntTabl[Ord(Hex)];
  end;


function SetTimeStamp(isTime : Boolean; isDate : Boolean; DateTime : TDateTime) : string;
  begin
     if DateTime > 0 then
       begin
         if not isTime then
           Result := ''
         else if not isDate then
           Result := ' [' + FormatDateTime('hh:nn:ss:zzz', DateTime)+ '] '
         else
           Result := ' [' + FormatDateTime('yyyy/mm/dd hh:nn:ss:zzz', DateTime)+ '] ';
       end
     else
       begin
         Result := 'NO Time';
       end;
  end;


const TChrZTable : array[0..255] of TChrZ= ('[$00]','[$01]','[$02]','[$03]','[$04]','[$05]','[$06]','[$07]','[$08]','[$09]','[$0A]','[$0B]','[$0C]','[$0D]','[$0E]','[$0F]',
                                            '[$10]','[$11]','[$12]','[$13]','[$14]','[$15]','[$16]','[$17]','[$18]','[$19]','[$1A]','[$1B]','[$1C]','[$1D]','[$1E]','[$1F]',
                                            ' ',    '!'    ,'"',    '#',    '$',    '%',    '&',    '[$27]','(',    ')',    '*',    '+',    ',',    '-',    '.',    '/',
                                            '0',    '1',    '2',    '3',    '4',    '5',    '6',    '7',    '8',    '9',    ':',    ';',    '<',    '=',    '>',    '?',
                                            '@',    'A',   'B',     'C',    'D',    'E',    'F',    'G',    'H',    'I',    'J',    'K',    'L',    'M',    'N',    'O',
                                            'P',    'Q',   'R',     'S',    'T',    'U',    'V',    'W',    'X',    'Y',    'Z',    '[',    '\',    ']',    '^',    '_',
                                            '`',    'a',   'b',     'c',    'd',    'e',    'f',    'g',    'h',    'i',    'j',    'k',    'l',    'm',    'n',    'o',
                                            'p',    'q',   'r',     's',    't',    'u',    'v',    'w',    'x',    'y',    'z',    '{',    '|',    '}',    '~',    '[$7F]',
                                            '[$80]','[$81]','[$82]','[$83]','[$84]','[$85]','[$86]','[$87]','[$88]','[$89]','[$8A]','[$8B]','[$8C]','[$8D]','[$8E]','[$8F]',
                                            '[$90]','[$91]','[$92]','[$93]','[$94]','[$95]','[$96]','[$97]','[$98]','[$99]','[$9A]','[$9B]','[$9C]','[$9D]','[$9E]','[$9F]',
                                            '[$A0]','[$A1]','[$A2]','[$A3]','[$A4]','[$A5]','[$A6]','[$A7]','Ё',    '[$A9]','[$AA]','[$AB]','[$AC]','[$AD]','[$AE]','[$AF]',
                                            '[$B0]','[$B1]','[$B2]','[$B3]','[$B4]','[$B5]','[$B6]','[$B7]','ё',    '№',    '[$BA]','[$BB]','[$BC]','[$BD]','[$BE]','[$BF]',
                                            'А','Б','В','Г','Д','Е','Ж','З','И','Й','К','Л','М','Н','О','П',
                                            'Р','С','Т','У','Ф','Х','Ц','Ч','Ш','Щ','Ъ','Ы','Ь','Э','Ю','Я',
                                            'а','б','в','г','д','е','ж','з','и','й','к','л','м','н','о','п',
                                            'р','с','т','у','ф','х','ц','ч','ш','щ','ъ','ы','ь','э','ю','я');

const TChrZTableNoOutNonPrint : array[0..255] of TChrZ= ('',     '',     '',      '',     '',     '',     '',     '',     '',     '',     '',     '',     '',     '',     '',     '',
                                                         '',     '',     '',      '',     '',     '',     '',     '',     '',     '',     '',     '',     '',     '',     '',     '',
                                                         ' ',    '!'   ,'"',     '#',    '$',    '%',    '&',     '',    '(',    ')',    '*',    '+',    ',',    '-',    '.',    '/',
                                                         '0',    '1',   '2',     '3',    '4',    '5',    '6',    '7',    '8',    '9',    ':',    ';',    '<',    '=',    '>',    '?',
                                                         '@',    'A',   'B',     'C',    'D',    'E',    'F',    'G',    'H',    'I',    'J',    'K',    'L',    'M',    'N',    'O',
                                                         'P',    'Q',   'R',     'S',    'T',    'U',    'V',    'W',    'X',    'Y',    'Z',    '[',    '\',    ']',    '^',    '_',
                                                         '`',    'a',   'b',     'c',    'd',    'e',    'f',    'g',    'h',    'i',    'j',    'k',    'l',    'm',    'n',    'o',
                                                         'p',    'q',   'r',     's',    't',    'u',    'v',    'w',    'x',    'y',    'z',    '{',    '|',    '}',    '~',     '',
                                                          '',     '',    '',      '',     '',     '',     '',     '',     '',     '',     '',     '',     '',     '',     '',     '',
                                                          '',     '',    '',      '',     '',     '',     '',     '',     '',     '',     '',     '',     '',     '',     '',     '',
                                                          '',     '',    '',      '',     '',     '',     '',     '',    'Ё',     '',     '',     '',     '',     '',     '',     '',
                                                          '',     '',    '',      '',     '',     '',     '',     '',    'ё',    '№',     '',     '',     '',     '',     '',     '',
                                                          'А',   'Б',    'В',    'Г',     'Д',    'Е',    'Ж',   'З',    'И',    'Й',    'К',    'Л',    'М',    'Н',    'О',    'П',
                                                          'Р',   'С',    'Т',    'У',     'Ф',    'Х',    'Ц',   'Ч',    'Ш',    'Щ',    'Ъ',    'Ы',    'Ь',    'Э',    'Ю',    'Я',
                                                          'а',   'б',    'в',    'г',     'д',    'е',    'ж',   'з',    'и',    'й',    'к',    'л',    'м',    'н',    'о',    'п',
                                                          'р',   'с',    'т',    'у',     'ф',    'х',    'ц',   'ч',    'ш',    'щ',    'ъ',    'ы',    'ь',    'э',    'ю',    'я');
function ChrZ(Hex: byte) : string;
  begin
    if isNoOutNonPrint then
      Result := TChrZTableNoOutNonPrint[Hex]
    else
      result := TChrZTable[Hex];
  end;

procedure SetOffNonPrintCh(isNonPrint : boolean);
  begin
    isNoOutNonPrint := isNonPrint;
  end;

function ChrCustom(Hex: byte) : string;
  begin
    result := TChrCustomTable[Hex];
  end;

procedure SetCustomTable(Hex : Byte; str : string);
begin
  TChrCustomTable[Hex] := str;
end;

end.
