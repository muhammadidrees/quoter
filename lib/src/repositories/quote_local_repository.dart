part of 'repositories.dart';

class QuoteLocalRepository extends QuoteRepository {
  final List<Map<String, dynamic>> quoteData;

  const QuoteLocalRepository({
    this.quoteData = kquoteData,
  });

  @override
  List<Quote> getQuotes() {
    return quoteData
        .map((json) => Quote.fromLocalEntitiy(QuoteLocalEntity.fromJson(json)))
        .toList();
  }
}
