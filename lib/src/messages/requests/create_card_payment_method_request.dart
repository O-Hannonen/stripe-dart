part of '../../../messages.dart';

/// https://stripe.com/docs/api/payment_methods/attach
@JsonSerializable()
class CreateCardPaymentMethodRequest {
  /// The type of payment method.
  static const String type = 'card';

  /// The card this that will be created
  final Card card;

  CreateCardPaymentMethodRequest({
    required this.card,
  });

  factory CreateCardPaymentMethodRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCardPaymentMethodRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCardPaymentMethodRequestToJson(this);
}
