unit Faker;

interface

type
  TFaker = class
  public
    class function FirstName: string;
  end;

implementation

uses System.SysUtils;

class function TFaker.FirstName: string;
begin
  Result := 'João';
end;

end.
