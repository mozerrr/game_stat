import 'package:flutter/material.dart';
import 'package:game_stat/presentation/screens/games_history_screen.dart';
import 'package:game_stat/presentation/screens/profile_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Helvetica'),
      home: _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatefulWidget {
  @override
  __HomeScreenState createState() => __HomeScreenState();
}

class __HomeScreenState extends State<_HomeScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _screens = [
    GamesHistoryScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.history_rounded),
            label: 'Game History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
