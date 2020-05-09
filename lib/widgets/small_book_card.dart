import 'dart:ui';

import 'package:flutter/material.dart';

class SmallBookCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(40),
            padding: EdgeInsets.all(15),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(blurRadius: 10, color: Color(0xFFEAEAEA)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
            width: 120,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/book-1.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
              bottom: 100,
              left: 60,
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: 'title\n'),
                      TextSpan(
                          text: 'author',
                          style: TextStyle(fontWeight: FontWeight.w100))
                    ]),
              )),
          Positioned(
            bottom: 40,
            right: 40,
            child: Container(
              alignment: Alignment.center,
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Text(
                'Details',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 50,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0xFFEAEAEA),
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.library_books,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 60,
            child: Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          Positioned(
            bottom: 100,
            right: 40,
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
          // Image(image: AssetImage('assets/images/book-1.png'), width: 150)
        ],
      ),
    );
  }
}
