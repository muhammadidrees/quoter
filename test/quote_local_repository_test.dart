import 'package:flutter_test/flutter_test.dart';
import 'package:quoter/src/quote_repository.dart';
import 'package:quoter/src/models/models.dart';

void main() {
  QuoteLocalRepository _quoteLocalRepository = QuoteLocalRepository();

  test("gets a list of Quotes on getQuotes", () {
    List<Quote> quoteList = _quoteLocalRepository.getQuotes();

    expect(quoteList, isA<List<Quote>>());
  });
}
