unit unt.lib;

interface

uses
  System.SysUtils;

implementation

type
  TBiblio = class
  public
    Function ValidarCEP(const ACep: string): Boolean;
    Function FormatarCep(AValue: String): String;
  end;

function TBiblio.FormatarCep(AValue: String): String;
var
  i: Integer;
begin
  for i := 1 to Length(AValue) do
    if AValue[I] in ['0'..'9'] then
      Result := Result + AValue[I];
  Result := Copy(Result, 1, 5) + '-' + Copy(Result, 6, 3);
end;

function TBiblio.ValidarCEP(const ACep: string): Boolean;
begin
  if Length(Trim(ACep)) = 9 then
    Result := True;
end;

end.
