unit StateModule;

interface

uses
  StateData,
  StateModel;

function RandomState(): string;
function RandomStateAbbr(): string;
function RandomFullState(): TStateAbbr;

implementation

function RandomState(): string;
var
  State: TStateAbbr;
begin
  State := STATES[Random(Length(STATES))];
  Result := State.State;
end;

function RandomStateAbbr(): string;
var
  State: TStateAbbr;
begin
  State := STATES[Random(Length(STATES))];
  Result := State.Abbr;
end;

function RandomFullState(): TStateAbbr;
begin
  Result := STATES[Random(Length(STATES))];
end;

end.
