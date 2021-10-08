import 'dart:math';

import 'repositories/repositories.dart';
import 'models/models.dart';

class Quoter {
  final QuoteRepository quoteRepository;

  const Quoter({this.quoteRepository = const QuoteLocalRepository()});

  List<Quote> get allQuotes => quoteRepository.getQuotes();

  Quote getRandomQuote([Random? randomizer]) {
    int randomIndex = _getRandomIndex(randomizer, allQuotes.length);

    return allQuotes[randomIndex];
  }

  int _getRandomIndex(Random? randomizer, int quoteListLength) {
    Random _randomizer = randomizer ?? Random();
    return _randomizer.nextInt(quoteListLength);
  }
}
