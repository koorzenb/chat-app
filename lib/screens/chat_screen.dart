import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(8.0),
          child: const Text('this works'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance.collection('chats/Is8oosufqhCf1BaQuMCx/messages').snapshots().listen((data) {
            print(data.docs[0]['text']);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
