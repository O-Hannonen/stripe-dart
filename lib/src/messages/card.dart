part of '../../../messages.dart';

@JsonSerializable()
class Card {
  /// The expiration month of the card.
  @JsonKey(name: 'exp_month')
  final int expMonth;

  /// The expiration year of the card
  @JsonKey(name: 'exp_year')
  final int expYear;

  /// The card number.
  @JsonKey(name: 'number')
  final int number;

  /// The CVC number for the card.
  @JsonKey(name: 'cvc')
  final int cvc;

  Card({
    required this.expMonth,
    required this.expYear,
    required this.number,
    required this.cvc,
  });

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  Map<String, dynamic> toJson() => _$CardToJson(this);
}
