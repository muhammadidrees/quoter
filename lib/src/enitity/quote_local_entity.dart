part of 'entity.dart';

/// Data represention of `Quote` from a local
/// json data file
class QuoteLocalEntity {
  final String quotation;
  final String quotee;

  QuoteLocalEntity({
    required this.quotation,
    required this.quotee,
  });

  factory QuoteLocalEntity.fromJson(Map<String, dynamic> json) =>
      QuoteLocalEntity(
        quotation: json['quotation']!,
        quotee: json['quotee']!,
      );

  Map<String, dynamic> toJson() => {
        "quotation": quotation,
        "quotee": quotee,
      };
}
