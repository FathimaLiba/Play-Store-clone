import 'package:flutter/material.dart';
import 'package:project_one/widgets/app_list.dart';
import 'package:project_one/widgets/dating_app_List.dart';
import 'package:project_one/widgets/game_listview.dart';
import 'package:project_one/widgets/pp_slider.dart';

class AppForyouScreen extends StatelessWidget {
  const AppForyouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          ListTile(
            title: const Text(
              "Dating apps",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
          ),
          Container(height: 200, child: DatingAppList()),
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
          Container(height: 290, child: AppListView()),
          Container(height: 300, child: AppSlider()),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 23, right: 23),
            child: Container(
              height: 280,
              width: 300,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://mir-s3-cdn-cf.behance.net/projects/max_808/c4a07865284623.Y3JvcCw4MDgsNjMyLDAsMA.jpg"),
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Trending",
                        style: TextStyle(color: Colors.white, fontSize: 13)),
                    SizedBox(
                      height: 170,
                    ),
                    Text("Predict the fan favorite T20 app Vote now!",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Text("Check the leadrer board",
                        style: TextStyle(color: Colors.white, fontSize: 15))
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text(
              "more apps",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
          ),
          Container(
              height: 290, width: double.infinity, child: GamesListview()),
        ],
      )),
    );
  }
}
