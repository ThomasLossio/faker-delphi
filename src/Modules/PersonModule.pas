unit PersonModule;

interface

function RandomFirstName(IsMale: Boolean = True): string;
function RandomLastName: string;
function RandomFullName(IsMale: Boolean = True): string;
function RandomMaritalStatus(IsMale: Boolean = True): string;

implementation

uses
  System.SysUtils,
  PersonData;

function RandomFirstName(IsMale: Boolean): string;
begin
  if IsMale then
    Result := MALE_FIRST_NAMES[Random(Length(MALE_FIRST_NAMES))]
  else
    Result := FEMALE_FIRST_NAMES[Random(Length(FEMALE_FIRST_NAMES))];
end;

function RandomLastName: string;
begin
  Result := LAST_NAMES[Random(Length(LAST_NAMES))];
end;

function RandomFullName(IsMale: Boolean): string;
begin
  Result := RandomFirstName(IsMale) + ' ' + RandomLastName;
end;

function RandomMaritalStatus(IsMale: Boolean): string;
begin
  Result := MARITAL_STATUSES[Random(Length(MARITAL_STATUSES))];
  if IsMale then
    Result := Result + 'o'
  else
    Result := Result + 'a';
end;

end.

