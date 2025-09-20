import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
        actions: [
          Icon(Icons.camera_alt, color: Colors.white),
          SizedBox(width: 20),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),

      body: Center(
        child: Text('Bienvenue sur WhatsApp', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
