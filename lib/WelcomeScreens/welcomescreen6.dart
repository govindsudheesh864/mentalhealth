import 'package:flutter/material.dart';
import 'common_widgets.dart';

class WelcomeScreen6 extends StatelessWidget {
  const WelcomeScreen6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffddd1ff),
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
                    'Step Five',
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
                'images/image1_93955.png',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 24),
              // Heading
              const CustomHeading(
                text: 'Loving & Supportive Community',
              ),
              const SizedBox(height: 24),
              // Subheading Icon
              Image.asset(
                'images/image2_32714.png',
                width: 80,
                height: 80,
              ),
              const Spacer(),
              // Finish Button
              CustomButton(
                label: 'Finish',
                icon: Icons.check,
                onPressed: () {
                  // Navigate to the main app or next feature
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainAppScreen(),
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

// Placeholder for MainAppScreen
class MainAppScreen extends StatelessWidget {
  const MainAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to the Main App!',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
