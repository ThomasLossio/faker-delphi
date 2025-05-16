# Delphi Faker

A lightweight data faker library for Delphi, useful for testing, seeding databases, or generating sample data with Brazilian context.

This library is inspired by the structure of [faker.js](https://github.com/faker-js/faker), aiming for a modular design with support for multiple languages.

While the initial implementation focuses on Brazilian Portuguese (`pt-BR`), future versions will include additional locales and data types.

## Features

- First name, last name, and full name (male/female)
- Job title (gender-aware)
- Marital status (gender-aware)
- Full person object (`TPerson`) with composed data
- Clean architecture: Data, Modules, Models, Factories
- Future support for multiple locales

## Project Structure

```plaintext
src/
├── Data/              ← Static seed data (e.g., names, job titles)
├── Modules/           ← Functions like RandomFirstName, RandomJobTitle
├── Models/            ← Record types like TPerson
├── Factories/         ← Object generators like CreateRandomPerson
└── Faker.pas          ← Public interface of the library
```

## Example usage

```pascal
Procedure ExampleUsage;
var
  P: TPerson;
begin
  Writeln('=== SIMPLE PERSON DATA ===');
  Writeln('First Name (Male): ', TFaker.FirstName(True));
  Writeln('First Name (Female): ', TFaker.FirstName(False));
  Writeln('Last Name: ', TFaker.LastName);
  Writeln('Full Name (Male): ', TFaker.FullName(True));
  Writeln('Job Title (Female): ', TFaker.JobTitle(False));
  Writeln('Marital Status (Male): ', TFaker.MaritalStatus(True));
  Writeln;

  P := TFaker.CreateRandomPerson(False);
  Writeln('=== COMPOSED PERSON OBJECT ===');
  Writeln('Full Name: ', P.FullName);
  Writeln('Job Title: ', P.JobTitle);
  Writeln('Marital Status: ', P.MaritalStatus);
end;
```

## Locale

Currently using pt-BR as default.  
Function names and structure are in English to support internationalization in the future.

## Getting Started

1. Clone this repository.
2. Include src in your Delphi project's search path.
3. Start using the TFaker class.

# License

MIT © Thomas Lossio

---

Made with ☕, and a little bit of 🙃