import 'package:fitness_app_live/constants/color.dart';
import 'package:fitness_app_live/models/DetailPageButton.dart';
import 'package:fitness_app_live/models/DetailPageTitle.dart';
import 'package:flutter/material.dart';

class GenderPage extends StatefulWidget {



  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  bool isMale = true;
  bool isFemale = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(
          top: size.height * 0.06,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.height * 0.03,
        ),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            const DetailPageTitle(
              title: "Tell Us ABout Yourself",
              text: "This will help us to find the best \n content for you",
              color: Colors.white,
            ),
            SizedBox(
              height: size.height * 0.055,
            ),
            GenderIcon(
              icon: Icons.male,
              title: 'Male',
              onTap: () {
                setState(() {
                  isMale = true;
                  isFemale = false;
                });
              },
              isSelected: isMale,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            GenderIcon(
              icon: Icons.female,
              title: 'Female',
              onTap: () {
                setState(() {
                  isMale = false;
                  isFemale = true;
                });
              },
              isSelected: isFemale,
            ),
            const Spacer(),
            DetailPageButton(
              text: "Next",
              onTap: () {
                Navigator.pushNamed(context, '/age');
              },
              showBackButton: false,
              
            ),
            ],
        ),
      ),
    );
  }
}

class GenderIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;

  const GenderIcon(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(size.width * 0.05),
        decoration: BoxDecoration(
          color: isSelected ? PrimaryColor : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(icon,
                  size: size.width * 0.1,
                  color: isSelected ? Colors.black : Colors.white),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                title,
                style: TextStyle(
                    color: isSelected ? Colors.black : Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
