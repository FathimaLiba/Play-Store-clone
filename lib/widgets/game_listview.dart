import 'package:flutter/material.dart';
import 'package:project_one/models/post.dart';

class GamesListview extends StatelessWidget {
  GamesListview({super.key});
  List<Games1> gameList1 = [
    Games1(
        gameName1: "Battlegrounds mobile india",
        gameName2: "Candy crush saga",
        gameName3: "Coin Master",
        sub1: "Action Tactic Shooter",
        rate1: "4.8",
        size1: "989 MB",
        sub2: "Puzzle -Match 3 . strategy . Offline ",
        rate2: "4.2",
        size2: "602 MB",
        sub3: "Casino . casual . casino adventure",
        rate3: "4.0",
        size3: "168 MB",
        icon1:
            "https://th.bing.com/th/id/OIP.phzQgfzKnNJ-BFUC6SosrgAAAA?w=474&h=474&rs=1&pid=ImgDetMain",
        icon2:
            "https://images-na.ssl-images-amazon.com/images/I/81in3Xcm2nL.png",
        icon3:
            "https://th.bing.com/th/id/OIP.ein9qkgMK8y-o4yxZVIUBgAAAA?pid=ImgDet&w=178&h=178&c=7"),
    Games1(
        gameName1: "Carrom Pool:Disc Games",
        gameName2: "Temple Run 2",
        gameName3: "Hill Climb Racing",
        sub1: "Sports . Billards .Casual",
        rate1: "4.4",
        size1: "99 MB",
        sub2: "Action . Runner . Offline",
        rate2: "4.2",
        size2: "602 MB",
        sub3: "Action . Offline",
        rate3: "4.5",
        size3: "18 MB",
        icon1:
            "https://th.bing.com/th/id/OIP.Ym75DHSpxGCvyF8WqJqltgHaHa?pid=ImgDet&w=178&h=178&c=7",
        icon2:
            "https://th.bing.com/th/id/OIP.aN-5KxtR1qV9n6lLp42x-gAAAA?w=202&h=246&c=7&r=0&o=5&pid=1.7",
        icon3:
            "https://media.senscritique.com/media/000007646739/source_big/Hill_Climb_Racing.png"),
    Games1(
        gameName1: "Battlegrounds mobile india",
        gameName2: "Candy crush saga",
        gameName3: "Coin Master",
        sub1: "Action Tactic Shooter",
        rate1: "4.8",
        size1: "989 MB",
        sub2: "Puzzle -Match 3 Offline",
        rate2: "4.2",
        size2: "602 MB",
        sub3: "Casino casual",
        rate3: "4.0",
        size3: "168 MB",
        icon1:
            "https://th.bing.com/th/id/OIP.phzQgfzKnNJ-BFUC6SosrgAAAA?w=474&h=474&rs=1&pid=ImgDetMain",
        icon2:
            "https://images-na.ssl-images-amazon.com/images/I/81in3Xcm2nL.png",
        icon3:
            "https://th.bing.com/th/id/OIP.ein9qkgMK8y-o4yxZVIUBgAAAA?pid=ImgDet&w=178&h=178&c=7"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 400,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ListTile(
                    leading: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                            gameList1[index].icon1,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(gameList1[index].gameName1),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(gameList1[index].sub1),
                        Row(
                          children: [
                            Text(gameList1[index].rate1),
                            Icon(
                              Icons.star,
                              size: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(gameList1[index].size1),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ListTile(
                    leading: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                            gameList1[index].icon2,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(gameList1[index].gameName2),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(gameList1[index].sub2),
                        Row(
                          children: [
                            Text(gameList1[index].rate2),
                            Icon(
                              Icons.star,
                              size: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(gameList1[index].size2),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ListTile(
                    leading: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                            gameList1[index].icon3,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(gameList1[index].gameName3),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(gameList1[index].sub3),
                        Row(
                          children: [
                            Text(gameList1[index].rate3),
                            Icon(
                              Icons.star,
                              size: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(gameList1[index].size3),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: gameList1.length,
      )),
    );
  }
}
