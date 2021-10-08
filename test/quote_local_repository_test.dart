import 'package:flutter_test/flutter_test.dart';
import 'package:quoter/data/data.dart';
import 'package:quoter/src/repositories/repositories.dart';
import 'package:quoter/src/models/models.dart';

import 'resources/test_const.dart';

void main() {
  QuoteLocalRepository _quoteLocalRepository =
      const QuoteLocalRepository(quoteData: ktestMapData);

  group("QuoteLocalRepository", () {
    test("uses 'kquoteData' when not specified", () {
      expect(const QuoteLocalRepository().quoteData, kquoteData);
    });

    test("gets a list of Quotes on getQuotes", () async {
      List<Quote> quoteList = _quoteLocalRepository.getQuotes();

      expect(quoteList, ktestQuoteData);
    });
  });
}
