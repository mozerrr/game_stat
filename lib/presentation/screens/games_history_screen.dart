import 'package:flutter/material.dart';

class GamesHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //title: 'Welcome to Flutter',
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Games History',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      primary: true,
      body: Center(child: Text('as')),
    );
  }
}
