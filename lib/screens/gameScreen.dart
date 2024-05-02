import 'package:flutter/material.dart';
import 'package:project_one/screens/game_screens/categories_screen.dart';
import 'package:project_one/screens/game_screens/children_screen.dart';
import 'package:project_one/screens/game_screens/foryou_screen.dart';
import 'package:project_one/screens/game_screens/premium_screen.dart';
import 'package:project_one/screens/game_screens/topchart_screen.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  TextEditingController controller2 = TextEditingController();

  List<Widget> gamescreenList = [
    const ForYouScreen(),
    const TopChartScreen(),
    const ChildrenScreen(),
    const PremiumScreen(),
    const CategoryScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            keyboardType: TextInputType.text,
            controller: controller2,
            decoration: const InputDecoration(
              fillColor: Color.fromARGB(255, 215, 211, 235),
              filled: true,
              hintText: "Search Apps & Games ",
              hintStyle: TextStyle(fontSize: 18),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide.none),
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic),
            ),
          ),
          actions: const [
            Icon(Icons.notifications),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://th.bing.com/th/id/OIP.XCDNOTmrvU_DKioT-1g_uQHaGl?w=226&h=200&c=7&r=0&o=5&pid=1.7"),
            ),
            SizedBox(
              width: 20,
            ),
          ],
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.blueAccent,
            tabs: [
              Tab(text: "For you"),
              Tab(text: "Top charts"),
              Tab(text: "Children"),
              Tab(text: "Premium"),
              Tab(text: "Categories"),
            ],
          ),
        ),
        body: const TabBarView(children: [
          ForYouScreen(),
          TopChartScreen(),
          ChildrenScreen(),
          PremiumScreen(),
          CategoryScreen()
        ]),
      ),
    );
  }
}
