{Classe que deve ser usada na view}
unit unt.endreco.controller;

interface

uses
  unt.endereco.dao,
  unt.endereco.dto;

type
  TEnderecoController = class
    class var FInstance: TEnderecoController;
  private
     FEnderecoDao: TEnderecoDao;
  public
    constructor Create();
    destructor Destroy; Override;

    function getStatusCode: Integer;
    function getMessageError: String;
    function Load(ACep: String): TEnderecoDto;

    class Function GetInstance: TEnderecoController;
  end;

implementation

constructor TEnderecoController.Create;
begin
  FEnderecoDao := TEnderecoDao.Create;
end;

destructor TEnderecoController.Destroy;
begin
  FEnderecoDao.Free;
  inherited;
end;

class function TEnderecoController.GetInstance: TEnderecoController;
begin
  if not Assigned(self.FInstance) then
    self.FInstance := TEnderecoController.Create();
  Result := self.FInstance;
end;

function TEnderecoController.getMessageError: String;
begin
  Result := FEnderecoDao.getMessageError;
end;

function TEnderecoController.getStatusCode: Integer;
begin
  Result := FEnderecoDao.getStatusCode;
end;

function TEnderecoController.Load(ACep: String): TEnderecoDto;
begin
  Result := FEnderecoDao.Load(ACep);
end;
end.
