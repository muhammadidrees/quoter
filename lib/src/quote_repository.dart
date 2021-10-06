import 'package:quoter/src/consts.dart';

import 'models/models.dart';

abstract class QuoteRepository {
  List<Quote> getQuotes();
}

class QuoteLocalRepository extends QuoteRepository {
  final String filePath;

  QuoteLocalRepository({
    this.filePath = kquoteJsonFilePath,
  });

  @override
  List<Quote> getQuotes() {
    return [];
  }
}
