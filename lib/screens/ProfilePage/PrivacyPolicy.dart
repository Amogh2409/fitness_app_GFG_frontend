import 'package:flutter/material.dart';


class PrivacyPolicyPage extends StatelessWidget {
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
          'Privacy Policy',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Privacy Policy Text
             
              const SizedBox(height: 20),

              // Sample Privacy Policy Content
              _buildPolicySection(
                '1. Introduction',
                'This privacy policy explains how our app collects, uses, '
                    'and protects your personal information.',
              ),
              _buildPolicySection(
                '2. Information We Collect',
                'We may collect personal information such as your name, email, '
                    'and location to provide a better user experience.',
              ),
              _buildPolicySection(
                '3. How We Use Your Information',
                'Your information is used to personalize your experience, improve '
                    'our app, and send you relevant updates.',
              ),
              _buildPolicySection(
                '4. Security',
                'We take appropriate measures to secure your personal information, '
                    'but no method of transmission over the internet is 100% secure.',
              ),

              _buildPolicySection(
                '5. Third-Party Services',
                'Our app may use third-party services that have their own privacy '
                    'policies. We recommend reviewing their policies as well.',
              ),

              _buildPolicySection(
                '6. Changes to This Policy',
                'We may update our privacy policy from time to time. You will be '
                    'notified of any changes on this page.',
              ),

              _buildPolicySection(
                '7. Contact Us',
                'If you have any questions about our privacy policy, please contact us '
                    'at abc@gmail.com',
              ),

              _buildPolicySection(
                '8. Consent',
                'By using our app, you hereby consent to our privacy policy and agree '
                    'to its terms.',
              ),

              _buildPolicySection(
                '9. Update',
                'This Privacy Policy was last updated on 19st Feb 2023.',
              ),

              

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPolicySection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 17),
        ],
      ),
    );
  }
}
