import 'package:flutter_test/flutter_test.dart';
import 'package:quoter/src/consts.dart';
import 'package:quoter/src/quote_repository.dart';
import 'package:quoter/src/models/models.dart';

void main() {
  String _testFilePath = "test/resources/quote_data.json";

  List<Map<String, dynamic>> _testFileData = [
    {"quotation": "I am the Boss", "quotee": "Muhammad Idrees"},
    {"quotation": "My name is Hamza", "quotee": "Muhammad Hamza"}
  ];

  QuoteLocalRepository _quoteLocalRepository =
      QuoteLocalRepository(filePath: _testFilePath);

  group("QuoteLocalRepository", () {
    test("user 'kquoteJsonFilePath' when not specified", () {
      expect(QuoteLocalRepository().filePath, kquoteJsonFilePath);
    });

    test("converts json file to map list", () async {
      List<Map<String, dynamic>> quoteMapList =
          await _quoteLocalRepository.jsonData;

      expect(quoteMapList, _testFileData);
    });

    test("gets a list of Quotes on getQuotes", () {
      List<Quote> quoteList = _quoteLocalRepository.getQuotes();

      expect(quoteList, isA<List<Quote>>());
    });
  });
}
