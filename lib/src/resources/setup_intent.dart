import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class SetupIntentResource extends Resource<SetupIntent> {
  SetupIntentResource(Client client) : super(client);

  Future<SetupIntent> create(CreateSetupIntentRequest request) async {
    final response = await post(
      'setup_intents',
      data: request.toJson(),
    );

    return SetupIntent.fromJson(response);
  }
}
