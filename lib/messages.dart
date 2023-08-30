import 'package:json_annotation/json_annotation.dart';
import 'package:stripe/src/messages/converters.dart';
import 'package:stripe/src/messages/enums/collection_method.dart';
import 'package:stripe/src/messages/enums/invoice_status.dart';

import 'src/messages/enums/payment_behavior.dart';

part 'messages.g.dart';
part 'src/messages/_message.dart';
part 'src/messages/address.dart';
part 'src/messages/balance_transaction.dart';
part 'src/messages/charge.dart';
part 'src/messages/checkout_session.dart';
part 'src/messages/customer.dart';
part 'src/messages/data_list.dart';
part 'src/messages/event.dart';
part 'src/messages/payment_intent.dart';
part 'src/messages/portal_session.dart';
part 'src/messages/price.dart';
part 'src/messages/product.dart';
part 'src/messages/refund.dart';
part 'src/messages/invoice.dart';
part 'src/messages/payment_method.dart';
part 'src/messages/invoice_line_item.dart';
part 'src/messages/usage_record.dart';
part 'src/messages/create_subscription_item_inline.dart';
part 'src/messages/period.dart';
part 'src/messages/usage_record_summary.dart';
part 'src/messages/shipping_specification.dart';
part 'src/messages/requests/create_invoice.dart';
part 'src/messages/requests/update_invoice.dart';
part 'src/messages/requests/list_usage_record_summaries.dart';
part 'src/messages/requests/list_invoices.dart';
part 'src/messages/requests/create_usage_record.dart';
part 'src/messages/requests/create_checkout_session.dart';
part 'src/messages/requests/create_customer.dart';
part 'src/messages/requests/create_payment_intent.dart';
part 'src/messages/requests/create_portal_session.dart';
part 'src/messages/requests/create_refund.dart';
part 'src/messages/requests/list_prices.dart';
part 'src/messages/requests/list_products.dart';
part 'src/messages/requests/list_subscriptions.dart';
part 'src/messages/requests/update_customer.dart';
part 'src/messages/requests/update_subscription.dart';
part 'src/messages/requests/create_subscription.dart';
part 'src/messages/requests/attach_payment_method.dart';
part 'src/messages/subscription.dart';
part 'src/messages/subscription_item.dart';
part 'src/messages/requests/create_card_payment_method_request.dart';
part 'src/messages/card.dart';
