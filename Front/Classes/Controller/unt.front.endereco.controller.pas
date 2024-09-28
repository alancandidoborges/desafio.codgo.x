{Classe que deve ser usada na view}
unit unt.front.endereco.controller;

interface

uses
  unt.front.endereco.dao, unt.endereco.dto;

type
  TFEnderecoController = class
    class var FInstance: TFEnderecoController;
  private
     FEnderecoDao: TFEnderecoDados;
  public
    constructor Create();
    destructor Destroy; Override;

    function getStatusCode: Integer;
    function getMessageError: String;
    function Load(ACep: String): TEnderecoDto;

    class Function GetInstance: TFEnderecoController;
  end;

implementation

constructor TFEnderecoController.Create;
begin
  FEnderecoDao := TFEnderecoDados.Create;
end;

destructor TFEnderecoController.Destroy;
begin
  FEnderecoDao.Free;
  inherited;
end;

class function TFEnderecoController.GetInstance: TFEnderecoController;
begin
  if not Assigned(self.FInstance) then
    self.FInstance := TFEnderecoController.Create();
  Result := self.FInstance;
end;

function TFEnderecoController.getMessageError: String;
begin
  Result := FEnderecoDao.getMessageError;
end;

function TFEnderecoController.getStatusCode: Integer;
begin
  Result := FEnderecoDao.getStatusCode;
end;

function TFEnderecoController.Load(ACep: String): TEnderecoDto;
begin
  Result := FEnderecoDao.Load(ACep);
end;

end.

