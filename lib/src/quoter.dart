import 'dart:math';

import 'repositories/repositories.dart';
import 'models/models.dart';

class Quoter {
  final QuoteRepository quoteRepository;

  const Quoter({this.quoteRepository = const QuoteLocalRepository()});

  Future<List<Quote>> get allQuotes async => quoteRepository.getQuotes();

  Future<Quote> getRandomQuote([Random? randomizer]) async {
    List<Quote> quotes = await allQuotes;

    int randomIndex = _getRandomIndex(randomizer, quotes.length);

    return quotes[randomIndex];
  }

  int _getRandomIndex(Random? randomizer, int quoteListLength) {
    Random _randomizer = randomizer ?? Random();
    return _randomizer.nextInt(quoteListLength);
  }
}
