part of 'repositories.dart';

class QuoteLocalRepository extends QuoteRepository {
  final String filePath;

  QuoteLocalRepository({
    this.filePath = kquoteJsonFilePath,
  });

  @override
  Future<List<Quote>> getQuotes() async {
    List<Map<String, dynamic>> _jsonData = await jsonData;

    return _jsonData
        .map((json) => Quote.fromLocalEntitiy(QuoteLocalEntity.fromJson(json)))
        .toList();
  }

  @visibleForTesting
  Future<List<Map<String, dynamic>>> get jsonData async {
    String _fileData = await File(filePath).readAsString();

    return (json.decode(_fileData) as List)
        .map((e) => e as Map<String, dynamic>)
        .toList();
  }
}
