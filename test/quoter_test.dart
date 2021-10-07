import 'package:flutter_test/flutter_test.dart';

import 'package:quoter/quoter.dart';
import 'package:quoter/src/repositories/repositories.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'quoter_test.mocks.dart';
import 'resources/test_const.dart';

@GenerateMocks([QuoteRepository])
void main() {
  Quoter quoter = Quoter(quoteRepository: MockQuoteRepository());

  group("Quoter", () {
    test("uses 'QuoteLocalRepository' when not specified", () {
      expect(const Quoter().quoteRepository, isA<QuoteLocalRepository>());
    });

    test("returns a list of quotes on getAllQuotes()", () async {
      when(quoter.getAllQuotes()).thenAnswer((_) async => ktestQuoteData);

      List<Quote> _quotes = await quoter.getAllQuotes();

      expect(_quotes, []);
    });
  });
}
