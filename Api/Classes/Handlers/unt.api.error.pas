unit unt.api.error;

interface

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

  implementation
end.
