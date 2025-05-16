program TestConsoleApp;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Faker in '..\src\Faker.pas',
  JobData in '..\src\Data\JobData.pas',
  PersonData in '..\src\Data\PersonData.pas',
  JobModule in '..\src\Modules\JobModule.pas',
  PersonModule in '..\src\Modules\PersonModule.pas',
  PersonModel in '..\src\Models\PersonModel.pas',
  PersonFactory in '..\src\Factories\PersonFactory.pas';

var
  P: TPerson;

begin
  try
    Randomize;

    Writeln('Testing Faker Delphi');
    Writeln;

    Writeln('=== SIMPLE PERSON DATA ===');
    Writeln('First Name (Male): ', TFaker.FirstName(True));
    Writeln('First Name (Female): ', TFaker.FirstName(False));
    Writeln('Last Name: ', TFaker.LastName());
    Writeln('Full Name (Male): ', TFaker.FullName(True));
    Writeln('Full Name (Female): ', TFaker.FullName(False));
    Writeln('Marital Status (Male): ', TFaker.MaritalStatus(True));
    Writeln('Marital Status (Female): ', TFaker.MaritalStatus(False));
    Writeln('Job Title (Male): ', TFaker.JobTitle(True));
    Writeln('Job Title (Female): ', TFaker.JobTitle(False));
    Writeln;

    P := TFaker.CreateRandomPerson(True);
    Writeln('=== COMPOSED PERSON OBJECT ===');
    Writeln('===         MALE           ===');
    Writeln('First Name: ', P.FirstName);
    Writeln('Last Name: ', P.LastName);
    Writeln('Full Name: ', P.FullName);
    Writeln('Marital Status: ', P.MaritalStatus);
    Writeln('Job Title: ', P.JobTitle);
    Writeln;

    P := TFaker.CreateRandomPerson(False);
    Writeln('=== COMPOSED PERSON OBJECT ===');
    Writeln('===        FEMALE          ===');
    Writeln('First Name: ', P.FirstName);
    Writeln('Last Name: ', P.LastName);
    Writeln('Full Name: ', P.FullName);
    Writeln('Marital Status: ', P.MaritalStatus);
    Writeln('Job Title: ', P.JobTitle);
    Writeln;

    Writeln
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  Readln;
end.
