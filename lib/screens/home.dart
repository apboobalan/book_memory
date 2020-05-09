import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/small_book_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/main_page_bg.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30, right: 150, bottom: 15, top: 15),
                    child: RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.display1,
                          children: [
                            TextSpan(text: 'what are you reading ', style: TextStyle(fontWeight: FontWeight.w200)),
                            TextSpan(
                              text: 'today?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: <Widget>[
                SmallBookCard(),
                SmallBookCard(),
                SmallBookCard()
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.display1,
                  children: [
                    TextSpan(
                        text: 'a book from the \n',
                        style: TextStyle(fontWeight: FontWeight.w200)),
                    TextSpan(
                      text: 'Past!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(18),
                    padding: const EdgeInsets.all(18.0),
                    height: 140,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 20, color: Color(0xFFEAEAEA)),
                        ],
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Positioned(
                      left: 40,
                      child: Image(
                        image: AssetImage('assets/images/book-1.png'),
                        width: 100,
                      )),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.all(8),
                      child: Icon(Icons.library_books),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(blurRadius: 10, color: Color(0xFFEAEAEA))
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      left: 140,
                      top: 40,
                      child: RichText(
                          text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .display1
                                  .apply(fontSizeFactor: 0.5),
                              children: [
                            TextSpan(text: 'title\n'),
                            TextSpan(
                                text: 'author',
                                style: TextStyle(fontWeight: FontWeight.w200))
                          ]))),
                  Positioned(
                    bottom: 20,
                    right: 20,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.edit),
                          SizedBox(width: 20),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                    child: Text('Details', style: TextStyle(color: Colors.white)),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                  ),),
                        ],
                      )),
                            Positioned(
            top: 20,
            right: 20,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Text('4.3'),
                  SizedBox(height: 10),
                  Icon(Icons.star, color: Colors.yellow),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(blurRadius: 30, color: Color(0xFFEAEAEA)),
                ],
              ),
            ),
          ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
