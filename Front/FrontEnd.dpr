program FrontEnd;

uses
  Vcl.Forms,
  unt.MenuPrin.view in 'Classes\Views\unt.MenuPrin.view.pas' {frmMenuPrin},
  frm.dm.front in 'Classes\Dao\frm.dm.front.pas' {FDM: TDataModule},
  unt.front.endereco.controller in 'Classes\Controller\unt.front.endereco.controller.pas',
  unt.front.endereco.dao in 'Classes\Dao\unt.front.endereco.dao.pas',
  unt.endereco.dto in '..\Comuns\Classes\Dto\unt.endereco.dto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenuPrin, frmMenuPrin);
  Application.CreateForm(TFDM, FDM);
  Application.Run;
end.
