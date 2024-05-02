import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_one/models/offer_model.dart';

class OfferSlider extends StatelessWidget {
  OfferSlider({super.key});
  List<OfferPromo> offerPromoList = [
    OfferPromo(
        img: "https://i.ytimg.com/vi/t4a5rH4UdtM/maxresdefault.jpg",
        title: "Save 85% on the bazaar breezers bundle!",
        title2: "Expires in 3 days",
        icon:
            "https://th.bing.com/th/id/OIP.DOYv5eIVUQ_93tgMuogM6AHaHa?w=202&h=202&c=7&r=0&o=5&pid=1.7",
        appName: "Subway Surfers",
        subtitle: "Action Runner",
        rate: "4.9"),
    OfferPromo(
        img:
            "https://th.bing.com/th/id/OIP.K9o3V0OPW2AUIjxgp_p7fgEfDZ?w=214&h=180&c=7&r=0&o=5&pid=1.7",
        title: "Get a unique offer during the case of mythicalhound event",
        title2: "Expires in 5 days",
        icon:
            "https://th.bing.com/th/id/OIP.sm9KHxqpxcBkWAimkUmENAAAAA?w=165&h=180&c=7&r=0&o=5&pid=1.7",
        appName: "Garden Scapes",
        subtitle: "puzzle match3  casual",
        rate: "3.9"),
    OfferPromo(
        img:
            "https://th.bing.com/th/id/OIP.Ef6-EPceD23Y5I2L615W2gHaEK?w=202&h=114&c=7&r=0&o=5&pid=1.7",
        title: "Save 85% on the bazaar breezers bundle!",
        title2: "Expires in 3 days",
        icon:
            "https://th.bing.com/th/id/OIP.DOYv5eIVUQ_93tgMuogM6AHaHa?w=202&h=202&c=7&r=0&o=5&pid=1.7",
        appName: "Subway Surfers",
        subtitle: "Action Runner",
        rate: "4.9")
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
              height: 700),
          items: offerPromoList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        height: 280,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  i.img,
                                ),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                i.title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                              Text(
                                i.title2,
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
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
                        title: Text(
                          i.appName,
                          style: TextStyle(
                              color: Color.fromARGB(255, 3, 0, 0),
                              fontSize: 15),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(i.subtitle,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 13)),
                            Text(i.rate)
                          ],
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
