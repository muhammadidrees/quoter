part of 'repositories.dart';

abstract class QuoteRepository {
  const QuoteRepository();

  List<Quote> getQuotes();
}
