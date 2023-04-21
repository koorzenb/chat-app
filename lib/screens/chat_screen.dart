import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        builder: (ctx, streamSnapshot) {
          if (streamSnapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final documents = streamSnapshot.data!.docs;
          return ListView.builder(
            itemCount: documents.length,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(documents[index]['text']),
            ),
          );
        },
        stream: FirebaseFirestore.instance.collection('chats/Is8oosufqhCf1BaQuMCx/messages').snapshots(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
