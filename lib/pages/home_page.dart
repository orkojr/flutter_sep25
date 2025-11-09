import 'package:flutter/material.dart';
import 'package:todo_list_app/pages/actus.dart';
import 'package:todo_list_app/pages/call.dart';
import 'package:todo_list_app/pages/communaute.dart';
import 'package:todo_list_app/pages/discussion.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; // État pour suivre l'onglet actuel

  // Liste des pages correspondantes
  final List<Widget> _pages = [
    DiscussionPage(),
    ActusPage(),
    CommunautePage(),
    CallPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: _pages[_currentIndex], // Affiche la page actuelle

      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(icon: Icons.chat, label: "Discussions", index: 0),
            _buildNavItem(icon: Icons.notifications, label: "Actus", index: 1),
            _buildNavItem(
              icon: Icons.people_alt_outlined,
              label: "Communautes",
              index: 2,
            ),
            _buildNavItem(icon: Icons.call, label: "Appels", index: 3),
          ],
        ),
      ),
    );
  }

  // Méthode pour construire les éléments de navigation
  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    bool isSelected = _currentIndex == index;
    return GestureDetector(
      onTap: () => setState(() => _currentIndex = index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isSelected ? Colors.teal : Colors.grey),
          Text(
            label,
            style: TextStyle(color: isSelected ? Colors.teal : Colors.grey),
          ),
        ],
      ),
    );
  }
}
