program TestConsoleApp;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Faker in '..\src\Faker.pas',
  JobData in '..\src\Data\JobData.pas',
  PersonData in '..\src\Data\PersonData.pas',
  Job in '..\src\Modules\Job.pas',
  Person in '..\src\Modules\Person.pas';

begin
  try
    Writeln('Testing Faker Delphi');
    Writeln('### PERSON ###');
    Writeln('First Name Male: ', TFaker.FirstName(True));
    Writeln('First Name Female: ', TFaker.FirstName(False));
    Writeln('Last Name Male: ', TFaker.LastName());
    Writeln('Full Name Male: ', TFaker.FullName(True));
    Writeln('Full Name Female: ', TFaker.FullName(False));
    Writeln('Marital Status Male: ', TFaker.MaritalStatus(True));
    Writeln('Marital Status Female: ', TFaker.MaritalStatus(False));
    Writeln('Job Title Male: ', TFaker.JobTitle(True));
    Writeln('Job Title Female: ', TFaker.JobTitle(False));
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  Readln;
end.
