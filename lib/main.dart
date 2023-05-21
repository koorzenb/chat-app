import 'screens/auth_screen.dart';
import 'screens/chat_screen.dart';
import 'screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

Future<void> main() async {
  // https://console.firebase.google.com/project/flutter-chat-app-75c3b/firestore/data/~2Fchats~2FIs8oosufqhCf1BaQuMCx~2Fmessages~2Ff2pNawCD3ajk8cFC89sg
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData().copyWith(useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 63, 17, 177))),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          }

          if (snapshot.hasData) {
            return const ChatScreen();
          }
          return const AuthScreen();
        },
      ),
    );
  }
}
