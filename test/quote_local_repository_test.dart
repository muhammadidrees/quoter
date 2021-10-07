import 'package:flutter_test/flutter_test.dart';
import 'package:quoter/src/consts.dart';
import 'package:quoter/src/repositories/repositories.dart';
import 'package:quoter/src/models/models.dart';

import 'resources/test_const.dart';

void main() {
  String _testFilePath = "test/resources/quote_data.json";

  QuoteLocalRepository _quoteLocalRepository =
      QuoteLocalRepository(filePath: _testFilePath);

  group("QuoteLocalRepository", () {
    test("user 'kquoteJsonFilePath' when not specified", () {
      expect(const QuoteLocalRepository().filePath, kquoteJsonFilePath);
    });

    test("converts json file to map list", () async {
      List<Map<String, dynamic>> quoteMapList =
          await _quoteLocalRepository.jsonData;

      expect(quoteMapList, ktestFileData);
    });

    test("gets a list of Quotes on getQuotes", () async {
      List<Quote> quoteList = await _quoteLocalRepository.getQuotes();

      expect(quoteList, ktestQuoteData);
    });
  });
}
