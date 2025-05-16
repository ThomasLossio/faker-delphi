unit JobModule;

interface

function RandomJobTitle(IsMale: Boolean): string;

implementation

uses
  System.SysUtils,
  JobData;

function RandomJobTitle(IsMale: Boolean): string;
var
  Job: TJobTitle;
begin
  Job := JOB_TITLES[Random(Length(JOB_TITLES))];
  if IsMale then
    Result := Job.Masculino
  else
    Result := Job.Feminino;
end;

end.

