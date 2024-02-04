import 'package:flutter/material.dart';

import '../../models/DetailPageButton.dart';
import '../../models/DetailPageTitle.dart';
import '../../models/ListWheelViewScroller.dart';


class GoalPage extends StatefulWidget {
  const GoalPage({super.key});

  @override
  State<GoalPage> createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Lose Weight',
      'Gain Weight',
      'Stay Fit',
      'Build Muscle'
      
      'Improve Endurance',
      'Stay Healthy',

    ];

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
            const DetailPageTitle(
                text: 'This helps us to create a personlized plan for you',
                title: "What is your Goal?",
                color: Colors.white),
            SizedBox(
              height: size.height * 0.055,
            ),
            SizedBox(
              height: size.height * 0.5,
              child: listwheelScrollView(items: items,),
            ),
            DetailPageButton(text: 'Next', onTap: () {
              Navigator.pushNamed(context, '/activity');
            }, showBackButton: true,
            onBackTap: (){
              Navigator.pop(context);
            },),
          ],
        ),
      ),
    );
  }
}