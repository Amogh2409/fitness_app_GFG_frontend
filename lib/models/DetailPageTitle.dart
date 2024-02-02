import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPageTitle extends StatelessWidget {
  final String text;
  final String title;
  final Color color ;
  const DetailPageTitle({super.key, required this.text, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double screenWidth = size.width;
    double paddingValue = screenWidth * 0.08;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.1,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
                color: color,
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: paddingValue),
          child: Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: screenWidth * 0.04,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
