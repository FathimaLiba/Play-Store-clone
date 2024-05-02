import 'package:flutter/material.dart';
import 'package:project_one/widgets/book_listview.dart';

class EBookScreen extends StatelessWidget {
  const EBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          ListTile(
            title: const Text(
              "Recently reduced ebooks",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            subtitle: Text("Our latest offers"),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
          ),
          Container(height: 220, child: BookListview()),
          ListTile(
            title: const Text(
              "Top sellers",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            subtitle: Text("Most popular on google play"),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
          ),
          Container(height: 220, child: BookListview()),
          ListTile(
            title: const Text(
              "Recent price drops",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
          ),
          Container(height: 220, child: BookListview()),
          ListTile(
            title: const Text(
              "Self help guides",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            subtitle: Text("Most popular "),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
          ),
          Container(height: 220, child: BookListview()),
        ],
      )),
    );
  }
}
