# Quoter

A flutter pacakge that returns random quote from a community contributed quotation repository.

## Getting started

Simply add `quoter` to the dependencies of the `pubspec.yaml`

```yaml
dependencies:
  quoter: <latest version>
```

## Usage
The package return quote in the form of `Quote` model. A `Quote` consist of two string values.

```dart
// the quote itself
final String quotation;

// the person with whom the quote is associated with
final String quotee;
```

To use the package create instance of the `Quoter` class than use method `getRandomQuote()` to get a random quote.

```dart
Quoter quoter = Quoter();

// gets a random quote
Quote randomQuote = quoter.getRandomQuote();
```

All quotes can also be accessed using the getter `getAllQuotes`.

```dart
// gets list of all quotes
List<Quote> getAllQuotes = quoter.getAllQuotes;
```

## Contribution

Do you have a favorite quote? Contribute to this repo and share it with all of us. :smile:

Read the [guide](https://github.com/muhammadidrees/quoter/blob/master/CONTRIBUTING.md) for more details.

## Maintainers
- [Muhammad Idrees](https://github.com/muhammadIdrees)
