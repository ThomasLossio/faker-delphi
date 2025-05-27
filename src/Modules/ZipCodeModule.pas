{
  ZipCodeModule.pas
  Faker-Delphi

  Brazilian ZIP Code ranges by state.

  Data Source:
  - Dataset obtained from BRING's knowledge base:
    https://bring.com.br/suporte/?knowledgebase=faixas-de-cep-por-estado-e-regiao
  - Data originally compiled approximately 4 years ago.
  - Likely based on Correios public data and general regional patterns.

  Notes:
  - The ZIP Code ranges defined here represent broad state-level intervals.
  - These ranges typically remain stable over time, despite potential micro-level changes (e.g., new neighborhoods, streets).
  - For purposes of generating fake data and testing, this dataset remains suitable and reliable.
  - For real-world applications (e.g., address validation, postal services),
    it is recommended to periodically verify against Correios' official data:
    https://buscacepinter.correios.com.br/app/faixa_cep_uf_localidade/index.php

}
unit ZipCodeModule;

interface

function RandomZipCode: String;
function RandomZipCodeByState(const State: String): string;

implementation

uses
  System.SysUtils, System.Generics.Collections, ZipCodeModel, StateHelper,
  StateModule;

var
  ZipCodeRanges: TDictionary<String, TArray<TZipCodeRange>>;

function RandomZipCode: String;
var
  State: String;
begin
  State := RandomStateAbbr;
  Result := RandomZipCodeByState(State);
end;

function RandomZipCodeByState(const State: String): string;
var
  Ranges: TArray<TZipCodeRange>;
  Range: TZipCodeRange;
  RandomIndex, ZipCode: Integer;
begin
  if not ZipCodeRanges.TryGetValue(NormalizeState(State).ToUpper, Ranges) then
  begin
    Result := 'Estado Inválido para o CEP';
    Exit;
  end;

  RandomIndex := Random(Length(Ranges));
  Range := Ranges[RandomIndex];

  ZipCode := Random(Range.Max - Range.Min + 1) + Range.Min;

  Result := FormatFloat('00000-000', ZipCode);
end;

initialization
  ZipCodeRanges := TDictionary<String, TArray<TZipCodeRange>>.Create;

  ZipCodeRanges.Add('AC', [TZipCodeRange.Create(69900000, 69999999)]);
  ZipCodeRanges.Add('AL', [TZipCodeRange.Create(57000000, 57999999)]);
  ZipCodeRanges.Add('AP', [TZipCodeRange.Create(68900000, 68999999)]);
  ZipCodeRanges.Add('AM', [
    TZipCodeRange.Create(69000000, 69299999),
    TZipCodeRange.Create(69400000, 69899999)
  ]);
  ZipCodeRanges.Add('BA', [TZipCodeRange.Create(40000000, 48999999)]);
  ZipCodeRanges.Add('CE', [TZipCodeRange.Create(60000000, 63999999)]);
  ZipCodeRanges.Add('DF', [
    TZipCodeRange.Create(70000000, 72799999),
    TZipCodeRange.Create(73000000, 73699999)
  ]);
  ZipCodeRanges.Add('ES', [TZipCodeRange.Create(29000000, 29999999)]);
  ZipCodeRanges.Add('GO', [
    TZipCodeRange.Create(72800000, 72999999),
    TZipCodeRange.Create(73700000, 76799999)
  ]);
  ZipCodeRanges.Add('MA', [TZipCodeRange.Create(65000000, 65999999)]);
  ZipCodeRanges.Add('MT', [TZipCodeRange.Create(78000000, 78899999)]);
  ZipCodeRanges.Add('MS', [TZipCodeRange.Create(79000000, 79999999)]);
  ZipCodeRanges.Add('MG', [TZipCodeRange.Create(30000000, 39999999)]);
  ZipCodeRanges.Add('PA', [TZipCodeRange.Create(66000000, 68899999)]);
  ZipCodeRanges.Add('PB', [TZipCodeRange.Create(58000000, 58999999)]);
  ZipCodeRanges.Add('PR', [TZipCodeRange.Create(80000000, 87999999)]);
  ZipCodeRanges.Add('PE', [TZipCodeRange.Create(50000000, 56999999)]);
  ZipCodeRanges.Add('PI', [TZipCodeRange.Create(64000000, 64999999)]);
  ZipCodeRanges.Add('RJ', [TZipCodeRange.Create(20000000, 28999999)]);
  ZipCodeRanges.Add('RN', [TZipCodeRange.Create(59000000, 59999999)]);
  ZipCodeRanges.Add('RS', [TZipCodeRange.Create(90000000, 99999999)]);
  ZipCodeRanges.Add('RO', [TZipCodeRange.Create(76800000, 76999999)]);
  ZipCodeRanges.Add('RR', [TZipCodeRange.Create(69300000, 69399999)]);
  ZipCodeRanges.Add('SC', [TZipCodeRange.Create(88000000, 89999999)]);
  ZipCodeRanges.Add('SP', [TZipCodeRange.Create(1000000, 19999999)]);
  ZipCodeRanges.Add('SE', [TZipCodeRange.Create(49000000, 49999999)]);
  ZipCodeRanges.Add('TO', [TZipCodeRange.Create(77000000, 77999999)]);

finalization

  ZipCodeRanges.Free;

end.
