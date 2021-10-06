import 'models/models.dart';

abstract class QuoteRepository {
  List<Quote> getQuotes();
}
