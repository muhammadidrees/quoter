import 'models/models.dart';

abstract class QuoteRepository {
  List<Quote> getQuotes();
}

class QuoteLocalRepository extends QuoteRepository {
  @override
  List<Quote> getQuotes() {
    return [];
  }
}
