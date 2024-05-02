import 'package:flutter/material.dart';
import 'package:project_one/models/offer_model.dart';

class OfferList extends StatelessWidget {
  OfferList({super.key});
  List<OfferProductList> offList = [
    OfferProductList(
        img:
            "https://th.bing.com/th/id/OIP.dT5DHX11FSTuPwZ_voL4fgHaHa?rs=1&pid=ImgDetMain",
        prevRate: "₹345.00",
        rate: "₹234"),
    OfferProductList(
        img:
            "https://th.bing.com/th/id/OIP.5R_FObi2pOUneha9dgrQFwHaHa?pid=ImgDet&w=178&h=178&c=7",
        prevRate: "₹345.00",
        rate: "₹234"),
    OfferProductList(
        img:
            "https://th.bing.com/th/id/OIP.vnNknI3GUbG1fjhqPBGTtAHaIa?pid=ImgDet&w=178&h=203&c=7",
        prevRate: "₹350.00",
        rate: "₹204.00"),
    OfferProductList(
        img:
            "https://th.bing.com/th/id/OIP.grU5dRoClFFqzV-ier7HrAHaHa?w=1920&h=1920&rs=1&pid=ImgDetMain",
        prevRate: "₹145.oo",
        rate: "₹134"),
    OfferProductList(
        img:
            "https://th.bing.com/th/id/OIP.7OYqmhtQSSaQGzXEMaJR2AHaHa?rs=1&pid=ImgDetMain",
        prevRate: "₹899.00",
        rate: "₹539")
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 130,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Container(
                        height: 150,
                        // width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                offList[index].img,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 221, 218, 218),
                      height: 25,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Text(
                              offList[index].prevRate,
                              style: const TextStyle(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 146, 143, 143),
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ),
                          Text(
                            offList[index].rate,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: offList.length),
    ));
  }
}
