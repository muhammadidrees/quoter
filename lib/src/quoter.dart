import 'repositories/repositories.dart';
import 'models/models.dart';

class Quoter {
  final QuoteRepository quoteRepository;

  const Quoter({this.quoteRepository = const QuoteLocalRepository()});

  Future<List<Quote>> get allQuotes async => quoteRepository.getQuotes();
}
