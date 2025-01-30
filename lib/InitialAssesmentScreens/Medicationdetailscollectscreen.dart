import 'package:flutter/material.dart';
import 'package:mentalhealth/InitialAssesmentScreens/othermentalquery.dart';

class MedicationInputScreen extends StatefulWidget {
  const MedicationInputScreen({super.key});

  @override
  State<MedicationInputScreen> createState() => _MedicationInputScreenState();
}

class _MedicationInputScreenState extends State<MedicationInputScreen> {
  final TextEditingController _medicationController = TextEditingController();
  List<String> medications = [];

  void _addMedication() {
    if (_medicationController.text.isNotEmpty) {
      setState(() {
        medications.add(_medicationController.text);
        _medicationController.clear(); // Clear input field after adding
      });
    }
  }

  void _editMedication(int index) {
    setState(() {
      _medicationController.text = medications[index];
      medications.removeAt(index);
    });
  }

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
              "11 of 14",
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
            const Text(
              "Do you have other mental health symptoms?",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF4E3321)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            // Background Image (Added New Asset)
            Image.asset("lib/images/mental_health.png", width: 286, height: 286),

            const SizedBox(height: 30),

            // Medication Input Box
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
                border: Border.all(color: const Color(0xFF9BB168)),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade300, blurRadius: 6, spreadRadius: 1),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _medicationController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter medication name...",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      onSubmitted: (_) => _addMedication(), // Add on enter press
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_circle, color: Color(0xFF4E3321), size: 28),
                    onPressed: _addMedication,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Display Entered Medications in Wrapping Layout
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(
                medications.length,
                    (index) => GestureDetector(
                  onTap: () => _editMedication(index), // Tap to edit
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF9BB168),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          medications[index],
                          style: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 6),
                        const Icon(Icons.close, color: Colors.white, size: 16),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Continue Button
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: medications.isNotEmpty
                    ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MentalHealthSymptomsScreen()),
                  );
                }
                    : null, // Button disabled if no input
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4E3321),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Continue",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Dummy Next Screen
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