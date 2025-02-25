import 'package:flutter/material.dart';
import 'package:mentalhealth/CommonFunctions/common_widgets.dart';
import 'package:mentalhealth/WelcomeScreens/welcomescreen5.dart';

class WelcomeScreen4 extends StatelessWidget {
  const WelcomeScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe1e0e0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const Spacer(),
              // Step Indicator
              Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff4e3321), width: 1),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
                  child: Text(
                    'Step Three',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff4e3321),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              // Main Image
              Image.asset(
                'lib/images/image2_32513.png',
                width: 350,
                height: 350,
              ),
              const SizedBox(height: 24),
              // Heading
              const CustomHeading(
                text: 'AI Mental Journaling & AI Therapy Chatbot',
              ),
              const SizedBox(height: 24),
              // Subheading Icon
             // Image.asset(
              //  'lib/images/image2_32513.png',
           //     width: 80,
           //     height: 80,
          //    ),
              const Spacer(),
              // Next Button
              CustomButton(
                label: 'Next',
                icon: Icons.arrow_forward,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomeScreen5(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
