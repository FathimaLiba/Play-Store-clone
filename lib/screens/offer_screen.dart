import 'package:flutter/material.dart';
import 'package:project_one/widgets/offer_product_list.dart';
import 'package:project_one/widgets/offer_slider.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          keyboardType: TextInputType.text,
          //controller: controller2,
          decoration: InputDecoration(
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
      ),
      body: SafeArea(
          child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text(
            "   Offers for games that you may like",
            style: TextStyle(fontSize: 18),
          ),
          Container(height: 400, child: OfferSlider()),
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
          Container(height: 190, child: OfferList()),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://www.cointab.net/wp-content/uploads/2022/09/purplle-logo-480x480.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text("Purple Online Beauty Shop"),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Purple.com"),
                Row(
                  children: [
                    Text("4.3"),
                    Icon(
                      Icons.star,
                      size: 12,
                    ),
                    Text("   Rated for 3+")
                  ],
                ),
              ],
            ),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black)),
                onPressed: () {},
                child: const Text(
                  "Install",
                  style: TextStyle(color: Color.fromARGB(255, 3, 115, 207)),
                )),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 23, right: 23),
            child: Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.SNOBnjt2B0OJFQlP1BygXgHaEK?w=301&h=180&c=7&r=0&o=5&pid=1.7"),
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text('''₹20 towards an app 
or game''', style: TextStyle(color: Colors.white, fontSize: 20)),
                    Text("Terms apply",
                        style: TextStyle(color: Colors.white, fontSize: 15))
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Games for you",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
          ),
        ],
      )),
    );
  }
}
