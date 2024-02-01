import 'package:flutter/material.dart';

class DetailPageTitle extends StatelessWidget {
  const DetailPageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
              height: size.height * 0.1,
            ),
            Text(
              "Tell Us ABout Yourself".toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              child: Text(
                "This will help us to find the best \n content for you",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04,
                ),
                textAlign: TextAlign.center,
              ),
            ),
      ],
    );

  }
}