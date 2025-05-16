unit Faker;

interface

uses PersonModel, PersonFactory;

type
  TFaker = class
  private

  public
    class function FirstName(IsMale: Boolean = True): string;
    class function LastName: string; static;
    class function FullName(IsMale: Boolean = True): string;
    class function JobTitle(IsMale: Boolean = True): string;
    class function MaritalStatus(IsMale: Boolean = True): string;

    class function CreateRandomPerson(IsMale: Boolean = True): TPerson;
  end;

implementation

uses
  System.SysUtils,
  PersonModule,
  JobModule;

class function TFaker.FirstName(IsMale: Boolean): string;
begin
  Result := PersonModule.RandomFirstName(IsMale);
end;

class function TFaker.LastName(): string;
begin
  Result := PersonModule.RandomLastName();
end;

class function TFaker.FullName(IsMale: Boolean): string;
begin
  Result := PersonModule.RandomFullName(IsMale);
end;

class function TFaker.JobTitle(IsMale: Boolean): string;
begin
  Result := JobModule.RandomJobTitle(IsMale);
end;

class function TFaker.MaritalStatus(IsMale: Boolean): string;
begin
  Result := PersonModule.RandomMaritalStatus(IsMale);
end;

class function TFaker.CreateRandomPerson(IsMale: Boolean): TPerson;
begin
  Result := PersonFactory.CreateRandomPerson(IsMale);
end;



end.
