import 'package:flutter_test/flutter_test.dart';

import 'package:quoter/quoter.dart';
import 'package:quoter/src/repositories/repositories.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'quoter_test.mocks.dart';
import 'resources/test_const.dart';

@GenerateMocks([QuoteRepository])
void main() {
  QuoteRepository _mockQuoteRepository = MockQuoteRepository();

  group("Quoter", () {
    when(_mockQuoteRepository.getQuotes())
        .thenAnswer((_) async => ktestQuoteData);

    test("uses 'QuoteLocalRepository' when not specified", () {
      expect(const Quoter().quoteRepository, isA<QuoteLocalRepository>());
    });

    test("returns a list of quotes on get allQuotes", () async {
      Quoter quoter = Quoter(quoteRepository: _mockQuoteRepository);

      List<Quote> _quotes = await quoter.allQuotes;

      expect(_quotes, ktestQuoteData);
    });
  });
}
