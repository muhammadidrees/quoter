part of 'entity.dart';

/// Data represention of `Quote` from a local
/// json data file
class QuoteLocalEntity extends Equatable {
  final String quotation;
  final String quotee;

  const QuoteLocalEntity({
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

  @override
  List<Object?> get props => [quotation, quotee];
}
