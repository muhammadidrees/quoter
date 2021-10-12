import 'package:flutter/material.dart';
import 'package:quoter/quoter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quoter Demo',
      home: QuotePage(title: 'Quoter Demo'),
    );
  }
}

class QuotePage extends StatefulWidget {
  const QuotePage({
    Key? key,
    required this.title,
    this.quoter = const Quoter(),
  }) : super(key: key);

  final String title;
  final Quoter quoter;

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  Quote? _quote;

  void _generateRandomQuote() {
    setState(() {
      _quote = widget.quoter.getRandomQuote();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _quote?.quotee ??
                  'You have to push the button to generate random quote.',
            ),
            Text(
              _quote?.quotation ?? "",
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _generateRandomQuote,
        tooltip: 'generate quote',
        child: const Icon(Icons.add),
      ),
    );
  }
}
