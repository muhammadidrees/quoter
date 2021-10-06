import 'package:flutter_test/flutter_test.dart';
import 'package:quoter/src/consts.dart';
import 'package:quoter/src/quote_repository.dart';
import 'package:quoter/src/models/models.dart';

void main() {
  QuoteLocalRepository _quoteLocalRepository = QuoteLocalRepository();

  group("QuoteLocalRepository", () {
    test("user 'kquoteJsonFilePath' when not specified", () {
      expect(QuoteLocalRepository().filePath, kquoteJsonFilePath);
    });

    test("gets a list of Quotes on getQuotes", () {
      List<Quote> quoteList = _quoteLocalRepository.getQuotes();

      expect(quoteList, isA<List<Quote>>());
    });
  });
}
