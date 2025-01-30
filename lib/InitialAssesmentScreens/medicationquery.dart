import 'package:flutter/material.dart';
import 'package:mentalhealth/CommonFunctions/common_widgets.dart';
import 'package:mentalhealth/InitialAssesmentScreens/Medicationdetailscollectscreen.dart';

class MedicationQueryScreen extends StatefulWidget {
  const MedicationQueryScreen({super.key});

  @override
  State<MedicationQueryScreen> createState() => _MedicationQueryScreenState();
}

class _MedicationQueryScreenState extends State<MedicationQueryScreen> {
  String? selectedOption; // Track selected option

  final List<Map<String, String>> medicationOptions = [
    {"label": "Prescribed Medications", "icon": "lib/images/prescribed.png"},
    {"label": "Over the Counter Supplements", "icon": "lib/images/otc.png"},
    {"label": "I’m not taking any", "icon": "lib/images/not_taking.png"},
    {"label": "Prefer not to say", "icon": "lib/images/prefer_not_say.png"},
  ];

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
              "9 of 14",
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
            const CustomHeading(text: "Are you taking any medications?"),
            const SizedBox(height: 30),

            // Medication Options Grid
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1, // Ensures perfect square shape
              ),
              itemCount: medicationOptions.length,
              itemBuilder: (context, index) {
                final option = medicationOptions[index];
                return _buildMedicationOption(
                  label: option["label"]!,
                  iconPath: option["icon"]!,
                  isSelected: selectedOption == option["label"],
                  onTap: () {
                    setState(() {
                      selectedOption = option["label"];
                    });
                  },
                );
              },
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
                    MaterialPageRoute(builder: (context) => const MedicationInputScreen()),
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

  /// Builds a medication selection card (Styled as a Grid Button)
  Widget _buildMedicationOption({
    required String label,
    required String iconPath,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 164, // Fixed width
        height: 164, // Fixed height
        padding: const EdgeInsets.only(top: 16), // Adjusted padding
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space icon & text
          children: [
            Image.asset(iconPath, width: 24, height: 24), // Icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8), // Text padding
              child: Text(
                label,
                textAlign: TextAlign.center, // Centered text
                style: TextStyle(
                  fontSize: 16, // Fixed font size
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : const Color(0xFF4E3321),
                ),
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