part of '../../messages.dart';

/// https://stripe.com/docs/api/invoices/line_item
@JsonSerializable()
class InvoiceSettings extends Message {
  @JsonKey(name: 'default_payment_method')
  final String? defaultPaymentMethod;

  InvoiceSettings({
    required this.defaultPaymentMethod,
  });

  factory InvoiceSettings.fromJson(Map<String, dynamic> json) =>
      _$InvoiceSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceSettingsToJson(this);
}
