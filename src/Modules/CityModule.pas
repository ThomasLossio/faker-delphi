unit CityModule;

interface

function RandomCity(): string;
function RandomCityByState(StateNameOrAbbr: String): string;

implementation

uses
  System.SysUtils, System.Generics.Collections, CityData, StateData, StateModel;

var
  CityFuncMap: TDictionary<string, TFunc<string>>;

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
var
  Func: TFunc<string>;
begin
  if CityFuncMap.TryGetValue(StateNameOrAbbr.ToUpper, Func) then
    Result := Func()
  else
    Result := 'Estado não encontrado';
end;

initialization

  CityFuncMap := TDictionary<string, TFunc<string>>.Create;

  CityFuncMap.Add('AC', RandomAcreCity);
  CityFuncMap.Add('ACRE', RandomAcreCity);

  CityFuncMap.Add('AL', RandomAlagoasCity);
  CityFuncMap.Add('ALAGOAS', RandomAlagoasCity);

  CityFuncMap.Add('AP', RandomAmapaCity);
  CityFuncMap.Add('AMAPÁ', RandomAmapaCity);

  CityFuncMap.Add('AM', RandomAmazonasCity);
  CityFuncMap.Add('AMAZONAS', RandomAmazonasCity);

  CityFuncMap.Add('BA', RandomBahiaCity);
  CityFuncMap.Add('BAHIA', RandomBahiaCity);

  CityFuncMap.Add('CE', RandomCearaCity);
  CityFuncMap.Add('CEARÁ', RandomCearaCity);

  CityFuncMap.Add('DF', RandomDistritoFederalCity);
  CityFuncMap.Add('DISTRITO FEDERAL', RandomDistritoFederalCity);

  CityFuncMap.Add('ES', RandomEspiritoSantoCity);
  CityFuncMap.Add('ESPÍRITO SANTO', RandomEspiritoSantoCity);

  CityFuncMap.Add('GO', RandomGoiasCity);
  CityFuncMap.Add('GOIÁS', RandomGoiasCity);

  CityFuncMap.Add('MA', RandomMaranhaoCity);
  CityFuncMap.Add('MARANHÃO', RandomMaranhaoCity);

  CityFuncMap.Add('MT', RandomMatoGrossoCity);
  CityFuncMap.Add('MATO GROSSO', RandomMatoGrossoCity);

  CityFuncMap.Add('MS', RandomMatoGrossoDoSulCity);
  CityFuncMap.Add('MATO GROSSO DO SUL', RandomMatoGrossoDoSulCity);

  CityFuncMap.Add('MG', RandomMinasGeraisCity);
  CityFuncMap.Add('MINAS GERAIS', RandomMinasGeraisCity);

  CityFuncMap.Add('PA', RandomParaCity);
  CityFuncMap.Add('PARÁ', RandomParaCity);

  CityFuncMap.Add('PB', RandomParaibaCity);
  CityFuncMap.Add('PARAÍBA', RandomParaibaCity);

  CityFuncMap.Add('PR', RandomParanaCity);
  CityFuncMap.Add('PARANÁ', RandomParanaCity);

  CityFuncMap.Add('PE', RandomPernambucoCity);
  CityFuncMap.Add('PERNAMBUCO', RandomPernambucoCity);

  CityFuncMap.Add('PI', RandomPiauiCity);
  CityFuncMap.Add('PIAUÍ', RandomPiauiCity);

  CityFuncMap.Add('RJ', RandomRioDeJaneiroCity);
  CityFuncMap.Add('RIO DE JANEIRO', RandomRioDeJaneiroCity);

  CityFuncMap.Add('RN', RandomRioGrandeDoNorteCity);
  CityFuncMap.Add('RIO GRANDE DO NORTE', RandomRioGrandeDoNorteCity);

  CityFuncMap.Add('RS', RandomRioGrandeDoSulCity);
  CityFuncMap.Add('RIO GRANDE DO SUL', RandomRioGrandeDoSulCity);

  CityFuncMap.Add('RO', RandomRondoniaCity);
  CityFuncMap.Add('RONDÔNIA', RandomRondoniaCity);

  CityFuncMap.Add('RR', RandomRoraimaCity);
  CityFuncMap.Add('RORAIMA', RandomRoraimaCity);

  CityFuncMap.Add('SC', RandomSantaCatarinaCity);
  CityFuncMap.Add('SANTA CATARINA', RandomSantaCatarinaCity);

  CityFuncMap.Add('SP', RandomSaoPauloCity);
  CityFuncMap.Add('SÃO PAULO', RandomSaoPauloCity);

  CityFuncMap.Add('SE', RandomSergipeCity);
  CityFuncMap.Add('SERGIPE', RandomSergipeCity);

  CityFuncMap.Add('TO', RandomTocantinsCity);
  CityFuncMap.Add('TOCANTINS', RandomTocantinsCity);

finalization

  CityFuncMap.Free;

end.
