unit LocationModule;

interface

uses
  StateData;

function RandomAddressPrefix(): string;
function RandomAddressSuffix(): string;
function RandomAddressNumberSuffix(): string;
function RandomNeighborhood(): string;
function RandomAddressComplement(): string;
function RandomState(): TStateAbbr;
function RandomCity(): string;
function RandomCityByState(StateNameOrAbbr: String): string;
function RandomCountries(): string;
function RandomNationalities(): string;

implementation

uses
  System.SysUtils,
  LocationData,
  CityData;


function RandomAddressPrefix(): string;
begin
  Result := ADDRESS_PREFIXES[Random(Length(ADDRESS_PREFIXES))];
end;

function RandomAddressSuffix(): string;
begin
  Result := ADDRESS_SUFFIXES[Random(Length(ADDRESS_SUFFIXES))];
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

function RandomState(): TStateAbbr;
begin
  Result := STATES[Random(Length(STATES))];
end;

function RandomAcreCity: string;
begin
  Result := ACRE_CITIES[Random(Length(ACRE_CITIES))];
end;

function RandomAlagoasCity: string;
begin
  Result := ALAGOAS_CITIES[Random(Length(ALAGOAS_CITIES))];
end;

function RandomAmapaCity: string;
begin
  Result := AMAPA_CITIES[Random(Length(AMAPA_CITIES))];
end;

function RandomAmazonasCity: string;
begin
  Result := AMAZONAS_CITIES[Random(Length(AMAZONAS_CITIES))];
end;

function RandomBahiaCity: string;
begin
  Result := BAHIA_CITIES[Random(Length(BAHIA_CITIES))];
end;

function RandomCearaCity: string;
begin
  Result := CEARA_CITIES[Random(Length(CEARA_CITIES))];
end;

function RandomDistritoFederalCity: string;
begin
  Result := DISTRITO_FEDERAL_CITIES[Random(Length(DISTRITO_FEDERAL_CITIES))];
end;

function RandomEspiritoSantoCity: string;
begin
  Result := ESPIRITO_SANTO_CITIES[Random(Length(ESPIRITO_SANTO_CITIES))];
end;

function RandomGoiasCity: string;
begin
  Result := GOIAS_CITIES[Random(Length(GOIAS_CITIES))];
end;

function RandomMaranhaoCity: string;
begin
  Result := MARANHAO_CITIES[Random(Length(MARANHAO_CITIES))];
end;

function RandomMatoGrossoCity: string;
begin
  Result := MATO_GROSSO_CITIES[Random(Length(MATO_GROSSO_CITIES))];
end;

function RandomMatoGrossoDoSulCity: string;
begin
  Result := MATO_GROSSO_DO_SUL_CITIES[Random(Length(MATO_GROSSO_DO_SUL_CITIES))];
end;

function RandomMinasGeraisCity: string;
begin
  Result := MINAS_GERAIS_CITIES[Random(Length(MINAS_GERAIS_CITIES))];
end;

function RandomParaCity: string;
begin
  Result := PARA_CITIES[Random(Length(PARA_CITIES))];
end;

function RandomParaibaCity: string;
begin
  Result := PARAIBA_CITIES[Random(Length(PARAIBA_CITIES))];
end;

function RandomParanaCity: string;
begin
  Result := PARANA_CITIES[Random(Length(PARANA_CITIES))];
end;

function RandomPernambucoCity: string;
begin
  Result := PERNAMBUCO_CITIES[Random(Length(PERNAMBUCO_CITIES))];
end;

function RandomPiauiCity: string;
begin
  Result := PIAUI_CITIES[Random(Length(PIAUI_CITIES))];
end;

function RandomRioDeJaneiroCity: string;
begin
  Result := RIO_DE_JANEIRO_CITIES[Random(Length(RIO_DE_JANEIRO_CITIES))];
end;

function RandomRioGrandeDoNorteCity: string;
begin
  Result := RIO_GRANDE_DO_NORTE_CITIES[Random(Length(RIO_GRANDE_DO_NORTE_CITIES))];
end;

function RandomRioGrandeDoSulCity: string;
begin
  Result := RIO_GRANDE_DO_SUL_CITIES[Random(Length(RIO_GRANDE_DO_SUL_CITIES))];
end;

function RandomRondoniaCity: string;
begin
  Result := RONDONIA_CITIES[Random(Length(RONDONIA_CITIES))];
end;

function RandomRoraimaCity: string;
begin
  Result := RORAIMA_CITIES[Random(Length(RORAIMA_CITIES))];
end;

function RandomSantaCatarinaCity: string;
begin
  Result := SANTA_CATARINA_CITIES[Random(Length(SANTA_CATARINA_CITIES))];
end;

function RandomSaoPauloCity: string;
begin
  Result := SAO_PAULO_CITIES[Random(Length(SAO_PAULO_CITIES))];
end;

function RandomSergipeCity: string;
begin
  Result := SERGIPE_CITIES[Random(Length(SERGIPE_CITIES))];
end;

function RandomTocantinsCity: string;
begin
  Result := TOCANTINS_CITIES[Random(Length(TOCANTINS_CITIES))];
end;

function RandomCity(): string;
var
  state: TStateAbbr;
begin
  state := STATES[Random(Length(STATES))];
  Result := RandomCityByState(state.State);
end;

function RandomCityByState(StateNameOrAbbr: String): string;
begin
  if (SameText(StateNameOrAbbr, 'Acre')) or (SameText(StateNameOrAbbr, 'AC')) then
    Result := RandomAcreCity
  else if (SameText(StateNameOrAbbr, 'Alagoas')) or (SameText(StateNameOrAbbr, 'AL')) then
    Result := RandomAlagoasCity
  else if (SameText(StateNameOrAbbr, 'Amapá')) or (SameText(StateNameOrAbbr, 'AP')) then
    Result := RandomAmapaCity
  else if (SameText(StateNameOrAbbr, 'Amazonas')) or (SameText(StateNameOrAbbr, 'AM')) then
    Result := RandomAmazonasCity
  else if (SameText(StateNameOrAbbr, 'Bahia')) or (SameText(StateNameOrAbbr, 'BA')) then
    Result := RandomBahiaCity
  else if (SameText(StateNameOrAbbr, 'Ceará')) or (SameText(StateNameOrAbbr, 'CE')) then
    Result := RandomCearaCity
  else if (SameText(StateNameOrAbbr, 'Distrito Federal')) or (SameText(StateNameOrAbbr, 'DF')) then
    Result := RandomDistritoFederalCity
  else if (SameText(StateNameOrAbbr, 'Espírito Santo')) or (SameText(StateNameOrAbbr, 'ES')) then
    Result := RandomEspiritoSantoCity
  else if (SameText(StateNameOrAbbr, 'Goiás')) or (SameText(StateNameOrAbbr, 'GO')) then
    Result := RandomGoiasCity
  else if (SameText(StateNameOrAbbr, 'Maranhão')) or (SameText(StateNameOrAbbr, 'MA')) then
    Result := RandomMaranhaoCity
  else if (SameText(StateNameOrAbbr, 'Mato Grosso')) or (SameText(StateNameOrAbbr, 'MT')) then
    Result := RandomMatoGrossoCity
  else if (SameText(StateNameOrAbbr, 'Mato Grosso do Sul')) or (SameText(StateNameOrAbbr, 'MS')) then
    Result := RandomMatoGrossoDoSulCity
  else if (SameText(StateNameOrAbbr, 'Minas Gerais')) or (SameText(StateNameOrAbbr, 'MG')) then
    Result := RandomMinasGeraisCity
  else if (SameText(StateNameOrAbbr, 'Pará')) or (SameText(StateNameOrAbbr, 'PA')) then
    Result := RandomParaCity
  else if (SameText(StateNameOrAbbr, 'Paraíba')) or (SameText(StateNameOrAbbr, 'PB')) then
    Result := RandomParaibaCity
  else if (SameText(StateNameOrAbbr, 'Paraná')) or (SameText(StateNameOrAbbr, 'PR')) then
    Result := RandomParanaCity
  else if (SameText(StateNameOrAbbr, 'Pernambuco')) or (SameText(StateNameOrAbbr, 'PE')) then
    Result := RandomPernambucoCity
  else if (SameText(StateNameOrAbbr, 'Piauí')) or (SameText(StateNameOrAbbr, 'PI')) then
    Result := RandomPiauiCity
  else if (SameText(StateNameOrAbbr, 'Rio de Janeiro')) or (SameText(StateNameOrAbbr, 'RJ')) then
    Result := RandomRioDeJaneiroCity
  else if (SameText(StateNameOrAbbr, 'Rio Grande do Norte')) or (SameText(StateNameOrAbbr, 'RN')) then
    Result := RandomRioGrandeDoNorteCity
  else if (SameText(StateNameOrAbbr, 'Rio Grande do Sul')) or (SameText(StateNameOrAbbr, 'RS')) then
    Result := RandomRioGrandeDoSulCity
  else if (SameText(StateNameOrAbbr, 'Rondônia')) or (SameText(StateNameOrAbbr, 'RO')) then
    Result := RandomRondoniaCity
  else if (SameText(StateNameOrAbbr, 'Roraima')) or (SameText(StateNameOrAbbr, 'RR')) then
    Result := RandomRoraimaCity
  else if (SameText(StateNameOrAbbr, 'SantaCatarina')) or (SameText(StateNameOrAbbr, 'SC')) then
    Result := RandomSantaCatarinaCity
  else if (SameText(StateNameOrAbbr, 'São Paulo')) or (SameText(StateNameOrAbbr, 'SP')) then
    Result := RandomSaoPauloCity
  else if (SameText(StateNameOrAbbr, 'Sergipe')) or (SameText(StateNameOrAbbr, 'SE')) then
    Result := RandomSergipeCity
  else if (SameText(StateNameOrAbbr, 'Tocantins')) or (SameText(StateNameOrAbbr, 'TO')) then
    Result := RandomTocantinsCity
  else
    Result := '';
end;

function RandomCountries(): string;
begin
  Result := COUNTRIES[Random(Length(COUNTRIES))];
end;

function RandomNationalities(): string;
begin
  Result := NATIONALITIES[Random(Length(NATIONALITIES))];
end;

end.

