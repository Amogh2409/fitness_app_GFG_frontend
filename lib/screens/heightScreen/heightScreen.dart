import 'package:fitness_app_live/models/DetailPageButton.dart';
import 'package:fitness_app_live/models/DetailPageTitle.dart';
import 'package:fitness_app_live/models/ListWheelViewScroller.dart';
import 'package:flutter/material.dart';

class HeightPage extends StatefulWidget {
  const HeightPage({super.key});

  @override
  State<HeightPage> createState() => _HeightPageState();
}

class _HeightPageState extends State<HeightPage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [];
    for (int i = 1; i < 200; i++) {
      items.add(i.toString());
    }
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
          top: size.height * 0.06,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.height * 0.03,
        ),
        child: Column(
          children: [
            DetailPageTitle(
                text: 'This helps us to create a personlized plan for you',
                title: "What is your Height?",
                color: Colors.white),
            SizedBox(
              height: size.height * 0.055,
            ),
            SizedBox(
              height: size.height * 0.5,
              child: listwheelScrollView(items: items,),
            ),
            DetailPageButton(text: 'Next', onTap: () {}, showBackButton: true,
            onBackTap: (){
              Navigator.pop(context);
            },),
          ],
        ),
      ),
    );
  }
}
