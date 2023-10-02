part of '../../../messages.dart';

/// https://stripe.com/docs/api/checkout/customers/update

@JsonSerializable()
class UpdateCustomerRequest extends _CustomerRequest {
  /// Unique identifier for the object.
  final String id;

  @JsonKey(name: 'invoice_settings')
  final InvoiceSettings? invoiceSettings;

  UpdateCustomerRequest({
    required this.id,
    String? description,
    String? email,
    Map<String, String>? metadata,
    String? name,
    String? phoneNumber,
    this.invoiceSettings,
  }) : super(
          description: description,
          email: email,
          metadata: metadata,
          name: name,
          phoneNumber: phoneNumber,
        );

  factory UpdateCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomerRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdateCustomerRequestToJson(this)..remove('id');
}
