import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:example/main.dart';
import 'package:quoter/quoter.dart';

import 'widget_test.mocks.dart';

@GenerateMocks([Quoter])
void main() {
  MockQuoter mockQuoter = MockQuoter();
  const Quote quote1 = Quote(quotation: "test", quotee: "Idrees");
  const Quote quote2 = Quote(quotation: "test", quotee: "Idrees");
  const List<Quote> getAllQuotes = [quote1, quote2];

  testWidgets('Generate quote smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: QuotePage(
          title: "My Page",
          quoter: mockQuoter,
        ),
      ),
    );

    expect(
      find.text('Tap the button to generate random quote.'),
      findsOneWidget,
    );
    expect(find.text(''), findsOneWidget);

    when(mockQuoter.getAllQuotes).thenReturn(getAllQuotes);

    when(mockQuoter.getRandomQuote()).thenReturn(quote1);

    // Tap the button and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that app displays [quote1]
    expect(find.text(quote1.quotation), findsOneWidget);
    expect(find.text(quote1.quotee), findsOneWidget);

    when(mockQuoter.getRandomQuote()).thenReturn(quote2);

    // Tap the button and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that app displays [quote2]
    expect(find.text(quote2.quotation), findsOneWidget);
    expect(find.text(quote2.quotee), findsOneWidget);
  });
}
