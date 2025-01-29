import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';
import 'package:mentalhealth/CommonFunctions/common_widgets.dart';

class SleepQualityRatingScreen extends StatelessWidget {
  const SleepQualityRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomHeader(title: "How would you rate your sleep quality?", step: 6, totalSteps: 14),
          const SizedBox(height: 20),
          CustomButton(label: "Excellent 😴", onPressed: () {}),
          const SizedBox(height: 10),
          CustomButton(label: "Good 🙂", onPressed: () {}),
          const SizedBox(height: 10),
          CustomButton(label: "Fair 😕", onPressed: () {}),
          const SizedBox(height: 10),
          CustomButton(label: "Poor 😵", onPressed: () {}),
        ],
      ),
    );
  }
}
class SleepQualityScreen extends StatelessWidget {
  const SleepQualityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomHeader(title: "How would you rate your sleep quality?", step: 6, totalSteps: 14),
          const SizedBox(height: 20),
          CustomButton(label: "Excellent 😴", onPressed: () {}),
          const SizedBox(height: 10),
          CustomButton(label: "Good 🙂", onPressed: () {}),
          const SizedBox(height: 10),
          CustomButton(label: "Fair 😕", onPressed: () {}),
          const SizedBox(height: 10),
          CustomButton(label: "Poor 😵", onPressed: () {}),
        ],
      ),
    );
  }
}