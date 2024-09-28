unit unt.front.endereco.dao;

interface

uses
  REST.Types,
  REST.Client,
  REST.Json,
  System.JSON,
  System.SysUtils,
  frm.dm.front, unt.endereco.dto;

type
  TFEnderecoDados = class
  private
    FDM           : TFDM;
    FMessageError : String;
    FStatusCode   : Integer;
    FEndereco     : TEnderecoDto;

    procedure setStatusCode(AValue: Integer);
    procedure setMessageError(AValue: String);
    procedure ConsultaCep(ABaseUrl: String);

  public
    constructor Create();
    destructor Destroy; Override;

    function getStatusCode: Integer;
    function getMessageError: String;
    function Load(ACep: String): TEnderecoDto;
  end;


implementation

{ TFEnderecoDados }

procedure TFEnderecoDados.ConsultaCep(ABaseUrl: String);
begin
  try
    FDM.RESTRequest.Method := rmGET;
    FDM.RESTClient.BaseURL := ABaseUrl;
    FDM.RESTClient.Accept  := 'application/json';
    FDM.RESTRequest.Execute;
    setStatusCode(FDM.RESTRequest.Response.StatusCode);
  except
    setMessageError(FDM.RESTRequest.Response.StatusText);
  end;
end;

procedure TFEnderecoDados.setStatusCode(AValue: Integer);
begin
  FStatusCode := AValue;
end;

constructor TFEnderecoDados.Create;
begin
  FEndereco := TEnderecoDto.Create;
  FDM       := TFDM.Create(nil);
end;

destructor TFEnderecoDados.Destroy;
begin
  FDM.Free;
  inherited;
end;

function TFEnderecoDados.getMessageError: String;
begin
  Result := FMessageError;
end;

function TFEnderecoDados.getStatusCode: Integer;
begin
  Result := FStatusCode;
end;

procedure TFEnderecoDados.setMessageError(AValue: String);
begin
  FMessageError := AValue;
end;

function TFEnderecoDados.Load(ACep: String): TEnderecoDto;
begin
  try
    ConsultaCep('http://localhost:9000/buscacep/' + ACep);
    if getStatusCode = 200 then
      FEndereco := TJson.JsonToObject<TEnderecoDto>(Trim(FDM.RESTRequest.Response.JSONText))
  finally
    Result := FEndereco;
  end;
end;

end.
