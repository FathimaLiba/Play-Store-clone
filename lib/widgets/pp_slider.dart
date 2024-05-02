import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_one/models/app_models.dart';

class AppSlider extends StatelessWidget {
  AppSlider({super.key});
  List<AppPromo> appPromoList = [
    AppPromo(
        img: "https://i.ytimg.com/vi/Ua9P5szE6wI/hqdefault.jpg",
        button: "open",
        title:
            "From Fields to World Stage:Farmers Daughter aims for cricket World",
        icon:
            "https://th.bing.com/th/id/OIP.CVsTiYIG44GpFOyqwgh78wHaHa?pid=ImgDet&w=178&h=178&c=7",
        appName: "MX Player:Video Player",
        subtitle: "Installed",
        status: "  Update Available"),
    AppPromo(
        img: "https://i.ytimg.com/vi/bm5sW4vpI1w/hqdefault.jpg",
        button: "Install",
        title: "Witness IPL's Epic Encounters!your Ipl Seat Awaits",
        icon:
            "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*S9eGTVGyjaDlkNOlnDj_jQ.png",
        appName: "BookMyShow | Movies",
        subtitle: "Bigtree Entertainment pvt",
        status: "  Ends on 27/03/24")
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
              height: 300),
          items: appPromoList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                      Text(
                        i.status,
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70, left: 10),
                        child: Text(
                          i.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
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
                          title: Text(
                            i.appName,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          subtitle: Text(i.subtitle,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13)),
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
