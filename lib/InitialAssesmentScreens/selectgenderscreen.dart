import 'package:flutter/material.dart';
import 'package:mentalhealth/CommonFunctions/common_widgets.dart';
import 'package:mentalhealth/InitialAssesmentScreens/selectheightscreen.dart';

class SelectGenderScreen extends StatefulWidget {
  const SelectGenderScreen({super.key});

  @override
  State<SelectGenderScreen> createState() => _SelectGenderScreenState();
}

class _SelectGenderScreenState extends State<SelectGenderScreen> {
  String selectedGender = ""; // Stores the selected gender

  void selectGender(String gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomHeader(title: "What’s your gender?", step: 2, totalSteps: 14),
            const SizedBox(height: 30),

            // Gender Selection Cards
            GestureDetector(
              onTap: () => selectGender("Male"),
              child: GenderCard(
                label: "Male",
                imagePath: "lib/images/male.png",
                isSelected: selectedGender == "Male",
              ),
            ),
            const SizedBox(height: 16),

            GestureDetector(
              onTap: () => selectGender("Female"),
              child: GenderCard(
                label: "Female",
                imagePath: "lib/images/female.png",
                isSelected: selectedGender == "Female",
              ),
            ),
            const SizedBox(height: 16),

            GestureDetector(
              onTap: () => selectGender("Other"),
              child: GenderCard(
                label: "Other",
                imagePath: "lib/images/others.png",
                isSelected: selectedGender == "Other",
              ),
            ),
            const SizedBox(height: 30),

            // Next Button (Disabled until gender is selected)
            CustomButton(
              label: "Next",
              onPressed: selectedGender.isNotEmpty
                  ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SelectHeightScreen()),
                );
              }
                  : () {}, // Empty function instead of null
            ),
          ],
        ),
      ),
    );
  }
}

/// Widget for Gender Selection Cards
class GenderCard extends StatelessWidget {
  final String label;
  final String imagePath;
  final bool isSelected;

  const GenderCard({
    Key? key,
    required this.label,
    required this.imagePath,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xffec7d1c) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: isSelected ? Colors.orange : Colors.grey.shade300, width: 2),
        boxShadow: [
          BoxShadow(
            color: isSelected ? Colors.orange.withOpacity(0.3) : Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(imagePath, height: 80, width: 80), // Gender Icon
          const SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}