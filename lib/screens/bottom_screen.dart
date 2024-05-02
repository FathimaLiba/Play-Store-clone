import 'package:flutter/material.dart';
import 'package:project_one/screens/app_screen.dart';
import 'package:project_one/screens/book_screen.dart';
import 'package:project_one/screens/gameScreen.dart';
import 'package:project_one/screens/offer_screen.dart';

class BottomScreen extends StatefulWidget {
  BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int select_index = 0;

  List<Widget> screenList = [
    const GameScreen(),
    const AppScreen(),
    const OfferScreen(),
    const BookScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[select_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: select_index,
        iconSize: 25,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.games), label: "Games"),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps_outlined), label: "Apps"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_offer_outlined,
                color: Colors.black,
              ),
              label: "Offers"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book_outlined,
                color: Colors.black,
              ),
              label: "Books"),
        ],
        onTap: (index) {
          setState(() {
            select_index = index;
          });
        },
      ),
    );
  }
}
