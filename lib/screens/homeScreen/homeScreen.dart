import 'package:fitness_app_live/constants/color.dart';
import 'package:fitness_app_live/constants/padding_margin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> workoutCategories = ["Beginner", "Intermediate", "Advanced"];
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: size.height * 0.04),
          child: Container(
            padding: AppPadding.horizontalPadding(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello User",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.1,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                Text(
                  "Good morning.",
                  style: TextStyle(
                    fontSize: size.width * 0.04,
                    color: Colors.white30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's workout plan",
                      style: TextStyle(
                        fontSize: size.width * 0.045,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Sat, 17 Feb",
                      style: TextStyle(
                        fontSize: size.width * 0.04,
                        color: PrimaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ImageStack(
                    size: size,
                    image: "assets/onboardingImages/home1.jpg",
                    title: "Day 01 - Warm Up",
                    time: "| 9:00 AM - 10:00 AM",
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Workout Categories",
                      style: TextStyle(
                        fontSize: size.width * 0.045,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/workoutCategories');
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: size.width * 0.04,
                          color: PrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                ToggleButtons(
                  isSelected: List.generate(workoutCategories.length,
                      (index) => index == selectedCategory),
                  onPressed: (int index) {
                    setState(() {
                      selectedCategory = index;
                    });
                  },
                  children: workoutCategories.map((category) {
                    return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedCategory ==
                                  workoutCategories.indexOf(category)
                              ? PrimaryColor
                              : Colors.black,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              category,
                              style: TextStyle(
                                color: selectedCategory ==
                                        workoutCategories.indexOf(category)
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ));
                  }).toList(),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SizedBox(
                  height: size.height * 0.2,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: size.width * 0.8,
                        height: size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ImageStack(
                            size: size,
                            title: "Day 01 - Warm Up",
                            time: "| 9:00 AM - 10:00 AM",
                            image: 'assets/onboardingImages/home2.jpg'),
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Container(
                        width: size.width * 0.8,
                        height: size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ImageStack(
                            size: size,
                            title: "Day 01 - Warm Up",
                            time: "| 10:00 AM - 11:00 AM",
                            image: 'assets/onboardingImages/home3.png'),
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Text(
                  "New Workout",
                  style: TextStyle(
                    fontSize: size.width * 0.045,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    children: [
                      Container(
                        width: size.width * 0.5,
                        height: size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ImageStack(
                            size: size,
                            title: "Day 01 - Warm Up",
                            time: "| 9:00 AM - 10:00 AM",
                            image: 'assets/onboardingImages/home1.jpg'),
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Container(
                        width: size.width * 0.5,
                        height: size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ImageStack(
                            size: size,
                            title: "Day 01 - Warm Up",
                            time: "| 9:00 AM - 10:00 AM",
                            image: 'assets/onboardingImages/home2.jpg'),
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageStack extends StatelessWidget {
  const ImageStack(
      {super.key,
      required this.size,
      required this.image,
      required this.title,
      required this.time});

  final Size size;
  final String image;
  final String title;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width * 0.9,
          height: size.height * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Positioned(
          left: size.width * 0.05,
          top: size.height * 0.125,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: size.width * 0.052,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "$time",
                style: TextStyle(
                  fontSize: size.width * 0.035,
                  color: PrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
