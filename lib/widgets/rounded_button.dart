import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double margin;
  final double fontSize;
  final Function onTap;
  RoundedButton({
    Key key,
    this.text,
    this.margin = 16,
    this.fontSize = 16,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(margin),
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                blurRadius: 30,
                color: Color(0xFF666666).withOpacity(.11),
                offset: Offset(0, 15),
              ),
            ]),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
