import 'dart:convert';
import 'dart:io';

import 'package:quoter/src/consts.dart';

import 'models/models.dart';

abstract class QuoteRepository {
  Future<List<Quote>> getQuotes();
}

class QuoteLocalRepository extends QuoteRepository {
  final String filePath;

  QuoteLocalRepository({
    this.filePath = kquoteJsonFilePath,
  });

  @override
  Future<List<Quote>> getQuotes() async {
    return [];
  }

  Future<List<Map<String, dynamic>>> get jsonData async {
    String _fileData = await File(filePath).readAsString();
    return (json.decode(_fileData) as List)
        .map((e) => e as Map<String, dynamic>)
        .toList();
  }
}
