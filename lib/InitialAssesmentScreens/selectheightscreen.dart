import 'package:flutter/material.dart';
import 'package:mentalhealth/CommonFunctions/common_widgets.dart';
import 'package:mentalhealth/InitialAssesmentScreens/healthgoalscreeen.dart';

class SelectHeightScreen extends StatelessWidget {
  const SelectHeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomHeader(title: "What’s your height?", step: 4, totalSteps: 14),
          const SizedBox(height: 20),
          const CustomHeading(text: "175 cm"),
          const SizedBox(height: 20),
          CustomButton(
            label: "Next",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HealthGoalScreen()));
            },
          ),
        ],
      ),
    );
  }
}