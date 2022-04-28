// ignore_for_file: avoid_print

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import '../store.dart';

class Auth {
  Account account = Account(client);

  void createUser(
      String email, String password, String name, String userId) async {
    try {
      User user = await account.create(
          userId: userId, email: email, password: password, name: name);
      print(user);
    } catch (e) {
      print(e);
    }
  }
}
