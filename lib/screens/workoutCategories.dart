import 'package:fitness_app_live/constants/padding_margin.dart';
import 'package:fitness_app_live/screens/homeScreen/homeScreen.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';

class WorkoutCategories extends StatefulWidget {
  const WorkoutCategories({super.key});

  @override
  State<WorkoutCategories> createState() => _WorkoutCategoriesState();
}

class _WorkoutCategoriesState extends State<WorkoutCategories> {
  @override
  Widget build(BuildContext context) {
    List<String> workoutCategories = ["Beginner", "Intermediate", "Advanced"];
    int selectedCategory = 0;
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            padding: AppPadding.horizontalPadding(context),
            child: Column(
              children: [
                Text(
                  "Workout Categories",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
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
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: ImageStack(
                      size: size,
                      title: "Day 01 - Warm Up",
                      time: "| 9:00 AM - 10:00 AM",
                      image: 'assets/onboardingImages/home1.jpg'),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: ImageStack(
                      size: size,
                      title: "Day 02 - Warm Up",
                      time: "| 9:00 AM - 10:00 AM",
                      image: 'assets/onboardingImages/home2.jpg'),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: ImageStack(
                      size: size,
                      title: "Day 03 - Warm Up",
                      time: "| 9:00 AM - 10:00 AM",
                      image: 'assets/onboardingImages/home3.png'),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: ImageStack(
                      size: size,
                      title: "Day 01 - Warm Up",
                      time: "| 9:00 AM - 10:00 AM",
                      image: 'assets/onboardingImages/home2.jpg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
