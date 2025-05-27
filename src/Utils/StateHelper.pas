unit StateHelper;

interface

function NormalizeState(const State: string): string;

implementation

uses
  System.SysUtils;

function NormalizeState(const State: string): string;
begin
  Result := LowerCase(State.Trim);

  if (Result = 'acre') then Result := 'AC'
  else if (Result = 'alagoas') then Result := 'AL'
  else if (Result = 'amapá') then Result := 'AP'
  else if (Result = 'amazonas') then Result := 'AM'
  else if (Result = 'bahia') then Result := 'BA'
  else if (Result = 'ceará') then Result := 'CE'
  else if (Result = 'distrito federal') then Result := 'DF'
  else if (Result = 'espírito santo') then Result := 'ES'
  else if (Result = 'goiás') then Result := 'GO'
  else if (Result = 'maranhão') then Result := 'MA'
  else if (Result = 'mato grosso') then Result := 'MT'
  else if (Result = 'mato grosso do sul') then Result := 'MS'
  else if (Result = 'minas gerais') then Result := 'MG'
  else if (Result = 'pará') then Result := 'PA'
  else if (Result = 'paraíba') then Result := 'PB'
  else if (Result = 'paraná') then Result := 'PR'
  else if (Result = 'pernambuco') then Result := 'PE'
  else if (Result = 'piauí') then Result := 'PI'
  else if (Result = 'rio de janeiro') then Result := 'RJ'
  else if (Result = 'rio grande do norte') then Result := 'RN'
  else if (Result = 'rio grande do sul') then Result := 'RS'
  else if (Result = 'rondônia') then Result := 'RO'
  else if (Result = 'roraima') then Result := 'RR'
  else if (Result = 'santa catarina') then Result := 'SC'
  else if (Result = 'são paulo') then Result := 'SP'
  else if (Result = 'sergipe') then Result := 'SE'
  else if (Result = 'tocantins') then Result := 'TO';
end;

end.

