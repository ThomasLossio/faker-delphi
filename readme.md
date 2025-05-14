# Delphi Faker

A lightweight data faker library for Delphi, useful for testing, seeding databases, or generating sample data with Brazilian context.

This library is inspired by the structure of [faker.js](https://github.com/faker-js/faker), aiming for a modular design with support for multiple languages.

While the initial implementation focuses on Brazilian Portuguese (`pt-BR`), future versions will include additional locales and data types.

## Features (planned)

- Random names (first and last)
- Random city and state
- Lorem ipsum text
- Support for multiple languages in the future
- Easy to extend and modular

## Example usage

```pascal
Writeln('First Name: ', TFaker.FirstName);
```

## Getting Started

1. Clone this repository.
2. Include src in your Delphi project's search path.
3. Start using the TFaker class.

# License

MIT © Thomas Lossio

---

Made with ☕, and a little bit of 🙃