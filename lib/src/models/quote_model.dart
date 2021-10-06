part of 'models.dart';

/// class representation of a `Quote`
class Quote extends Equatable {
  final String quotation;
  final String quotee;

  const Quote({
    required this.quotation,
    required this.quotee,
  });

  factory Quote.fromLocalEntitiy(QuoteLocalEntity entity) => Quote(
        quotation: entity.quotation,
        quotee: entity.quotee,
      );

  @override
  List<Object?> get props => [quotation, quotee];
}
