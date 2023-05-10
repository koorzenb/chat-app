import 'package:chat_app/screens/auth_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // https://console.firebase.google.com/project/flutter-chat-app-75c3b/firestore/data/~2Fchats~2FIs8oosufqhCf1BaQuMCx~2Fmessages~2Ff2pNawCD3ajk8cFC89sg

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData().copyWith(useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 63, 17, 177))),
      home: const AuthScreen(),
    );
  }
}
