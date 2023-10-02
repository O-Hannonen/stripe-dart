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

  Future<SetupIntent> retrieve(String id) async {
    final response = await get(
      'setup_intents/$id',
    );

    return SetupIntent.fromJson(response);
  }
}
