import 'package:flutter/material.dart';
import 'package:project_one/widgets/game_listview.dart';
import 'package:project_one/widgets/promo__slider_widget.dart';

class ForYouScreen extends StatefulWidget {
  const ForYouScreen({super.key});

  @override
  State<ForYouScreen> createState() => _ForYouScreenState();
}

class _ForYouScreenState extends State<ForYouScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        // ignore: sized_box_for_whitespace
        Container(height: 285, child: PromoSlider()),
        ListTile(
          title: const Row(
            children: [
              Text(
                "Sponsered . ",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
              ),
              Text(
                "Suggested for you",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              )
            ],
          ),
          trailing: IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
        ),
        Container(height: 290, width: double.infinity, child: GamesListview()),
        ListTile(
          title: Text(
            "Recommmended for you",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
        ),
        Container(height: 290, width: double.infinity, child: GamesListview()),
      ],
    )));
  }
}
