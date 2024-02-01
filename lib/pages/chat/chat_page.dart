import 'package:flutter/material.dart';
import 'package:whatsapp_clone/customs/custom_ui.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.chat)),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CustomCard();
        },
        itemCount: 10,
      ),
    );
  }
}
