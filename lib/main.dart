import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
      home: const ChatScreen(),
    );
  }
}


// remember: It wont work as his version. The idea here is to follow him, but learn how to resolve on your own. That is how you will learn