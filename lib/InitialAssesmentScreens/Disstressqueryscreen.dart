import 'package:flutter/material.dart';
import 'package:mentalhealth/CommonFunctions/common_widgets.dart';
import 'package:mentalhealth/InitialAssesmentScreens/medicationquery.dart';

class DistressQueryScreen extends StatefulWidget {
  const DistressQueryScreen({super.key});

  @override
  State<DistressQueryScreen> createState() => _DistressQueryScreenState();
}

class _DistressQueryScreenState extends State<DistressQueryScreen> {
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
              "7 of 14",
              style: TextStyle(fontSize: 14, color: Color(0xFF4E3321)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16), // Adjusted padding for alignment
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            // Title
            const CustomHeading(text: "Are you experiencing any physical distress?"),
            const SizedBox(height: 30),

            // Selection Cards
            _buildOptionCard(
              title: "Yes, one or multiple",
              subtitle: "I'm experiencing physical pain in different places over my body.",
              isSelected: selectedOption == "Yes",
              onTap: () => setState(() => selectedOption = "Yes"),
            ),
            const SizedBox(height: 16),
            _buildOptionCard(
              title: "No Physical Pain At All",
              subtitle: "I'm not experiencing any physical pain in my body at all :)",
              isSelected: selectedOption == "No",
              onTap: () => setState(() => selectedOption = "No"),
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
                    MaterialPageRoute(builder: (context) => const MedicationQueryScreen()),
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

  /// Builds a selectable option card (Styled as Yes/No button)
  Widget _buildOptionCard({
    required String title,
    required String subtitle,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 343, // Exact width
        height: 174, // Exact height
        padding: const EdgeInsets.all(16), // Centering text properly
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF9BB168) : Colors.white,
          borderRadius: BorderRadius.circular(32), // Rounded all corners
          boxShadow: isSelected
              ? [
            BoxShadow(
              color: const Color(0x3F9BB168),
              blurRadius: 8,
              spreadRadius: 2,
              offset: const Offset(0, 2),
            ),
          ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Centered text
          mainAxisAlignment: MainAxisAlignment.center, // Perfect vertical alignment
          children: [
            Text(
              title,
              textAlign: TextAlign.center, // Centering text
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : const Color(0xFF4E3321),
              ),
            ),
            const SizedBox(height: 8), // Adjust spacing
            Text(
              subtitle,
              textAlign: TextAlign.center, // Centering text
              style: TextStyle(
                fontSize: 16,
                color: isSelected ? Colors.white : const Color(0xFF736A66),
              ),
            ),
          ],
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