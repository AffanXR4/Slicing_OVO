import 'package:flutter/material.dart';
import 'home_page.dart';
import 'profile_page.dart';

void main() {
  runApp(const OvoApp());
}

class OvoApp extends StatelessWidget {
  const OvoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OVO App',
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
  ];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      
    );
  }
}