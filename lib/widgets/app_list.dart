import 'package:flutter/material.dart';
import 'package:project_one/models/app_models.dart';

class AppListView extends StatelessWidget {
  AppListView({super.key});
  List<Apps1> appList1 = [
    Apps1(
        appName1: "Instagram",
        appName2: "Swiggy Food,Grocery& Dineout",
        appName3: "phonepe UPI,Payment,Recharge",
        sub1: "Action Social networking",
        rate1: "4.8",
        size1: "98 MB",
        sub2: "food . drinks  ",
        rate2: "4.2",
        size2: "62 MB",
        sub3: "payment . networking",
        rate3: "4.0",
        size3: "168 MB",
        icon1:
            "https://th.bing.com/th/id/OIP.l4e5dZRJI4K-Gq5-hAD6KwHaHa?w=527&h=527&rs=1&pid=ImgDetMain",
        icon2:
            "https://driver-media-assets.swiggy.com/drivers/q_auto,f_auto,fl_lossy,c_fill/ride-with-us/icons/logo-appbar.png",
        icon3:
            "https://i.pinimg.com/736x/f7/f4/ec/f7f4ecb8a5572f3114d573c18e42f437.jpg"),
    Apps1(
        appName1: "Meesho",
        appName2: "SnapChat",
        appName3: "Whatsapp Messenger",
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
            "https://th.bing.com/th/id/OIP.rw994mz1-DGPDjY_rHC8kgAAAA?rs=1&pid=ImgDetMain",
        icon2:
            "https://pbs.twimg.com/profile_images/1492548189810937857/nhFRzPxl_400x400.jpg",
        icon3:
            "https://i.pinimg.com/originals/8a/2f/1d/8a2f1d46453953fce814d76200a5928f.png"),
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
                            appList1[index].icon1,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(appList1[index].appName1),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(appList1[index].sub1),
                        Row(
                          children: [
                            Text(appList1[index].rate1),
                            Icon(
                              Icons.star,
                              size: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(appList1[index].size1),
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
                            appList1[index].icon2,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(appList1[index].appName2),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(appList1[index].sub2),
                        Row(
                          children: [
                            Text(appList1[index].rate2),
                            Icon(
                              Icons.star,
                              size: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(appList1[index].size2),
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
                            appList1[index].icon3,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(appList1[index].appName3),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(appList1[index].sub3),
                        Row(
                          children: [
                            Text(appList1[index].rate3),
                            Icon(
                              Icons.star,
                              size: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(appList1[index].size3),
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
        itemCount: appList1.length,
      )),
    );
  }
}
