unit PersonFactory;

interface

uses
  PersonModel;

function CreateRandomPerson(IsMale: Boolean): TPerson;

implementation

uses
  PersonModule, JobModule;

function CreateRandomPerson(IsMale: Boolean): TPerson;
begin
  Result.FirstName := RandomFirstName(IsMale);
  Result.LastName := RandomLastName;
  Result.FullName := Result.FirstName + ' ' + Result.LastName;
  Result.JobTitle := RandomJobTitle(IsMale);
  Result.MaritalStatus := RandomMaritalStatus(IsMale);
end;

end.

