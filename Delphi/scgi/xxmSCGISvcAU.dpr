program xxmSCGISvcAU;

{$R 'xxmData.res' '..\common\xxmData.rc'}

uses
  SvcMgr,
  xxmSCGISvcMain in 'xxmSCGISvcMain.pas' {TxxmService: TService},
  xxmSCGIMain in 'xxmSCGIMain.pas',
  xxm in '..\bin\public\xxm.pas',
  xxmParams in '..\common\xxmParams.pas',
  xxmParUtils in '..\common\xxmParUtils.pas',
  xxmHeaders in '..\bin\public\xxmHeaders.pas',
  xxmPReg in '..\common\xxmPReg.pas',
  xxmCommonUtils in '..\common\xxmCommonUtils.pas',
  xxmContext in '..\common\xxmContext.pas',
  xxmReadHandler in '..\http\xxmReadHandler.pas',
  jsonDoc in '..\common\jsonDoc.pas',
  xxmSock in '..\http\xxmSock.pas',
  xxmThreadPool in '..\common\xxmThreadPool.pas',
  xxmKeptCon in 'xxmKeptCon.pas',
  xxmSpoolingCon in 'xxmSpoolingCon.pas',
  xxmAutoUpdate in '..\common\xxmAutoUpdate.pas';

{$R *.res}

begin
  XxmAutoBuildHandler:=AutoUpdate;
  Application.Initialize;
  Application.CreateForm(TxxmService, xxmService);
  Application.Run;
end.
