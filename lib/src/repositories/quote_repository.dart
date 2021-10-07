part of 'repositories.dart';

abstract class QuoteRepository {
  const QuoteRepository();

  Future<List<Quote>> getQuotes();
}
