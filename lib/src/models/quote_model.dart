part of 'models.dart';

/// class representation of a `Quote`
class Quoatation extends Equatable {
  final String quotation;
  final String quotee;

  const Quoatation({
    required this.quotation,
    required this.quotee,
  });

  @override
  List<Object?> get props => [quotation, quotee];
}
