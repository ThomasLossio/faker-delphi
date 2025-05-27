unit LocationModule;

interface

function RandomAddressPrefix(): string;
function RandomAddressSuffix(): string;
function RandomAddressNumber(): string;
function RandomAddressNumberSuffix(): string;
function RandomNeighborhood(): string;
function RandomAddressComplement(): string;
function RandomFullAddress(UseStateAbbr: Boolean = True): string;
function RandomCountries(): string;
function RandomNationalities(): string;

implementation

uses
  System.SysUtils, LocationData, StateModel, StateModule, CityModule,
  ZipCodeModule;


function RandomAddressPrefix(): string;
begin
  Result := ADDRESS_PREFIXES[Random(Length(ADDRESS_PREFIXES))];
end;

function RandomAddressSuffix(): string;
begin
  Result := ADDRESS_SUFFIXES[Random(Length(ADDRESS_SUFFIXES))];
end;

function RandomAddressNumber(): string;
begin
  if Random(5) = 0 then
    Result := 'S/N'
  else
    Result := IntToStr(Random(9999) + 1);
end;

function RandomAddressNumberSuffix(): string;
begin
  Result := ADDRESS_NUMBER_SUFFIXES[Random(Length(ADDRESS_NUMBER_SUFFIXES))];
end;

function RandomNeighborhood(): string;
begin
  Result := NEIGHBORHOODS[Random(Length(NEIGHBORHOODS))];
end;

function RandomAddressComplement(): string;
begin
  Result := ADDRESS_COMPLEMENTS[Random(Length(ADDRESS_COMPLEMENTS))];
end;

function RandomCountries(): string;
begin
  Result := COUNTRIES[Random(Length(COUNTRIES))];
end;

function RandomNationalities(): string;
begin
  Result := NATIONALITIES[Random(Length(NATIONALITIES))];
end;

function RandomFullAddress(UseStateAbbr: Boolean): string;
var
  Address, Number, Complement, Neighborhood, City: string;
  State: TStateAbbr;
begin
  Address := RandomAddressPrefix + ' ' + RandomAddressSuffix;
  Number := RandomAddressNumber;
  Complement := RandomAddressComplement;
  if Complement <> '' then
    Complement := ', ' + Complement;

  Neighborhood := RandomNeighborhood;
  State := RandomFullState;
  City := RandomCityByState(State.State);

  Result := Format('%s, %s%s, %s - %s', [
    Address, Number, Complement, Neighborhood, City
  ]);

  if UseStateAbbr then
    Result := Result + '/' + State.Abbr
  else
    Result := Result + '/' + State.State;

  Result := Result + ', ' + RandomZipCodeByState(State.Abbr);
end;

end.

