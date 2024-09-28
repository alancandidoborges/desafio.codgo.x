unit unt.endereco.model;

interface

type
  TEndereco = class
  private
      FCep        : String;
      FLogradouro : String;
      FComplemento: String;
      FUnidade    : String;
      FBairro     : String;
      FLocalidade : String;
      FUf         : String;
      FEstado     : String;
      FRegiao     : String;
      FIbge       : String;
      FGia        : String;
      FDdd        : String;
      FSiafi      : String;
  public
      property Cep        : String read FCep         write FCep;
      property Logradouro : String read FLogradouro  write FLogradouro;
      property Complemento: String read FComplemento write FComplemento;
      property Unidade    : String read FUnidade     write FUnidade;
      property Bairro     : String read FBairro      write FBairro;
      property Localidade : String read FLocalidade  write FLocalidade;
      property Uf         : String read FUf          write FUf;
      property Estado     : String read FEstado      write FEstado;
      property Regiao     : String read FRegiao      write FRegiao;
      property Ibge       : String read FIbge        write FIbge;
      property Gia        : String read FGia         write FGia;
      property Ddd        : String read FDdd         write FDdd;
      property Siafi      : String read FSiafi       write FSiafi;
  end;

implementation

end.
