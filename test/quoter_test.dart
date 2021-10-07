import 'package:flutter_test/flutter_test.dart';

import 'package:quoter/quoter.dart';
import 'package:quoter/src/repositories/repositories.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'quoter_test.mocks.dart';

@GenerateMocks([QuoteLocalRepository])
void main() {
  Quoter quoter = const Quoter();

  group("Quoter", () {
    test("Uses 'QuoteLocalRepository' when not specified", () {
      expect(const Quoter().quoteRepository, isA<QuoteLocalRepository>());
    });
  });
}
