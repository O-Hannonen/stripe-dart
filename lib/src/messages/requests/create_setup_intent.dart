part of '../../../messages.dart';

/// https://stripe.com/docs/api/setup_intents/create
@JsonSerializable()
class CreateSetupIntentRequest {
  /// The ID of the customer to which to create the setup intent for
  final String customer;

  final Usage usage;

  CreateSetupIntentRequest({
    required this.customer,
    this.usage = Usage.offSession,
  });

  factory CreateSetupIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSetupIntentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateSetupIntentRequestToJson(this);
}

enum Usage {
  /// Use on_session if you intend to only reuse the payment method when the customer is in your checkout flow.
  @JsonValue('on_session')
  onSession,

  /// Use off_session if your customer may or may not be in your checkout flow.
  @JsonValue('off_session')
  offSession,
}
