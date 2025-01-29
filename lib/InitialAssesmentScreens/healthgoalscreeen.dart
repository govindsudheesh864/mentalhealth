import 'package:flutter/material.dart';
import 'package:mentalhealth/CommonFunctions/common_widgets.dart';
import 'package:mentalhealth/InitialAssesmentScreens/ratestresslevelscreen.dart';

class HealthGoalScreen extends StatelessWidget {
  const HealthGoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomHeader(title: "What’s your health goal?", step: 1, totalSteps: 14),
          const SizedBox(height: 20),
          CustomButton(label: "Reduce stress", onPressed: () {}),
          const SizedBox(height: 10),
          CustomButton(label: "Improve sleep", onPressed: () {}),
          const SizedBox(height: 20),
          CustomButton(
            label: "Next",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RateStressLevelScreen()));
            },
          ),
        ],
      ),
    );
  }
}