import 'package:flutter/material.dart';
import 'package:project_one/models/app_models.dart';

class DatingAppList extends StatelessWidget {
  DatingAppList({super.key});
  List<DateAppList> dateList = [
    DateAppList(
        img:
            "https://th.bing.com/th/id/OIP.Vu7p7i21H5nv-NkfVDWm2AAAAA?pid=ImgDet&w=159&h=159&c=7",
        title: "Cofee Meets Dating app",
        rate: "4.5"),
    DateAppList(
        img:
            "https://th.bing.com/th/id/OIP.WvvIjjlBFajpyK2SfC-lvAHaHa?pid=ImgDet&w=178&h=178&c=7",
        title: "Bumble: Dating apps & Friends",
        rate: "4.0"),
    DateAppList(
        img:
            "https://th.bing.com/th/id/OIP.eHPOQXdgGp0B3ZyGJHwrcwAAAA?pid=ImgDet&w=178&h=178&c=7",
        title: "happn-Local dating app",
        rate: "4.7"),
    DateAppList(
        img:
            "https://th.bing.com/th/id/OIP.jm_zYYQPMIE1Wp31waApMgHaHa?pid=ImgDet&w=181&h=181&c=7",
        title: "LOVOO-Dating app & chat",
        rate: "3.5"),
    DateAppList(
        img:
            "https://th.bing.com/th/id/OIP.6Xnqd32WIaohp83ls8eazAHaHa?pid=ImgDet&w=178&h=178&c=7",
        title: "SayHi chat Meet Dating people",
        rate: "4.5")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 6, left: 15),
              child: Container(
                //height: 100,
                color: Colors.white,
                width: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Container(
                        height: 110,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                dateList[index].img,
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Text(
                      dateList[index].title,
                      style: TextStyle(fontSize: 13),
                    ),
                    Row(
                      children: [
                        Text(dateList[index].rate),
                        Icon(
                          Icons.star,
                          size: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: dateList.length),
    ));
  }
}
