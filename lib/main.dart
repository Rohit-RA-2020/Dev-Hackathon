import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/app.dart';

final appwriteClientProvider = Provider<Client>((ref) {
  Client client = Client();
  client
          .setEndpoint('http://10.0.2.2:60/v1') // Your Appwrite Endpoint
          .setProject('62696c26dd5d38446c91') // Your project ID
          .setSelfSigned() // Use only on dev mode with a self-signed SSL cert
      ;
  return client;
});

final appwriteAccountProvider = Provider<Account>((ref) {
  final client = ref.watch(appwriteClientProvider);
  return Account(client);
});

void main() {
  runApp(const ProviderScope(child: MyApp()));
}
