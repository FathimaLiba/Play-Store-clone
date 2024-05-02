import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_one/models/post.dart';

class PromoSlider extends StatelessWidget {
  PromoSlider({super.key});
  List<Promo> promoList = [
    Promo(
        img: "https://wallpapercave.com/wp/wp5249725.jpg",
        button: "Install",
        title: '''Fearless-Year of the shadow!
    Collect your Shadow Heroes''',
        icon:
            "https://th.bing.com/th/id/OIP.vnY8T7q78A4VP7Q-hQFsUAAAAA?rs=1&pid=ImgDetMain",
        gameName: "Sonic Dash-Endless",
        subtitle: "Strategy",
        status: "  Trending"),
    Promo(
        img:
            "https://www.touchtapplay.com/wp-content/uploads/2021/08/fallout-shelter-feature.jpg?w=1068",
        button: "play",
        title: '''Fallout Shelter puts you in control of
     a state of the art values''',
        icon: "https://i.ytimg.com/vi/lqEAodEBGfs/hqdefault.jpg",
        gameName: "Fallout Shelter",
        subtitle: "Bethesda softworks LLC",
        status: "  Trending")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CarouselSlider(
          options: CarouselOptions(
              initialPage: 0,
              enableInfiniteScroll: false,
              viewportFraction: 1,
              height: 285),
          items: promoList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            i.img,
                          ),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(i.status),
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 10),
                        child: Text(
                          i.title,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: ListTile(
                          leading: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                  i.icon,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: Text(i.gameName),
                          subtitle: Text(i.subtitle),
                          trailing: Column(
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text(i.button)),
                              // Text("In app")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
