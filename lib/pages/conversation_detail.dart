import 'package:flutter/material.dart';

class ConversationDetailPage extends StatefulWidget {
  const ConversationDetailPage({super.key});

  @override
  State<ConversationDetailPage> createState() => _ConversationDetailPageState();
}

class _ConversationDetailPageState extends State<ConversationDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Conversation Detail')),
      body: const Center(child: Text('This is the conversation detail page.')),
    );
  }
}
