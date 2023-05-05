import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/screens/auth_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // https://console.firebase.google.com/project/flutter-chat-app-75c3b/firestore/data/~2Fchats~2FIs8oosufqhCf1BaQuMCx~2Fmessages~2Ff2pNawCD3ajk8cFC89sg

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
          buttonTheme: ButtonTheme.of(context).copyWith(
            buttonColor: Colors.blue,
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: Colors.blue,
              onPrimary: Colors.white,
              secondary: Colors.lightBlueAccent,
              onSecondary: Colors.white10,
              error: Colors.red,
              onError: Colors.white,
              background: Colors.blue.shade800,
              onBackground: Colors.white,
              surface: Colors.grey,
              onSurface: Colors.grey.shade700)),
      home: const AuthScreen(),
    );
  }
}


// remember: It wont work as his version. The idea here is to follow him, but learn how to resolve on your own. That is how you will learn