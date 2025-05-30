unit CityModuleTests;

interface

uses
  DUnitX.TestFramework, CityModule, System.SysUtils;

type
  [TestFixture]
  TCityModuleTests = class
  private
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure TesteRandomCity;
    [Test]
    [TestCase('Should be able to get Random Acre City','AC')]
    [TestCase('Should be able to get Random Ceará City','CE')]
    [TestCase('Should be able to get Random Paraíba City','PB')]
    [TestCase('Should be able to get Random Tocantins City','TO')]
    procedure TestRandomCityByState(const StateAbbr: string);
    [Test]
    procedure TestRandomCityByInvalidState;
  end;

implementation

procedure TCityModuleTests.Setup;
begin
end;

procedure TCityModuleTests.TearDown;
begin
end;

procedure TCityModuleTests.TestRandomCityByState(const StateAbbr: string);
var
  City: String;
begin
  City := RandomCityByState(StateAbbr);
  Assert.IsNotEmpty(City, Format('City for state %s should not be empty', [StateAbbr]));
end;

procedure TCityModuleTests.TestRandomCityByInvalidState;
var
  City: String;
begin
  City := RandomCityByState('XX');
  Assert.AreEqual('Estado não encontrado', City, Format('City for Invalid State should not be %s', [City]))
end;

procedure TCityModuleTests.TesteRandomCity;
var
  City: String;
begin
  City := RandomCity;
  Assert.IsNotEmpty(City, 'City should not be empty')
end;

initialization
  TDUnitX.RegisterTestFixture(TCityModuleTests);

end.
