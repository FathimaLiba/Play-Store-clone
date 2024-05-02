import 'package:flutter/material.dart';
import 'package:project_one/models/book_model.dart';

class BookListview extends StatelessWidget {
  BookListview({super.key});
  List<BookList> bookList = [
    BookList(
        img:
            "https://th.bing.com/th/id/OIP.1KI4YZxwtWEGQ0DZgCe_qwHaLF?rs=1&pid=ImgDetMain",
        bookname: "The queen of nothing",
        prevRate: "₹345.00",
        rate: "₹300"),
    BookList(
        img:
            "https://th.bing.com/th/id/OIP.htBLHxoRtybTpC6eVetUlAHaLb?rs=1&pid=ImgDetMain",
        bookname: "The Diamond cutter",
        prevRate: "₹1345.00",
        rate: "₹800"),
    BookList(
        img:
            "https://bookstacked.com/wp-content/uploads/2019/01/The-Wicked-King-by-Holly-Black-2019.jpg",
        bookname: '''The wicked king
Vol 2''',
        prevRate: "₹999.00",
        rate: "₹900"),
    BookList(
        img:
            "https://th.bing.com/th/id/OIP.efTms4fEaML5N3oZqoyAKgAAAA?rs=1&pid=ImgDetMain",
        bookname: "Countdown to zero day",
        prevRate: "₹765.00",
        rate: "₹380"),
    BookList(
        img:
            "https://www.orbitbooks.net/wp-content/uploads/2022/08/6_SeasonofStorms-HC-1200x1856.jpg",
        bookname: '''The Witcher
        vol 1''',
        prevRate: "₹995.00",
        rate: "₹670")
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
                width: 110,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Container(
                        height: 150,
                        // width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                bookList[index].img,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text(bookList[index].bookname),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 1.0, right: 5),
                          child: Text(
                            bookList[index].prevRate,
                            style: const TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 146, 143, 143),
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Text(
                          bookList[index].rate,
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: bookList.length),
    ));
  }
}
