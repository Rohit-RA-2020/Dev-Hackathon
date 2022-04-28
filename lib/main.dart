import 'package:dev_hackathon/services/auth.dart';
import 'package:dev_hackathon/store.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
  client
          .setEndpoint('http://10.0.2.2:60/v1') // Your Appwrite Endpoint
          .setProject('62696c26dd5d38446c91') // Your project ID
          .setSelfSigned(
              status:
                  true) // For self signed certificates, only use for development
      ;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Auth().createUser('ranjan@gmail.com', 'hello123', 'Sample User', 'sa');
      }),
    );
  }
}
