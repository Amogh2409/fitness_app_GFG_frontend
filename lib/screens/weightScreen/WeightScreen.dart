import 'package:fitness_app_live/constants/color.dart';
import 'package:flutter/material.dart';

import '../../models/DetailPageButton.dart';
import '../../models/DetailPageTitle.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({super.key});

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  double weight = 60.0;
  // Default weight
  @override
  Widget build(BuildContext context) {
    List<String> levels = [];

    for (var i = 30; i <= 500; i++) {
      levels.add(i.isEven ? "|" : "I");
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
            const DetailPageTitle(
              text: 'You can change this later in the settings',
              title: "What is your Weight?",
              color: Colors.white,
            ),
            SizedBox(
              height: size.height * 0.055,
            ),
            Text('$weight kg',
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: size.height * 0.04,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: size.height * 0.055,
            ),
            SizedBox(
              height: size.height * 0.4,
              child: RotatedBox(
                quarterTurns: -1,
                child: ListWheelScrollView(
                    itemExtent: size.height * 0.036,
                    magnification: 1.2,
                    useMagnifier: true,
                    overAndUnderCenterOpacity: 0.3,
                    physics: const FixedExtentScrollPhysics(),
                    controller: FixedExtentScrollController(
                        initialItem: (weight * 2).round() - 1),
                    onSelectedItemChanged: (index) {
                      setState(() {
                        weight = (index + 1) / 2;
                      });
                    },
                    children: levels.map((level) {
                      return RotatedBox(
                        quarterTurns: 1,
                        child: Text(level,
                            style: TextStyle(
                              color: PrimaryColor,
                              fontSize: size.height * 0.08,
                              fontWeight: FontWeight.bold,
                            )),
                      );
                    }).toList()),
              ),
            ),
            const Spacer(),
            DetailPageButton(
              text: 'Next',
              onTap: () {
                // userProvider.setWeight(weight);
                Navigator.pushNamed(context, '/height');
              },
              showBackButton: true,
              onBackTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
