part of 'repositories.dart';

abstract class QuoteRepository {
  Future<List<Quote>> getQuotes();
}
