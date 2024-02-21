import 'package:fitness_app_live/screens/ProfilePage/profilePage.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        // Back button
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconRow(text: 'Units of Measure', onTap: () {}),
            _buildDivider(),
            IconRow(text: 'Notifications', onTap: () {}),
            _buildDivider(),
            IconRow(text: 'Language', onTap: () {}),
            _buildDivider(),
            IconRow(text: 'Contact Us', onTap: () {}),

        ],),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: Colors.grey.shade200.withOpacity(0.15),
      thickness: 1,
      height: 16,
    );
  }
}
