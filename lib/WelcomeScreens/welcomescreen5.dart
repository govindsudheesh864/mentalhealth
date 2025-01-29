import 'package:flutter/material.dart';
import 'package:mentalhealth/CommonFunctions/common_widgets.dart';
import 'package:mentalhealth/WelcomeScreens/welcomescreen6.dart';

class WelcomeScreen5 extends StatelessWidget {
  const WelcomeScreen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffeac1),
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
                    'Step Four',
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
                'lib/images/image1_93950.png',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 24),
              // Heading
              const CustomHeading(
                text: 'Mindful Resources That Makes You Happy',
              ),
              const SizedBox(height: 24),
              // Subheading Icon
           //   Image.asset(
            //    'images/image2_32607.png',
            //    width: 80,
            //    height: 80,
           //   ),
              const Spacer(),
              // Next Button
              CustomButton(
                label: 'Next',
                icon: Icons.arrow_forward,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomeScreen6(),
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


