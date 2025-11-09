import 'package:flutter/material.dart';
import 'package:todo_list_app/pages/actus.dart';
import 'package:todo_list_app/pages/call.dart';
import 'package:todo_list_app/pages/communaute.dart';
import 'package:todo_list_app/pages/conversation_detail.dart';
import 'package:todo_list_app/pages/home_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      // darkTheme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      // home: const MyHomePage(),
      initialRoute: '/',// lorsque c'est activer il faut definir les routes
      routes: {// lorsque c'est activer il faut commenter home
        '/': (context) => const MyHomePage(),
        '/actus': (context) => const ActusPage(),
        '/communaute': (context) => const CommunautePage(),
        '/conversation_detail': (context) => const ConversationDetailPage(),
        '/call': (context) => const CallPage(),
      },
    );
  }
}
