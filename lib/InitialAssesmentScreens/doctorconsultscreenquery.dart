import 'package:flutter/material.dart';
import 'package:mentalhealth/CommonFunctions/common_widgets.dart';
import 'package:mentalhealth/InitialAssesmentScreens/Disstressqueryscreen.dart';

class DoctorConsultScreen extends StatefulWidget {
  const DoctorConsultScreen({super.key});

  @override
  State<DoctorConsultScreen> createState() => _DoctorConsultScreenState();
}

class _DoctorConsultScreenState extends State<DoctorConsultScreen> {
  String? selectedOption; // Track selected option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F4F2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF4E3321)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Assessment",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF4E3321)),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFD5C4B1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Text(
              "6 of 14",
              style: TextStyle(fontSize: 14, color: Color(0xFF4E3321)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            // Title
            const CustomHeading(text: "Have you sought professional help before?"),
            const SizedBox(height: 30),

            // Illustration
            Image.asset("lib/images/doctor_consult.png", width: 286, height: 286),

            const SizedBox(height: 30),

            // Selection Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildOptionButton("Yes", selectedOption == "Yes"),
                const SizedBox(width: 16),
                _buildOptionButton("No", selectedOption == "No"),
              ],
            ),

            const SizedBox(height: 30),

            // Continue Button
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CustomButton(
                label: "Continue",
                icon: Icons.arrow_forward,
                onPressed: selectedOption != null
                    ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DistressQueryScreen()),
                  );
                }
                    : () {}, // Prevents null error when no selection
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds a selectable button (without border, with shadow on selection)
  Widget _buildOptionButton(String label, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = label;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 164,
        height: 56,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF9BB168) : Colors.white, // Highlighted on selection
          borderRadius: BorderRadius.circular(1000),
          boxShadow: isSelected
              ? [
            BoxShadow(
              color: const Color(0x3F9BB168),
              blurRadius: 8, // Increased blur for a softer effect
              spreadRadius: 2,
              offset: const Offset(0, 2), // Adds subtle lift effect
            ),
          ]
              : [],
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : const Color(0xFF4E3321),
          ),
        ),
      ),
    );
  }
}

// Dummy Next Screen to remove errors
class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Screen"),
        backgroundColor: Colors.brown,
      ),
      body: const Center(
        child: Text(
          "This is the next screen",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.brown),
        ),
      ),
    );
  }
}