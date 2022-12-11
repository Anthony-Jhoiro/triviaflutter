import 'package:flutter/material.dart';
import 'package:triviaflutter/ui/common/background.dart';
import 'package:triviaflutter/ui/pages/home/game/game_page.dart';
import 'package:triviaflutter/ui/pages/home/profile/profile_page.dart';
import 'package:triviaflutter/ui/pages/home/ranking/ranking_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _content = [
    const GamePage(),
    const RankingPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: CustomBackground(
          child: IndexedStack(
            index: _currentIndex,
            children: _content,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.casino),
            label: 'Jeu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Classement',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
