import 'package:flutter/material.dart';
import 'package:mentalhealth/CommonFunctions/common_widgets.dart';
import 'package:mentalhealth/InitialAssesmentScreens/Selectmoodscreen.dart';

class RateStressLevelScreen extends StatelessWidget {
  const RateStressLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomHeader(title: "Rate your stress level", step: 12, totalSteps: 14),
          const SizedBox(height: 20),
          const CustomHeading(text: "5"),
          const SizedBox(height: 20),
          CustomButton(
            label: "Next",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectMoodScreen()));
            },
          ),
        ],
      ),
    );
  }
}