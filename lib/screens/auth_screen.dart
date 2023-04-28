import 'package:chat_app/widgets/auth_form.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  void _submitAuthForm(String email, String password, String username, bool isLogin) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Theme.of(context).colorScheme.primary, body: AuthForm(_submitAuthForm));
  }
}
