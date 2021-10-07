import 'package:quoter/src/repositories/repositories.dart';

class Quoter {
  final QuoteRepository quoteRepository;

  const Quoter({this.quoteRepository = const QuoteLocalRepository()});
}
