import 'package:flutter/material.dart';
import 'package:mentalhealth/CommonFunctions/common_widgets.dart';
import 'package:mentalhealth/InitialAssesmentScreens/sleepqualityratingscreen.dart';

class SelectMoodScreen extends StatelessWidget {
  const SelectMoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomHeader(title: "How would you describe your mood?", step: 5, totalSteps: 14),
          const SizedBox(height: 20),
          CustomButton(label: "Happy 😀", onPressed: () {}),
          const SizedBox(height: 10),
          CustomButton(label: "Neutral 😐", onPressed: () {}),
          const SizedBox(height: 10),
          CustomButton(label: "Sad 😢", onPressed: () {}),
          const SizedBox(height: 20),
          CustomButton(
            label: "Next",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SleepQualityRatingScreen()));
            },
          ),
        ],
      ),
    );
  }
}