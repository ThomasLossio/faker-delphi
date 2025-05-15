unit Faker;

interface

type
  TFaker = class
  private

  public
    class function FirstName(IsMale: Boolean = True): string;
    class function LastName: string; static;
    class function FullName(IsMale: Boolean = True): string;
    class function JobTitle(IsMale: Boolean = True): string;
    class function MaritalStatus(IsMale: Boolean = True): string;
  end;

implementation

uses
  System.SysUtils,
  Person,
  Job;

class function TFaker.FirstName(IsMale: Boolean): string;
begin
  Result := Person.RandomFirstName(IsMale);
end;

class function TFaker.LastName(): string;
begin
  Result := Person.RandomLastName();
end;

class function TFaker.FullName(IsMale: Boolean): string;
begin
  Result := Person.RandomFullName(IsMale);
end;

class function TFaker.JobTitle(IsMale: Boolean): string;
begin
  Result := Job.RandomJobTitle(IsMale);
end;

class function TFaker.MaritalStatus(IsMale: Boolean): string;
begin
  Result := Person.RandomMaritalStatus(IsMale);
end;



end.
