part of '../../../messages.dart';

/// https://stripe.com/docs/api/setup_intents/confirm
@JsonSerializable()
class ConfirmSetupIntentRequest {
  final String id;

  @JsonKey(name: 'payment_method')
  final String? paymentMethod;

  ConfirmSetupIntentRequest({
    required this.id,
    this.paymentMethod,
  });

  factory ConfirmSetupIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmSetupIntentRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ConfirmSetupIntentRequestToJson(this)..remove('id');
}
