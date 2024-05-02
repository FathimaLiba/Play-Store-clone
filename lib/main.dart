import 'package:flutter/material.dart';
import 'package:project_one/screens/bottom_screen.dart';
import 'package:project_one/screens/gameScreen.dart';
import 'package:project_one/widgets/game_listview.dart';

void main() {
  runApp(const myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sample App",
      home: BottomScreen(),
    );
  }
}
