part of 'models.dart';

/// class representation of a `Quote`
class Quote extends Equatable {
  final String quotation;
  final String quotee;

  const Quote({
    required this.quotation,
    required this.quotee,
  });

  @override
  List<Object?> get props => [quotation, quotee];
}
