import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/InitialAssesmentScreens/selectgenderscreen.dart';

class SelectAgeScreen extends StatefulWidget {
  const SelectAgeScreen({super.key});

  @override
  State<SelectAgeScreen> createState() => _SelectAgeScreenState();
}

class _SelectAgeScreenState extends State<SelectAgeScreen> {
  int selectedAge = 18; // Default age

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5EB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF4E3321)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Assessment",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4E3321),
          ),
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
              "3 of 14",
              style: TextStyle(fontSize: 14, color: Color(0xFF4E3321)),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center, // Ensures proper centering
            children: [
              // Question Text
              const Text(
                "What’s your age?",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4E3321),
                ),
              ),
              const SizedBox(height: 30),

              // Age Selector - Centered Box and Proper Scrolling
              Stack(
                alignment: Alignment.center,
                children: [
                  // Green Highlight Box - 100% Centered
                  Container(
                    width: 256,
                    height: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xFF9BB168),
                      borderRadius: BorderRadius.circular(1234),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "$selectedAge",
                      style: const TextStyle(
                        fontSize: 140, // Perfect match
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  // Cupertino Picker for Smooth Scrolling
                  SizedBox(
                    height: 300,
                    child: CupertinoPicker(
                      itemExtent: 80,
                      scrollController: FixedExtentScrollController(initialItem: selectedAge - 12),
                      magnification: 1.4,
                      squeeze: 1.3,
                      selectionOverlay: Container(), // Removes default overlay
                      onSelectedItemChanged: (index) {
                        setState(() {
                          selectedAge = index + 12;
                        });
                      },
                      children: List.generate(
                        100,
                            (index) {
                          int age = index + 12;
                          bool isSelected = age == selectedAge;

                          return Center(
                            child: Text(
                              "$age",
                              style: TextStyle(
                                fontSize: isSelected ? 0 : 50,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade500.withOpacity(0.4),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Continue Button
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SelectGenderScreen()),
                      );
                    },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}