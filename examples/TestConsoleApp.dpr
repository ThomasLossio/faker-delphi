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
  PersonFactory in '..\src\Factories\PersonFactory.pas',
  LocationData in '..\src\Data\LocationData.pas',
  LocationModule in '..\src\Modules\LocationModule.pas',
  StateData in '..\src\Data\StateData.pas',
  CityData in '..\src\Data\CityData.pas';

var
  P: TPerson;
  state: TStateAbbr;

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

    Writeln('=== LOCATION DATA ===');
    Writeln('Address Prefix: ', RandomAddressPrefix);
    Writeln('Address Suffix: ', RandomAddressSuffix);
    Writeln('Address Number Suffix: ', RandomAddressNumberSuffix);
    Writeln('Neighborhood: ', RandomNeighborhood);
    Writeln('Address Complement: ', RandomAddressComplement);
    Writeln;

    Writeln('=== STATE AND CITY ===');
    State := RandomState;
    Writeln('Random State: ', State.State, ' (', State.Abbr, ')');
    Writeln('Random City (any): ', RandomCity);
    Writeln('Random City by State (name): ', RandomCityByState('Bahia'));
    Writeln('Random City by State (abbr): ', RandomCityByState('SP'));
    Writeln('Random City by State (unknown): ', RandomCityByState('XX'));
    Writeln;

    Writeln('=== COUNTRY AND NATIONALITY ===');
    Writeln('Random Country: ', RandomCountries);
    Writeln('Random Nationality: ', RandomNationalities);
    Writeln;


    Writeln
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  Readln;
end.
