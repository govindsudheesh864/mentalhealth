import 'package:flutter/material.dart';
import 'package:mentalhealth/CommonFunctions/common_widgets.dart';
import 'package:mentalhealth/WelcomeScreens/welcomescreen2.dart';

class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f4f2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const Spacer(),
              // Logo
              Image.asset(
                'lib/images/image_32083.png',
                width: 64,
                height: 64,
              ),
              const SizedBox(height: 16),
              // Heading
              const CustomHeading(
                  text: 'Welcome to the ultimate freud UI Kit!'),
              const SizedBox(height: 16),
              // Subheading
              const CustomSubheading(
                text:
                    'Your mindful mental health AI companion for everyone, anywhere 🍃',
              ),
              const Spacer(),
              // Main Image
              Image.asset(
                'lib/images/image_32087.png',
                width: 300,
                height: 300,
              ),
              const Spacer(),
              // Get Started Button
              CustomButton(
                label: 'Get Started',
                icon: Icons.arrow_forward,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomeScreen2(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              // Sign In Text
              GestureDetector(
                onTap: () {
                  // Implement sign-in navigation here
                },
                child: const Text(
                  'Already have an account? Sign In.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff736a66),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

