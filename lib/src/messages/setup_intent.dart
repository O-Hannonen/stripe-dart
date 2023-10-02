part of '../../messages.dart';

/// https://stripe.com/docs/api/payment_methods/object
@JsonSerializable()
class SetupIntent extends Message {
  /// Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  final Map<String, dynamic>? metadata;

  /// Unique identifier for the object.
  final String id;

  /// The ID of the Customer to which this PaymentMethod is saved. This will not be set when the PaymentMethod has not been saved to a Customer.
  final String? customer;

  @JsonKey(name: 'payment_method')
  final String? paymentMethod;

  @JsonKey(name: 'client_secret')
  final String? clientSecret;

  final PaymentIntentStatus? status;

  SetupIntent({
    this.metadata,
    required this.id,
    this.customer,
    this.paymentMethod,
    this.clientSecret,
    this.status,
  });

  factory SetupIntent.fromJson(Map<String, dynamic> json) =>
      _$SetupIntentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SetupIntentToJson(this);
}

enum PaymentIntentStatus {
  @JsonValue('requires_payment_method')
  requiresPaymentMethod,

  @JsonValue('requires_confirmation')
  requiresConfirmation,

  @JsonValue('requires_action')
  requiresAction,

  @JsonValue('processing')
  processing,

  @JsonValue('canceled')
  canceled,

  @JsonValue('succeeded')
  succeeded,
}
