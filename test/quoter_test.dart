import 'dart:math';

import 'package:flutter_test/flutter_test.dart';

import 'package:quoter/quoter.dart';
import 'package:quoter/src/repositories/repositories.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'quoter_test.mocks.dart';
import 'resources/test_const.dart';

@GenerateMocks([QuoteRepository, Random])
void main() {
  QuoteRepository _mockQuoteRepository = MockQuoteRepository();
  Random _mockRandom = MockRandom();

  group("Quoter", () {
    when(_mockQuoteRepository.getQuotes()).thenAnswer((_) => ktestQuoteData);

    test("uses 'QuoteLocalRepository' when not specified", () {
      expect(const Quoter().quoteRepository, isA<QuoteLocalRepository>());
    });

    test("returns a list of quotes on get allQuotes", () async {
      Quoter quoter = Quoter(quoteRepository: _mockQuoteRepository);

      List<Quote> _quotes = quoter.allQuotes;

      expect(_quotes, ktestQuoteData);
    });

    test("returns random quote on get random quote", () async {
      Quoter quoter = Quoter(quoteRepository: _mockQuoteRepository);

      when(_mockRandom.nextInt(ktestQuoteData.length)).thenReturn(0);

      Quote firstQuote = quoter.getRandomQuote(_mockRandom);

      expect(quoter.getRandomQuote(_mockRandom), firstQuote);

      when(_mockRandom.nextInt(ktestQuoteData.length)).thenReturn(1);

      expect(quoter.getRandomQuote(_mockRandom), isNot(firstQuote));
    });
  });
}
