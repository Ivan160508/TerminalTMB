program Project1;

uses
  Forms,
  TerminalST in 'TerminalST.pas' {Form1},
  Unit2 in 'Unit2.pas' {FormEditHelpCmd},
  Unit4 in 'Unit4.pas' {Info},
  Unit5 in 'Unit5.pas' {FormEditCmd},
  Unit6 in 'Unit6.pas' {OpenPortError},
  Unit7 in 'Unit7.pas' {Form7},
  Unit8 in 'Unit8.pas' {Form8},
  Unit11 in 'Unit11.pas' {DataSendLog},
  Unit12 in 'Unit12.pas' {Settings},
  Unit13 in 'Unit13.pas' {FormLogName},
  Unit14 in 'Unit14.pas' {OpenLogFile},
  Unit16 in 'Unit16.pas' {FormAnsSensor},
  Unit17 in 'Unit17.pas' {FastSend},
  Unit19 in 'Unit19.pas' {FormAsciiTable},
  Unit20 in 'Unit20.pas' {Autoexpander},
  Unit23 in 'Unit23.pas' {BruteForce},
  FormJ in 'FormJ.pas' {FormJoyst},
  Unit24 in 'Unit24.pas' {FormParser},
  Unit25 in 'Unit25.pas' {FormSettParser},
  Common in 'Common.pas',
  Unit26 in 'Unit26.pas' {FormGraph},
  Unit27 in 'Unit27.pas' {FormAddMacros},
  Unit28 in 'Unit28.pas' {FormMacroEditing},
  Unit29 in 'Unit29.pas' {FormUtilites},
  Unit30 in 'Unit30.pas' {FormStat},
  Unit31 in 'Unit31.pas' {FormFont},
  Unit32 in 'Unit32.pas' {FormAddPorts},
  Unit33 in 'Unit33.pas' {FormMultiGraph},
  Unit34 in 'Unit34.pas' {ActFileLog},
  Unit35 in 'Unit35.pas' {frmCustomTable},
  Unit36 in 'Unit36.pas' {frmBarChart},
  Unit37 in 'Unit37.pas' {FormEvent},
  Unit38 in 'Unit38.pas' {FormPort1Log},
  Unit39 in 'Unit39.pas' {FormPort2Log},
  Unit40 in 'Unit40.pas' {frmParserLog},
  Unit41 in 'Unit41.pas' {FormScheduler},
  Unit42 in 'Unit42.pas' {FormMultiPort},
  Unit43 in 'Unit43.pas' {FormLogPort},
  Unit44 in 'Unit44.pas' {FormSetSendData},
  Unit3 in 'Unit3.pas' {FormPacketsCNT},
  Unit9 in 'Unit9.pas' {FormParserASCII},
  Unit10 in 'Unit10.pas' {FormSetParsASCII},
  Unit50 in 'Unit50.pas' {FormParserASCIILog},
  Unit151 in 'Unit151.pas' {FormWarnMG},
  Unit153 in 'Unit153.pas' {FormSaveBufData};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormEditHelpCmd, FormEditHelpCmd);
  Application.CreateForm(TInfo, Info);
  Application.CreateForm(TFormEditCmd, FormEditCmd);
  Application.CreateForm(TOpenPortError, OpenPortError);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TDataSendLog, DataSendLog);
  Application.CreateForm(TSettings, Settings);
  Application.CreateForm(TFormLogName, FormLogName);
  Application.CreateForm(TOpenLogFile, OpenLogFile);
  Application.CreateForm(TFormAnsSensor, FormAnsSensor);
  Application.CreateForm(TFastSend, FastSend);
  Application.CreateForm(TFormAsciiTable, FormAsciiTable);
  Application.CreateForm(TAutoexpander, Autoexpander);
  Application.CreateForm(TBruteForce, BruteForce);
  Application.CreateForm(TFormJoyst, FormJoyst);
  Application.CreateForm(TFormParser, FormParser);
  Application.CreateForm(TFormSettParser, FormSettParser);
  Application.CreateForm(TFormGraph, FormGraph);
  Application.CreateForm(TFormAddMacros, FormAddMacros);
  Application.CreateForm(TFormMacroEditing, FormMacroEditing);
  Application.CreateForm(TFormUtilites, FormUtilites);
  Application.CreateForm(TFormStat, FormStat);
  Application.CreateForm(TFormFont, FormFont);
  Application.CreateForm(TFormAddPorts, FormAddPorts);
  Application.CreateForm(TFormMultiGraph, FormMultiGraph);
  Application.CreateForm(TActFileLog, ActFileLog);
  Application.CreateForm(TfrmCustomTable, frmCustomTable);
  Application.CreateForm(TfrmBarChart, frmBarChart);
  Application.CreateForm(TFormEvent, FormEvent);
  Application.CreateForm(TFormPort1Log, FormPort1Log);
  Application.CreateForm(TFormPort2Log, FormPort2Log);
  Application.CreateForm(TfrmParserLog, frmParserLog);
  Application.CreateForm(TFormScheduler, FormScheduler);
  Application.CreateForm(TFormMultiPort, FormMultiPort);
  Application.CreateForm(TFormLogPort, FormLogPort);
  Application.CreateForm(TFormSetSendData, FormSetSendData);
  Application.CreateForm(TFormPacketsCNT, FormPacketsCNT);
  Application.CreateForm(TFormParserASCII, FormParserASCII);
  Application.CreateForm(TFormSetParsASCII, FormSetParsASCII);
  Application.CreateForm(TFormParserASCIILog, FormParserASCIILog);
  Application.CreateForm(TFormWarnMG, FormWarnMG);
  Application.CreateForm(TFormSaveBufData, FormSaveBufData);
  Application.Run;
end.
