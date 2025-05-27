{
  ZipCodeModel.pas
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
unit ZipCodeModel;

interface

type
  TZipCodeRange = record
    Min: Integer;
    Max: Integer;
    constructor Create(AMin, AMax: Integer);
  end;

implementation

constructor TZipCodeRange.Create(AMin, AMax: Integer);
begin
  Min := AMin;
  Max := AMax;
end;

end.
