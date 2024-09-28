program api;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  Testunt.endereco.daoo in 'Testunt.endereco.daoo.pas',
  unt.DM in '..\Classes\Dao\unt.DM.pas' {frmDM: TDataModule},
  unt.endereco.dao in '..\Classes\Dao\unt.endereco.dao.pas',
  unt.endereco.model in '..\..\Comuns\Classes\Model\unt.endereco.model.pas',
  unt.endereco.dto in '..\..\Comuns\Classes\Dto\unt.endereco.dto.pas',
  Testunt.endreco.controller in 'Testunt.endreco.controller.pas',
  unt.endreco.controller in '..\Classes\Controller\unt.endreco.controller.pas';

{SR *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

