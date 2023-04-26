import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  String _userEmail = '';
  String _userName = '';
  String _userPassword = '';

  _trySubmit() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      _formKey.currentState?.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return 'Please enter valid email address';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(labelText: 'Email address'),
                      onSaved: (value) => _userEmail = value!,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty || value.length < 4) {
                          return 'Please enter at least 4 characters';
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(labelText: 'Username'),
                      onSaved: (value) => _userName = value!,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty || value.length < 7) {
                          return 'Password must be at least 7 characters';
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(labelText: 'Password'),
                      obscureText: true,
                      onSaved: (value) => _userPassword = value!,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      onPressed: _trySubmit,
                      child: const Text('Login'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Create new account'),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
