import 'package:flutter/material.dart';
import 'screens/menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Family Coffee Order App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MenuScreen(),
    );
  }
}
